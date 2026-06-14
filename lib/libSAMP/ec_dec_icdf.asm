; =========================================================
; Game Engine Function: ec_dec_icdf
; Address            : 0x193D54 - 0x193DD8
; =========================================================

193D54:  PUSH            {R4-R7,LR}
193D56:  ADD             R7, SP, #0xC
193D58:  PUSH.W          {R8,R9,R11}
193D5C:  LDRD.W          R5, R3, [R0,#0x1C]
193D60:  MOVS            R6, #0
193D62:  LSR.W           R2, R5, R2
193D66:  MOV             R4, R5
193D68:  LDRB            R5, [R1,R6]
193D6A:  ADDS            R6, #1
193D6C:  MULS            R5, R2
193D6E:  CMP             R3, R5
193D70:  BCC             loc_193D66
193D72:  SUBS            R2, R4, R5
193D74:  SUBS            R3, R3, R5
193D76:  SUB.W           R12, R6, #1
193D7A:  CMP.W           R2, #0x800000
193D7E:  STRD.W          R2, R3, [R0,#0x1C]
193D82:  BHI             loc_193DD0
193D84:  LDR.W           R8, [R0,#4]
193D88:  MOVW            LR, #1
193D8C:  LDRD.W          R4, R9, [R0,#0x14]
193D90:  MOVT            LR, #0x80
193D94:  LDR             R1, [R0,#0x28]
193D96:  ADDS            R4, #8
193D98:  LSLS            R2, R2, #8
193D9A:  CMP             R9, R8
193D9C:  STR             R4, [R0,#0x14]
193D9E:  STR             R2, [R0,#0x1C]
193DA0:  BCS             loc_193DB2
193DA2:  LDR             R6, [R0]
193DA4:  ADD.W           R5, R9, #1
193DA8:  STR             R5, [R0,#0x18]
193DAA:  LDRB.W          R6, [R6,R9]
193DAE:  MOV             R9, R5
193DB0:  B               loc_193DB4
193DB2:  MOVS            R6, #0
193DB4:  ORR.W           R1, R6, R1,LSL#8
193DB8:  STR             R6, [R0,#0x28]
193DBA:  ADDS            R4, #8
193DBC:  CMP             R2, LR
193DBE:  UBFX.W          R1, R1, #1, #8
193DC2:  BFI.W           R1, R3, #8, #0x17
193DC6:  EOR.W           R3, R1, #0xFF
193DCA:  MOV             R1, R6
193DCC:  STR             R3, [R0,#0x20]
193DCE:  BCC             loc_193D98
193DD0:  MOV             R0, R12
193DD2:  POP.W           {R8,R9,R11}
193DD6:  POP             {R4-R7,PC}
