; =========================================================
; Game Engine Function: sub_E972C
; Address            : 0xE972C - 0xE9766
; =========================================================

E972C:  PUSH            {R4,R5,R7,LR}
E972E:  ADD             R7, SP, #8
E9730:  MOV             R4, R1
E9732:  MOV             R5, R0
E9734:  LDRD.W          R1, R0, [R0]; src
E9738:  LDR             R3, [R4,#4]
E973A:  SUBS            R2, R0, R1; n
E973C:  SUBS            R0, R3, R2; dest
E973E:  CMP             R2, #1
E9740:  STR             R0, [R4,#4]
E9742:  BLT             loc_E974A
E9744:  BLX             j_memcpy
E9748:  LDR             R0, [R4,#4]
E974A:  LDR             R1, [R5]
E974C:  STR             R0, [R5]
E974E:  STR             R1, [R4,#4]
E9750:  LDR             R0, [R4,#8]
E9752:  LDR             R1, [R5,#4]
E9754:  STR             R0, [R5,#4]
E9756:  STR             R1, [R4,#8]
E9758:  LDR             R0, [R4,#0xC]
E975A:  LDR             R1, [R5,#8]
E975C:  STR             R0, [R5,#8]
E975E:  LDR             R0, [R4,#4]
E9760:  STR             R1, [R4,#0xC]
E9762:  STR             R0, [R4]
E9764:  POP             {R4,R5,R7,PC}
