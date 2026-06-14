; =========================================================
; Game Engine Function: sub_DC7F8
; Address            : 0xDC7F8 - 0xDC832
; =========================================================

DC7F8:  PUSH            {R4,R5,R7,LR}
DC7FA:  ADD             R7, SP, #8
DC7FC:  MOV             R4, R1
DC7FE:  MOV             R5, R0
DC800:  LDRD.W          R1, R0, [R0]; src
DC804:  LDR             R3, [R4,#4]
DC806:  SUBS            R2, R0, R1; n
DC808:  SUBS            R0, R3, R2; dest
DC80A:  CMP             R2, #1
DC80C:  STR             R0, [R4,#4]
DC80E:  BLT             loc_DC816
DC810:  BLX             j_memcpy
DC814:  LDR             R0, [R4,#4]
DC816:  LDR             R1, [R5]
DC818:  STR             R0, [R5]
DC81A:  STR             R1, [R4,#4]
DC81C:  LDR             R0, [R4,#8]
DC81E:  LDR             R1, [R5,#4]
DC820:  STR             R0, [R5,#4]
DC822:  STR             R1, [R4,#8]
DC824:  LDR             R0, [R4,#0xC]
DC826:  LDR             R1, [R5,#8]
DC828:  STR             R0, [R5,#8]
DC82A:  LDR             R0, [R4,#4]
DC82C:  STR             R1, [R4,#0xC]
DC82E:  STR             R0, [R4]
DC830:  POP             {R4,R5,R7,PC}
