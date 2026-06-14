; =========================================================
; Game Engine Function: sub_F7674
; Address            : 0xF7674 - 0xF76AE
; =========================================================

F7674:  PUSH            {R4,R5,R7,LR}
F7676:  ADD             R7, SP, #8
F7678:  MOV             R4, R1
F767A:  MOV             R5, R0
F767C:  LDRD.W          R1, R0, [R0]; src
F7680:  LDR             R3, [R4,#4]
F7682:  SUBS            R2, R0, R1; n
F7684:  SUBS            R0, R3, R2; dest
F7686:  CMP             R2, #1
F7688:  STR             R0, [R4,#4]
F768A:  BLT             loc_F7692
F768C:  BLX             j_memcpy
F7690:  LDR             R0, [R4,#4]
F7692:  LDR             R1, [R5]
F7694:  STR             R0, [R5]
F7696:  STR             R1, [R4,#4]
F7698:  LDR             R0, [R4,#8]
F769A:  LDR             R1, [R5,#4]
F769C:  STR             R0, [R5,#4]
F769E:  STR             R1, [R4,#8]
F76A0:  LDR             R0, [R4,#0xC]
F76A2:  LDR             R1, [R5,#8]
F76A4:  STR             R0, [R5,#8]
F76A6:  LDR             R0, [R4,#4]
F76A8:  STR             R1, [R4,#0xC]
F76AA:  STR             R0, [R4]
F76AC:  POP             {R4,R5,R7,PC}
