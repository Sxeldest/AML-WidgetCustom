; =========================================================
; Game Engine Function: sub_FF5FE
; Address            : 0xFF5FE - 0xFF60C
; =========================================================

FF5FE:  PUSH            {R0,R1,LR}
FF600:  BL              sub_FF5E8
FF604:  POP.W           {R0,R1,LR}
FF608:  MOV             R5, R0
FF60A:  MOV             PC, LR
