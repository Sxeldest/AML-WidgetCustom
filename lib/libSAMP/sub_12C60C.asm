; =========================================================
; Game Engine Function: sub_12C60C
; Address            : 0x12C60C - 0x12C646
; =========================================================

12C60C:  PUSH            {R4,R5,R7,LR}
12C60E:  ADD             R7, SP, #8
12C610:  MOV             R4, R1
12C612:  MOV             R5, R0
12C614:  LDRD.W          R1, R0, [R0]; src
12C618:  LDR             R3, [R4,#4]
12C61A:  SUBS            R2, R0, R1; n
12C61C:  SUBS            R0, R3, R2; dest
12C61E:  CMP             R2, #1
12C620:  STR             R0, [R4,#4]
12C622:  BLT             loc_12C62A
12C624:  BLX             j_memcpy
12C628:  LDR             R0, [R4,#4]
12C62A:  LDR             R1, [R5]
12C62C:  STR             R0, [R5]
12C62E:  STR             R1, [R4,#4]
12C630:  LDR             R0, [R4,#8]
12C632:  LDR             R1, [R5,#4]
12C634:  STR             R0, [R5,#4]
12C636:  STR             R1, [R4,#8]
12C638:  LDR             R0, [R4,#0xC]
12C63A:  LDR             R1, [R5,#8]
12C63C:  STR             R0, [R5,#8]
12C63E:  LDR             R0, [R4,#4]
12C640:  STR             R1, [R4,#0xC]
12C642:  STR             R0, [R4]
12C644:  POP             {R4,R5,R7,PC}
