; =========================================================
; Game Engine Function: silk_sum_sqr_shift
; Address            : 0x192BE2 - 0x192C98
; =========================================================

192BE2:  PUSH            {R4-R7,LR}
192BE4:  ADD             R7, SP, #0xC
192BE6:  PUSH.W          {R8}
192BEA:  CLZ.W           R5, R3
192BEE:  SUB.W           R12, R3, #1
192BF2:  RSB.W           LR, R5, #0x1F
192BF6:  MOVS            R5, #0
192BF8:  MOV             R4, R3
192BFA:  CMP             R3, #2
192BFC:  BLT             loc_192C22
192BFE:  ADD.W           R6, R2, R5,LSL#1
192C02:  LDRSH.W         R8, [R2,R5,LSL#1]
192C06:  ADDS            R5, #2
192C08:  LDRSH.W         R6, [R6,#2]
192C0C:  CMP             R5, R12
192C0E:  SMULBB.W        R6, R6, R6
192C12:  SMLABB.W        R6, R8, R8, R6
192C16:  LSR.W           R6, R6, LR
192C1A:  ADD             R4, R6
192C1C:  BLT             loc_192BFE
192C1E:  BIC.W           R5, R3, #1
192C22:  CMP             R5, R3
192C24:  BGE             loc_192C34
192C26:  LDRSH.W         R5, [R2,R5,LSL#1]
192C2A:  SMULBB.W        R5, R5, R5
192C2E:  LSR.W           R5, R5, LR
192C32:  ADD             R4, R5
192C34:  CLZ.W           R4, R4
192C38:  ADD.W           R6, LR, #3
192C3C:  SUB.W           LR, R6, R4
192C40:  MOVS            R5, #0
192C42:  CMP.W           LR, #0
192C46:  MOV.W           R4, #0
192C4A:  IT LE
192C4C:  MOVLE           LR, R5
192C4E:  CMP             R3, #2
192C50:  BLT             loc_192C7A
192C52:  MOVS            R4, #0
192C54:  MOVS            R5, #0
192C56:  ADD.W           R6, R2, R5,LSL#1
192C5A:  LDRSH.W         R8, [R2,R5,LSL#1]
192C5E:  ADDS            R5, #2
192C60:  LDRSH.W         R6, [R6,#2]
192C64:  CMP             R5, R12
192C66:  SMULBB.W        R6, R6, R6
192C6A:  SMLABB.W        R6, R8, R8, R6
192C6E:  LSR.W           R6, R6, LR
192C72:  ADD             R4, R6
192C74:  BLT             loc_192C56
192C76:  BIC.W           R5, R3, #1
192C7A:  CMP             R5, R3
192C7C:  BGE             loc_192C8C
192C7E:  LDRSH.W         R2, [R2,R5,LSL#1]
192C82:  SMULBB.W        R2, R2, R2
192C86:  LSR.W           R2, R2, LR
192C8A:  ADD             R4, R2
192C8C:  STR.W           LR, [R1]
192C90:  STR             R4, [R0]
192C92:  POP.W           {R8}
192C96:  POP             {R4-R7,PC}
