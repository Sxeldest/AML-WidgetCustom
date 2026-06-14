; =========================================================
; Game Engine Function: sub_1056D0
; Address            : 0x1056D0 - 0x10571A
; =========================================================

1056D0:  PUSH            {R4,R5,R7,LR}
1056D2:  ADD             R7, SP, #8
1056D4:  MOV             R4, R1
1056D6:  LDR             R1, =(asc_4A928 - 0x1056E0); "<" ...
1056D8:  MOV             R5, R0
1056DA:  MOV             R0, R4
1056DC:  ADD             R1, PC; "<"
1056DE:  ADDS            R2, R1, #1
1056E0:  BL              sub_FFB40
1056E4:  ADD.W           R0, R5, #8
1056E8:  MOV             R1, R4
1056EA:  BL              sub_1037E0
1056EE:  LDR             R0, [R4,#4]
1056F0:  CBZ             R0, loc_10570A
1056F2:  LDR             R1, [R4]
1056F4:  ADD             R0, R1
1056F6:  LDRB.W          R0, [R0,#-1]
1056FA:  CMP             R0, #0x3E ; '>'
1056FC:  BNE             loc_10570A
1056FE:  LDR             R1, =(asc_4B4F4 - 0x105706); " " ...
105700:  MOV             R0, R4
105702:  ADD             R1, PC; " "
105704:  ADDS            R2, R1, #1
105706:  BL              sub_FFB40
10570A:  LDR             R1, =(asc_4DB85 - 0x105712); ">" ...
10570C:  MOV             R0, R4
10570E:  ADD             R1, PC; ">"
105710:  ADDS            R2, R1, #1
105712:  POP.W           {R4,R5,R7,LR}
105716:  B.W             sub_FFB40
