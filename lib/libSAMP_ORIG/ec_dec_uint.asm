; =========================================================
; Game Engine Function: ec_dec_uint
; Address            : 0xB5BB4 - 0xB5DB0
; =========================================================

B5BB4:  PUSH            {R4-R7,LR}
B5BB6:  ADD             R7, SP, #0xC
B5BB8:  PUSH.W          {R8-R11}
B5BBC:  SUB             SP, SP, #0xC
B5BBE:  MOV             R5, R1
B5BC0:  SUBS            R1, R5, #1
B5BC2:  MOV             R9, R0
B5BC4:  CLZ.W           R0, R1
B5BC8:  MOVW            R11, #1
B5BCC:  MOVW            R10, #0xFF00
B5BD0:  RSB.W           R2, R0, #0x20 ; ' '
B5BD4:  MOVT            R11, #0x80
B5BD8:  MOVT            R10, #0x7FFF
B5BDC:  CMP             R2, #9
B5BDE:  STR             R1, [SP,#0x28+var_20]
B5BE0:  BLT.W           loc_B5D14
B5BE4:  SUBS            R2, #8
B5BE6:  LDR.W           R0, [R9,#0x1C]
B5BEA:  STR             R0, [SP,#0x28+var_28]
B5BEC:  LSR.W           R8, R1, R2
B5BF0:  ADD.W           R5, R8, #1
B5BF4:  LDR.W           R4, [R9,#0x20]
B5BF8:  MOV             R1, R5
B5BFA:  STR             R2, [SP,#0x28+var_24]
B5BFC:  BLX             sub_108874
B5C00:  MOV             R6, R0
B5C02:  MOV             R0, R4
B5C04:  MOV             R1, R6
B5C06:  BLX             sub_108874
B5C0A:  ADDS            R0, #1
B5C0C:  MOV             R1, R6
B5C0E:  CMP             R0, R5
B5C10:  IT HI
B5C12:  MOVHI           R0, R5
B5C14:  LDR             R3, [SP,#0x28+var_28]
B5C16:  SUBS.W          R12, R5, R0
B5C1A:  SUB.W           R0, R8, R12
B5C1E:  MLS.W           R2, R0, R6, R4
B5C22:  IT EQ
B5C24:  MLSEQ.W         R1, R0, R1, R3
B5C28:  ADD.W           R0, R9, #0x1C
B5C2C:  CMP             R1, R11
B5C2E:  STM             R0!, {R1,R2,R6}
B5C30:  BCS             loc_B5C8A
B5C32:  LDR.W           LR, [R9,#4]
B5C36:  LDRD.W          R0, R8, [R9,#0x14]
B5C3A:  LDR.W           R3, [R9,#0x28]
B5C3E:  ADD.W           R6, R0, #8
B5C42:  LSLS            R1, R1, #8
B5C44:  CMP             R8, LR
B5C46:  STR.W           R6, [R9,#0x14]
B5C4A:  STR.W           R1, [R9,#0x1C]
B5C4E:  BCS             loc_B5C64
B5C50:  LDR.W           R0, [R9]
B5C54:  ADD.W           R5, R8, #1
B5C58:  STR.W           R5, [R9,#0x18]
B5C5C:  LDRB.W          R0, [R0,R8]
B5C60:  MOV             R8, R5
B5C62:  B               loc_B5C66
B5C64:  MOVS            R0, #0
B5C66:  ORR.W           R3, R0, R3,LSL#8
B5C6A:  STR.W           R0, [R9,#0x28]
B5C6E:  AND.W           R2, R10, R2,LSL#8
B5C72:  ADDS            R6, #8
B5C74:  UBFX.W          R3, R3, #1, #8
B5C78:  CMP             R1, R11
B5C7A:  ORR.W           R2, R2, R3
B5C7E:  MOV             R3, R0
B5C80:  EOR.W           R2, R2, #0xFF
B5C84:  STR.W           R2, [R9,#0x20]
B5C88:  BCC             loc_B5C42
B5C8A:  LDRD.W          R1, R8, [R9,#0xC]
B5C8E:  LDR             R4, [SP,#0x28+var_24]
B5C90:  CMP             R8, R4
B5C92:  LSL.W           LR, R12, R4
B5C96:  BCS             loc_B5CDE
B5C98:  CMP.W           R8, #0x11
B5C9C:  MOV             R0, R8
B5C9E:  IT LE
B5CA0:  MOVLE           R0, #0x11
B5CA2:  RSB.W           R5, R8, #7
B5CA6:  LDRD.W          R3, R6, [R9,#4]
B5CAA:  ADD.W           R12, R5, R0
B5CAE:  MOV             R5, R8
B5CB0:  CMP             R6, R3
B5CB2:  BCS             loc_B5CC4
B5CB4:  ADDS            R6, #1
B5CB6:  STR.W           R6, [R9,#8]
B5CBA:  LDR.W           R0, [R9]
B5CBE:  SUBS            R2, R3, R6
B5CC0:  LDRB            R0, [R0,R2]
B5CC2:  B               loc_B5CC6
B5CC4:  MOVS            R0, #0
B5CC6:  LSLS            R0, R5
B5CC8:  ORRS            R1, R0
B5CCA:  ADD.W           R0, R5, #8
B5CCE:  CMP             R5, #0x11
B5CD0:  MOV             R5, R0
B5CD2:  BLT             loc_B5CB0
B5CD4:  BIC.W           R0, R12, #7
B5CD8:  ADD             R0, R8
B5CDA:  ADD.W           R8, R0, #8
B5CDE:  SUB.W           R0, R8, R4
B5CE2:  STR.W           R0, [R9,#0x10]
B5CE6:  LDR.W           R0, [R9,#0x14]
B5CEA:  LSR.W           R2, R1, R4
B5CEE:  STR.W           R2, [R9,#0xC]
B5CF2:  MOVS            R2, #1
B5CF4:  ADD             R0, R4
B5CF6:  STR.W           R0, [R9,#0x14]
B5CFA:  LSL.W           R0, R2, R4
B5CFE:  SUBS            R0, #1
B5D00:  ANDS            R0, R1
B5D02:  LDR             R1, [SP,#0x28+var_20]
B5D04:  ORR.W           R0, R0, LR
B5D08:  CMP             R0, R1
B5D0A:  ITT HI
B5D0C:  STRHI.W         R2, [R9,#0x2C]
B5D10:  MOVHI           R0, R1
B5D12:  B               loc_B5DA8
B5D14:  LDRD.W          R8, R4, [R9,#0x1C]
B5D18:  MOV             R1, R5
B5D1A:  MOV             R0, R8
B5D1C:  BLX             sub_108874
B5D20:  MOV             R6, R0
B5D22:  MOV             R0, R4
B5D24:  MOV             R1, R6
B5D26:  BLX             sub_108874
B5D2A:  ADDS            R0, #1
B5D2C:  CMP             R0, R5
B5D2E:  IT HI
B5D30:  MOVHI           R0, R5
B5D32:  LDR             R1, [SP,#0x28+var_20]
B5D34:  SUBS            R0, R5, R0
B5D36:  SUB.W           R3, R1, R0
B5D3A:  MOV             R1, R6
B5D3C:  MLS.W           R2, R3, R6, R4
B5D40:  IT EQ
B5D42:  MLSEQ.W         R1, R3, R1, R8
B5D46:  ADD.W           R3, R9, #0x1C
B5D4A:  CMP             R1, R11
B5D4C:  STM             R3!, {R1,R2,R6}
B5D4E:  BCS             loc_B5DA8
B5D50:  LDR.W           R12, [R9,#4]
B5D54:  LDRD.W          R3, LR, [R9,#0x14]
B5D58:  LDR.W           R5, [R9,#0x28]
B5D5C:  ADD.W           R6, R3, #8
B5D60:  LSLS            R1, R1, #8
B5D62:  CMP             LR, R12
B5D64:  STR.W           R6, [R9,#0x14]
B5D68:  STR.W           R1, [R9,#0x1C]
B5D6C:  BCS             loc_B5D82
B5D6E:  LDR.W           R3, [R9]
B5D72:  ADD.W           R4, LR, #1
B5D76:  STR.W           R4, [R9,#0x18]
B5D7A:  LDRB.W          R3, [R3,LR]
B5D7E:  MOV             LR, R4
B5D80:  B               loc_B5D84
B5D82:  MOVS            R3, #0
B5D84:  ORR.W           R4, R3, R5,LSL#8
B5D88:  STR.W           R3, [R9,#0x28]
B5D8C:  AND.W           R2, R10, R2,LSL#8
B5D90:  ADDS            R6, #8
B5D92:  UBFX.W          R4, R4, #1, #8
B5D96:  CMP             R1, R11
B5D98:  ORR.W           R2, R2, R4
B5D9C:  MOV             R5, R3
B5D9E:  EOR.W           R2, R2, #0xFF
B5DA2:  STR.W           R2, [R9,#0x20]
B5DA6:  BCC             loc_B5D60
B5DA8:  ADD             SP, SP, #0xC
B5DAA:  POP.W           {R8-R11}
B5DAE:  POP             {R4-R7,PC}
