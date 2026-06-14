; =========================================================
; Game Engine Function: mpg123_scan
; Address            : 0x2315B0 - 0x231732
; =========================================================

2315B0:  PUSH            {R4-R7,LR}
2315B2:  ADD             R7, SP, #0xC
2315B4:  PUSH.W          {R8-R11}
2315B8:  SUB             SP, SP, #0x14
2315BA:  MOV             R4, R0
2315BC:  CBZ             R4, loc_231608
2315BE:  MOVW            R0, #0xB2F4
2315C2:  LDRB            R0, [R4,R0]
2315C4:  LSLS            R0, R0, #0x1D
2315C6:  BMI             loc_2315D2
2315C8:  MOVW            R0, #0xB468
2315CC:  MOVS            R1, #0x17
2315CE:  STR             R1, [R4,R0]
2315D0:  B               loc_231608
2315D2:  MOVW            R0, #0xB2C8
2315D6:  ADD.W           R10, R4, R0
2315DA:  LDR             R5, [R4,R0]
2315DC:  CBZ             R5, loc_231614
2315DE:  MOVW            R0, #0xB2CC
2315E2:  MOVW            R8, #0xB2E0
2315E6:  LDR.W           R11, [R4,R0]
2315EA:  MOVW            R6, #0x9314
2315EE:  LDR.W           R0, [R4,R8]
2315F2:  MOVS            R1, #0
2315F4:  LDR.W           R9, [R4,R6]
2315F8:  LDR             R2, [R0,#0x20]
2315FA:  MOV             R0, R4
2315FC:  BLX             R2
2315FE:  CMP             R0, #0
231600:  BLT             loc_231608
231602:  ADDS            R2, R4, R6
231604:  LDR             R0, [R2]
231606:  CBZ             R0, loc_231628
231608:  MOV.W           R0, #0xFFFFFFFF
23160C:  ADD             SP, SP, #0x14
23160E:  POP.W           {R8-R11}
231612:  POP             {R4-R7,PC}
231614:  LDR             R0, [R4]
231616:  CBZ             R0, loc_231658
231618:  MOV             R0, R4
23161A:  BL              sub_2309D2
23161E:  CMP             R0, #0
231620:  BLT             loc_23165C
231622:  LDR.W           R5, [R10]
231626:  B               loc_2315DE
231628:  STR.W           R9, [SP,#0x30+var_20]
23162C:  MOVW            R9, #0x92D8
231630:  LDR.W           R0, [R4,R9]
231634:  ADD.W           R6, R4, R8
231638:  MOVW            R8, #0x9368
23163C:  MOVS            R1, #1
23163E:  CMP             R0, #1
231640:  STR.W           R1, [R4,R8]
231644:  STRD.W          R10, R11, [SP,#0x30+var_30]
231648:  STRD.W          R5, R2, [SP,#0x30+var_28]
23164C:  BEQ             loc_23166A
23164E:  CMP             R0, #2
231650:  BNE             loc_231670
231652:  MOV.W           R0, #0x480
231656:  B               loc_231690
231658:  MOVS            R5, #0
23165A:  B               loc_2315DE
23165C:  ADDS            R0, #0xC
23165E:  MOV.W           R0, #0
231662:  IT NE
231664:  MOVNE.W         R0, #0xFFFFFFFF
231668:  B               loc_23160C
23166A:  MOV.W           R0, #0x180
23166E:  B               loc_231690
231670:  MOVW            R0, #0x92C8
231674:  LDR             R0, [R4,R0]
231676:  CBZ             R0, loc_23167E
231678:  MOV.W           R0, #0x240
23167C:  B               loc_231690
23167E:  MOVW            R0, #0x92CC
231682:  LDR             R1, [R4,R0]
231684:  MOV.W           R0, #0x480
231688:  CMP             R1, #0
23168A:  IT NE
23168C:  MOVNE.W         R0, #0x240
231690:  MOVW            R5, #0x936C
231694:  STR             R0, [R4,R5]
231696:  MOV             R0, R4
231698:  BLX             j_INT123_read_frame
23169C:  CMP             R0, #1
23169E:  BNE             loc_231702
2316A0:  MOVW            R0, #0x92CC
2316A4:  ADD.W           R10, R4, R9
2316A8:  ADD.W           R9, R4, R8
2316AC:  ADD.W           R8, R4, R5
2316B0:  ADDS            R5, R4, R0
2316B2:  MOVW            R0, #0x92C8
2316B6:  ADD.W           R11, R4, R0
2316BA:  LDR.W           R0, [R9]
2316BE:  ADDS            R0, #1
2316C0:  STR.W           R0, [R9]
2316C4:  LDR.W           R0, [R10]
2316C8:  CMP             R0, #1
2316CA:  BEQ             loc_2316D6
2316CC:  CMP             R0, #2
2316CE:  BNE             loc_2316DC
2316D0:  MOV.W           R0, #0x480
2316D4:  B               loc_2316EE
2316D6:  MOV.W           R0, #0x180
2316DA:  B               loc_2316EE
2316DC:  LDR.W           R0, [R11]
2316E0:  CMP             R0, #0
2316E2:  ITT EQ
2316E4:  LDREQ           R0, [R5]
2316E6:  CMPEQ           R0, #0
2316E8:  BEQ             loc_2316D0
2316EA:  MOV.W           R0, #0x240
2316EE:  LDR.W           R1, [R8]
2316F2:  ADD             R0, R1
2316F4:  STR.W           R0, [R8]
2316F8:  MOV             R0, R4
2316FA:  BLX             j_INT123_read_frame
2316FE:  CMP             R0, #1
231700:  BEQ             loc_2316BA
231702:  LDR             R0, [R6]
231704:  LDR             R5, [SP,#0x30+var_20]
231706:  LDR             R2, [R0,#0x20]
231708:  MOV             R0, R4
23170A:  MOV             R1, R5
23170C:  BLX             R2
23170E:  CMP             R0, #0
231710:  BLT.W           loc_231608
231714:  LDR             R0, [SP,#0x30+var_24]
231716:  LDR             R0, [R0]
231718:  CMP             R0, R5
23171A:  BNE.W           loc_231608
23171E:  LDR             R2, [SP,#0x30+var_30]
231720:  MOVW            R0, #0xB2CC
231724:  LDR             R1, [SP,#0x30+var_28]
231726:  ADD             R0, R4
231728:  STR             R1, [R2]
23172A:  LDR             R1, [SP,#0x30+var_2C]
23172C:  STR             R1, [R0]
23172E:  MOVS            R0, #0
231730:  B               loc_23160C
