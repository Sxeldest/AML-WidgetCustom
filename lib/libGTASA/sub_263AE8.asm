; =========================================================
; Game Engine Function: sub_263AE8
; Address            : 0x263AE8 - 0x263B88
; =========================================================

263AE8:  PUSH            {R4,R6,R7,LR}
263AEA:  ADD             R7, SP, #8
263AEC:  MOV             R4, R1
263AEE:  SUBS            R1, R2, #1; switch 12 cases
263AF0:  CMP             R1, #0xB
263AF2:  BHI             def_263AF4; jumptable 00263AF4 default case
263AF4:  TBB.W           [PC,R1]; switch jump
263AF8:  DCB 6; jump table for switch statement
263AF9:  DCB 0x27
263AFA:  DCB 0x2A
263AFB:  DCB 0x2D
263AFC:  DCB 0x30
263AFD:  DCB 0x33
263AFE:  DCB 0x36
263AFF:  DCB 0x39
263B00:  DCB 0x3C
263B01:  DCB 0x3F
263B02:  DCB 0x42
263B03:  DCB 0x45
263B04:  LDR             R0, [R0,#4]; jumptable 00263AF4 case 1
263B06:  STR             R0, [R3]
263B08:  POP             {R4,R6,R7,PC}
263B0A:  LDR             R0, =(TrapALError_ptr - 0x263B10); jumptable 00263AF4 default case
263B0C:  ADD             R0, PC; TrapALError_ptr
263B0E:  LDR             R0, [R0]; TrapALError
263B10:  LDRB            R0, [R0]
263B12:  CMP             R0, #0
263B14:  ITT NE
263B16:  MOVNE           R0, #5; sig
263B18:  BLXNE           raise
263B1C:  LDREX.W         R0, [R4,#0x50]
263B20:  CBNZ            R0, loc_263B3C
263B22:  ADD.W           R0, R4, #0x50 ; 'P'
263B26:  MOVW            R1, #0xA002
263B2A:  DMB.W           ISH
263B2E:  STREX.W         R2, R1, [R0]
263B32:  CBZ             R2, loc_263B40
263B34:  LDREX.W         R2, [R0]
263B38:  CMP             R2, #0
263B3A:  BEQ             loc_263B2E
263B3C:  CLREX.W
263B40:  DMB.W           ISH
263B44:  POP             {R4,R6,R7,PC}
263B46:  LDR             R0, [R0,#8]; jumptable 00263AF4 case 2
263B48:  STR             R0, [R3]
263B4A:  POP             {R4,R6,R7,PC}
263B4C:  LDR             R0, [R0,#0xC]; jumptable 00263AF4 case 3
263B4E:  STR             R0, [R3]
263B50:  POP             {R4,R6,R7,PC}
263B52:  LDR             R0, [R0,#0x10]; jumptable 00263AF4 case 4
263B54:  STR             R0, [R3]
263B56:  POP             {R4,R6,R7,PC}
263B58:  LDR             R0, [R0,#0x14]; jumptable 00263AF4 case 5
263B5A:  STR             R0, [R3]
263B5C:  POP             {R4,R6,R7,PC}
263B5E:  LDR             R0, [R0,#0x18]; jumptable 00263AF4 case 6
263B60:  STR             R0, [R3]
263B62:  POP             {R4,R6,R7,PC}
263B64:  LDR             R0, [R0,#0x1C]; jumptable 00263AF4 case 7
263B66:  STR             R0, [R3]
263B68:  POP             {R4,R6,R7,PC}
263B6A:  LDR             R0, [R0,#0x20]; jumptable 00263AF4 case 8
263B6C:  STR             R0, [R3]
263B6E:  POP             {R4,R6,R7,PC}
263B70:  LDR             R0, [R0,#0x24]; jumptable 00263AF4 case 9
263B72:  STR             R0, [R3]
263B74:  POP             {R4,R6,R7,PC}
263B76:  LDR             R0, [R0,#0x28]; jumptable 00263AF4 case 10
263B78:  STR             R0, [R3]
263B7A:  POP             {R4,R6,R7,PC}
263B7C:  LDR             R0, [R0,#0x2C]; jumptable 00263AF4 case 11
263B7E:  STR             R0, [R3]
263B80:  POP             {R4,R6,R7,PC}
263B82:  LDR             R0, [R0,#0x30]; jumptable 00263AF4 case 12
263B84:  STR             R0, [R3]
263B86:  POP             {R4,R6,R7,PC}
