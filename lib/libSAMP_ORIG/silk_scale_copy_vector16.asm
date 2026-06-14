; =========================================================
; Game Engine Function: silk_scale_copy_vector16
; Address            : 0xCF784 - 0xCF7B0
; =========================================================

CF784:  PUSH            {R4,R6,R7,LR}
CF786:  ADD             R7, SP, #8
CF788:  CMP             R3, #1
CF78A:  IT LT
CF78C:  POPLT           {R4,R6,R7,PC}
CF78E:  UXTH.W          R12, R2
CF792:  MOV.W           LR, R2,ASR#16
CF796:  LDRSH.W         R2, [R1],#2
CF79A:  SUBS            R3, #1
CF79C:  MUL.W           R4, R12, R2
CF7A0:  SMULBB.W        R2, LR, R2
CF7A4:  ADD.W           R2, R2, R4,LSR#16
CF7A8:  STRH.W          R2, [R0],#2
CF7AC:  BNE             loc_CF796
CF7AE:  POP             {R4,R6,R7,PC}
