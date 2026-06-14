; =========================================================
; Game Engine Function: _Z30RQ_Command_rqIndexBufferUpdateRPc
; Address            : 0x1CBBB8 - 0x1CBC00
; =========================================================

1CBBB8:  LDR             R1, [R0]
1CBBBA:  ADDS            R3, R1, #4
1CBBBC:  MOV             R2, R1
1CBBBE:  LDR.W           R12, [R2],#8
1CBBC2:  STR             R3, [R0]
1CBBC4:  LDR             R1, [R1,#4]
1CBBC6:  STR             R2, [R0]
1CBBC8:  CMP             R1, #0
1CBBCA:  IT EQ
1CBBCC:  BXEQ            LR
1CBBCE:  PUSH            {R7,LR}
1CBBD0:  MOV             R7, SP
1CBBD2:  ADDS            R2, #3
1CBBD4:  ADD.W           LR, R1, #3
1CBBD8:  TST.W           R1, #3
1CBBDC:  MOV             R3, R1
1CBBDE:  IT NE
1CBBE0:  BICNE.W         R3, LR, #3
1CBBE4:  BIC.W           R2, R2, #3
1CBBE8:  ADD             R3, R2
1CBBEA:  STR             R3, [R0]
1CBBEC:  STR.W           R1, [R12,#8]
1CBBF0:  MOVW            R0, #0x8893
1CBBF4:  MOVW            R3, #0x88E4
1CBBF8:  POP.W           {R7,LR}
1CBBFC:  B.W             j_glBufferData
