; =========================================================
; Game Engine Function: decode_pulses
; Address            : 0xC1B68 - 0xC1CFE
; =========================================================

C1B68:  PUSH            {R4-R7,LR}
C1B6A:  ADD             R7, SP, #0xC
C1B6C:  PUSH.W          {R8-R11}
C1B70:  SUB             SP, SP, #4
C1B72:  MOV             R9, R0
C1B74:  LDR             R0, =(off_111870 - 0xC1B82)
C1B76:  MOV             R8, R2
C1B78:  ADD.W           R6, R8, #1
C1B7C:  MOV             R4, R1
C1B7E:  ADD             R0, PC; off_111870
C1B80:  CMP             R4, R8
C1B82:  MOV             R1, R8
C1B84:  IT LT
C1B86:  MOVLT           R1, R4
C1B88:  CMP             R6, R4
C1B8A:  MOV             R2, R6
C1B8C:  LDR.W           R1, [R0,R1,LSL#2]
C1B90:  IT GT
C1B92:  MOVGT           R2, R4
C1B94:  CMP             R4, R8
C1B96:  LDR.W           R0, [R0,R2,LSL#2]
C1B9A:  MOV             R2, R8
C1B9C:  IT GT
C1B9E:  MOVGT           R2, R4
C1BA0:  CMP             R6, R4
C1BA2:  LDR.W           R1, [R1,R2,LSL#2]
C1BA6:  IT LT
C1BA8:  MOVLT           R6, R4
C1BAA:  LDR.W           R0, [R0,R6,LSL#2]
C1BAE:  ADD             R1, R0
C1BB0:  MOV             R0, R3
C1BB2:  BLX             j_ec_dec_uint
C1BB6:  CMP             R4, #3
C1BB8:  BLT             loc_C1CAC
C1BBA:  LDR.W           LR, =(off_111870 - 0xC1BCE)
C1BBE:  MOV.W           R10, #0
C1BC2:  LDR.W           R11, =(off_111870 - 0xC1BD2)
C1BC6:  LDR.W           R12, =(off_111870 - 0xC1BD4)
C1BCA:  ADD             LR, PC; off_111870
C1BCC:  LDR             R3, =(off_111870 - 0xC1BD6)
C1BCE:  ADD             R11, PC; off_111870
C1BD0:  ADD             R12, PC; off_111870
C1BD2:  ADD             R3, PC; off_111870
C1BD4:  MOV             R2, R4
C1BD6:  CMP             R8, R2
C1BD8:  BGE             loc_C1BFE
C1BDA:  ADD.W           R6, LR, R8,LSL#2
C1BDE:  LDR.W           R1, [LR,R8,LSL#2]
C1BE2:  LDR             R6, [R6,#4]
C1BE4:  LDR.W           R1, [R1,R2,LSL#2]
C1BE8:  LDR.W           R4, [R6,R2,LSL#2]
C1BEC:  CMP             R0, R1
C1BEE:  BCC             loc_C1C5C
C1BF0:  CMP             R0, R4
C1BF2:  BCS             loc_C1C5C
C1BF4:  MOVS            R6, #0
C1BF6:  SUBS            R0, R0, R1
C1BF8:  STR.W           R6, [R9]
C1BFC:  B               loc_C1CA0
C1BFE:  LDR.W           R5, [R12,R2,LSL#2]
C1C02:  ADD.W           R1, R5, R8,LSL#2
C1C06:  LDR.W           R6, [R5,R2,LSL#2]
C1C0A:  LDR             R1, [R1,#4]
C1C0C:  SUBS            R4, R0, R1
C1C0E:  IT CC
C1C10:  MOVCC           R4, R0
C1C12:  MOV.W           R0, #0
C1C16:  IT CS
C1C18:  MOVCS.W         R0, #0xFFFFFFFF
C1C1C:  CMP             R6, R4
C1C1E:  MOV             R6, R8
C1C20:  BLS             loc_C1C38
C1C22:  MOV             R5, R2
C1C24:  ADD.W           R1, R3, R5,LSL#2
C1C28:  SUBS            R5, #1
C1C2A:  LDR.W           R1, [R1,#-4]
C1C2E:  LDR.W           R1, [R1,R2,LSL#2]
C1C32:  CMP             R1, R4
C1C34:  BHI             loc_C1C24
C1C36:  B               loc_C1C44
C1C38:  LDR.W           R1, [R5,R6,LSL#2]
C1C3C:  SUBS            R6, #1
C1C3E:  CMP             R1, R4
C1C40:  BHI             loc_C1C38
C1C42:  ADDS            R5, R6, #1
C1C44:  ADD.W           R6, R8, R0
C1C48:  MOV             R8, R5
C1C4A:  SUBS            R6, R6, R5
C1C4C:  EORS            R0, R6
C1C4E:  SMLABB.W        R10, R0, R0, R10
C1C52:  SXTH            R0, R0
C1C54:  STR.W           R0, [R9]
C1C58:  SUBS            R0, R4, R1
C1C5A:  B               loc_C1CA0
C1C5C:  CMP             R0, R4
C1C5E:  MOV.W           R5, #0
C1C62:  MOV             R1, R0
C1C64:  MOV             LR, R12
C1C66:  ITT CS
C1C68:  MOVCS.W         R5, #0xFFFFFFFF
C1C6C:  SUBCS           R1, R1, R4
C1C6E:  ADD.W           R6, R11, R8,LSL#2
C1C72:  ADDS            R5, #1
C1C74:  SUB.W           R8, R8, #1
C1C78:  LDR.W           R6, [R6,#-4]
C1C7C:  LDR.W           R12, [R6,R2,LSL#2]
C1C80:  CMP             R1, R12
C1C82:  BCC             loc_C1C6E
C1C84:  CMP             R0, R4
C1C86:  IT CS
C1C88:  MVNCS           R5, R5
C1C8A:  SXTH            R0, R5
C1C8C:  SMLABB.W        R10, R5, R5, R10
C1C90:  STR.W           R0, [R9]
C1C94:  SUB.W           R0, R1, R12
C1C98:  MOV             R12, LR
C1C9A:  LDR.W           LR, =(off_111870 - 0xC1CA2)
C1C9E:  ADD             LR, PC; off_111870
C1CA0:  SUBS            R4, R2, #1
C1CA2:  ADD.W           R9, R9, #4
C1CA6:  CMP             R2, #3
C1CA8:  BGT             loc_C1BD4
C1CAA:  B               loc_C1CB0
C1CAC:  MOV.W           R10, #0
C1CB0:  MOVS            R1, #1
C1CB2:  MOVS            R6, #0
C1CB4:  ORR.W           R1, R1, R8,LSL#1
C1CB8:  SUBS            R2, R0, R1
C1CBA:  IT CC
C1CBC:  MOVCC           R2, R0
C1CBE:  ADDS            R3, R2, #1
C1CC0:  CMP.W           R6, R3,LSR#1
C1CC4:  IT NE
C1CC6:  ANDNE.W         R2, R3, #1
C1CCA:  CMP             R0, R1
C1CCC:  IT CS
C1CCE:  SUBCS.W         R8, R8, #1
C1CD2:  RSB.W           R6, R2, R3,LSR#1
C1CD6:  SUB.W           R0, R8, R3,LSR#1
C1CDA:  RSB.W           R2, R2, #0
C1CDE:  EOR.W           R2, R2, R6
C1CE2:  IT CS
C1CE4:  MVNCS           R0, R0
C1CE6:  SMLABB.W        R1, R0, R0, R10
C1CEA:  SXTH            R3, R0
C1CEC:  SMLABB.W        R0, R2, R2, R1
C1CF0:  SXTH            R1, R2
C1CF2:  STRD.W          R3, R1, [R9]
C1CF6:  ADD             SP, SP, #4
C1CF8:  POP.W           {R8-R11}
C1CFC:  POP             {R4-R7,PC}
