; =========================================================
; Game Engine Function: sub_12DA4E
; Address            : 0x12DA4E - 0x12DA5E
; =========================================================

12DA4E:  PUSH            {R4,R6,R7,LR}
12DA50:  ADD             R7, SP, #8
12DA52:  MOV             R4, R0
12DA54:  BL              sub_F0B30
12DA58:  STR.W           R0, [R4,#0x8E4]
12DA5C:  POP             {R4,R6,R7,PC}
