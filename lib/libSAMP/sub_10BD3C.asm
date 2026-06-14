; =========================================================
; Game Engine Function: sub_10BD3C
; Address            : 0x10BD3C - 0x10BD64
; =========================================================

10BD3C:  PUSH            {R4,R6,R7,LR}
10BD3E:  ADD             R7, SP, #8
10BD40:  SUB             SP, SP, #8
10BD42:  ADD.W           R4, R0, #0x48 ; 'H'
10BD46:  STRH.W          R1, [R7,#var_A]
10BD4A:  SUB.W           R1, R7, #-var_A
10BD4E:  MOV             R0, R4
10BD50:  BL              sub_10C464
10BD54:  CBZ             R0, loc_10BD60
10BD56:  SUB.W           R1, R7, #-var_A
10BD5A:  MOV             R0, R4
10BD5C:  BL              sub_10C6D8
10BD60:  ADD             SP, SP, #8
10BD62:  POP             {R4,R6,R7,PC}
