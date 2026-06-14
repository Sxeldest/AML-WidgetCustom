; =========================================================
; Game Engine Function: silk_scale_copy_vector16
; Address            : 0x1AD544 - 0x1AD570
; =========================================================

1AD544:  PUSH            {R4,R6,R7,LR}
1AD546:  ADD             R7, SP, #8
1AD548:  CMP             R3, #1
1AD54A:  IT LT
1AD54C:  POPLT           {R4,R6,R7,PC}
1AD54E:  UXTH.W          R12, R2
1AD552:  MOV.W           LR, R2,ASR#16
1AD556:  LDRSH.W         R2, [R1],#2
1AD55A:  SUBS            R3, #1
1AD55C:  MUL.W           R4, R12, R2
1AD560:  SMULBB.W        R2, LR, R2
1AD564:  ADD.W           R2, R2, R4,LSR#16
1AD568:  STRH.W          R2, [R0],#2
1AD56C:  BNE             loc_1AD556
1AD56E:  POP             {R4,R6,R7,PC}
