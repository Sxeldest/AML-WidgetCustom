; =========================================================
; Game Engine Function: _ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE
; Address            : 0x5B951C - 0x5B9C64
; =========================================================

5B951C:  PUSH            {R4-R7,LR}
5B951E:  ADD             R7, SP, #0xC
5B9520:  PUSH.W          {R8-R11}
5B9524:  SUB             SP, SP, #4
5B9526:  VPUSH           {D8-D12}
5B952A:  SUB             SP, SP, #0x60; float
5B952C:  MOV             R5, R0
5B952E:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5B9538)
5B9532:  MOV             R6, R1
5B9534:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5B9536:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5B9538:  LDRH.W          R9, [R0,#(dword_966594 - 0x96654C)]
5B953C:  CMP.W           R9, #0
5B9540:  BEQ.W           loc_5B9C50; jumptable 005B9690 case 539
5B9544:  LDR.W           R0, =(gpShadowCarTex_ptr - 0x5B954E)
5B9548:  LDR             R1, [R5,#0x14]
5B954A:  ADD             R0, PC; gpShadowCarTex_ptr
5B954C:  ADD.W           R2, R1, #0x30 ; '0'
5B9550:  CMP             R1, #0
5B9552:  LDR             R0, [R0]; gpShadowCarTex
5B9554:  LDR.W           R8, [R0]
5B9558:  IT EQ
5B955A:  ADDEQ           R2, R5, #4
5B955C:  LDR.W           R0, =(TheCamera_ptr - 0x5B9568)
5B9560:  VLDR            D16, [R2]
5B9564:  ADD             R0, PC; TheCamera_ptr
5B9566:  LDR             R1, [R2,#8]
5B9568:  STR             R1, [SP,#0xA8+var_50]
5B956A:  LDR             R0, [R0]; TheCamera
5B956C:  VSTR            D16, [SP,#0xA8+var_58]
5B9570:  VLDR            S24, [SP,#0xA8+var_58]
5B9574:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
5B9576:  VLDR            S20, [SP,#0xA8+var_58+4]
5B957A:  ADD.W           R1, R2, #0x30 ; '0'
5B957E:  CMP             R2, #0
5B9580:  IT EQ
5B9582:  ADDEQ           R1, R0, #4
5B9584:  LDR.W           R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x5B9594)
5B9588:  VLDR            S0, [R1]
5B958C:  VLDR            S2, [R1,#4]
5B9590:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
5B9592:  VSUB.F32        S0, S24, S0
5B9596:  VSUB.F32        S2, S20, S2
5B959A:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
5B959C:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
5B959E:  CMP             R0, #0
5B95A0:  VMUL.F32        S0, S0, S0
5B95A4:  VMUL.F32        S2, S2, S2
5B95A8:  VADD.F32        S0, S0, S2
5B95AC:  BEQ             loc_5B95CA
5B95AE:  LDR.W           R0, =(TheCamera_ptr - 0x5B95BA)
5B95B2:  VMOV.F32        S4, #4.0
5B95B6:  ADD             R0, PC; TheCamera_ptr
5B95B8:  LDR             R0, [R0]; TheCamera
5B95BA:  VLDR            S2, [R0,#0xEC]
5B95BE:  VMUL.F32        S2, S2, S2
5B95C2:  VMUL.F32        S2, S2, S4
5B95C6:  VDIV.F32        S0, S0, S2
5B95CA:  SUBS            R0, R6, #3
5B95CC:  CMP             R0, #2
5B95CE:  BCC             loc_5B95E8
5B95D0:  CMP             R6, #2
5B95D2:  BEQ             loc_5B95F0
5B95D4:  CMP             R6, #5
5B95D6:  BNE.W           loc_5B9798
5B95DA:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B95E6)
5B95DE:  ADR.W           R1, dword_5B9C90
5B95E2:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B95E4:  LDR             R0, [R0]; MobileSettings::settings ...
5B95E6:  B               loc_5B95FC
5B95E8:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B95F0)
5B95EC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B95EE:  B               loc_5B95F6
5B95F0:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B95F8)
5B95F4:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B95F6:  LDR             R0, [R0]; MobileSettings::settings ...
5B95F8:  ADR.W           R1, dword_5B9C84
5B95FC:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
5B9600:  CMP             R0, #2
5B9602:  IT EQ
5B9604:  ADDEQ           R1, #4
5B9606:  VLDR            S2, [R1]
5B960A:  VMUL.F32        S4, S2, S2
5B960E:  VCMPE.F32       S0, S4
5B9612:  VMRS            APSR_nzcv, FPSCR
5B9616:  BGE.W           loc_5B9C50; jumptable 005B9690 case 539
5B961A:  VSQRT.F32       S0, S0
5B961E:  VMOV.F32        S4, #0.75
5B9622:  VMUL.F32        S4, S2, S4
5B9626:  VCMPE.F32       S0, S4
5B962A:  VMRS            APSR_nzcv, FPSCR
5B962E:  BLT             loc_5B9660
5B9630:  VMOV.F32        S6, #-0.25
5B9634:  SXTH.W          R0, R9
5B9638:  VSUB.F32        S0, S0, S4
5B963C:  VMOV            S4, R0
5B9640:  VCVT.F32.S32    S4, S4
5B9644:  VMUL.F32        S2, S2, S6
5B9648:  VDIV.F32        S0, S0, S2
5B964C:  VMOV.F32        S2, #1.0
5B9650:  VADD.F32        S0, S0, S2
5B9654:  VMUL.F32        S0, S0, S4
5B9658:  VCVT.S32.F32    S0, S0
5B965C:  VMOV            R9, S0
5B9660:  MOV             R0, R5; this
5B9662:  LDRSH.W         R4, [R5,#0x26]
5B9666:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5B966A:  VLDR            S4, [R0]
5B966E:  VMOV.F32        S2, #1.0
5B9672:  VLDR            S8, [R0,#0xC]
5B9676:  VLDR            S6, [R0,#4]
5B967A:  VLDR            S0, [R0,#0x10]
5B967E:  VSUB.F32        S18, S8, S4
5B9682:  SUBW            R0, R4, #0x1A1; switch 123 cases
5B9686:  VSUB.F32        S16, S0, S6
5B968A:  CMP             R0, #0x7A ; 'z'
5B968C:  BHI.W           def_5B9690; jumptable 005B9690 default case
5B9690:  TBH.W           [PC,R0,LSL#1]; switch jump
5B9694:  DCW 0xB4; jump table for switch statement
5B9696:  DCW 0xD9
5B9698:  DCW 0xD9
5B969A:  DCW 0xD9
5B969C:  DCW 0xD9
5B969E:  DCW 0xD9
5B96A0:  DCW 0xD9
5B96A2:  DCW 0xD9
5B96A4:  DCW 0xB4
5B96A6:  DCW 0xD9
5B96A8:  DCW 0xD9
5B96AA:  DCW 0xD9
5B96AC:  DCW 0xD9
5B96AE:  DCW 0xD9
5B96B0:  DCW 0xD9
5B96B2:  DCW 0xD9
5B96B4:  DCW 0xD9
5B96B6:  DCW 0xD9
5B96B8:  DCW 0xD9
5B96BA:  DCW 0xD9
5B96BC:  DCW 0xD9
5B96BE:  DCW 0xD9
5B96C0:  DCW 0xD9
5B96C2:  DCW 0xD9
5B96C4:  DCW 0xD9
5B96C6:  DCW 0xD9
5B96C8:  DCW 0xD9
5B96CA:  DCW 0xD9
5B96CC:  DCW 0xD9
5B96CE:  DCW 0xD9
5B96D0:  DCW 0xB4
5B96D2:  DCW 0x7B
5B96D4:  DCW 0xD9
5B96D6:  DCW 0xD9
5B96D8:  DCW 0xD9
5B96DA:  DCW 0xD9
5B96DC:  DCW 0xD9
5B96DE:  DCW 0xD9
5B96E0:  DCW 0xD9
5B96E2:  DCW 0xD9
5B96E4:  DCW 0xD9
5B96E6:  DCW 0xD9
5B96E8:  DCW 0xD9
5B96EA:  DCW 0xD9
5B96EC:  DCW 0x7B
5B96EE:  DCW 0x7B
5B96F0:  DCW 0xBF
5B96F2:  DCW 0xD9
5B96F4:  DCW 0xC6
5B96F6:  DCW 0xD9
5B96F8:  DCW 0xD9
5B96FA:  DCW 0xBF
5B96FC:  DCW 0xB4
5B96FE:  DCW 0xD9
5B9700:  DCW 0xD9
5B9702:  DCW 0xD9
5B9704:  DCW 0xD9
5B9706:  DCW 0xD9
5B9708:  DCW 0xD9
5B970A:  DCW 0xD9
5B970C:  DCW 0xD9
5B970E:  DCW 0xD9
5B9710:  DCW 0xD9
5B9712:  DCW 0xD9
5B9714:  DCW 0x7B
5B9716:  DCW 0xD9
5B9718:  DCW 0xD9
5B971A:  DCW 0xD9
5B971C:  DCW 0xD9
5B971E:  DCW 0xD9
5B9720:  DCW 0xB4
5B9722:  DCW 0xD9
5B9724:  DCW 0xD9
5B9726:  DCW 0xD9
5B9728:  DCW 0xD9
5B972A:  DCW 0xD9
5B972C:  DCW 0xD9
5B972E:  DCW 0xD9
5B9730:  DCW 0xD9
5B9732:  DCW 0xD9
5B9734:  DCW 0xB4
5B9736:  DCW 0xD9
5B9738:  DCW 0xD9
5B973A:  DCW 0xD9
5B973C:  DCW 0xC6
5B973E:  DCW 0xD9
5B9740:  DCW 0xD9
5B9742:  DCW 0xD9
5B9744:  DCW 0xD9
5B9746:  DCW 0xD9
5B9748:  DCW 0xD9
5B974A:  DCW 0xD9
5B974C:  DCW 0x7B
5B974E:  DCW 0x7B
5B9750:  DCW 0xD9
5B9752:  DCW 0xD9
5B9754:  DCW 0xD9
5B9756:  DCW 0xD9
5B9758:  DCW 0xD9
5B975A:  DCW 0xD9
5B975C:  DCW 0xD9
5B975E:  DCW 0xD9
5B9760:  DCW 0xD9
5B9762:  DCW 0xD9
5B9764:  DCW 0x7B
5B9766:  DCW 0x7B
5B9768:  DCW 0xBF
5B976A:  DCW 0xD9
5B976C:  DCW 0xD9
5B976E:  DCW 0xD9
5B9770:  DCW 0xD9
5B9772:  DCW 0xD9
5B9774:  DCW 0xD9
5B9776:  DCW 0xD9
5B9778:  DCW 0xD9
5B977A:  DCW 0xD9
5B977C:  DCW 0xD9
5B977E:  DCW 0xD9
5B9780:  DCW 0xD9
5B9782:  DCW 0xD9
5B9784:  DCW 0xD9
5B9786:  DCW 0xD9
5B9788:  DCW 0x2DE
5B978A:  VLDR            S2, =1.2; jumptable 005B9690 cases 448,461,462,481,509,510,521,522
5B978E:  VMUL.F32        S16, S16, S2
5B9792:  VLDR            S2, =0.05
5B9796:  B               loc_5B9846; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B9798:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5B97A8)
5B979C:  VMOV.F32        S2, #18.0
5B97A0:  VLDR            S4, =32.0
5B97A4:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5B97A6:  LDR             R0, [R0]; MobileSettings::settings ...
5B97A8:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
5B97AC:  VMOV.F32        S6, S2
5B97B0:  CMP             R0, #2
5B97B2:  IT EQ
5B97B4:  VMOVEQ.F32      S6, S4
5B97B8:  VMUL.F32        S6, S6, S6
5B97BC:  VCMPE.F32       S0, S6
5B97C0:  VMRS            APSR_nzcv, FPSCR
5B97C4:  BGE.W           loc_5B9C50; jumptable 005B9690 case 539
5B97C8:  CMP             R0, #2
5B97CA:  BNE.W           loc_5B961A
5B97CE:  LDR.W           R0, [R5,#0x5A4]
5B97D2:  CMP             R0, #0xB
5B97D4:  BHI.W           loc_5B9C5E
5B97D8:  VMOV.F32        S2, S4
5B97DC:  MOVS            R1, #1
5B97DE:  LSL.W           R0, R1, R0
5B97E2:  MOVW            R1, #0xE03
5B97E6:  TST             R0, R1
5B97E8:  BEQ.W           loc_5B961A
5B97EC:  LDR.W           R0, =(g_realTimeShadowMan_ptr - 0x5B97F6)
5B97F0:  MOV             R1, R5; CPhysical *
5B97F2:  ADD             R0, PC; g_realTimeShadowMan_ptr
5B97F4:  LDR             R0, [R0]; g_realTimeShadowMan ; this
5B97F6:  BLX.W           j__ZN22CRealTimeShadowManager17DoShadowThisFrameEP9CPhysical; CRealTimeShadowManager::DoShadowThisFrame(CPhysical *)
5B97FA:  B               loc_5B9C50; jumptable 005B9690 case 539
5B97FC:  VMOV.F32        S4, #3.0; jumptable 005B9690 cases 417,425,447,469,487,497
5B9800:  VLDR            S6, =1.4
5B9804:  VMOV.F32        S2, #0.5
5B9808:  VMUL.F32        S16, S16, S6
5B980C:  VMUL.F32        S18, S18, S4
5B9810:  B               loc_5B9846; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B9812:  VMOV.F32        S2, #1.5; jumptable 005B9690 cases 463,468,523
5B9816:  VMUL.F32        S16, S16, S2
5B981A:  VLDR            S2, =0.03
5B981E:  B               loc_5B9846; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B9820:  VMOV.F32        S2, #1.5; jumptable 005B9690 cases 465,501
5B9824:  VADD.F32        S18, S18, S18
5B9828:  VMUL.F32        S16, S16, S2
5B982C:  VLDR            S2, =0.2
5B9830:  B               loc_5B9846; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B9832:  ADDS            R0, R4, #2; jumptable 005B9690 default case
5B9834:  BNE             loc_5B9846; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B9836:  VLDR            S4, =0.4
5B983A:  VLDR            S6, =0.9
5B983E:  VMUL.F32        S18, S18, S4
5B9842:  VMUL.F32        S16, S16, S6
5B9846:  VMOV.F32        S22, #0.5; jumptable 005B9690 cases 418-424,426-446,449-460,464,466,467,470-480,482-486,488-496,498-500,502-508,511-520,524-538
5B984A:  LDR             R0, [R5,#0x14]
5B984C:  CMP             R6, #5; switch 6 cases
5B984E:  VMUL.F32        S4, S16, S22
5B9852:  VSUB.F32        S0, S4, S0
5B9856:  VLDR            S4, [R0,#0x14]
5B985A:  VMUL.F32        S0, S2, S0
5B985E:  VLDR            S2, [R0,#0x10]
5B9862:  VMUL.F32        S2, S2, S0
5B9866:  VMUL.F32        S0, S0, S4
5B986A:  VSUB.F32        S2, S24, S2
5B986E:  VSUB.F32        S0, S20, S0
5B9872:  VMOV.F32        S20, #4.5
5B9876:  VSTR            S2, [SP,#0xA8+var_58]
5B987A:  VSTR            S0, [SP,#0xA8+var_58+4]
5B987E:  BHI             def_5B9880; jumptable 005B9880 default case
5B9880:  TBB.W           [PC,R6]; switch jump
5B9884:  DCB 0x12; jump table for switch statement
5B9885:  DCB 0x16
5B9886:  DCB 0x44
5B9887:  DCB 3
5B9888:  DCB 0x57
5B9889:  DCB 3
5B988A:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5B9896); jumptable 005B9880 cases 3,5
5B988E:  LDR.W           R1, =(gpShadowBaronTex_ptr - 0x5B9898)
5B9892:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5B9894:  ADD             R1, PC; gpShadowBaronTex_ptr
5B9896:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5B9898:  LDR             R1, [R1]; gpShadowBaronTex
5B989A:  LDRH.W          R9, [R0,#(dword_966594 - 0x96654C)]
5B989E:  LDR             R0, [R1]
5B98A0:  B               loc_5B9914
5B98A2:  STR.W           R8, [SP,#0xA8+var_74]; jumptable 005B9880 default case
5B98A6:  B               loc_5B994C
5B98A8:  LDR.W           R0, =(gpShadowCarTex_ptr - 0x5B98B0); jumptable 005B9880 case 0
5B98AC:  ADD             R0, PC; gpShadowCarTex_ptr
5B98AE:  B               loc_5B9908
5B98B0:  ADDW            R1, R5, #0x65C; jumptable 005B9880 case 1
5B98B4:  VLDR            S2, =5.093
5B98B8:  VMOV.F32        S4, #1.0
5B98BC:  VLDR            S0, [R1]
5B98C0:  LDRB.W          R1, [R5,#0x3A]
5B98C4:  VABS.F32        S0, S0
5B98C8:  AND.W           R1, R1, #0xF8
5B98CC:  CMP             R1, #0x20 ; ' '
5B98CE:  VMUL.F32        S0, S0, S2
5B98D2:  VADD.F32        S0, S0, S4
5B98D6:  BNE             loc_5B98FE
5B98D8:  VLDR            S2, [R0,#8]
5B98DC:  VMOV.F32        S4, #4.0
5B98E0:  VLDR            S6, =0.6
5B98E4:  VABS.F32        S2, S2
5B98E8:  VCMPE.F32       S2, S6
5B98EC:  VMRS            APSR_nzcv, FPSCR
5B98F0:  VMUL.F32        S4, S2, S4
5B98F4:  VADD.F32        S4, S0, S4
5B98F8:  IT GT
5B98FA:  VMOVGT.F32      S0, S4
5B98FE:  LDR.W           R0, =(gpShadowBikeTex_ptr - 0x5B990A)
5B9902:  VMUL.F32        S18, S18, S0
5B9906:  ADD             R0, PC; gpShadowBikeTex_ptr
5B9908:  LDR             R0, [R0]
5B990A:  B               loc_5B9948
5B990C:  LDR             R0, =(gpShadowHeliTex_ptr - 0x5B9912); jumptable 005B9880 case 2
5B990E:  ADD             R0, PC; gpShadowHeliTex_ptr
5B9910:  LDR             R0, [R0]; gpShadowHeliTex
5B9912:  LDR             R0, [R0]
5B9914:  STR             R0, [SP,#0xA8+var_74]
5B9916:  MOV.W           R0, #0xFFFFFFFF; int
5B991A:  MOVS            R1, #0; bool
5B991C:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5B9920:  VLDR            S0, =50.0
5B9924:  VMOV.F32        S20, #4.5
5B9928:  CMP             R0, R5
5B992A:  IT EQ
5B992C:  VMOVEQ.F32      S20, S0
5B9930:  B               loc_5B994C
5B9932:  VMOV.F32        S0, #1.5; jumptable 005B9880 case 4
5B9936:  LDR             R0, =(gpShadowBaronTex_ptr - 0x5B9940)
5B9938:  VLDR            S2, =2.2
5B993C:  ADD             R0, PC; gpShadowBaronTex_ptr
5B993E:  VMUL.F32        S18, S18, S2
5B9942:  LDR             R0, [R0]; gpShadowBaronTex
5B9944:  VMUL.F32        S16, S16, S0
5B9948:  LDR             R0, [R0]
5B994A:  STR             R0, [SP,#0xA8+var_74]
5B994C:  LDR             R1, [R5,#0x14]
5B994E:  MOVS            R0, #0
5B9950:  ADD             R2, SP, #0xA8+var_64
5B9952:  LDR.W           R4, [R1,#0x10]!; CVector *
5B9956:  LDR.W           R10, [R1,#4]
5B995A:  STRD.W          R0, R0, [SP,#0xA8+var_64]
5B995E:  MOV.W           R0, #0x3F800000
5B9962:  STR             R0, [SP,#0xA8+var_5C]
5B9964:  ADD             R0, SP, #0xA8+var_70; CVector *
5B9966:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5B996A:  LDR.W           R8, [SP,#0xA8+var_70]
5B996E:  VLDR            S24, [SP,#0xA8+var_6C]
5B9972:  VMOV            S0, R8
5B9976:  VMUL.F32        S2, S24, S24
5B997A:  VMUL.F32        S4, S0, S0
5B997E:  VADD.F32        S2, S4, S2
5B9982:  VSQRT.F32       S2, S2
5B9986:  VCMPE.F32       S2, S22
5B998A:  VMRS            APSR_nzcv, FPSCR
5B998E:  BGE             loc_5B99A4
5B9990:  VDIV.F32        S0, S0, S2
5B9994:  VDIV.F32        S2, S24, S2
5B9998:  VMUL.F32        S0, S0, S22
5B999C:  VMUL.F32        S24, S2, S22
5B99A0:  VMOV            R8, S0
5B99A4:  LDR             R0, [R5,#0x14]
5B99A6:  VLDR            S0, [R0,#0x28]
5B99AA:  VCMPE.F32       S0, #0.0
5B99AE:  VMRS            APSR_nzcv, FPSCR
5B99B2:  ITT LT
5B99B4:  VNEGLT.F32      S24, S24
5B99B8:  EORLT.W         R8, R8, #0x80000000
5B99BC:  CMP             R6, #2
5B99BE:  VMOV            R11, S24
5B99C2:  BEQ             loc_5B99E8
5B99C4:  CMP             R6, #1
5B99C6:  BNE             loc_5B9A1C
5B99C8:  VLDR            S2, [R0,#8]
5B99CC:  VLDR            S4, =0.6
5B99D0:  VABS.F32        S2, S2
5B99D4:  VCMPE.F32       S2, S4
5B99D8:  VMRS            APSR_nzcv, FPSCR
5B99DC:  ITT GT
5B99DE:  LDRDGT.W        R8, R11, [R0,#0x20]
5B99E2:  VMOVGT          S24, R11
5B99E6:  B               loc_5B9A1C
5B99E8:  VLDR            S2, [R0,#8]
5B99EC:  VABS.F32        S4, S2
5B99F0:  VLDR            S2, =0.57
5B99F4:  VCMPE.F32       S4, S2
5B99F8:  VMRS            APSR_nzcv, FPSCR
5B99FC:  ITT GT
5B99FE:  LDRDGT.W        R8, R11, [R0,#0x20]
5B9A02:  VMOVGT          S24, R11
5B9A06:  VLDR            S4, [R0,#0x18]
5B9A0A:  VABS.F32        S4, S4
5B9A0E:  VCMPE.F32       S4, S2
5B9A12:  VMRS            APSR_nzcv, FPSCR
5B9A16:  IT GT
5B9A18:  LDRDGT.W        R4, R10, [R0,#0x20]
5B9A1C:  LDRB.W          R0, [R5,#0x430]
5B9A20:  MOVS            R6, #0
5B9A22:  CMP.W           R6, R0,LSR#7
5B9A26:  BNE             loc_5B9A42
5B9A28:  MOV.W           R0, #0xFFFFFFFF; int
5B9A2C:  MOVS            R1, #0; bool
5B9A2E:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5B9A32:  LDR             R1, [R5,#0x14]
5B9A34:  CMP             R0, R5
5B9A36:  VLDR            S0, [R1,#0x28]
5B9A3A:  IT EQ
5B9A3C:  MOVEQ           R6, #1
5B9A3E:  CBZ             R6, loc_5B9A48
5B9A40:  B               loc_5B9AF8
5B9A42:  MOVS            R6, #1
5B9A44:  CMP             R6, #0
5B9A46:  BNE             loc_5B9AF8
5B9A48:  VLDR            S2, [R5,#0x48]
5B9A4C:  VLDR            S4, [R5,#0x4C]
5B9A50:  VMUL.F32        S2, S2, S2
5B9A54:  VLDR            S6, [R5,#0x50]
5B9A58:  VMUL.F32        S4, S4, S4
5B9A5C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5B9A66)
5B9A5E:  VMUL.F32        S6, S6, S6
5B9A62:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5B9A64:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5B9A66:  VADD.F32        S2, S2, S4
5B9A6A:  VLDR            S4, [R0]
5B9A6E:  VADD.F32        S2, S2, S6
5B9A72:  VSQRT.F32       S2, S2
5B9A76:  VMUL.F32        S2, S4, S2
5B9A7A:  VLDR            S4, =0.1
5B9A7E:  VCMPE.F32       S2, S4
5B9A82:  VMRS            APSR_nzcv, FPSCR
5B9A86:  BGT             loc_5B9AF8
5B9A88:  VMUL.F32        S8, S18, S22
5B9A8C:  ADDS            R0, R5, #1; int
5B9A8E:  VMUL.F32        S4, S16, S22
5B9A92:  VMOV            S2, R10
5B9A96:  VMOV            S6, R8
5B9A9A:  VMOV            S10, R4
5B9A9E:  VCMPE.F32       S0, #0.0
5B9AA2:  VMRS            APSR_nzcv, FPSCR
5B9AA6:  VMUL.F32        S6, S8, S6
5B9AAA:  VMUL.F32        S2, S4, S2
5B9AAE:  VMUL.F32        S4, S4, S10
5B9AB2:  BLE             loc_5B9B82
5B9AB4:  MOVW            R1, #0xCCCD
5B9AB8:  VMOV            S0, R11
5B9ABC:  MOVS            R3, #0
5B9ABE:  MOVT            R1, #0x3DCC
5B9AC2:  STR             R1, [SP,#0xA8+var_78]
5B9AC4:  MOVS            R1, #0
5B9AC6:  MOV.W           R2, #0x3F800000
5B9ACA:  MOVT            R3, #0x4090
5B9ACE:  UXTB.W          R6, R9
5B9AD2:  VMUL.F32        S0, S8, S0
5B9AD6:  B               loc_5B9BA4
5B9AD8:  DCFS 1.2
5B9ADC:  DCFS 0.05
5B9AE0:  DCFS 32.0
5B9AE4:  DCFS 1.4
5B9AE8:  DCFS 0.03
5B9AEC:  DCFS 0.2
5B9AF0:  DCFS 0.4
5B9AF4:  DCFS 0.9
5B9AF8:  VMUL.F32        S6, S18, S22
5B9AFC:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9B0A)
5B9AFE:  VMUL.F32        S4, S16, S22
5B9B02:  VMOV            S2, R10
5B9B06:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9B08:  VMOV            S8, R8
5B9B0C:  VMOV            S10, R4
5B9B10:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5B9B12:  VCMPE.F32       S0, #0.0
5B9B16:  VMRS            APSR_nzcv, FPSCR
5B9B1A:  VMUL.F32        S8, S6, S8
5B9B1E:  LDRH            R0, [R0]; CShadows::ShadowsStoredToBeRendered
5B9B20:  VMUL.F32        S2, S4, S2
5B9B24:  VMUL.F32        S4, S4, S10
5B9B28:  BLE             loc_5B9BD4
5B9B2A:  CMP             R0, #0x2F ; '/'
5B9B2C:  BHI.W           loc_5B9C50; jumptable 005B9690 case 539
5B9B30:  LDR             R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B9B3E)
5B9B32:  MOVS            R2, #0x34 ; '4'
5B9B34:  VMOV            S0, R11
5B9B38:  LDR             R3, [SP,#0xA8+var_74]
5B9B3A:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B9B3C:  VLDR            D16, [SP,#0xA8+var_58]
5B9B40:  VMUL.F32        S0, S6, S0
5B9B44:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5B9B46:  MLA.W           R1, R0, R2, R1
5B9B4A:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9B50)
5B9B4C:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9B4E:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B9B50:  STR             R3, [R1,#0x24]
5B9B52:  MOVS            R3, #1
5B9B54:  STRB.W          R3, [R1,#0x2E]
5B9B58:  LDRB.W          R5, [R1,#0x32]
5B9B5C:  LDR             R3, [SP,#0xA8+var_50]
5B9B5E:  STR             R3, [R1,#8]
5B9B60:  STRH.W          R9, [R1,#0x2C]
5B9B64:  STRB.W          R9, [R1,#0x2F]
5B9B68:  STRB.W          R9, [R1,#0x30]
5B9B6C:  STRB.W          R9, [R1,#0x31]
5B9B70:  VSTR            S4, [R1,#0xC]
5B9B74:  VSTR            S2, [R1,#0x10]
5B9B78:  VSTR            S8, [R1,#0x14]
5B9B7C:  VSTR            S0, [R1,#0x18]
5B9B80:  B               loc_5B9C2C
5B9B82:  VNMUL.F32       S0, S8, S24
5B9B86:  MOVW            R1, #0xCCCD
5B9B8A:  VNEG.F32        S6, S6
5B9B8E:  MOVS            R3, #0
5B9B90:  MOVT            R1, #0x3DCC
5B9B94:  MOV.W           R2, #0x3F800000
5B9B98:  STR             R1, [SP,#0xA8+var_78]; float
5B9B9A:  MOVS            R1, #0
5B9B9C:  MOVT            R3, #0x4090
5B9BA0:  UXTB.W          R6, R9
5B9BA4:  SXTH.W          R5, R9
5B9BA8:  STRD.W          R5, R6, [SP,#0xA8+var_98]; int
5B9BAC:  STRD.W          R6, R6, [SP,#0xA8+var_90]; int
5B9BB0:  STRD.W          R3, R2, [SP,#0xA8+var_88]; float
5B9BB4:  ADD             R3, SP, #0xA8+var_58; int
5B9BB6:  STRD.W          R1, R1, [SP,#0xA8+var_80]; float
5B9BBA:  MOVS            R1, #1; int
5B9BBC:  LDR             R2, [SP,#0xA8+var_74]; int
5B9BBE:  VSTR            S4, [SP,#0xA8+var_A8]
5B9BC2:  VSTR            S2, [SP,#0xA8+var_A4]
5B9BC6:  VSTR            S6, [SP,#0xA8+var_A0]
5B9BCA:  VSTR            S0, [SP,#0xA8+var_9C]
5B9BCE:  BLX.W           j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
5B9BD2:  B               loc_5B9C50; jumptable 005B9690 case 539
5B9BD4:  CMP             R0, #0x2F ; '/'
5B9BD6:  BHI             loc_5B9C50; jumptable 005B9690 case 539
5B9BD8:  LDR             R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B9BE8)
5B9BDA:  VNEG.F32        S0, S8
5B9BDE:  VMOV            S8, R11
5B9BE2:  MOVS            R2, #0x34 ; '4'
5B9BE4:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B9BE6:  LDR             R3, [SP,#0xA8+var_74]
5B9BE8:  VNMUL.F32       S6, S6, S8
5B9BEC:  VLDR            D16, [SP,#0xA8+var_58]
5B9BF0:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5B9BF2:  MLA.W           R1, R0, R2, R1
5B9BF6:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9BFC)
5B9BF8:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9BFA:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B9BFC:  STR             R3, [R1,#0x24]
5B9BFE:  MOVS            R3, #1
5B9C00:  STRB.W          R3, [R1,#0x2E]
5B9C04:  LDR             R3, [SP,#0xA8+var_50]
5B9C06:  LDRB.W          R5, [R1,#0x32]
5B9C0A:  STR             R3, [R1,#8]
5B9C0C:  STRH.W          R9, [R1,#0x2C]
5B9C10:  STRB.W          R9, [R1,#0x2F]
5B9C14:  STRB.W          R9, [R1,#0x30]
5B9C18:  STRB.W          R9, [R1,#0x31]
5B9C1C:  VSTR            S4, [R1,#0xC]
5B9C20:  VSTR            S2, [R1,#0x10]
5B9C24:  VSTR            S0, [R1,#0x14]
5B9C28:  VSTR            S6, [R1,#0x18]
5B9C2C:  MOV.W           R3, #0x3F800000
5B9C30:  VSTR            S20, [R1,#0x1C]
5B9C34:  STR             R3, [R1,#0x20]
5B9C36:  MOVS            R3, #0
5B9C38:  STR             R3, [R1,#0x28]
5B9C3A:  AND.W           R3, R5, #0xFA
5B9C3E:  ORR.W           R6, R6, R6,LSL#2
5B9C42:  ADDS            R0, #1
5B9C44:  VSTR            D16, [R1]
5B9C48:  ORRS            R3, R6
5B9C4A:  STRB.W          R3, [R1,#0x32]
5B9C4E:  STRH            R0, [R2]; CShadows::ShadowsStoredToBeRendered
5B9C50:  ADD             SP, SP, #0x60 ; '`'; jumptable 005B9690 case 539
5B9C52:  VPOP            {D8-D12}
5B9C56:  ADD             SP, SP, #4
5B9C58:  POP.W           {R8-R11}
5B9C5C:  POP             {R4-R7,PC}
5B9C5E:  VMOV.F32        S2, S4
5B9C62:  B               loc_5B961A
