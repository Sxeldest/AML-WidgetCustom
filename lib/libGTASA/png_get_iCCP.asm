; =========================================================
; Game Engine Function: png_get_iCCP
; Address            : 0x1F39D0 - 0x1F3A2A
; =========================================================

1F39D0:  PUSH            {R4,R6,R7,LR}
1F39D2:  ADD             R7, SP, #8
1F39D4:  MOV             R12, R0
1F39D6:  CMP.W           R12, #0
1F39DA:  MOV.W           R0, #0
1F39DE:  IT NE
1F39E0:  CMPNE           R1, #0
1F39E2:  BEQ             locret_1F3A28
1F39E4:  LDR.W           R12, [R7,#arg_4]
1F39E8:  MOVS            R0, #0
1F39EA:  CMP.W           R12, #0
1F39EE:  ITT NE
1F39F0:  LDRNE.W         LR, [R7,#arg_0]
1F39F4:  CMPNE.W         LR, #0
1F39F8:  BEQ             locret_1F3A28
1F39FA:  CMP             R3, #0
1F39FC:  IT NE
1F39FE:  CMPNE           R2, #0
1F3A00:  BEQ             locret_1F3A28
1F3A02:  LDR             R4, [R1,#8]
1F3A04:  ANDS.W          R4, R4, #0x1000
1F3A08:  ITTTT NE
1F3A0A:  LDRDNE.W        R0, R1, [R1,#0x74]
1F3A0E:  STRNE           R0, [R2]
1F3A10:  STRNE.W         R1, [LR]
1F3A14:  LDRNE           R0, [R1]
1F3A16:  ITTTT NE
1F3A18:  REVNE           R0, R0
1F3A1A:  STRNE.W         R0, [R12]
1F3A1E:  MOVNE           R0, #0
1F3A20:  STRNE           R0, [R3]
1F3A22:  IT NE
1F3A24:  MOVNE.W         R0, #0x1000
1F3A28:  POP             {R4,R6,R7,PC}
