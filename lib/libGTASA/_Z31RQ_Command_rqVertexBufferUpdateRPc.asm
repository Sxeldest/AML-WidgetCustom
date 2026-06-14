; =========================================================
; Game Engine Function: _Z31RQ_Command_rqVertexBufferUpdateRPc
; Address            : 0x1CB918 - 0x1CB960
; =========================================================

1CB918:  LDR             R1, [R0]
1CB91A:  ADDS            R3, R1, #4
1CB91C:  MOV             R2, R1
1CB91E:  LDR.W           R12, [R2],#8
1CB922:  STR             R3, [R0]
1CB924:  LDR             R1, [R1,#4]
1CB926:  STR             R2, [R0]
1CB928:  CMP             R1, #0
1CB92A:  IT EQ
1CB92C:  BXEQ            LR
1CB92E:  PUSH            {R7,LR}
1CB930:  MOV             R7, SP
1CB932:  ADDS            R2, #3
1CB934:  ADD.W           LR, R1, #3
1CB938:  TST.W           R1, #3
1CB93C:  MOV             R3, R1
1CB93E:  IT NE
1CB940:  BICNE.W         R3, LR, #3
1CB944:  BIC.W           R2, R2, #3
1CB948:  ADD             R3, R2
1CB94A:  STR             R3, [R0]
1CB94C:  STR.W           R1, [R12,#4]
1CB950:  MOVW            R0, #0x8892
1CB954:  MOVW            R3, #0x88E4
1CB958:  POP.W           {R7,LR}
1CB95C:  B.W             j_glBufferData
