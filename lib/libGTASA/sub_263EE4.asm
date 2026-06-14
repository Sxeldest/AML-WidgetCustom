; =========================================================
; Game Engine Function: sub_263EE4
; Address            : 0x263EE4 - 0x263F56
; =========================================================

263EE4:  PUSH            {R4,R6,R7,LR}
263EE6:  ADD             R7, SP, #8
263EE8:  MOV             R4, R1
263EEA:  SUBS            R1, R2, #1; switch 5 cases
263EEC:  CMP             R1, #4
263EEE:  BHI             def_263EF0; jumptable 00263EF0 default case
263EF0:  TBB.W           [PC,R1]; switch jump
263EF4:  DCB 3; jump table for switch statement
263EF5:  DCB 0x24
263EF6:  DCB 0x27
263EF7:  DCB 0x2A
263EF8:  DCB 0x2D
263EF9:  ALIGN 2
263EFA:  LDR             R0, [R0,#0x70]; jumptable 00263EF0 case 1
263EFC:  STR             R0, [R3]
263EFE:  POP             {R4,R6,R7,PC}
263F00:  LDR             R0, =(TrapALError_ptr - 0x263F06); jumptable 00263EF0 default case
263F02:  ADD             R0, PC; TrapALError_ptr
263F04:  LDR             R0, [R0]; TrapALError
263F06:  LDRB            R0, [R0]
263F08:  CMP             R0, #0
263F0A:  ITT NE
263F0C:  MOVNE           R0, #5; sig
263F0E:  BLXNE           raise
263F12:  LDREX.W         R0, [R4,#0x50]
263F16:  CBNZ            R0, loc_263F32
263F18:  ADD.W           R0, R4, #0x50 ; 'P'
263F1C:  MOVW            R1, #0xA002
263F20:  DMB.W           ISH
263F24:  STREX.W         R2, R1, [R0]
263F28:  CBZ             R2, loc_263F36
263F2A:  LDREX.W         R2, [R0]
263F2E:  CMP             R2, #0
263F30:  BEQ             loc_263F24
263F32:  CLREX.W
263F36:  DMB.W           ISH
263F3A:  POP             {R4,R6,R7,PC}
263F3C:  LDR             R0, [R0,#0x74]; jumptable 00263EF0 case 2
263F3E:  STR             R0, [R3]
263F40:  POP             {R4,R6,R7,PC}
263F42:  LDR             R0, [R0,#0x78]; jumptable 00263EF0 case 3
263F44:  STR             R0, [R3]
263F46:  POP             {R4,R6,R7,PC}
263F48:  LDR             R0, [R0,#0x7C]; jumptable 00263EF0 case 4
263F4A:  STR             R0, [R3]
263F4C:  POP             {R4,R6,R7,PC}
263F4E:  LDR.W           R0, [R0,#0x80]; jumptable 00263EF0 case 5
263F52:  STR             R0, [R3]
263F54:  POP             {R4,R6,R7,PC}
