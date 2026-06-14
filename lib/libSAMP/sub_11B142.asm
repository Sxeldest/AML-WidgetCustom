; =========================================================
; Game Engine Function: sub_11B142
; Address            : 0x11B142 - 0x11B15C
; =========================================================

11B142:  PUSH            {R4,R5,R7,LR}
11B144:  ADD             R7, SP, #8
11B146:  LDR             R4, [R0,#4]
11B148:  LDR             R5, [R1]
11B14A:  MOV             R0, R4
11B14C:  MOV             R1, R5
11B14E:  BL              sub_11A698
11B152:  LDR             R1, [R4,#0x14]
11B154:  MOV             R0, R5
11B156:  POP.W           {R4,R5,R7,LR}
11B15A:  BX              R1
