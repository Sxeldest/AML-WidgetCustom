; =========================================================
; Game Engine Function: silk_interpolate
; Address            : 0xD3582 - 0xD35B8
; =========================================================

D3582:  PUSH            {R4,R6,R7,LR}
D3584:  ADD             R7, SP, #8
D3586:  LDR.W           R12, [R7,#arg_0]
D358A:  CMP.W           R12, #1
D358E:  IT LT
D3590:  POPLT           {R4,R6,R7,PC}
D3592:  SXTH.W          LR, R3
D3596:  LDRSH.W         R3, [R1],#2
D359A:  SUBS.W          R12, R12, #1
D359E:  LDRH.W          R4, [R2],#2
D35A2:  SUB.W           R4, R4, R3
D35A6:  SXTH            R4, R4
D35A8:  SMULBB.W        R4, R4, LR
D35AC:  ADD.W           R3, R3, R4,LSR#2
D35B0:  STRH.W          R3, [R0],#2
D35B4:  BNE             loc_D3596
D35B6:  POP             {R4,R6,R7,PC}
