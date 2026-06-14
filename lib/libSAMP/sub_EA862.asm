; =========================================================
; Game Engine Function: sub_EA862
; Address            : 0xEA862 - 0xEA87E
; =========================================================

EA862:  PUSH            {R4,R5,R7,LR}
EA864:  ADD             R7, SP, #8
EA866:  MOV             R5, R1
EA868:  MOV             R4, R0
EA86A:  LDRB.W          R1, [R0],#8
EA86E:  BL              sub_E57FC
EA872:  MOVS            R0, #0
EA874:  STRD.W          R5, R0, [R4,#8]
EA878:  MOVS            R0, #4
EA87A:  STRB            R0, [R4]
EA87C:  POP             {R4,R5,R7,PC}
