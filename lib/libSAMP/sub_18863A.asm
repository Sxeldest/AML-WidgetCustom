; =========================================================
; Game Engine Function: sub_18863A
; Address            : 0x18863A - 0x188780
; =========================================================

18863A:  PUSH            {R4-R7,LR}
18863C:  ADD             R7, SP, #0xC
18863E:  PUSH.W          {R8-R11}
188642:  SUB             SP, SP, #0xC
188644:  ADD.W           R9, R0, #0xA8
188648:  STR             R2, [SP,#0x28+var_24]
18864A:  STRH.W          R1, [R7,#var_1E]
18864E:  SUB.W           R1, R7, #-var_1E
188652:  SUB.W           R2, R7, #-var_1F
188656:  MOV             R10, R0
188658:  MOV             R0, R9
18865A:  MOV             R5, R3
18865C:  BL              sub_189F4A
188660:  MOV             R11, R0
188662:  LDR.W           R0, [R10,#0xA8]
188666:  MOVS            R4, #0
188668:  MOV.W           R8, #0
18866C:  LDR.W           R0, [R0,R11,LSL#2]
188670:  LDRD.W          R1, R0, [R0,#8]
188674:  LDR             R6, [R1]
188676:  LDR             R1, [R6,#0x1C]
188678:  CMP             R0, R1
18867A:  BNE             loc_188776
18867C:  ADD.W           R0, R10, #0x6A0
188680:  STR             R0, [SP,#0x28+var_28]
188682:  BL              sub_1889FC
188686:  LDR.W           R10, [R10,#0xA8]
18868A:  MOV             R8, R0
18868C:  STR             R4, [R0,#0x34]
18868E:  STR             R5, [R0,#0x24]
188690:  LDR.W           R1, [R10,R11,LSL#2]
188694:  LDRH            R0, [R6,#0x12]
188696:  STRH.W          R0, [R8,#0x12]
18869A:  LDRH            R0, [R6]
18869C:  LDR             R2, [SP,#0x28+var_24]
18869E:  STRH.W          R0, [R8]
1886A2:  LDR             R0, [R1,#0xC]
1886A4:  STR.W           R2, [R8,#0x20]
1886A8:  LDRB            R2, [R6,#0x10]
1886AA:  STRB.W          R2, [R8,#0x10]
1886AE:  LDRD.W          R2, R3, [R6,#8]
1886B2:  STRD.W          R4, R4, [R8,#0x28]
1886B6:  STR.W           R4, [R8,#0x30]
1886BA:  STRD.W          R2, R3, [R8,#8]
1886BE:  CBZ             R0, loc_1886D8
1886C0:  LDR             R2, [R1,#8]
1886C2:  MOVS            R1, #0
1886C4:  LDR.W           R3, [R2],#4
1886C8:  SUBS            R0, #1
1886CA:  LDR             R3, [R3,#0x30]
1886CC:  ADD             R1, R3
1886CE:  STR.W           R1, [R8,#0x30]
1886D2:  BNE             loc_1886C4
1886D4:  ADDS            R0, R1, #7
1886D6:  LSRS            R4, R0, #3
1886D8:  MOV             R0, R4; unsigned int
1886DA:  BLX             j__Znaj; operator new[](uint)
1886DE:  STR.W           R0, [R8,#0x34]
1886E2:  LDR.W           R4, [R10,R11,LSL#2]
1886E6:  LDR             R1, [R4,#0xC]
1886E8:  CBZ             R1, loc_188760
1886EA:  LDR             R1, [R4,#8]
1886EC:  MOVS            R5, #0
1886EE:  MOVS            R6, #0
1886F0:  LDR.W           R1, [R1,R6,LSL#2]
1886F4:  ADD             R0, R5; dest
1886F6:  LDRD.W          R2, R1, [R1,#0x30]; src
1886FA:  ADDS            R2, #7
1886FC:  LSRS            R2, R2, #3; n
1886FE:  BLX             j_memcpy
188702:  LDR.W           R1, [R9]
188706:  ADDS            R2, R6, #1
188708:  LDR.W           R4, [R1,R11,LSL#2]
18870C:  LDR             R0, [R4,#0xC]
18870E:  CMP             R2, R0
188710:  BCS             loc_188728
188712:  LDR             R1, [R4,#8]
188714:  LDR.W           R0, [R1,R6,LSL#2]
188718:  MOV             R6, R2
18871A:  LDR             R3, [R0,#0x30]
18871C:  LDR.W           R0, [R8,#0x34]
188720:  ADDS            R3, #7
188722:  ADD.W           R5, R5, R3,LSR#3
188726:  B               loc_1886F0
188728:  CBZ             R0, loc_188760
18872A:  LDR             R6, [SP,#0x28+var_28]
18872C:  MOVS            R5, #0
18872E:  LDR             R0, [R4,#8]
188730:  LDR.W           R0, [R0,R5,LSL#2]
188734:  LDR             R0, [R0,#0x34]; void *
188736:  CBZ             R0, loc_188740
188738:  BLX             j__ZdaPv; operator delete[](void *)
18873C:  LDR.W           R1, [R9]
188740:  LDR.W           R0, [R1,R11,LSL#2]
188744:  LDR             R0, [R0,#8]
188746:  LDR.W           R1, [R0,R5,LSL#2]
18874A:  MOV             R0, R6
18874C:  BL              sub_17E56C
188750:  LDR.W           R1, [R9]
188754:  ADDS            R5, #1
188756:  LDR.W           R4, [R1,R11,LSL#2]
18875A:  LDR             R0, [R4,#0xC]
18875C:  CMP             R5, R0
18875E:  BCC             loc_18872E
188760:  ADD.W           R0, R4, #8
188764:  BL              sub_18A128
188768:  MOV             R0, R4; void *
18876A:  BLX             j__ZdlPv; operator delete(void *)
18876E:  MOV             R0, R9
188770:  MOV             R1, R11
188772:  BL              sub_18B9EC
188776:  MOV             R0, R8
188778:  ADD             SP, SP, #0xC
18877A:  POP.W           {R8-R11}
18877E:  POP             {R4-R7,PC}
