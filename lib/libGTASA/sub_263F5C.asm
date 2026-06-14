; =========================================================
; Game Engine Function: sub_263F5C
; Address            : 0x263F5C - 0x263FCE
; =========================================================

263F5C:  PUSH            {R4,R6,R7,LR}
263F5E:  ADD             R7, SP, #8
263F60:  MOV             R4, R1
263F62:  SUBS            R1, R2, #1; switch 5 cases
263F64:  CMP             R1, #4
263F66:  BHI             def_263F68; jumptable 00263F68 default case
263F68:  TBB.W           [PC,R1]; switch jump
263F6C:  DCB 3; jump table for switch statement
263F6D:  DCB 0x24
263F6E:  DCB 0x27
263F6F:  DCB 0x2A
263F70:  DCB 0x2D
263F71:  ALIGN 2
263F72:  LDR             R0, [R0,#0x70]; jumptable 00263F68 case 1
263F74:  STR             R0, [R3]
263F76:  POP             {R4,R6,R7,PC}
263F78:  LDR             R0, =(TrapALError_ptr - 0x263F7E); jumptable 00263F68 default case
263F7A:  ADD             R0, PC; TrapALError_ptr
263F7C:  LDR             R0, [R0]; TrapALError
263F7E:  LDRB            R0, [R0]
263F80:  CMP             R0, #0
263F82:  ITT NE
263F84:  MOVNE           R0, #5; sig
263F86:  BLXNE           raise
263F8A:  LDREX.W         R0, [R4,#0x50]
263F8E:  CBNZ            R0, loc_263FAA
263F90:  ADD.W           R0, R4, #0x50 ; 'P'
263F94:  MOVW            R1, #0xA002
263F98:  DMB.W           ISH
263F9C:  STREX.W         R2, R1, [R0]
263FA0:  CBZ             R2, loc_263FAE
263FA2:  LDREX.W         R2, [R0]
263FA6:  CMP             R2, #0
263FA8:  BEQ             loc_263F9C
263FAA:  CLREX.W
263FAE:  DMB.W           ISH
263FB2:  POP             {R4,R6,R7,PC}
263FB4:  LDR             R0, [R0,#0x74]; jumptable 00263F68 case 2
263FB6:  STR             R0, [R3]
263FB8:  POP             {R4,R6,R7,PC}
263FBA:  LDR             R0, [R0,#0x78]; jumptable 00263F68 case 3
263FBC:  STR             R0, [R3]
263FBE:  POP             {R4,R6,R7,PC}
263FC0:  LDR             R0, [R0,#0x7C]; jumptable 00263F68 case 4
263FC2:  STR             R0, [R3]
263FC4:  POP             {R4,R6,R7,PC}
263FC6:  LDR.W           R0, [R0,#0x80]; jumptable 00263F68 case 5
263FCA:  STR             R0, [R3]
263FCC:  POP             {R4,R6,R7,PC}
