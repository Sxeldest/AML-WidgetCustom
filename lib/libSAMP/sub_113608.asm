; =========================================================
; Game Engine Function: sub_113608
; Address            : 0x113608 - 0x11362E
; =========================================================

113608:  PUSH            {R4,R5,R7,LR}
11360A:  ADD             R7, SP, #8
11360C:  MOV             R4, R0
11360E:  LDRD.W          R5, R0, [R0,#4]
113612:  CMP             R0, R5
113614:  BEQ             loc_113622
113616:  SUBS            R0, #8
113618:  STR             R0, [R4,#8]
11361A:  BL              sub_100ABA
11361E:  LDR             R0, [R4,#8]
113620:  B               loc_113612
113622:  LDR             R0, [R4]; void *
113624:  CBZ             R0, loc_11362A
113626:  BLX             j__ZdlPv; operator delete(void *)
11362A:  MOV             R0, R4
11362C:  POP             {R4,R5,R7,PC}
