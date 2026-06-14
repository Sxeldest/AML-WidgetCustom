; =========================================================
; Game Engine Function: sub_1EE698
; Address            : 0x1EE698 - 0x1EE6A8
; =========================================================

1EE698:  PUSH            {R4,R6,R7,LR}
1EE69A:  ADD             R7, SP, #8
1EE69C:  MOVS            R1, #0
1EE69E:  MOV             R4, R0
1EE6A0:  BL              sub_1EE6F0
1EE6A4:  MOV             R0, R4
1EE6A6:  POP             {R4,R6,R7,PC}
