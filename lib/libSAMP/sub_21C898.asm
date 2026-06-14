; =========================================================
; Game Engine Function: sub_21C898
; Address            : 0x21C898 - 0x21C8BE
; =========================================================

21C898:  PUSH            {R4,R5,R7,LR}
21C89A:  ADD             R7, SP, #8
21C89C:  MOV             R5, R0
21C89E:  MOV             R4, R1
21C8A0:  MOV             R0, R1
21C8A2:  MOVS            R1, #0x5B ; '['
21C8A4:  BL              sub_2154F2
21C8A8:  ADD.W           R0, R5, #8
21C8AC:  MOV             R1, R4
21C8AE:  BL              sub_21AC38
21C8B2:  MOV             R0, R4
21C8B4:  MOVS            R1, #0x5D ; ']'
21C8B6:  POP.W           {R4,R5,R7,LR}
21C8BA:  B.W             sub_2154F2
