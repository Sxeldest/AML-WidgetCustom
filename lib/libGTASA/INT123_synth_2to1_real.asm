; =========================================================
; Game Engine Function: INT123_synth_2to1_real
; Address            : 0x238420 - 0x23881E
; =========================================================

238420:  PUSH            {R4-R7,LR}
238422:  ADD             R7, SP, #0xC
238424:  PUSH.W          {R8-R11}
238428:  SUB             SP, SP, #4
23842A:  MOV             R5, R2
23842C:  MOV             R2, R0
23842E:  MOVW            R12, #0xB2A8
238432:  MOVW            R0, #0xB2A0
238436:  LDR             R6, [R5,R0]
238438:  MOVW            R0, #0x4848
23843C:  LDR.W           LR, [R5,R12]
238440:  LDR             R0, [R5,R0]
238442:  MOV             R8, R3
238444:  CBZ             R0, loc_23846E
238446:  ADD.W           R0, R5, R1,LSL#8
23844A:  MOVW            R4, #0x4850
23844E:  ADD             R4, R0
238450:  MOVS            R0, #0
238452:  ADDS            R3, R4, R0
238454:  VLDR            D16, [R3]
238458:  ADDS            R3, R2, R0
23845A:  ADDS            R0, #8
23845C:  VLDR            D17, [R3]
238460:  CMP.W           R0, #0x100
238464:  VMUL.F64        D16, D17, D16
238468:  VSTR            D16, [R3]
23846C:  BNE             loc_238452
23846E:  ADD.W           R4, R6, LR
238472:  MOVW            R0, #0x4838
238476:  CBZ             R1, loc_238482
238478:  LDR.W           R10, [R5,R0]
23847C:  ADDS            R4, #8
23847E:  MOVS            R1, #1
238480:  B               loc_238490
238482:  LDR             R1, [R5,R0]
238484:  ADDS            R1, #0xF
238486:  AND.W           R10, R1, #0xF
23848A:  STR.W           R10, [R5,R0]
23848E:  MOVS            R1, #0
238490:  ADD.W           R0, R5, R1,LSL#3
238494:  MOVW            R1, #0x4820
238498:  ADD.W           R9, R5, R12
23849C:  ADD             R1, R0
23849E:  MOVS.W          R3, R10,LSL#31
2384A2:  BNE             loc_2384C2
2384A4:  MOVW            R3, #0x4824
2384A8:  LDR             R1, [R1]
2384AA:  LDR.W           R11, [R0,R3]
2384AE:  ADD.W           R0, R1, R10,LSL#3
2384B2:  ADD.W           R1, R11, R10,LSL#3
2384B6:  ADDS            R1, #8
2384B8:  BLX             j_INT123_dct64
2384BC:  ADD.W           R10, R10, #1
2384C0:  B               loc_2384E0
2384C2:  ADD.W           R3, R10, #1
2384C6:  LDR.W           R11, [R1]
2384CA:  MOVW            R1, #0x4824
2384CE:  AND.W           R3, R3, #0xF
2384D2:  LDR             R0, [R0,R1]
2384D4:  ADD.W           R1, R11, R10,LSL#3
2384D8:  ADD.W           R0, R0, R3,LSL#3
2384DC:  BLX             j_INT123_dct64
2384E0:  MOVW            R0, #0x4844
2384E4:  RSB.W           R1, R10, #0x1D0
2384E8:  LDR             R0, [R5,R0]
2384EA:  RSB.W           R12, R10, #0x210
2384EE:  VLDR            D16, =0.0000305175781
2384F2:  SUB.W           R2, R0, R10,LSL#3
2384F6:  ADD.W           R1, R0, R1,LSL#3
2384FA:  ADD.W           R3, R2, #0x80
2384FE:  MOVS            R5, #0
238500:  MOV             R6, R11
238502:  VLDM            R6, {D17-D20}
238506:  ADDS            R2, R4, R5
238508:  ADDS            R5, #0x10
23850A:  VLDM            R3, {D21-D24}
23850E:  CMP             R5, #0x80
238510:  VMUL.F64        D18, D22, D18
238514:  VMUL.F64        D17, D21, D17
238518:  VMUL.F64        D19, D23, D19
23851C:  VSUB.F64        D17, D17, D18
238520:  VMUL.F64        D20, D24, D20
238524:  VADD.F64        D17, D17, D19
238528:  VLDR            D18, [R6,#0x20]
23852C:  VLDR            D21, [R3,#0x20]
238530:  VSUB.F64        D17, D17, D20
238534:  VMUL.F64        D18, D21, D18
238538:  VLDR            D19, [R6,#0x28]
23853C:  VLDR            D22, [R3,#0x28]
238540:  VADD.F64        D17, D17, D18
238544:  VMUL.F64        D19, D22, D19
238548:  VLDR            D20, [R6,#0x30]
23854C:  VLDR            D21, [R3,#0x30]
238550:  VSUB.F64        D17, D17, D19
238554:  VMUL.F64        D20, D21, D20
238558:  VLDR            D18, [R6,#0x38]
23855C:  VLDR            D22, [R3,#0x38]
238560:  VADD.F64        D17, D17, D20
238564:  VMUL.F64        D18, D22, D18
238568:  VLDR            D19, [R6,#0x40]
23856C:  VLDR            D21, [R3,#0x40]
238570:  VSUB.F64        D17, D17, D18
238574:  VMUL.F64        D19, D21, D19
238578:  VLDR            D20, [R6,#0x48]
23857C:  VLDR            D22, [R3,#0x48]
238580:  VADD.F64        D17, D17, D19
238584:  VMUL.F64        D20, D22, D20
238588:  VLDR            D18, [R6,#0x50]
23858C:  VLDR            D21, [R3,#0x50]
238590:  VSUB.F64        D17, D17, D20
238594:  VMUL.F64        D18, D21, D18
238598:  VLDR            D19, [R6,#0x58]
23859C:  VLDR            D22, [R3,#0x58]
2385A0:  VADD.F64        D17, D17, D18
2385A4:  VMUL.F64        D19, D22, D19
2385A8:  VLDR            D20, [R6,#0x60]
2385AC:  VLDR            D21, [R3,#0x60]
2385B0:  VSUB.F64        D17, D17, D19
2385B4:  VMUL.F64        D20, D21, D20
2385B8:  VLDR            D18, [R6,#0x68]
2385BC:  VLDR            D22, [R3,#0x68]
2385C0:  VADD.F64        D17, D17, D20
2385C4:  VMUL.F64        D18, D22, D18
2385C8:  VLDR            D19, [R6,#0x70]
2385CC:  VLDR            D21, [R3,#0x70]
2385D0:  VSUB.F64        D17, D17, D18
2385D4:  VMUL.F64        D19, D21, D19
2385D8:  VLDR            D20, [R6,#0x78]
2385DC:  ADD.W           R6, R6, #0x100
2385E0:  VLDR            D22, [R3,#0x78]
2385E4:  ADD.W           R3, R3, #0x200
2385E8:  VADD.F64        D17, D17, D19
2385EC:  VMUL.F64        D18, D22, D20
2385F0:  VSUB.F64        D17, D17, D18
2385F4:  VMUL.F64        D17, D17, D16
2385F8:  VSTR            D17, [R2]
2385FC:  BNE             loc_238502
2385FE:  ADD.W           R2, R0, R12,LSL#3
238602:  ADD.W           R3, R11, #0x810
238606:  VLDR            D17, [R1,#0x210]
23860A:  ADD.W           R0, R0, R10,LSL#3
23860E:  VLDR            D21, [R2]
238612:  ADD.W           R2, R11, #0x800
238616:  VLDR            D22, [R3]
23861A:  MOVS            R3, #0
23861C:  VLDR            D23, [R2]
238620:  ADD.W           R2, R11, #0x820
238624:  VMUL.F64        D17, D17, D22
238628:  VMUL.F64        D21, D21, D23
23862C:  VLDR            D22, [R2]
238630:  ADD.W           R2, R11, #0x830
238634:  VLDR            D18, [R1,#0x220]
238638:  VADD.F64        D17, D21, D17
23863C:  VMUL.F64        D18, D18, D22
238640:  VLDR            D23, [R2]
238644:  ADD.W           R2, R11, #0x840
238648:  VLDR            D19, [R1,#0x230]
23864C:  VADD.F64        D17, D17, D18
238650:  VMUL.F64        D19, D19, D23
238654:  VLDR            D21, [R2]
238658:  ADD.W           R2, R11, #0x850
23865C:  VLDR            D20, [R1,#0x240]
238660:  VADD.F64        D17, D17, D19
238664:  VMUL.F64        D20, D20, D21
238668:  VLDR            D22, [R2]
23866C:  ADD.W           R2, R11, #0x700
238670:  VLDR            D18, [R1,#0x250]
238674:  VADD.F64        D17, D17, D20
238678:  VMUL.F64        D18, D18, D22
23867C:  VLDR            D19, [R1,#0x270]
238680:  VLDR            D20, [R1,#0x260]
238684:  ADD.W           R1, R11, #0x860
238688:  VADD.F64        D17, D17, D18
23868C:  VLDR            D21, [R1]
238690:  ADD.W           R1, R11, #0x870
238694:  VMUL.F64        D20, D20, D21
238698:  VLDR            D22, [R1]
23869C:  ADD.W           R1, R4, #0x90
2386A0:  VADD.F64        D17, D17, D20
2386A4:  VMUL.F64        D18, D19, D22
2386A8:  VADD.F64        D17, D17, D18
2386AC:  VMUL.F64        D17, D17, D16
2386B0:  VSTR            D17, [R4,#0x80]
2386B4:  ADDS            R6, R0, R3
2386B6:  VLDM            R2, {D17-D20}
2386BA:  ADD.W           R5, R6, #0xE70
2386BE:  SUB.W           R3, R3, #0x200
2386C2:  CMN.W           R3, #0xE00
2386C6:  VLDR            D21, [R5]
2386CA:  ADDW            R5, R6, #0xE78
2386CE:  VLDR            D22, [R5]
2386D2:  ADDW            R5, R6, #0xE68
2386D6:  VMUL.F64        D18, D21, D18
2386DA:  VNMUL.F64       D17, D22, D17
2386DE:  VLDR            D21, [R5]
2386E2:  ADD.W           R5, R6, #0xE60
2386E6:  VSUB.F64        D17, D17, D18
2386EA:  VMUL.F64        D19, D21, D19
2386EE:  VLDR            D22, [R5]
2386F2:  ADDW            R5, R6, #0xE58
2386F6:  VSUB.F64        D17, D17, D19
2386FA:  VMUL.F64        D18, D22, D20
2386FE:  VLDR            D21, [R5]
238702:  ADD.W           R5, R6, #0xE50
238706:  VLDR            D20, [R2,#0x20]
23870A:  VSUB.F64        D17, D17, D18
23870E:  VMUL.F64        D20, D21, D20
238712:  VLDR            D22, [R5]
238716:  ADDW            R5, R6, #0xE48
23871A:  VLDR            D19, [R2,#0x28]
23871E:  VSUB.F64        D17, D17, D20
238722:  VMUL.F64        D18, D22, D19
238726:  VLDR            D21, [R5]
23872A:  ADD.W           R5, R6, #0xE40
23872E:  VLDR            D20, [R2,#0x30]
238732:  VSUB.F64        D17, D17, D18
238736:  VMUL.F64        D20, D21, D20
23873A:  VLDR            D22, [R5]
23873E:  ADDW            R5, R6, #0xE38
238742:  VLDR            D19, [R2,#0x38]
238746:  VSUB.F64        D17, D17, D20
23874A:  VMUL.F64        D18, D22, D19
23874E:  VLDR            D21, [R5]
238752:  ADD.W           R5, R6, #0xE30
238756:  VLDR            D20, [R2,#0x40]
23875A:  VSUB.F64        D17, D17, D18
23875E:  VMUL.F64        D20, D21, D20
238762:  VLDR            D22, [R5]
238766:  ADDW            R5, R6, #0xE28
23876A:  VLDR            D19, [R2,#0x48]
23876E:  VSUB.F64        D17, D17, D20
238772:  VMUL.F64        D18, D22, D19
238776:  VLDR            D21, [R5]
23877A:  ADD.W           R5, R6, #0xE20
23877E:  VLDR            D20, [R2,#0x50]
238782:  VSUB.F64        D17, D17, D18
238786:  VMUL.F64        D20, D21, D20
23878A:  VLDR            D22, [R5]
23878E:  ADDW            R5, R6, #0xE18
238792:  VLDR            D19, [R2,#0x58]
238796:  VSUB.F64        D17, D17, D20
23879A:  VMUL.F64        D18, D22, D19
23879E:  VLDR            D21, [R5]
2387A2:  ADD.W           R5, R6, #0xE10
2387A6:  VLDR            D20, [R2,#0x60]
2387AA:  VSUB.F64        D17, D17, D18
2387AE:  VMUL.F64        D20, D21, D20
2387B2:  VLDR            D22, [R5]
2387B6:  ADDW            R5, R6, #0xE08
2387BA:  VLDR            D19, [R2,#0x68]
2387BE:  ADD.W           R6, R6, #0xE00
2387C2:  VSUB.F64        D17, D17, D20
2387C6:  VMUL.F64        D18, D22, D19
2387CA:  VLDR            D20, [R2,#0x70]
2387CE:  VLDR            D21, [R5]
2387D2:  VSUB.F64        D17, D17, D18
2387D6:  VMUL.F64        D20, D21, D20
2387DA:  VLDR            D19, [R2,#0x78]
2387DE:  SUB.W           R2, R2, #0x100
2387E2:  VLDR            D22, [R6]
2387E6:  VSUB.F64        D17, D17, D20
2387EA:  VMUL.F64        D18, D22, D19
2387EE:  VSUB.F64        D17, D17, D18
2387F2:  VMUL.F64        D17, D17, D16
2387F6:  VSTR            D17, [R1]
2387FA:  ADD.W           R1, R1, #0x10
2387FE:  BNE.W           loc_2386B4
238802:  CMP.W           R8, #0
238806:  ITTT NE
238808:  LDRNE.W         R0, [R9]
23880C:  ADDNE.W         R0, R0, #0x100
238810:  STRNE.W         R0, [R9]
238814:  MOVS            R0, #0
238816:  ADD             SP, SP, #4
238818:  POP.W           {R8-R11}
23881C:  POP             {R4-R7,PC}
