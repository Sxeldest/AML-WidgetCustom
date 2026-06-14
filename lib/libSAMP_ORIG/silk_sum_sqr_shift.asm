; =========================================================
; Game Engine Function: silk_sum_sqr_shift
; Address            : 0xB49BE - 0xB4A74
; =========================================================

B49BE:  PUSH            {R4-R7,LR}
B49C0:  ADD             R7, SP, #0xC
B49C2:  PUSH.W          {R8}
B49C6:  CLZ.W           R5, R3
B49CA:  SUB.W           R12, R3, #1
B49CE:  RSB.W           LR, R5, #0x1F
B49D2:  MOVS            R5, #0
B49D4:  MOV             R4, R3
B49D6:  CMP             R3, #2
B49D8:  BLT             loc_B49FE
B49DA:  ADD.W           R6, R2, R5,LSL#1
B49DE:  LDRSH.W         R8, [R2,R5,LSL#1]
B49E2:  ADDS            R5, #2
B49E4:  LDRSH.W         R6, [R6,#2]
B49E8:  CMP             R5, R12
B49EA:  SMULBB.W        R6, R6, R6
B49EE:  SMLABB.W        R6, R8, R8, R6
B49F2:  LSR.W           R6, R6, LR
B49F6:  ADD             R4, R6
B49F8:  BLT             loc_B49DA
B49FA:  BIC.W           R5, R3, #1
B49FE:  CMP             R5, R3
B4A00:  BGE             loc_B4A10
B4A02:  LDRSH.W         R5, [R2,R5,LSL#1]
B4A06:  SMULBB.W        R5, R5, R5
B4A0A:  LSR.W           R5, R5, LR
B4A0E:  ADD             R4, R5
B4A10:  CLZ.W           R4, R4
B4A14:  ADD.W           R6, LR, #3
B4A18:  SUB.W           LR, R6, R4
B4A1C:  MOVS            R5, #0
B4A1E:  CMP.W           LR, #0
B4A22:  MOV.W           R4, #0
B4A26:  IT LE
B4A28:  MOVLE           LR, R5
B4A2A:  CMP             R3, #2
B4A2C:  BLT             loc_B4A56
B4A2E:  MOVS            R4, #0
B4A30:  MOVS            R5, #0
B4A32:  ADD.W           R6, R2, R5,LSL#1
B4A36:  LDRSH.W         R8, [R2,R5,LSL#1]
B4A3A:  ADDS            R5, #2
B4A3C:  LDRSH.W         R6, [R6,#2]
B4A40:  CMP             R5, R12
B4A42:  SMULBB.W        R6, R6, R6
B4A46:  SMLABB.W        R6, R8, R8, R6
B4A4A:  LSR.W           R6, R6, LR
B4A4E:  ADD             R4, R6
B4A50:  BLT             loc_B4A32
B4A52:  BIC.W           R5, R3, #1
B4A56:  CMP             R5, R3
B4A58:  BGE             loc_B4A68
B4A5A:  LDRSH.W         R2, [R2,R5,LSL#1]
B4A5E:  SMULBB.W        R2, R2, R2
B4A62:  LSR.W           R2, R2, LR
B4A66:  ADD             R4, R2
B4A68:  STR.W           LR, [R1]
B4A6C:  STR             R4, [R0]
B4A6E:  POP.W           {R8}
B4A72:  POP             {R4-R7,PC}
