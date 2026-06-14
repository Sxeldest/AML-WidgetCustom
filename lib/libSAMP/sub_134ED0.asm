; =========================================================
; Game Engine Function: sub_134ED0
; Address            : 0x134ED0 - 0x134EE6
; =========================================================

134ED0:  PUSH            {R4,R6,R7,LR}
134ED2:  ADD             R7, SP, #8
134ED4:  MOV             R4, R0
134ED6:  BL              sub_12BF00
134EDA:  LDRB.W          R0, [R4,#0x58]
134EDE:  CLZ.W           R0, R0
134EE2:  LSRS            R0, R0, #5
134EE4:  POP             {R4,R6,R7,PC}
