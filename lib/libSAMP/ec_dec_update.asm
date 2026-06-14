; =========================================================
; Game Engine Function: ec_dec_update
; Address            : 0x193C4E - 0x193CD4
; =========================================================

193C4E:  PUSH            {R4-R7,LR}
193C50:  ADD             R7, SP, #0xC
193C52:  PUSH.W          {R8}
193C56:  SUBS            R5, R3, R2
193C58:  LDRD.W          R4, R6, [R0,#0x20]
193C5C:  MOVW            R12, #1
193C60:  CMP             R1, #0
193C62:  MLS.W           R3, R6, R5, R4
193C66:  MOVT            R12, #0x80
193C6A:  STR             R3, [R0,#0x20]
193C6C:  BEQ             loc_193C78
193C6E:  SUBS            R1, R2, R1
193C70:  ADD.W           R2, R0, #0x1C
193C74:  MULS            R1, R6
193C76:  B               loc_193C84
193C78:  MUL.W           R1, R6, R5
193C7C:  MOV             R2, R0
193C7E:  LDR.W           R6, [R2,#0x1C]!
193C82:  SUBS            R1, R6, R1
193C84:  CMP             R1, R12
193C86:  STR             R1, [R2]
193C88:  BCS             loc_193CCE
193C8A:  LDR.W           LR, [R0,#4]
193C8E:  LDRD.W          R2, R8, [R0,#0x14]
193C92:  LDR             R5, [R0,#0x28]
193C94:  ADDS            R2, #8
193C96:  LSLS            R1, R1, #8
193C98:  CMP             R8, LR
193C9A:  STR             R2, [R0,#0x14]
193C9C:  STR             R1, [R0,#0x1C]
193C9E:  BCS             loc_193CB0
193CA0:  LDR             R6, [R0]
193CA2:  ADD.W           R4, R8, #1
193CA6:  STR             R4, [R0,#0x18]
193CA8:  LDRB.W          R6, [R6,R8]
193CAC:  MOV             R8, R4
193CAE:  B               loc_193CB2
193CB0:  MOVS            R6, #0
193CB2:  ORR.W           R4, R6, R5,LSL#8
193CB6:  STR             R6, [R0,#0x28]
193CB8:  ADDS            R2, #8
193CBA:  CMP             R1, R12
193CBC:  UBFX.W          R4, R4, #1, #8
193CC0:  MOV             R5, R6
193CC2:  BFI.W           R4, R3, #8, #0x17
193CC6:  EOR.W           R3, R4, #0xFF
193CCA:  STR             R3, [R0,#0x20]
193CCC:  BCC             loc_193C96
193CCE:  POP.W           {R8}
193CD2:  POP             {R4-R7,PC}
