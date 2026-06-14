; =========================================================
; Game Engine Function: sub_1038C0
; Address            : 0x1038C0 - 0x103914
; =========================================================

1038C0:  PUSH            {R4,R5,R7,LR}
1038C2:  ADD             R7, SP, #8
1038C4:  MOV             R5, R0
1038C6:  LDR             R0, [R0,#0xC]
1038C8:  MOV             R4, R1
1038CA:  CBZ             R0, loc_1038EE
1038CC:  LDR             R1, =(asc_4A928 - 0x1038D4); "<" ...
1038CE:  MOV             R0, R4
1038D0:  ADD             R1, PC; "<"
1038D2:  ADDS            R2, R1, #1
1038D4:  BL              sub_FFB40
1038D8:  ADD.W           R0, R5, #8
1038DC:  MOV             R1, R4
1038DE:  BL              sub_1037E0
1038E2:  LDR             R1, =(asc_4DB85 - 0x1038EA); ">" ...
1038E4:  MOV             R0, R4
1038E6:  ADD             R1, PC; ">"
1038E8:  ADDS            R2, R1, #1
1038EA:  BL              sub_FFB40
1038EE:  LDR             R1, =(asc_4F675 - 0x1038F6); "(" ...
1038F0:  MOV             R0, R4
1038F2:  ADD             R1, PC; "("
1038F4:  ADDS            R2, R1, #1
1038F6:  BL              sub_FFB40
1038FA:  ADD.W           R0, R5, #0x10
1038FE:  MOV             R1, R4
103900:  BL              sub_1037E0
103904:  LDR             R1, =(asc_50037 - 0x10390C); ")" ...
103906:  MOV             R0, R4
103908:  ADD             R1, PC; ")"
10390A:  ADDS            R2, R1, #1
10390C:  POP.W           {R4,R5,R7,LR}
103910:  B.W             sub_FFB40
