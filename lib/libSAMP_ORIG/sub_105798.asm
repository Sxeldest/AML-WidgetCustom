; =========================================================
; Game Engine Function: sub_105798
; Address            : 0x105798 - 0x1057C4
; =========================================================

105798:  PUSH            {R4,R5,R7,LR}
10579A:  ADD             R7, SP, #8
10579C:  MOV             R4, R1
10579E:  LDR             R1, =(aEnableIf - 0x1057A8); " [enable_if:" ...
1057A0:  MOV             R5, R0
1057A2:  MOV             R0, R4
1057A4:  ADD             R1, PC; " [enable_if:"
1057A6:  ADD.W           R2, R1, #0xC
1057AA:  BL              sub_FFB40
1057AE:  ADD.W           R0, R5, #8
1057B2:  MOV             R1, R4
1057B4:  BL              sub_1037E0
1057B8:  MOV             R0, R4
1057BA:  MOVS            R1, #0x5D ; ']'
1057BC:  POP.W           {R4,R5,R7,LR}
1057C0:  B.W             sub_FE09A
