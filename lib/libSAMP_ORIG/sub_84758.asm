; =========================================================
; Game Engine Function: sub_84758
; Address            : 0x84758 - 0x84874
; =========================================================

84758:  PUSH            {R4-R7,LR}
8475A:  ADD             R7, SP, #0xC
8475C:  PUSH.W          {R8-R11}
84760:  SUB             SP, SP, #0x14
84762:  MOV             R4, R0
84764:  LDR             R0, =(__stack_chk_guard_ptr - 0x8476A)
84766:  ADD             R0, PC; __stack_chk_guard_ptr
84768:  LDR             R0, [R0]; __stack_chk_guard
8476A:  LDR             R0, [R0]
8476C:  STR             R0, [SP,#0x30+var_20]
8476E:  LDR             R5, [R4,#4]
84770:  CMP             R5, #0
84772:  BEQ             loc_84828
84774:  LDR.W           R10, [R1]
84778:  MOV             R0, #0x5BD1E995
84780:  MOV             R2, #0x6F47A654
84788:  MUL.W           R1, R10, R0
8478C:  EOR.W           R1, R1, R1,LSR#24
84790:  MULS            R1, R0
84792:  EORS            R1, R2
84794:  EOR.W           R1, R1, R1,LSR#13
84798:  MULS            R0, R1
8479A:  MOV.W           R1, #0x33333333
8479E:  EOR.W           R6, R0, R0,LSR#15
847A2:  MOV.W           R0, #0x55555555
847A6:  AND.W           R0, R0, R5,LSR#1
847AA:  SUBS            R0, R5, R0
847AC:  AND.W           R1, R1, R0,LSR#2
847B0:  BIC.W           R0, R0, #0xCCCCCCCC
847B4:  ADD             R0, R1
847B6:  MOV.W           R1, #0x1010101
847BA:  ADD.W           R0, R0, R0,LSR#4
847BE:  BIC.W           R0, R0, #0xF0F0F0F0
847C2:  MULS            R0, R1
847C4:  MOV.W           R11, R0,LSR#24
847C8:  CMP.W           R11, #1
847CC:  BHI             loc_847D6
847CE:  SUBS            R0, R5, #1
847D0:  AND.W           R9, R6, R0
847D4:  B               loc_847E8
847D6:  CMP             R6, R5
847D8:  BCS             loc_847DE
847DA:  MOV             R9, R6
847DC:  B               loc_847E8
847DE:  MOV             R0, R6
847E0:  MOV             R1, R5
847E2:  BLX             sub_109688
847E6:  MOV             R9, R1
847E8:  LDR             R0, [R4]
847EA:  LDR.W           R0, [R0,R9,LSL#2]
847EE:  CBZ             R0, loc_84828
847F0:  STR             R4, [SP,#0x30+var_30]
847F2:  LDR             R4, [R0]
847F4:  CBZ             R4, loc_84828
847F6:  SUB.W           R8, R5, #1
847FA:  B               loc_84806
847FC:  LDR             R0, [R4,#8]
847FE:  CMP             R0, R10
84800:  BEQ             loc_84844
84802:  LDR             R4, [R4]
84804:  CBZ             R4, loc_84828
84806:  LDR             R0, [R4,#4]
84808:  CMP             R0, R6
8480A:  BEQ             loc_847FC
8480C:  CMP.W           R11, #1
84810:  BHI             loc_84818
84812:  AND.W           R0, R0, R8
84816:  B               loc_84824
84818:  CMP             R0, R5
8481A:  BCC             loc_84824
8481C:  MOV             R1, R5
8481E:  BLX             sub_109688
84822:  MOV             R0, R1
84824:  CMP             R0, R9
84826:  BEQ             loc_84802
84828:  MOVS            R0, #0
8482A:  LDR             R1, [SP,#0x30+var_20]
8482C:  LDR             R2, =(__stack_chk_guard_ptr - 0x84832)
8482E:  ADD             R2, PC; __stack_chk_guard_ptr
84830:  LDR             R2, [R2]; __stack_chk_guard
84832:  LDR             R2, [R2]
84834:  CMP             R2, R1
84836:  ITTT EQ
84838:  ADDEQ           SP, SP, #0x14
8483A:  POPEQ.W         {R8-R11}
8483E:  POPEQ           {R4-R7,PC}
84840:  BLX             __stack_chk_fail
84844:  LDR             R1, [SP,#0x30+var_30]
84846:  ADD             R0, SP, #0x30+var_2C
84848:  MOV             R2, R4
8484A:  BL              sub_8487C
8484E:  LDR             R4, [SP,#0x30+var_2C]
84850:  MOVS            R0, #0
84852:  STR             R0, [SP,#0x30+var_2C]
84854:  CBZ             R4, loc_84870
84856:  LDRB.W          R0, [SP,#0x30+var_24]
8485A:  CMP             R0, #0
8485C:  ITTTT NE
8485E:  LDRBNE          R0, [R4,#0x14]
84860:  MOVSNE.W        R0, R0,LSL#31
84864:  LDRNE           R0, [R4,#0x1C]; void *
84866:  BLXNE           j__ZdlPv; operator delete(void *)
8486A:  MOV             R0, R4; void *
8486C:  BLX             j__ZdlPv; operator delete(void *)
84870:  MOVS            R0, #1
84872:  B               loc_8482A
