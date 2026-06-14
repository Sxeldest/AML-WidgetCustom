; =========================================================
; Game Engine Function: _ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation
; Address            : 0x5094C8 - 0x50A50A
; =========================================================

5094C8:  PUSH            {R4-R7,LR}
5094CA:  ADD             R7, SP, #0xC
5094CC:  PUSH.W          {R8-R11}
5094D0:  SUB             SP, SP, #4
5094D2:  VPUSH           {D8-D15}
5094D6:  SUB             SP, SP, #0x1F8
5094D8:  MOV             R4, SP
5094DA:  BFC.W           R4, #0, #4
5094DE:  MOV             SP, R4
5094E0:  MOV             R11, R0
5094E2:  MOV             R9, R1
5094E4:  LDR.W           R0, [R11,#0x14]
5094E8:  MOV             R6, R2
5094EA:  VLDR            S16, =-0.8
5094EE:  MOV             R8, R3
5094F0:  CMP             R0, #0
5094F2:  ITTT EQ
5094F4:  MOVEQ           R0, #0
5094F6:  STRDEQ.W        R0, R0, [R9,#0x48]
5094FA:  STREQ.W         R0, [R9,#0x50]
5094FE:  LDR             R0, [R6,#0x14]
509500:  LDR.W           R1, [R11,#0x18]
509504:  VLDR            S18, [R0,#0x28]
509508:  VCMPE.F32       S18, S16
50950C:  VMRS            APSR_nzcv, FPSCR
509510:  BGT             loc_50952A
509512:  BIC.W           R4, R1, #1
509516:  CBZ             R0, loc_509562
509518:  LDRD.W          R2, R1, [R0,#0x10]; x
50951C:  EOR.W           R0, R2, #0x80000000; y
509520:  BLX             atan2f
509524:  VMOV            S0, R0
509528:  B               loc_509566
50952A:  CMP             R1, #0x12
50952C:  BNE             loc_509542
50952E:  CBZ             R0, loc_509578
509530:  LDRD.W          R2, R1, [R0,#0x10]; x
509534:  EOR.W           R0, R2, #0x80000000; y
509538:  BLX             atan2f
50953C:  VMOV            S0, R0
509540:  B               loc_50957C
509542:  LDR.W           R1, [R11,#0x14]
509546:  CMP             R1, #2
509548:  BEQ             loc_50958C
50954A:  CMP             R0, #0
50954C:  BEQ.W           loc_5099DE
509550:  LDRD.W          R2, R1, [R0,#0x10]; x
509554:  EOR.W           R0, R2, #0x80000000; y
509558:  BLX             atan2f
50955C:  VMOV            S0, R0
509560:  B               loc_509584
509562:  VLDR            S0, [R6,#0x10]
509566:  VLDR            S2, =-3.1416
50956A:  CMP             R4, #8
50956C:  VADD.F32        S2, S0, S2
509570:  IT EQ
509572:  VMOVEQ.F32      S0, S2
509576:  B               loc_509584
509578:  VLDR            S0, [R6,#0x10]
50957C:  VLDR            S2, =3.1416
509580:  VADD.F32        S0, S0, S2
509584:  ADD.W           R0, R9, #0x560
509588:  VSTR            S0, [R0]
50958C:  VLDR            S20, =0.0
509590:  CMP.W           R8, #0
509594:  BEQ.W           def_5095B0; jumptable 005095B0 default case
509598:  LDRSH.W         R4, [R8,#0x2C]
50959C:  SUB.W           R0, R4, #0x6C ; 'l'; switch 283 cases
5095A0:  CMP.W           R0, #0x11A
5095A4:  BHI.W           def_5095B0; jumptable 005095B0 default case
5095A8:  ADR.W           R1, jpt_5095B0
5095AC:  VMOV.F32        S22, S20
5095B0:  TBH.W           [R1,R0,LSL#1]; switch jump
5095B4:  DCFS -0.8
5095B8:  DCFS -3.1416
5095BC:  DCFS 3.1416
5095C0:  DCFS 0.0
5095C4:  DCW 0x238; jump table for switch statement
5095C6:  DCW 0x238
5095C8:  DCW 0x275
5095CA:  DCW 0x275
5095CC:  DCW 0x275
5095CE:  DCW 0x275
5095D0:  DCW 0x275
5095D2:  DCW 0x275
5095D4:  DCW 0x275
5095D6:  DCW 0x275
5095D8:  DCW 0x275
5095DA:  DCW 0x275
5095DC:  DCW 0x275
5095DE:  DCW 0x275
5095E0:  DCW 0x275
5095E2:  DCW 0x275
5095E4:  DCW 0x275
5095E6:  DCW 0x275
5095E8:  DCW 0x275
5095EA:  DCW 0x275
5095EC:  DCW 0x275
5095EE:  DCW 0x275
5095F0:  DCW 0x275
5095F2:  DCW 0x275
5095F4:  DCW 0x275
5095F6:  DCW 0x275
5095F8:  DCW 0x275
5095FA:  DCW 0x275
5095FC:  DCW 0x275
5095FE:  DCW 0x275
509600:  DCW 0x275
509602:  DCW 0x275
509604:  DCW 0x275
509606:  DCW 0x275
509608:  DCW 0x275
50960A:  DCW 0x275
50960C:  DCW 0x275
50960E:  DCW 0x275
509610:  DCW 0x275
509612:  DCW 0x275
509614:  DCW 0x275
509616:  DCW 0x275
509618:  DCW 0x275
50961A:  DCW 0x275
50961C:  DCW 0x275
50961E:  DCW 0x275
509620:  DCW 0x275
509622:  DCW 0x275
509624:  DCW 0x275
509626:  DCW 0x275
509628:  DCW 0x275
50962A:  DCW 0x275
50962C:  DCW 0x275
50962E:  DCW 0x275
509630:  DCW 0x275
509632:  DCW 0x275
509634:  DCW 0x275
509636:  DCW 0x275
509638:  DCW 0x275
50963A:  DCW 0x275
50963C:  DCW 0x275
50963E:  DCW 0x275
509640:  DCW 0x275
509642:  DCW 0x275
509644:  DCW 0x275
509646:  DCW 0x275
509648:  DCW 0x275
50964A:  DCW 0x275
50964C:  DCW 0x275
50964E:  DCW 0x275
509650:  DCW 0x275
509652:  DCW 0x275
509654:  DCW 0x275
509656:  DCW 0x275
509658:  DCW 0x275
50965A:  DCW 0x275
50965C:  DCW 0x275
50965E:  DCW 0x275
509660:  DCW 0x275
509662:  DCW 0x275
509664:  DCW 0x275
509666:  DCW 0x275
509668:  DCW 0x275
50966A:  DCW 0x275
50966C:  DCW 0x275
50966E:  DCW 0x275
509670:  DCW 0x275
509672:  DCW 0x275
509674:  DCW 0x275
509676:  DCW 0x275
509678:  DCW 0x275
50967A:  DCW 0x275
50967C:  DCW 0x275
50967E:  DCW 0x275
509680:  DCW 0x275
509682:  DCW 0x275
509684:  DCW 0x275
509686:  DCW 0x275
509688:  DCW 0x275
50968A:  DCW 0x275
50968C:  DCW 0x275
50968E:  DCW 0x275
509690:  DCW 0x275
509692:  DCW 0x275
509694:  DCW 0x275
509696:  DCW 0x275
509698:  DCW 0x275
50969A:  DCW 0x275
50969C:  DCW 0x275
50969E:  DCW 0x275
5096A0:  DCW 0x275
5096A2:  DCW 0x275
5096A4:  DCW 0x275
5096A6:  DCW 0x275
5096A8:  DCW 0x275
5096AA:  DCW 0x275
5096AC:  DCW 0x275
5096AE:  DCW 0x275
5096B0:  DCW 0x275
5096B2:  DCW 0x275
5096B4:  DCW 0x275
5096B6:  DCW 0x275
5096B8:  DCW 0x275
5096BA:  DCW 0x275
5096BC:  DCW 0x275
5096BE:  DCW 0x275
5096C0:  DCW 0x275
5096C2:  DCW 0x275
5096C4:  DCW 0x275
5096C6:  DCW 0x275
5096C8:  DCW 0x275
5096CA:  DCW 0x275
5096CC:  DCW 0x275
5096CE:  DCW 0x275
5096D0:  DCW 0x275
5096D2:  DCW 0x275
5096D4:  DCW 0x275
5096D6:  DCW 0x275
5096D8:  DCW 0x275
5096DA:  DCW 0x275
5096DC:  DCW 0x275
5096DE:  DCW 0x275
5096E0:  DCW 0x275
5096E2:  DCW 0x275
5096E4:  DCW 0x275
5096E6:  DCW 0x275
5096E8:  DCW 0x275
5096EA:  DCW 0x275
5096EC:  DCW 0x275
5096EE:  DCW 0x275
5096F0:  DCW 0x275
5096F2:  DCW 0x275
5096F4:  DCW 0x275
5096F6:  DCW 0x275
5096F8:  DCW 0x275
5096FA:  DCW 0x275
5096FC:  DCW 0x275
5096FE:  DCW 0x275
509700:  DCW 0x275
509702:  DCW 0x275
509704:  DCW 0x275
509706:  DCW 0x275
509708:  DCW 0x275
50970A:  DCW 0x275
50970C:  DCW 0x275
50970E:  DCW 0x275
509710:  DCW 0x275
509712:  DCW 0x275
509714:  DCW 0x275
509716:  DCW 0x275
509718:  DCW 0x275
50971A:  DCW 0x275
50971C:  DCW 0x275
50971E:  DCW 0x275
509720:  DCW 0x275
509722:  DCW 0x275
509724:  DCW 0x275
509726:  DCW 0x275
509728:  DCW 0x275
50972A:  DCW 0x275
50972C:  DCW 0x275
50972E:  DCW 0x275
509730:  DCW 0x275
509732:  DCW 0x275
509734:  DCW 0x275
509736:  DCW 0x275
509738:  DCW 0x275
50973A:  DCW 0x275
50973C:  DCW 0x275
50973E:  DCW 0x275
509740:  DCW 0x275
509742:  DCW 0x275
509744:  DCW 0x275
509746:  DCW 0x275
509748:  DCW 0x275
50974A:  DCW 0x275
50974C:  DCW 0x275
50974E:  DCW 0x275
509750:  DCW 0x275
509752:  DCW 0x275
509754:  DCW 0x275
509756:  DCW 0x275
509758:  DCW 0x275
50975A:  DCW 0x275
50975C:  DCW 0x275
50975E:  DCW 0x275
509760:  DCW 0x275
509762:  DCW 0x275
509764:  DCW 0x275
509766:  DCW 0x275
509768:  DCW 0x275
50976A:  DCW 0x275
50976C:  DCW 0x275
50976E:  DCW 0x275
509770:  DCW 0x275
509772:  DCW 0x275
509774:  DCW 0x275
509776:  DCW 0x275
509778:  DCW 0x275
50977A:  DCW 0x275
50977C:  DCW 0x275
50977E:  DCW 0x275
509780:  DCW 0x275
509782:  DCW 0x275
509784:  DCW 0x275
509786:  DCW 0x275
509788:  DCW 0x275
50978A:  DCW 0x275
50978C:  DCW 0x275
50978E:  DCW 0x275
509790:  DCW 0x275
509792:  DCW 0x275
509794:  DCW 0x275
509796:  DCW 0x275
509798:  DCW 0x275
50979A:  DCW 0x275
50979C:  DCW 0x275
50979E:  DCW 0x275
5097A0:  DCW 0x275
5097A2:  DCW 0x275
5097A4:  DCW 0x275
5097A6:  DCW 0x275
5097A8:  DCW 0x275
5097AA:  DCW 0x1B2
5097AC:  DCW 0x1B2
5097AE:  DCW 0x1B2
5097B0:  DCW 0x1B2
5097B2:  DCW 0x1EE
5097B4:  DCW 0x1EE
5097B6:  DCW 0x1EE
5097B8:  DCW 0x1EE
5097BA:  DCW 0x168
5097BC:  DCW 0x168
5097BE:  DCW 0x168
5097C0:  DCW 0x168
5097C2:  DCW 0x168
5097C4:  DCW 0x162
5097C6:  DCW 0x162
5097C8:  DCW 0x162
5097CA:  DCW 0x165
5097CC:  DCW 0x165
5097CE:  DCW 0x165
5097D0:  DCW 0x165
5097D2:  DCW 0x165
5097D4:  DCW 0x165
5097D6:  DCW 0x126
5097D8:  DCW 0x126
5097DA:  DCW 0x126
5097DC:  DCW 0x126
5097DE:  DCW 0x275
5097E0:  DCW 0x126
5097E2:  DCW 0x126
5097E4:  DCW 0x162
5097E6:  DCW 0x162
5097E8:  DCW 0x162
5097EA:  DCW 0x162
5097EC:  DCW 0x126
5097EE:  DCW 0x126
5097F0:  DCW 0x165
5097F2:  DCW 0x126
5097F4:  DCW 0x126
5097F6:  DCW 0x223
5097F8:  DCW 0x223
5097FA:  ALIGN 4
5097FC:  DCFS 0.0
509800:  LDR.W           R0, [R6,#0x388]; jumptable 005095B0 cases 373-376,378,379,384,385,387,388
509804:  MOVS            R3, #0x94
509806:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x509812)
50980A:  LDR.W           R2, [R8,#0x14]
50980E:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
509810:  LDRB.W          R0, [R0,#0xDE]
509814:  VLDR            S22, [R8,#0x20]
509818:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50981A:  VLDR            S24, [R2,#0x10]
50981E:  SMLABB.W        R5, R0, R3, R1
509822:  MOV             R1, R4; int
509824:  MOV             R0, R5; this
509826:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50982A:  MOV             R0, R5; this
50982C:  MOV             R1, R4; int
50982E:  BLX             j__ZN17CVehicleAnimGroup24ComputeCriticalBlendTimeEi; CVehicleAnimGroup::ComputeCriticalBlendTime(int)
509832:  LDR.W           R1, [R8,#0x14]
509836:  VDIV.F32        S0, S22, S24
50983A:  VLDR            S2, [R8,#0x20]
50983E:  VMOV            S6, R0
509842:  VLDR            S4, [R1,#0x10]
509846:  VCMPE.F32       S6, #0.0
50984A:  VDIV.F32        S2, S2, S4
50984E:  VABS.F32        S4, S6
509852:  VMRS            APSR_nzcv, FPSCR
509856:  BLE             loc_509908
509858:  VCMPE.F32       S2, S4
50985C:  VMRS            APSR_nzcv, FPSCR
509860:  BGE.W           loc_509A34
509864:  VDIV.F32        S2, S2, S4
509868:  VMOV.F32        S4, #1.0
50986C:  VSUB.F32        S22, S4, S2
509870:  B               loc_509A38
509872:  VMOV.F32        S22, S20; jumptable 005095B0 default case
509876:  B               loc_509A9E; jumptable 005095B0 cases 110-350,377
509878:  VMOV.F32        S0, #1.0; jumptable 005095B0 cases 364-366,380-383
50987C:  B               loc_509A34
50987E:  VMOV.F32        S22, #1.0; jumptable 005095B0 cases 367-372,386
509882:  B               loc_509A9E; jumptable 005095B0 cases 110-350,377
509884:  LDR.W           R0, [R6,#0x388]; jumptable 005095B0 cases 359-363
509888:  MOVS            R3, #0x94
50988A:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x509896)
50988E:  LDR.W           R2, [R8,#0x14]
509892:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
509894:  LDRB.W          R0, [R0,#0xDE]
509898:  VLDR            S20, [R8,#0x20]
50989C:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50989E:  VLDR            S22, [R2,#0x10]
5098A2:  SMLABB.W        R10, R0, R3, R1
5098A6:  MOV             R1, R4; int
5098A8:  MOV             R0, R10; this
5098AA:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5098AE:  MOV             R0, R10; this
5098B0:  MOV             R1, R4; int
5098B2:  BLX             j__ZN17CVehicleAnimGroup24ComputeCriticalBlendTimeEi; CVehicleAnimGroup::ComputeCriticalBlendTime(int)
5098B6:  VDIV.F32        S2, S20, S22
5098BA:  VMOV.F32        S0, #1.0
5098BE:  VMOV            S8, R0
5098C2:  VMOV.F32        S6, #10.0
5098C6:  VABS.F32        S4, S8
5098CA:  VMOV.F32        S22, S0
5098CE:  VCMPE.F32       S4, S6
5098D2:  VMRS            APSR_nzcv, FPSCR
5098D6:  BGE.W           loc_509A8C
5098DA:  LDR.W           R0, [R8,#0x14]
5098DE:  VCMPE.F32       S8, #0.0
5098E2:  VLDR            S6, [R8,#0x20]
5098E6:  VMRS            APSR_nzcv, FPSCR
5098EA:  VLDR            S10, [R0,#0x10]
5098EE:  VDIV.F32        S6, S6, S10
5098F2:  BLE.W           loc_509A3E
5098F6:  VMOV.F32        S22, S0
5098FA:  VCMPE.F32       S6, S4
5098FE:  VMRS            APSR_nzcv, FPSCR
509902:  BLT.W           loc_509A88
509906:  B               loc_509A8C
509908:  VCMPE.F32       S2, S4
50990C:  VMRS            APSR_nzcv, FPSCR
509910:  BGE             loc_5099E4
509912:  VMOV.F32        S22, #1.0
509916:  B               loc_509A38
509918:  LDR.W           R0, [R6,#0x388]; jumptable 005095B0 cases 351-354
50991C:  MOVS            R2, #0x94
50991E:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x509926)
509922:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
509924:  LDRB.W          R0, [R0,#0xDE]
509928:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50992A:  SMLABB.W        R10, R0, R2, R1
50992E:  MOV             R1, R4; int
509930:  MOV             R0, R10; this
509932:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
509936:  MOV             R0, R10; this
509938:  MOV             R1, R4; int
50993A:  BLX             j__ZN17CVehicleAnimGroup24ComputeCriticalBlendTimeEi; CVehicleAnimGroup::ComputeCriticalBlendTime(int)
50993E:  VMOV            S2, R0
509942:  VLDR            S22, =0.0
509946:  VMOV.F32        S0, #10.0
50994A:  VABS.F32        S4, S2
50994E:  VCMPE.F32       S4, S0
509952:  VMRS            APSR_nzcv, FPSCR
509956:  BLT.W           loc_509A68
50995A:  LDR.W           R0, [R8,#0x14]
50995E:  VLDR            S0, [R8,#0x20]
509962:  VLDR            S6, [R0,#0x10]
509966:  VDIV.F32        S0, S0, S6
50996A:  VMOV.F32        S6, #-11.0
50996E:  VADD.F32        S8, S2, S6
509972:  VADD.F32        S2, S4, S6
509976:  VCMPE.F32       S8, #0.0
50997A:  VMRS            APSR_nzcv, FPSCR
50997E:  BLE             loc_509A4E
509980:  VCMPE.F32       S0, S2
509984:  VMRS            APSR_nzcv, FPSCR
509988:  BLT             loc_509A64
50998A:  VMOV.F32        S22, #1.0
50998E:  B               loc_509A68
509990:  LDR.W           R0, [R6,#0x388]; jumptable 005095B0 cases 355-358
509994:  MOVS            R2, #0x94
509996:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50999E)
50999A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50999C:  LDRB.W          R0, [R0,#0xDE]
5099A0:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5099A2:  SMLABB.W        R10, R0, R2, R1
5099A6:  MOV             R1, R4; int
5099A8:  MOV             R0, R10; this
5099AA:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5099AE:  MOV             R0, R10; this
5099B0:  MOV             R1, R4; int
5099B2:  BLX             j__ZN17CVehicleAnimGroup24ComputeCriticalBlendTimeEi; CVehicleAnimGroup::ComputeCriticalBlendTime(int)
5099B6:  VMOV.F32        S0, #10.0
5099BA:  BIC.W           R0, R0, #0x80000000
5099BE:  VMOV.F32        S20, #1.0
5099C2:  VLDR            S4, =0.0
5099C6:  VMOV            S2, R0
5099CA:  VCMPE.F32       S2, S0
5099CE:  VMRS            APSR_nzcv, FPSCR
5099D2:  VMOV.F32        S22, S20
5099D6:  IT LT
5099D8:  VMOVLT.F32      S22, S4
5099DC:  B               loc_509A6C
5099DE:  VLDR            S0, [R6,#0x10]
5099E2:  B               loc_509584
5099E4:  VMOV.F32        S6, #1.0
5099E8:  VSUB.F32        S2, S2, S4
5099EC:  VSUB.F32        S4, S6, S4
5099F0:  VDIV.F32        S2, S2, S4
5099F4:  VSUB.F32        S22, S6, S2
5099F8:  B               loc_509A38
5099FA:  LDR.W           R0, [R6,#0x388]; jumptable 005095B0 cases 389,390
5099FE:  MOVS            R2, #0x94
509A00:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x509A10)
509A04:  VMOV.F32        S20, #1.0
509A08:  VLDR            S22, =0.0
509A0C:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
509A0E:  LDRB.W          R0, [R0,#0xDE]
509A12:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
509A14:  SMLABB.W        R0, R0, R2, R1
509A18:  LDRB            R0, [R0,#8]
509A1A:  LSLS            R0, R0, #0x1A
509A1C:  IT MI
509A1E:  VMOVMI.F32      S22, S20
509A22:  B               loc_509A9E; jumptable 005095B0 cases 110-350,377
509A24:  LDR.W           R0, [R8,#0x14]; jumptable 005095B0 cases 108,109
509A28:  VLDR            S0, [R8,#0x20]
509A2C:  VLDR            S2, [R0,#0x10]
509A30:  VDIV.F32        S0, S0, S2
509A34:  VMOV.F32        S22, S20
509A38:  VMOV.F32        S20, S0
509A3C:  B               loc_509A9E; jumptable 005095B0 cases 110-350,377
509A3E:  VCMPE.F32       S6, S4
509A42:  VMRS            APSR_nzcv, FPSCR
509A46:  BGE             loc_509A7C
509A48:  VLDR            S22, =0.0
509A4C:  B               loc_509A8C
509A4E:  VCMPE.F32       S0, S2
509A52:  VMRS            APSR_nzcv, FPSCR
509A56:  BLT             loc_509A68
509A58:  VMOV.F32        S4, #1.0
509A5C:  VSUB.F32        S0, S0, S2
509A60:  VSUB.F32        S2, S4, S2
509A64:  VDIV.F32        S22, S0, S2
509A68:  VMOV.F32        S20, #1.0
509A6C:  LDRH            R0, [R6,#0x26]
509A6E:  MOVW            R1, #0x241
509A72:  CMP             R0, R1
509A74:  IT EQ
509A76:  VMOVEQ.F32      S22, S20
509A7A:  B               loc_509A9E; jumptable 005095B0 cases 110-350,377
509A7C:  VMOV.F32        S8, #1.0
509A80:  VSUB.F32        S6, S6, S4
509A84:  VSUB.F32        S4, S8, S4
509A88:  VDIV.F32        S22, S6, S4
509A8C:  LDRH            R0, [R6,#0x26]
509A8E:  MOVW            R1, #0x241
509A92:  VSUB.F32        S20, S0, S2
509A96:  CMP             R0, R1
509A98:  IT EQ
509A9A:  VMOVEQ.F32      S22, S0
509A9E:  LDR.W           R0, [R11,#0x14]; jumptable 005095B0 cases 110-350,377
509AA2:  CMP             R0, #2
509AA4:  BNE             loc_509ABE
509AA6:  LDR.W           R0, [R9,#0x14]
509AAA:  ADD.W           R1, R0, #0x30 ; '0'
509AAE:  CMP             R0, #0
509AB0:  IT EQ
509AB2:  ADDEQ.W         R1, R9, #4
509AB6:  LDRD.W          R5, R10, [R1]
509ABA:  LDR             R0, [R1,#8]
509ABC:  B               loc_509B44
509ABE:  ADD             R4, SP, #0x258+var_A8
509AC0:  LDR             R1, [R6,#0x14]; CMatrix *
509AC2:  MOV             R0, R4; this
509AC4:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
509AC8:  VMOV            R3, S20; CAnimBlendAssociation *
509ACC:  ADD             R0, SP, #0x258+var_F0; this
509ACE:  MOV             R1, R11; CVehicle *
509AD0:  MOV             R2, R6; float
509AD2:  STR.W           R8, [SP,#0x258+var_258]
509AD6:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar29GetLocalPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::GetLocalPositionToOpenCarDoor(CVehicle *,float,CAnimBlendAssociation *)
509ADA:  LDR             R0, [SP,#0x258+var_E8]
509ADC:  ADD             R2, SP, #0x258+var_138
509ADE:  STR             R0, [SP,#0x258+var_130]
509AE0:  ADD             R0, SP, #0x258+var_F0; CMatrix *
509AE2:  VLDR            D16, [SP,#0x258+var_F0]
509AE6:  MOV             R1, R4; CVector *
509AE8:  VSTR            D16, [SP,#0x258+var_138]
509AEC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
509AF0:  VLDR            D16, [SP,#0x258+var_F0]
509AF4:  LDR             R0, [SP,#0x258+var_E8]
509AF6:  STR             R0, [SP,#0x258+var_130]
509AF8:  VSTR            D16, [SP,#0x258+var_138]
509AFC:  LDR             R0, [R6,#0x14]
509AFE:  VLDR            S0, [SP,#0x258+var_138]
509B02:  ADD.W           R1, R0, #0x30 ; '0'
509B06:  CMP             R0, #0
509B08:  VLDR            S2, [SP,#0x258+var_138+4]
509B0C:  MOV             R0, R4; this
509B0E:  VLDR            S4, [SP,#0x258+var_130]
509B12:  IT EQ
509B14:  ADDEQ           R1, R6, #4
509B16:  VLDR            S6, [R1]
509B1A:  VLDR            S8, [R1,#4]
509B1E:  VLDR            S10, [R1,#8]
509B22:  VADD.F32        S0, S6, S0
509B26:  VADD.F32        S2, S8, S2
509B2A:  VADD.F32        S4, S10, S4
509B2E:  VSTR            S0, [SP,#0x258+var_138]
509B32:  VSTR            S2, [SP,#0x258+var_138+4]
509B36:  VSTR            S4, [SP,#0x258+var_130]
509B3A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
509B3E:  LDRD.W          R5, R10, [SP,#0x258+var_138]
509B42:  LDR             R0, [SP,#0x258+var_130]
509B44:  STR             R0, [SP,#0x258+var_244]
509B46:  STRD.W          R5, R10, [SP,#0x258+var_138]
509B4A:  STR             R0, [SP,#0x258+var_130]
509B4C:  LDR.W           R0, [R6,#0x5A0]
509B50:  CMP             R0, #9
509B52:  ITT NE
509B54:  LDRNE.W         R0, [R11,#0x14]
509B58:  CMPNE           R0, #2
509B5A:  BEQ             loc_509BE8
509B5C:  ADD             R4, SP, #0x258+var_A8
509B5E:  LDR             R1, [R6,#0x14]; CMatrix *
509B60:  MOV             R0, R4; this
509B62:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
509B66:  ADD             R0, SP, #0x258+var_F0; this
509B68:  MOV             R1, R11; CVehicle *
509B6A:  MOV             R2, R6; float
509B6C:  MOV.W           R3, #0x3F800000; CAnimBlendAssociation *
509B70:  STR.W           R8, [SP,#0x258+var_258]
509B74:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar29GetLocalPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::GetLocalPositionToOpenCarDoor(CVehicle *,float,CAnimBlendAssociation *)
509B78:  LDR             R0, [SP,#0x258+var_E8]
509B7A:  ADD             R2, SP, #0x258+var_178
509B7C:  STR             R0, [SP,#0x258+var_170]
509B7E:  ADD             R0, SP, #0x258+var_F0; CMatrix *
509B80:  VLDR            D16, [SP,#0x258+var_F0]
509B84:  MOV             R1, R4; CVector *
509B86:  VSTR            D16, [SP,#0x258+var_178]
509B8A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
509B8E:  VLDR            D16, [SP,#0x258+var_F0]
509B92:  LDR             R0, [SP,#0x258+var_E8]
509B94:  STR             R0, [SP,#0x258+var_170]
509B96:  VSTR            D16, [SP,#0x258+var_178]
509B9A:  LDR             R0, [R6,#0x14]
509B9C:  VLDR            S0, [SP,#0x258+var_178]
509BA0:  ADD.W           R1, R0, #0x30 ; '0'
509BA4:  CMP             R0, #0
509BA6:  VLDR            S2, [SP,#0x258+var_178+4]
509BAA:  MOV             R0, R4; this
509BAC:  VLDR            S4, [SP,#0x258+var_170]
509BB0:  IT EQ
509BB2:  ADDEQ           R1, R6, #4
509BB4:  VLDR            S6, [R1]
509BB8:  VLDR            S8, [R1,#4]
509BBC:  VLDR            S10, [R1,#8]
509BC0:  VADD.F32        S0, S6, S0
509BC4:  VADD.F32        S2, S8, S2
509BC8:  VADD.F32        S4, S10, S4
509BCC:  VSTR            S0, [SP,#0x258+var_178]
509BD0:  VSTR            S2, [SP,#0x258+var_178+4]
509BD4:  VSTR            S4, [SP,#0x258+var_170]
509BD8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
509BDC:  VLDR            D16, [SP,#0x258+var_178]
509BE0:  LDR             R0, [SP,#0x258+var_170]
509BE2:  STR             R0, [SP,#0x258+var_130]
509BE4:  VSTR            D16, [SP,#0x258+var_138]
509BE8:  LDRB.W          R0, [R6,#0x45]
509BEC:  LSLS            R0, R0, #0x1F
509BEE:  BNE             loc_509C32
509BF0:  LDR             R0, [R6,#0x14]
509BF2:  VLDR            S0, [SP,#0x258+var_138]
509BF6:  ADD.W           R1, R0, #0x30 ; '0'
509BFA:  CMP             R0, #0
509BFC:  VLDR            S2, [SP,#0x258+var_138+4]
509C00:  VLDR            S4, [SP,#0x258+var_130]
509C04:  IT EQ
509C06:  ADDEQ           R1, R6, #4
509C08:  VLDR            S6, [R1]
509C0C:  CMP             R0, #0
509C0E:  VLDR            S8, [R1,#4]
509C12:  VLDR            S24, [R1,#8]
509C16:  VSUB.F32        S28, S0, S6
509C1A:  VSUB.F32        S30, S2, S8
509C1E:  VSUB.F32        S26, S4, S24
509C22:  BEQ             loc_509C56
509C24:  VLDR            S2, [R0]
509C28:  VLDR            S4, [R0,#4]
509C2C:  VLDR            S0, [R0,#8]
509C30:  B               loc_509C86
509C32:  LDR.W           R0, [R6,#0x5A0]
509C36:  CMP             R0, #5
509C38:  BNE             loc_509CEA
509C3A:  MOV             R0, R6; this
509C3C:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
509C40:  CMP             R0, #0
509C42:  ITTTT NE
509C44:  VMOVNE.F32      S0, #1.0
509C48:  VLDRNE          S2, [SP,#0x258+var_130]
509C4C:  VADDNE.F32      S0, S2, S0
509C50:  VSTRNE          S0, [SP,#0x258+var_130]
509C54:  B               loc_509CEA
509C56:  LDR             R4, [R6,#0x10]
509C58:  MOV             R0, R4; x
509C5A:  BLX             cosf
509C5E:  STR.W           R9, [SP,#0x258+var_248]
509C62:  MOV             R9, R8
509C64:  MOV             R8, R10
509C66:  MOV             R10, R5
509C68:  MOV             R5, R0
509C6A:  MOV             R0, R4; x
509C6C:  BLX             sinf
509C70:  VMOV            S2, R5
509C74:  MOV             R5, R10
509C76:  MOV             R10, R8
509C78:  MOV             R8, R9
509C7A:  LDR.W           R9, [SP,#0x258+var_248]
509C7E:  VMOV            S4, R0
509C82:  VLDR            S0, =0.0
509C86:  VMUL.F32        S4, S30, S4
509C8A:  LDR             R0, [R6]
509C8C:  VMUL.F32        S2, S28, S2
509C90:  VMUL.F32        S26, S26, S0
509C94:  LDR.W           R1, [R0,#0xD8]
509C98:  MOV             R0, R6
509C9A:  VADD.F32        S28, S2, S4
509C9E:  BLX             R1
509CA0:  VMOV            S0, R0
509CA4:  LDR             R0, [R6,#0x14]
509CA6:  VADD.F32        S26, S28, S26
509CAA:  CMP             R0, #0
509CAC:  VSUB.F32        S24, S24, S0
509CB0:  ITE NE
509CB2:  VLDRNE          S28, [R0,#8]
509CB6:  VLDREQ          S28, =0.0
509CBA:  ADD             R0, SP, #0x258+var_138; this
509CBC:  LDR             R4, [SP,#0x258+var_130]
509CBE:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
509CC2:  VMUL.F32        S0, S26, S28
509CC6:  VMOV.F32        S2, #1.0
509CCA:  VMOV.F32        S4, #-0.5
509CCE:  VADD.F32        S0, S24, S0
509CD2:  VADD.F32        S0, S0, S2
509CD6:  VLDR            S2, [SP,#0x258+var_130]
509CDA:  VADD.F32        S0, S0, S4
509CDE:  VCMPE.F32       S2, S0
509CE2:  VMRS            APSR_nzcv, FPSCR
509CE6:  IT LT
509CE8:  STRLT           R4, [SP,#0x258+var_130]
509CEA:  LDR             R0, [SP,#0x258+var_130]
509CEC:  STR.W           R0, [R11,#0xC]
509CF0:  LDR.W           R1, [R11,#0x14]
509CF4:  SUBS            R1, #1
509CF6:  CMP             R1, #1
509CF8:  BHI             loc_509D4A
509CFA:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x509D0A)
509CFE:  VMOV            S0, R0
509D02:  VLDR            S2, =-0.008
509D06:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
509D08:  LDR.W           R2, [R9,#0x14]
509D0C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
509D0E:  CMP             R2, #0
509D10:  VLDR            S4, [R1]
509D14:  ADD.W           R1, R2, #0x30 ; '0'
509D18:  VMUL.F32        S2, S4, S2
509D1C:  VLDR            S4, [R9,#0x50]
509D20:  IT EQ
509D22:  ADDEQ.W         R1, R9, #4
509D26:  VADD.F32        S2, S4, S2
509D2A:  VLDR            S4, [R1,#8]
509D2E:  VADD.F32        S4, S4, S2
509D32:  VCMPE.F32       S4, S0
509D36:  VMRS            APSR_nzcv, FPSCR
509D3A:  BGE             loc_509D4E
509D3C:  MOVS            R1, #0
509D3E:  MOV             R4, R0
509D40:  STRD.W          R1, R1, [R9,#0x48]
509D44:  STR.W           R1, [R9,#0x50]
509D48:  B               loc_509D58
509D4A:  LDR             R4, [SP,#0x258+var_244]
509D4C:  B               loc_509D54
509D4E:  VSTR            S2, [R9,#0x50]
509D52:  LDR             R4, [R1,#8]
509D54:  VMOV            S0, R4
509D58:  VLDR            S2, [R11,#0xC]
509D5C:  VCMPE.F32       S2, S0
509D60:  VMRS            APSR_nzcv, FPSCR
509D64:  BLE             loc_509D94
509D66:  CMP.W           R8, #0
509D6A:  BEQ             loc_509DF0
509D6C:  LDR.W           R0, [R6,#0x5A0]
509D70:  CMP             R0, #9
509D72:  BNE             loc_509DF0
509D74:  LDRSH.W         R0, [R8,#0x2C]
509D78:  SUBW            R1, R0, #0x167
509D7C:  CMP             R1, #4
509D7E:  BCC             loc_509D9C
509D80:  SUBW            R1, R0, #0x175
509D84:  CMP             R1, #4
509D86:  BCS.W           loc_50A4FA
509D8A:  VMOV.F32        S0, #1.0
509D8E:  VSUB.F32        S22, S0, S20
509D92:  B               loc_509DC2
509D94:  LDR.W           R0, [R11,#0x14]
509D98:  CBNZ            R0, loc_509E00
509D9A:  B               loc_509DF0
509D9C:  VLDR            S0, [R8,#0x20]
509DA0:  VMOV.F32        S22, #1.0
509DA4:  LDR.W           R0, [R8,#0x14]
509DA8:  VADD.F32        S0, S0, S0
509DAC:  VLDR            S2, [R0,#0x10]
509DB0:  VDIV.F32        S0, S0, S2
509DB4:  VCMPE.F32       S0, S22
509DB8:  VMRS            APSR_nzcv, FPSCR
509DBC:  IT LE
509DBE:  VMOVLE.F32      S22, S0
509DC2:  LDR             R0, [R6]
509DC4:  LDR             R1, [R6,#0x14]
509DC6:  LDR.W           R3, [R0,#0xD8]
509DCA:  ADD.W           R2, R1, #0x30 ; '0'
509DCE:  CMP             R1, #0
509DD0:  MOV             R0, R6
509DD2:  IT EQ
509DD4:  ADDEQ           R2, R6, #4
509DD6:  VLDR            S24, [R2,#8]
509DDA:  BLX             R3
509DDC:  VMOV            S0, R0
509DE0:  VMOV.F32        S2, #1.0
509DE4:  VSUB.F32        S0, S24, S0
509DE8:  VADD.F32        S0, S0, S2
509DEC:  VLDR            S2, [R11,#0xC]
509DF0:  VSUB.F32        S0, S0, S2
509DF4:  VMUL.F32        S0, S0, S22
509DF8:  VADD.F32        S0, S2, S0
509DFC:  VMOV            R4, S0
509E00:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x509E0C)
509E04:  LDR.W           R1, [R11,#0x10]; float
509E08:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
509E0A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
509E0C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
509E0E:  CMP             R0, R1
509E10:  BCS             loc_509E64
509E12:  ADD.W           R0, R9, #0x560
509E16:  VMOV            S24, R10
509E1A:  VMOV            S22, R5
509E1E:  LDR             R0, [R0]; this
509E20:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
509E24:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x509E34)
509E28:  VMOV            S4, R0
509E2C:  LDR.W           R2, [R11,#0x10]
509E30:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
509E32:  VLDR            S2, =600.0
509E36:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
509E38:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
509E3A:  SUBS            R1, R2, R1
509E3C:  VMOV            S0, R1
509E40:  ADDW            R1, R9, #0x55C
509E44:  VCVT.F32.U32    S0, S0
509E48:  VDIV.F32        S2, S0, S2
509E4C:  VCMPE.F32       S2, #0.0
509E50:  VLDR            S0, [R1]
509E54:  VMRS            APSR_nzcv, FPSCR
509E58:  BLE             loc_509E74
509E5A:  VLDR            S8, [R11]
509E5E:  VLDR            S6, [R11,#4]
509E62:  B               loc_509E82
509E64:  LDR.W           R0, [R9,#0x560]
509E68:  STR.W           R0, [R9,#0x55C]
509E6C:  CMP.W           R8, #0
509E70:  BNE             loc_509F5A
509E72:  B               loc_50A0A4
509E74:  VLDR            S6, =0.0
509E78:  MOVS            R0, #0
509E7A:  STRD.W          R0, R0, [R11]
509E7E:  VMOV.F32        S8, S6
509E82:  VLDR            S10, =0.0
509E86:  VMUL.F32        S6, S2, S6
509E8A:  VMUL.F32        S8, S2, S8
509E8E:  MOVS            R0, #0
509E90:  VMUL.F32        S10, S2, S10
509E94:  STR.W           R0, [R11,#8]
509E98:  VMOV            S12, R4
509E9C:  VSUB.F32        S6, S24, S6
509EA0:  VSUB.F32        S8, S22, S8
509EA4:  VSUB.F32        S10, S12, S10
509EA8:  VLDR            S12, =3.1416
509EAC:  VADD.F32        S12, S0, S12
509EB0:  VCMPE.F32       S12, S4
509EB4:  VMRS            APSR_nzcv, FPSCR
509EB8:  BGE             loc_509F14
509EBA:  VLDR            S12, =-6.2832
509EBE:  B               loc_509F2A
509EC0:  DCFS 0.0
509EC4:  DCFS -0.008
509EC8:  DCFS 600.0
509ECC:  DCFS 3.1416
509ED0:  DCFS -6.2832
509ED4:  DCFS -3.1416
509ED8:  DCFS 6.2832
509EDC:  ALIGN 0x10
509EE0:  DCFD 2.02860739e-81
509EE8:  DCFD -8.80596082e-64
509EF0:  DCFD 1.70605412e-47
509EF8:  DCFD -1.23650924e-32
509F00:  DCFD 1.66244406e-19
509F08:  DCFD -3.10441049e-9
509F10:  DCFS 0.2
509F14:  VLDR            S12, =-3.1416
509F18:  VADD.F32        S12, S0, S12
509F1C:  VCMPE.F32       S12, S4
509F20:  VMRS            APSR_nzcv, FPSCR
509F24:  BLE             loc_509F2E
509F26:  VLDR            S12, =6.2832
509F2A:  VADD.F32        S4, S4, S12
509F2E:  VMOV            R10, S6
509F32:  VMOV.F32        S6, #1.0
509F36:  VSUB.F32        S4, S0, S4
509F3A:  VMOV            R5, S8
509F3E:  VMOV            R4, S10
509F42:  VSUB.F32        S2, S6, S2
509F46:  VMUL.F32        S2, S2, S4
509F4A:  VSUB.F32        S0, S0, S2
509F4E:  VSTR            S0, [R1]
509F52:  CMP.W           R8, #0
509F56:  BEQ.W           loc_50A0A4
509F5A:  LDRSH.W         R0, [R8,#0x2C]
509F5E:  STR             R4, [SP,#0x258+var_244]
509F60:  SUBW            R1, R0, #0x175
509F64:  CMP             R1, #5
509F66:  BCC.W           loc_50A0EA
509F6A:  SUBW            R0, R0, #0x167
509F6E:  CMP             R0, #4
509F70:  BHI.W           loc_50A0A4
509F74:  LDR             R1, [R6,#0x14]; CMatrix *
509F76:  ADD             R0, SP, #0x258+var_F0; this
509F78:  MOV             R11, R5
509F7A:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
509F7E:  LDRH.W          R0, [R8,#0x2C]
509F82:  MOVW            R1, #0x16B
509F86:  CMP             R0, R1
509F88:  BNE             loc_509FC2
509F8A:  ADD             R4, SP, #0x258+var_138
509F8C:  MOVW            R1, #0xFDB
509F90:  MOVS            R0, #0
509F92:  MOVT            R1, #0x4049; x
509F96:  STRD.W          R0, R0, [SP,#0x258+var_F8]
509F9A:  MOV             R0, R4; this
509F9C:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
509FA0:  ADD             R5, SP, #0x258+var_A8
509FA2:  ADD             R6, SP, #0x258+var_F0
509FA4:  MOV             R2, R4
509FA6:  MOV             R0, R5
509FA8:  MOV             R1, R6
509FAA:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
509FAE:  MOV             R0, R6
509FB0:  MOV             R1, R5
509FB2:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
509FB6:  MOV             R0, R5; this
509FB8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
509FBC:  MOV             R0, R4; this
509FBE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
509FC2:  ADD             R4, SP, #0x258+var_178
509FC4:  ADD             R0, SP, #0x258+var_F0
509FC6:  MOV             R1, R4
509FC8:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
509FCC:  ADD             R5, SP, #0x258+var_188
509FCE:  MOV             R1, R4
509FD0:  MOV             R0, R5
509FD2:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
509FD6:  LDR.W           R1, [R9,#0x14]; CMatrix *
509FDA:  ADD             R0, SP, #0x258+var_A8; this
509FDC:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
509FE0:  ADD             R4, SP, #0x258+var_1C8
509FE2:  MOV             R1, R4
509FE4:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
509FE8:  ADD             R6, SP, #0x258+var_1D8
509FEA:  MOV             R1, R4
509FEC:  MOV             R0, R6
509FEE:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
509FF2:  LDR.W           R0, [R8,#0x14]
509FF6:  ADD             R4, SP, #0x258+var_200
509FF8:  MOV             R1, R5
509FFA:  VLDR            S16, [R8,#0x20]
509FFE:  MOV             R2, R4
50A000:  VLDR            S18, [R0,#0x10]
50A004:  MOV             R0, R6
50A006:  BLX             j__Z21RtQuatSetupSlerpCacheP6RtQuatS0_P16RtQuatSlerpCache; RtQuatSetupSlerpCache(RtQuat *,RtQuat *,RtQuatSlerpCache *)
50A00A:  VDIV.F32        S0, S16, S18
50A00E:  VCMPE.F32       S0, #0.0
50A012:  VMRS            APSR_nzcv, FPSCR
50A016:  BLE.W           loc_50A21C
50A01A:  VMOV.F32        S4, #1.0
50A01E:  VCMPE.F32       S0, S4
50A022:  VMRS            APSR_nzcv, FPSCR
50A026:  BGE.W           loc_50A302
50A02A:  VSUB.F32        S1, S4, S0
50A02E:  LDR             R0, [SP,#0x258+var_1DC]
50A030:  CBNZ            R0, loc_50A08E
50A032:  ADD.W           R0, R4, #0x20 ; ' '
50A036:  VLDR            D18, =2.02860739e-81
50A03A:  VLDR            D19, =-8.80596082e-64
50A03E:  VLD1.32         {D16[]}, [R0@32]
50A042:  VMUL.F32        D16, D0, D16
50A046:  VMUL.F32        D17, D16, D16
50A04A:  VMUL.F32        D18, D17, D18
50A04E:  VADD.F32        D18, D18, D19
50A052:  VLDR            D19, =1.70605412e-47
50A056:  VMUL.F32        D18, D17, D18
50A05A:  VADD.F32        D18, D18, D19
50A05E:  VLDR            D19, =-1.23650924e-32
50A062:  VMUL.F32        D18, D17, D18
50A066:  VADD.F32        D18, D18, D19
50A06A:  VLDR            D19, =1.66244406e-19
50A06E:  VMUL.F32        D18, D17, D18
50A072:  VADD.F32        D18, D18, D19
50A076:  VLDR            D19, =-3.10441049e-9
50A07A:  VMUL.F32        D18, D17, D18
50A07E:  VMUL.F32        D17, D16, D17
50A082:  VADD.F32        D18, D18, D19
50A086:  VMUL.F32        D17, D17, D18
50A08A:  VADD.F32        D0, D16, D17
50A08E:  VLD1.32         {D16-D17}, [R4]!
50A092:  VMUL.F32        Q8, Q8, D0[1]
50A096:  VLD1.32         {D18-D19}, [R4]
50A09A:  VMUL.F32        Q9, Q9, D0[0]
50A09E:  VADD.F32        Q0, Q8, Q9
50A0A2:  B               loc_50A306
50A0A4:  VCMPE.F32       S18, S16
50A0A8:  VMRS            APSR_nzcv, FPSCR
50A0AC:  BLE             loc_50A0CE
50A0AE:  VLDR            S0, =0.2
50A0B2:  VCMPE.F32       S20, S0
50A0B6:  VMRS            APSR_nzcv, FPSCR
50A0BA:  BGT             loc_50A0CE
50A0BC:  LDR.W           R0, [R6,#0x5A0]
50A0C0:  CMP             R0, #9
50A0C2:  ITT NE
50A0C4:  LDRNE.W         R0, [R6,#0x5A4]
50A0C8:  CMPNE           R0, #2
50A0CA:  BNE.W           loc_50A296
50A0CE:  LDR.W           R0, [R9,#0x14]
50A0D2:  CMP             R0, #0
50A0D4:  BEQ.W           loc_50A236
50A0D8:  STR             R5, [R0,#0x30]
50A0DA:  LDR.W           R0, [R9,#0x14]
50A0DE:  STR.W           R10, [R0,#0x34]
50A0E2:  LDR.W           R0, [R9,#0x14]
50A0E6:  ADDS            R0, #0x38 ; '8'
50A0E8:  B               loc_50A23E
50A0EA:  LDR             R1, [R6,#0x14]; CMatrix *
50A0EC:  ADD             R0, SP, #0x258+var_A8; this
50A0EE:  MOV             R11, R5
50A0F0:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
50A0F4:  ADD             R5, SP, #0x258+var_178
50A0F6:  MOV             R1, R5
50A0F8:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
50A0FC:  ADD             R4, SP, #0x258+var_188
50A0FE:  MOV             R1, R5
50A100:  MOV             R0, R4
50A102:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
50A106:  ADD             R5, SP, #0x258+var_F0
50A108:  LDR.W           R1, [R9,#0x14]; CMatrix *
50A10C:  MOV             R0, R5; this
50A10E:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
50A112:  LDR.W           R1, [R9,#0x55C]; x
50A116:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
50A11A:  ADD             R6, SP, #0x258+var_1C8
50A11C:  MOV             R0, R5
50A11E:  MOV             R1, R6
50A120:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
50A124:  ADD             R5, SP, #0x258+var_1D8
50A126:  MOV             R1, R6
50A128:  MOV             R0, R5
50A12A:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
50A12E:  LDR.W           R0, [R8,#0x14]
50A132:  ADD             R6, SP, #0x258+var_200
50A134:  MOV             R1, R5
50A136:  VLDR            S16, [R8,#0x20]
50A13A:  MOV             R2, R6
50A13C:  VLDR            S18, [R0,#0x10]
50A140:  MOV             R0, R4
50A142:  BLX             j__Z21RtQuatSetupSlerpCacheP6RtQuatS0_P16RtQuatSlerpCache; RtQuatSetupSlerpCache(RtQuat *,RtQuat *,RtQuatSlerpCache *)
50A146:  VDIV.F32        S1, S16, S18
50A14A:  VCMPE.F32       S1, #0.0
50A14E:  VMRS            APSR_nzcv, FPSCR
50A152:  BLE             loc_50A222
50A154:  VMOV.F32        S2, #1.0
50A158:  VCMPE.F32       S1, S2
50A15C:  VMRS            APSR_nzcv, FPSCR
50A160:  BGE.W           loc_50A3EC
50A164:  VSUB.F32        S0, S2, S1
50A168:  LDR             R0, [SP,#0x258+var_1DC]
50A16A:  MOV             R5, R11
50A16C:  CBNZ            R0, loc_50A1CA
50A16E:  ADD.W           R0, R6, #0x20 ; ' '
50A172:  VLDR            D18, =2.02860739e-81
50A176:  VLDR            D19, =-8.80596082e-64
50A17A:  VLD1.32         {D16[]}, [R0@32]
50A17E:  VMUL.F32        D16, D0, D16
50A182:  VMUL.F32        D17, D16, D16
50A186:  VMUL.F32        D18, D17, D18
50A18A:  VADD.F32        D18, D18, D19
50A18E:  VLDR            D19, =1.70605412e-47
50A192:  VMUL.F32        D18, D17, D18
50A196:  VADD.F32        D18, D18, D19
50A19A:  VLDR            D19, =-1.23650924e-32
50A19E:  VMUL.F32        D18, D17, D18
50A1A2:  VADD.F32        D18, D18, D19
50A1A6:  VLDR            D19, =1.66244406e-19
50A1AA:  VMUL.F32        D18, D17, D18
50A1AE:  VADD.F32        D18, D18, D19
50A1B2:  VLDR            D19, =-3.10441049e-9
50A1B6:  VMUL.F32        D18, D17, D18
50A1BA:  VMUL.F32        D17, D16, D17
50A1BE:  VADD.F32        D18, D18, D19
50A1C2:  VMUL.F32        D17, D17, D18
50A1C6:  VADD.F32        D0, D16, D17
50A1CA:  VLDR            S2, [SP,#0x258+var_1E8]
50A1CE:  VLDR            S4, [SP,#0x258+var_1E4]
50A1D2:  VLDR            S8, [SP,#0x258+var_1FC]
50A1D6:  VMUL.F32        S2, S1, S2
50A1DA:  VLDR            S10, [SP,#0x258+var_1F8]
50A1DE:  VMUL.F32        S4, S1, S4
50A1E2:  VLDR            S12, [SP,#0x258+var_1F4]
50A1E6:  VMUL.F32        S8, S0, S8
50A1EA:  VLDR            S14, [SP,#0x258+var_1EC]
50A1EE:  VMUL.F32        S10, S0, S10
50A1F2:  VLDR            S3, [SP,#0x258+var_1F0]
50A1F6:  VMUL.F32        S12, S0, S12
50A1FA:  VLDR            S6, [SP,#0x258+var_200]
50A1FE:  VMUL.F32        S14, S1, S14
50A202:  VMUL.F32        S3, S1, S3
50A206:  VMUL.F32        S1, S0, S6
50A20A:  VADD.F32        S6, S10, S2
50A20E:  VADD.F32        S4, S12, S4
50A212:  VADD.F32        S0, S8, S14
50A216:  VADD.F32        S2, S1, S3
50A21A:  B               loc_50A3FE
50A21C:  VLD1.64         {D0-D1}, [R6@128]
50A220:  B               loc_50A306
50A222:  VLDR            S2, [SP,#0x258+var_188]
50A226:  MOV             R5, R11
50A228:  VLDR            S0, [SP,#0x258+var_184]
50A22C:  VLDR            S6, [SP,#0x258+var_180]
50A230:  VLDR            S4, [SP,#0x258+var_17C]
50A234:  B               loc_50A3FE
50A236:  ADD.W           R0, R9, #0xC
50A23A:  STRD.W          R5, R10, [R9,#4]
50A23E:  STR             R4, [R0]
50A240:  ADDW            R1, R9, #0x55C
50A244:  LDR.W           R0, [R9,#0x14]; this
50A248:  VLDR            S0, [R1]
50A24C:  CBZ             R0, loc_50A290
50A24E:  VMOV            R3, S0; float
50A252:  MOVS            R1, #0; x
50A254:  MOVS            R2, #0; float
50A256:  VLDR            S16, [R0,#0x30]
50A25A:  VLDR            S18, [R0,#0x34]
50A25E:  VLDR            S20, [R0,#0x38]
50A262:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
50A266:  LDR.W           R0, [R9,#0x14]
50A26A:  VLDR            S0, [R0,#0x30]
50A26E:  VLDR            S2, [R0,#0x34]
50A272:  VLDR            S4, [R0,#0x38]
50A276:  VADD.F32        S0, S16, S0
50A27A:  VADD.F32        S2, S18, S2
50A27E:  VADD.F32        S4, S20, S4
50A282:  VSTR            S0, [R0,#0x30]
50A286:  VSTR            S2, [R0,#0x34]
50A28A:  VSTR            S4, [R0,#0x38]
50A28E:  B               loc_50A4E6
50A290:  VSTR            S0, [R9,#0x10]
50A294:  B               loc_50A4E6
50A296:  ADD             R4, SP, #0x258+var_A8
50A298:  LDR             R1, [R6,#0x14]; CMatrix *
50A29A:  MOV             R0, R4; this
50A29C:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
50A2A0:  ADD             R0, SP, #0x258+var_138; this
50A2A2:  MOV             R1, R11; CVehicle *
50A2A4:  MOV             R2, R6; float
50A2A6:  MOVS            R3, #0; CAnimBlendAssociation *
50A2A8:  STR.W           R8, [SP,#0x258+var_258]
50A2AC:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar29GetLocalPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::GetLocalPositionToOpenCarDoor(CVehicle *,float,CAnimBlendAssociation *)
50A2B0:  LDR             R0, [SP,#0x258+var_130]
50A2B2:  ADD             R2, SP, #0x258+var_F0
50A2B4:  STR             R0, [SP,#0x258+var_E8]
50A2B6:  ADD             R0, SP, #0x258+var_138; CMatrix *
50A2B8:  VLDR            D16, [SP,#0x258+var_138]
50A2BC:  MOV             R1, R4; CVector *
50A2BE:  VSTR            D16, [SP,#0x258+var_F0]
50A2C2:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
50A2C6:  VLDR            S0, [SP,#0x258+var_138]
50A2CA:  MOV             R0, R9; this
50A2CC:  VLDR            S6, [SP,#0x258+var_78]
50A2D0:  MOV             R1, R4; CMatrix *
50A2D2:  VLDR            S2, [SP,#0x258+var_138+4]
50A2D6:  VLDR            S8, [SP,#0x258+var_74]
50A2DA:  VADD.F32        S0, S0, S6
50A2DE:  VLDR            S10, [SP,#0x258+var_70]
50A2E2:  VLDR            S4, [SP,#0x258+var_130]
50A2E6:  VADD.F32        S2, S2, S8
50A2EA:  VADD.F32        S4, S4, S10
50A2EE:  VSTR            S0, [SP,#0x258+var_78]
50A2F2:  VSTR            S2, [SP,#0x258+var_74]
50A2F6:  VSTR            S4, [SP,#0x258+var_70]
50A2FA:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
50A2FE:  MOV             R0, R4
50A300:  B               loc_50A4E2
50A302:  VLD1.64         {D0-D1}, [R5@128]
50A306:  VMUL.F32        S4, S1, S1
50A30A:  MOVS            R0, #0
50A30C:  VMUL.F32        S6, S0, S0
50A310:  ADD             R4, SP, #0x258+var_138
50A312:  VMUL.F32        S8, S2, S2
50A316:  STR             R0, [SP,#0x258+var_F4]
50A318:  STR             R0, [SP,#0x258+var_20C]
50A31A:  ADD             R1, SP, #0x258+var_240
50A31C:  STR             R0, [SP,#0x258+var_F8]
50A31E:  STR             R0, [SP,#0x258+var_210]
50A320:  VADD.F32        S4, S6, S4
50A324:  VMUL.F32        S6, S3, S3
50A328:  VADD.F32        S4, S4, S8
50A32C:  VMOV.F32        S8, #2.0
50A330:  VADD.F32        S4, S6, S4
50A334:  VDIV.F32        S4, S8, S4
50A338:  VMUL.F32        S6, S2, S4
50A33C:  VMUL.F32        S8, S1, S4
50A340:  VMUL.F32        S4, S0, S4
50A344:  VMUL.F32        S10, S2, S6
50A348:  VMUL.F32        S12, S1, S8
50A34C:  VMUL.F32        S7, S0, S4
50A350:  VMUL.F32        S14, S3, S8
50A354:  VMUL.F32        S5, S2, S4
50A358:  VMUL.F32        S8, S0, S8
50A35C:  VMUL.F32        S0, S1, S6
50A360:  VMUL.F32        S9, S3, S6
50A364:  VADD.F32        S6, S12, S10
50A368:  VMUL.F32        S4, S3, S4
50A36C:  VMOV.F32        S2, #1.0
50A370:  VADD.F32        S10, S10, S7
50A374:  VADD.F32        S12, S7, S12
50A378:  VSUB.F32        S1, S5, S14
50A37C:  VADD.F32        S3, S8, S9
50A380:  VSUB.F32        S8, S8, S9
50A384:  VADD.F32        S7, S0, S4
50A388:  VSUB.F32        S0, S0, S4
50A38C:  VADD.F32        S4, S5, S14
50A390:  VSUB.F32        S6, S2, S6
50A394:  VSUB.F32        S10, S2, S10
50A398:  VSUB.F32        S2, S2, S12
50A39C:  VSTR            S3, [SP,#0x258+var_23C]
50A3A0:  VSTR            S1, [SP,#0x258+var_238]
50A3A4:  VSTR            S8, [SP,#0x258+var_230]
50A3A8:  VSTR            S7, [SP,#0x258+var_228]
50A3AC:  VSTR            S0, [SP,#0x258+var_21C]
50A3B0:  VSTR            S4, [SP,#0x258+var_220]
50A3B4:  VSTR            S6, [SP,#0x258+var_240]
50A3B8:  STR             R0, [SP,#0x258+var_208]
50A3BA:  MOVS            R0, #2
50A3BC:  VSTR            S10, [SP,#0x258+var_22C]
50A3C0:  VSTR            S2, [SP,#0x258+var_218]
50A3C4:  STR             R0, [SP,#0x258+var_234]
50A3C6:  MOV             R0, R4
50A3C8:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
50A3CC:  STRD.W          R11, R10, [SP,#0x258+var_108]
50A3D0:  MOV             R1, R4; CMatrix *
50A3D2:  LDR             R0, [SP,#0x258+var_244]
50A3D4:  STR             R0, [SP,#0x258+var_100]
50A3D6:  MOV             R0, R9; this
50A3D8:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
50A3DC:  MOV             R0, R4; this
50A3DE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A3E2:  ADD             R0, SP, #0x258+var_A8; this
50A3E4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A3E8:  ADD             R0, SP, #0x258+var_F0
50A3EA:  B               loc_50A4E2
50A3EC:  VLDR            S2, [SP,#0x258+var_1D8]
50A3F0:  MOV             R5, R11
50A3F2:  VLDR            S0, [SP,#0x258+var_1D4]
50A3F6:  VLDR            S6, [SP,#0x258+var_1D0]
50A3FA:  VLDR            S4, [SP,#0x258+var_1CC]
50A3FE:  VMUL.F32        S8, S2, S2
50A402:  MOVS            R0, #0
50A404:  VMUL.F32        S10, S0, S0
50A408:  ADD             R4, SP, #0x258+var_138
50A40A:  VMUL.F32        S12, S6, S6
50A40E:  STR             R0, [SP,#0x258+var_F4]
50A410:  STR             R0, [SP,#0x258+var_20C]
50A412:  ADD             R1, SP, #0x258+var_240
50A414:  STR             R0, [SP,#0x258+var_F8]
50A416:  STR             R0, [SP,#0x258+var_210]
50A418:  VADD.F32        S8, S10, S8
50A41C:  VMUL.F32        S10, S4, S4
50A420:  VADD.F32        S8, S12, S8
50A424:  VMOV.F32        S12, #2.0
50A428:  VADD.F32        S8, S10, S8
50A42C:  VDIV.F32        S8, S12, S8
50A430:  VMUL.F32        S10, S6, S8
50A434:  VMUL.F32        S12, S0, S8
50A438:  VMUL.F32        S8, S2, S8
50A43C:  VMUL.F32        S14, S6, S10
50A440:  VMUL.F32        S1, S0, S12
50A444:  VMUL.F32        S5, S2, S8
50A448:  VMUL.F32        S3, S4, S12
50A44C:  VMUL.F32        S7, S4, S10
50A450:  VMUL.F32        S2, S2, S12
50A454:  VMUL.F32        S6, S6, S8
50A458:  VMUL.F32        S4, S4, S8
50A45C:  VMUL.F32        S0, S0, S10
50A460:  VADD.F32        S10, S1, S14
50A464:  VMOV.F32        S8, #1.0
50A468:  VADD.F32        S1, S5, S1
50A46C:  VADD.F32        S14, S14, S5
50A470:  VADD.F32        S9, S2, S7
50A474:  VSUB.F32        S12, S6, S3
50A478:  VADD.F32        S5, S0, S4
50A47C:  VSUB.F32        S0, S0, S4
50A480:  VADD.F32        S4, S6, S3
50A484:  VSUB.F32        S6, S8, S10
50A488:  VSUB.F32        S2, S2, S7
50A48C:  VSUB.F32        S10, S8, S14
50A490:  VSTR            S9, [SP,#0x258+var_23C]
50A494:  VSUB.F32        S8, S8, S1
50A498:  VSTR            S12, [SP,#0x258+var_238]
50A49C:  VSTR            S2, [SP,#0x258+var_230]
50A4A0:  VSTR            S5, [SP,#0x258+var_228]
50A4A4:  VSTR            S0, [SP,#0x258+var_21C]
50A4A8:  VSTR            S4, [SP,#0x258+var_220]
50A4AC:  VSTR            S6, [SP,#0x258+var_240]
50A4B0:  STR             R0, [SP,#0x258+var_208]
50A4B2:  MOVS            R0, #2
50A4B4:  VSTR            S10, [SP,#0x258+var_22C]
50A4B8:  VSTR            S8, [SP,#0x258+var_218]
50A4BC:  STR             R0, [SP,#0x258+var_234]
50A4BE:  MOV             R0, R4
50A4C0:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
50A4C4:  STRD.W          R5, R10, [SP,#0x258+var_108]
50A4C8:  MOV             R1, R4; CMatrix *
50A4CA:  LDR             R0, [SP,#0x258+var_244]
50A4CC:  STR             R0, [SP,#0x258+var_100]
50A4CE:  MOV             R0, R9; this
50A4D0:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
50A4D4:  MOV             R0, R4; this
50A4D6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A4DA:  ADD             R0, SP, #0x258+var_F0; this
50A4DC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A4E0:  ADD             R0, SP, #0x258+var_A8; this
50A4E2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A4E6:  SUB.W           R4, R7, #-var_60
50A4EA:  MOVS            R0, #0
50A4EC:  MOV             SP, R4
50A4EE:  VPOP            {D8-D15}
50A4F2:  ADD             SP, SP, #4
50A4F4:  POP.W           {R8-R11}
50A4F8:  POP             {R4-R7,PC}
50A4FA:  MOVW            R1, #0x16B
50A4FE:  CMP             R0, R1
50A500:  BEQ.W           loc_509DF0
50A504:  VLDR            S22, =0.0
50A508:  B               loc_509DC2
