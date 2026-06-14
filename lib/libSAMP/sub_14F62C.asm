; =========================================================
; Game Engine Function: sub_14F62C
; Address            : 0x14F62C - 0x14F666
; =========================================================

14F62C:  PUSH            {R4,R5,R7,LR}
14F62E:  ADD             R7, SP, #8
14F630:  MOV             R4, R1
14F632:  MOV             R5, R0
14F634:  LDRD.W          R1, R0, [R0]; src
14F638:  LDR             R3, [R4,#4]
14F63A:  SUBS            R2, R0, R1; n
14F63C:  SUBS            R0, R3, R2; dest
14F63E:  CMP             R2, #1
14F640:  STR             R0, [R4,#4]
14F642:  BLT             loc_14F64A
14F644:  BLX             j_memcpy
14F648:  LDR             R0, [R4,#4]
14F64A:  LDR             R1, [R5]
14F64C:  STR             R0, [R5]
14F64E:  STR             R1, [R4,#4]
14F650:  LDR             R0, [R4,#8]
14F652:  LDR             R1, [R5,#4]
14F654:  STR             R0, [R5,#4]
14F656:  STR             R1, [R4,#8]
14F658:  LDR             R0, [R4,#0xC]
14F65A:  LDR             R1, [R5,#8]
14F65C:  STR             R0, [R5,#8]
14F65E:  LDR             R0, [R4,#4]
14F660:  STR             R1, [R4,#0xC]
14F662:  STR             R0, [R4]
14F664:  POP             {R4,R5,R7,PC}
