; =========================================================
; Game Engine Function: sub_263A44
; Address            : 0x263A44 - 0x263AE4
; =========================================================

263A44:  PUSH            {R4,R6,R7,LR}
263A46:  ADD             R7, SP, #8
263A48:  MOV             R4, R1
263A4A:  SUBS            R1, R2, #1; switch 12 cases
263A4C:  CMP             R1, #0xB
263A4E:  BHI             def_263A50; jumptable 00263A50 default case
263A50:  TBB.W           [PC,R1]; switch jump
263A54:  DCB 6; jump table for switch statement
263A55:  DCB 0x27
263A56:  DCB 0x2A
263A57:  DCB 0x2D
263A58:  DCB 0x30
263A59:  DCB 0x33
263A5A:  DCB 0x36
263A5B:  DCB 0x39
263A5C:  DCB 0x3C
263A5D:  DCB 0x3F
263A5E:  DCB 0x42
263A5F:  DCB 0x45
263A60:  LDR             R0, [R0,#4]; jumptable 00263A50 case 1
263A62:  STR             R0, [R3]
263A64:  POP             {R4,R6,R7,PC}
263A66:  LDR             R0, =(TrapALError_ptr - 0x263A6C); jumptable 00263A50 default case
263A68:  ADD             R0, PC; TrapALError_ptr
263A6A:  LDR             R0, [R0]; TrapALError
263A6C:  LDRB            R0, [R0]
263A6E:  CMP             R0, #0
263A70:  ITT NE
263A72:  MOVNE           R0, #5; sig
263A74:  BLXNE           raise
263A78:  LDREX.W         R0, [R4,#0x50]
263A7C:  CBNZ            R0, loc_263A98
263A7E:  ADD.W           R0, R4, #0x50 ; 'P'
263A82:  MOVW            R1, #0xA002
263A86:  DMB.W           ISH
263A8A:  STREX.W         R2, R1, [R0]
263A8E:  CBZ             R2, loc_263A9C
263A90:  LDREX.W         R2, [R0]
263A94:  CMP             R2, #0
263A96:  BEQ             loc_263A8A
263A98:  CLREX.W
263A9C:  DMB.W           ISH
263AA0:  POP             {R4,R6,R7,PC}
263AA2:  LDR             R0, [R0,#8]; jumptable 00263A50 case 2
263AA4:  STR             R0, [R3]
263AA6:  POP             {R4,R6,R7,PC}
263AA8:  LDR             R0, [R0,#0xC]; jumptable 00263A50 case 3
263AAA:  STR             R0, [R3]
263AAC:  POP             {R4,R6,R7,PC}
263AAE:  LDR             R0, [R0,#0x10]; jumptable 00263A50 case 4
263AB0:  STR             R0, [R3]
263AB2:  POP             {R4,R6,R7,PC}
263AB4:  LDR             R0, [R0,#0x14]; jumptable 00263A50 case 5
263AB6:  STR             R0, [R3]
263AB8:  POP             {R4,R6,R7,PC}
263ABA:  LDR             R0, [R0,#0x18]; jumptable 00263A50 case 6
263ABC:  STR             R0, [R3]
263ABE:  POP             {R4,R6,R7,PC}
263AC0:  LDR             R0, [R0,#0x1C]; jumptable 00263A50 case 7
263AC2:  STR             R0, [R3]
263AC4:  POP             {R4,R6,R7,PC}
263AC6:  LDR             R0, [R0,#0x20]; jumptable 00263A50 case 8
263AC8:  STR             R0, [R3]
263ACA:  POP             {R4,R6,R7,PC}
263ACC:  LDR             R0, [R0,#0x24]; jumptable 00263A50 case 9
263ACE:  STR             R0, [R3]
263AD0:  POP             {R4,R6,R7,PC}
263AD2:  LDR             R0, [R0,#0x28]; jumptable 00263A50 case 10
263AD4:  STR             R0, [R3]
263AD6:  POP             {R4,R6,R7,PC}
263AD8:  LDR             R0, [R0,#0x2C]; jumptable 00263A50 case 11
263ADA:  STR             R0, [R3]
263ADC:  POP             {R4,R6,R7,PC}
263ADE:  LDR             R0, [R0,#0x30]; jumptable 00263A50 case 12
263AE0:  STR             R0, [R3]
263AE2:  POP             {R4,R6,R7,PC}
