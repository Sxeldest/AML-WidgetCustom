; =========================================================
; Game Engine Function: sub_106750
; Address            : 0x106750 - 0x106796
; =========================================================

106750:  PUSH            {R4,R5,R7,LR}
106752:  ADD             R7, SP, #8
106754:  BLX             j___cxa_get_globals
106758:  LDR             R2, [R0,#8]
10675A:  CBZ             R2, loc_106792
10675C:  MOV             R1, R2
10675E:  LDR             R5, =0x434C4E
106760:  LDR.W           R3, [R1,#0x28]!
106764:  LDR             R4, [R1,#4]
106766:  LSRS            R3, R3, #8
106768:  EOR.W           R5, R5, R4,LSR#8
10676C:  ORR.W           R3, R3, R4,LSL#24
106770:  LDR             R4, =0x47432B2B
106772:  EORS            R3, R4
106774:  ORRS            R3, R5
106776:  BNE             loc_10678A
106778:  LDR             R3, [R2,#0x24]
10677A:  SUBS            R3, #1
10677C:  STR             R3, [R2,#0x24]
10677E:  BNE             loc_10678E
106780:  LDR             R3, [R2,#0x20]
106782:  STR             R3, [R0,#8]
106784:  MOVS            R0, #0
106786:  STR             R0, [R2,#0x20]
106788:  B               loc_10678E
10678A:  MOVS            R2, #0
10678C:  STR             R2, [R0,#8]
10678E:  MOV             R0, R1
106790:  POP             {R4,R5,R7,PC}
106792:  BLX             j__ZSt9terminatev; std::terminate(void)
