; =========================================================
; Game Engine Function: sub_97734
; Address            : 0x97734 - 0x97778
; =========================================================

97734:  PUSH            {R4,R5,R7,LR}
97736:  ADD             R7, SP, #8
97738:  LDR             R4, =(dword_1ACF68 - 0x97746)
9773A:  MOVW            R12, #0x1A10
9773E:  MOVW            R5, #0x1A4C
97742:  ADD             R4, PC; dword_1ACF68
97744:  LDR.W           LR, [R4]
97748:  LDR.W           R4, [LR,R12]
9774C:  ORR.W           R4, R4, #0x10
97750:  STR.W           R4, [LR,R12]
97754:  LDRD.W          R4, R12, [R0]
97758:  LDRD.W          R0, R1, [R1]
9775C:  STR.W           R0, [LR,R5]
97760:  MOVW            R0, #0x1A44
97764:  STR.W           R4, [LR,R0]
97768:  ADD             R0, LR
9776A:  ADD.W           R4, LR, R5
9776E:  STR.W           R12, [R0,#4]
97772:  ADDS            R0, R4, #4
97774:  STM             R0!, {R1-R3}
97776:  POP             {R4,R5,R7,PC}
