; =========================================================
; Game Engine Function: sub_1FFF50
; Address            : 0x1FFF50 - 0x1FFF60
; =========================================================

1FFF50:  PUSH            {R4,R6,R7,LR}
1FFF52:  ADD             R7, SP, #8
1FFF54:  MOVS            R1, #0
1FFF56:  MOV             R4, R0
1FFF58:  BL              sub_1FFCD8
1FFF5C:  MOV             R0, R4
1FFF5E:  POP             {R4,R6,R7,PC}
