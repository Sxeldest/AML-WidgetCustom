; =========================================================
; Game Engine Function: sub_17FDF0
; Address            : 0x17FDF0 - 0x17FE12
; =========================================================

17FDF0:  PUSH            {R4,R6,R7,LR}
17FDF2:  ADD             R7, SP, #8
17FDF4:  MOV             R4, R0
17FDF6:  ADD.W           R0, R0, #0x830
17FDFA:  BL              sub_17E5E4
17FDFE:  ADDW            R0, R4, #0x704
17FE02:  BL              sub_17D542
17FE06:  ADD.W           R0, R4, #0x18
17FE0A:  BL              sub_187574
17FE0E:  MOV             R0, R4
17FE10:  POP             {R4,R6,R7,PC}
