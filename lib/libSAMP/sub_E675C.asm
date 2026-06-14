; =========================================================
; Game Engine Function: sub_E675C
; Address            : 0xE675C - 0xE678C
; =========================================================

E675C:  PUSH            {R4,R6,R7,LR}
E675E:  ADD             R7, SP, #8
E6760:  MOV             R4, R0
E6762:  MOV             R0, R1
E6764:  LDR.W           R2, [R0,#0x10]!
E6768:  CBZ             R2, loc_E6772
E676A:  CMP             R1, R2
E676C:  BEQ             loc_E677C
E676E:  STR             R2, [R4,#0x10]
E6770:  B               loc_E6776
E6772:  ADD.W           R0, R4, #0x10
E6776:  MOVS            R1, #0
E6778:  STR             R1, [R0]
E677A:  B               loc_E6788
E677C:  STR             R4, [R4,#0x10]
E677E:  LDR             R0, [R0]
E6780:  LDR             R1, [R0]
E6782:  LDR             R2, [R1,#0xC]
E6784:  MOV             R1, R4
E6786:  BLX             R2
E6788:  MOV             R0, R4
E678A:  POP             {R4,R6,R7,PC}
