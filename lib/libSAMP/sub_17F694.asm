; =========================================================
; Game Engine Function: sub_17F694
; Address            : 0x17F694 - 0x17F6B6
; =========================================================

17F694:  PUSH            {R4,R5,R7,LR}
17F696:  ADD             R7, SP, #8
17F698:  MOV             R4, R1
17F69A:  MOV             R5, R0
17F69C:  BL              sub_17E5AA
17F6A0:  CBZ             R0, loc_17F6A8
17F6A2:  MOV.W           R0, #0xFFFFFFFF
17F6A6:  POP             {R4,R5,R7,PC}
17F6A8:  MOV             R0, R5
17F6AA:  MOV             R1, R4
17F6AC:  BL              sub_17E580
17F6B0:  EOR.W           R0, R0, #1
17F6B4:  POP             {R4,R5,R7,PC}
