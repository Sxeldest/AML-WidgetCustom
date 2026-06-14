; =========================================================
; Game Engine Function: sub_F6190
; Address            : 0xF6190 - 0xF61A4
; =========================================================

F6190:  PUSH            {R4,R6,R7,LR}
F6192:  ADD             R7, SP, #8
F6194:  MOV             R4, R0
F6196:  BL              sub_F61A4
F619A:  MOV             R1, R4
F619C:  POP.W           {R4,R6,R7,LR}
F61A0:  B.W             sub_15E868
