; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands900To999Ei
; Address            : 0x34859C - 0x34A0FA
; =========================================================

34859C:  PUSH            {R4-R7,LR}
34859E:  ADD             R7, SP, #0xC
3485A0:  PUSH.W          {R8-R10}
3485A4:  VPUSH           {D8-D11}
3485A8:  SUB             SP, SP, #0xB8; float
3485AA:  MOV             R4, R0
3485AC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3485B4)
3485B0:  ADD             R0, PC; __stack_chk_guard_ptr
3485B2:  LDR             R0, [R0]; __stack_chk_guard
3485B4:  LDR             R0, [R0]
3485B6:  STR             R0, [SP,#0xF0+var_3C]
3485B8:  SUB.W           R0, R1, #0x384; switch 100 cases
3485BC:  CMP             R0, #0x63 ; 'c'
3485BE:  BHI.W           def_3485C8; jumptable 003485C8 default case, cases 901-905,920-923,925,928,933,934,940,942,946-949,952,953,955,958,961,962,966,987,989,994
3485C2:  MOVS            R5, #0
3485C4:  MOV.W           R6, #0xFFFFFFFF
3485C8:  TBH.W           [PC,R0,LSL#1]; switch jump
3485CC:  DCW 0x68; jump table for switch statement
3485CE:  DCW 0x9B
3485D0:  DCW 0x9B
3485D2:  DCW 0x9B
3485D4:  DCW 0x9B
3485D6:  DCW 0x9B
3485D8:  DCW 0x9E
3485DA:  DCW 0xF3
3485DC:  DCW 0xFD
3485DE:  DCW 0x11C
3485E0:  DCW 0x187
3485E2:  DCW 0x1F6
3485E4:  DCW 0x22B
3485E6:  DCW 0x276
3485E8:  DCW 0x288
3485EA:  DCW 0x2A7
3485EC:  DCW 0x2C6
3485EE:  DCW 0x2E3
3485F0:  DCW 0x312
3485F2:  DCW 0x327
3485F4:  DCW 0x9B
3485F6:  DCW 0x9B
3485F8:  DCW 0x9B
3485FA:  DCW 0x9B
3485FC:  DCW 0x34A
3485FE:  DCW 0x9B
348600:  DCW 0x369
348602:  DCW 0x38C
348604:  DCW 0x9B
348606:  DCW 0x3AB
348608:  DCW 0x3F2
34860A:  DCW 0x423
34860C:  DCW 0x448
34860E:  DCW 0x9B
348610:  DCW 0x9B
348612:  DCW 0x64
348614:  DCW 0x64
348616:  DCW 0xC59
348618:  DCW 0x505
34861A:  DCW 0x50C
34861C:  DCW 0x9B
34861E:  DCW 0x52F
348620:  DCW 0x9B
348622:  DCW 0x541
348624:  DCW 0x556
348626:  DCW 0x565
348628:  DCW 0x9B
34862A:  DCW 0x9B
34862C:  DCW 0x9B
34862E:  DCW 0x9B
348630:  DCW 0x576
348632:  DCW 0x658
348634:  DCW 0x9B
348636:  DCW 0x9B
348638:  DCW 0x66C
34863A:  DCW 0x9B
34863C:  DCW 0x69C
34863E:  DCW 0x6FA
348640:  DCW 0x9B
348642:  DCW 0x72D
348644:  DCW 0x7FE
348646:  DCW 0x9B
348648:  DCW 0x9B
34864A:  DCW 0x830
34864C:  DCW 0x85A
34864E:  DCW 0x880
348650:  DCW 0x9B
348652:  DCW 0x8BC
348654:  DCW 0x8CC
348656:  DCW 0x8D4
348658:  DCW 0x8ED
34865A:  DCW 0x90B
34865C:  DCW 0x920
34865E:  DCW 0x937
348660:  DCW 0x948
348662:  DCW 0x958
348664:  DCW 0x96D
348666:  DCW 0x984
348668:  DCW 0x998
34866A:  DCW 0x9B3
34866C:  DCW 0xC59
34866E:  DCW 0xA0A
348670:  DCW 0xA1C
348672:  DCW 0xA2E
348674:  DCW 0xA48
348676:  DCW 0xA6E
348678:  DCW 0xC59
34867A:  DCW 0x9B
34867C:  DCW 0xA7E
34867E:  DCW 0x9B
348680:  DCW 0xAA2
348682:  DCW 0xC59
348684:  DCW 0xAB2
348686:  DCW 0xC59
348688:  DCW 0x9B
34868A:  DCW 0xACF
34868C:  DCW 0xAEB
34868E:  DCW 0xB08
348690:  DCW 0xB4F
348692:  DCW 0xB78
348694:  MOV             R0, R4; jumptable 003485C8 cases 935,936
348696:  MOVS            R1, #1
348698:  B.W             loc_348FDA
34869C:  SUB.W           R5, R7, #-var_5E; jumptable 003485C8 case 900
3486A0:  MOV             R0, R4; this
3486A2:  MOVS            R2, #8; unsigned __int8
3486A4:  MOV             R1, R5; char *
3486A6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3486AA:  LDR.W           R0, =(TheText_ptr - 0x3486B4)
3486AE:  MOV             R1, R5; CKeyGen *
3486B0:  ADD             R0, PC; TheText_ptr
3486B2:  LDR             R6, [R0]; TheText
3486B4:  MOV             R0, R6; this
3486B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3486BA:  MOV             R8, R0
3486BC:  MOV             R0, R4; this
3486BE:  MOV             R1, R5; char *
3486C0:  MOVS            R2, #8; unsigned __int8
3486C2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3486C6:  MOV             R0, R6; this
3486C8:  MOV             R1, R5; CKeyGen *
3486CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3486CE:  MOV             R5, R0
3486D0:  MOV             R0, R4; this
3486D2:  MOVS            R1, #2; __int16
3486D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3486D8:  LDR.W           R0, =(ScriptParams_ptr - 0x3486E6)
3486DC:  MOV             R3, R5; unsigned __int16 *
3486DE:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x3486E8)
3486E2:  ADD             R0, PC; ScriptParams_ptr
3486E4:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
3486E6:  LDR             R0, [R0]; ScriptParams
3486E8:  LDR             R4, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
3486EA:  LDRH            R2, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
3486EC:  LDR             R1, [R0]; unsigned __int16 *
3486EE:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
3486F0:  CMP             R0, #0
3486F2:  IT NE
3486F4:  MOVNE           R0, #(stderr+1)
3486F6:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int16 *
3486F8:  MOV             R0, R8; this
3486FA:  BLX             j__ZN9CMessages25AddMessageJumpQWithStringEPtjtS0_b; CMessages::AddMessageJumpQWithString(ushort *,uint,ushort,ushort *,bool)
3486FE:  MOVS            R0, #1
348700:  B               loc_348E0A
348702:  MOVS            R5, #0xFF; jumptable 003485C8 default case, cases 901-905,920-923,925,928,933,934,940,942,946-949,952,953,955,958,961,962,966,987,989,994
348704:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348708:  MOV             R0, R4; jumptable 003485C8 case 906
34870A:  MOVS            R1, #6; __int16
34870C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348710:  LDR.W           R0, =(ScriptParams_ptr - 0x34871A)
348714:  MOVS            R5, #0
348716:  ADD             R0, PC; ScriptParams_ptr
348718:  LDR             R0, [R0]; ScriptParams
34871A:  VLDR            S0, [R0,#0x14]
34871E:  VLDR            S2, [R0,#8]
348722:  LDR             R1, [R0,#(dword_81A914 - 0x81A908)]
348724:  VADD.F32        S4, S2, S0
348728:  LDRD.W          R2, R3, [R0]
34872C:  VSUB.F32        S2, S2, S0
348730:  VLDR            S12, [R0,#0x10]
348734:  VMOV            S6, R1
348738:  MOVS            R0, #1
34873A:  VMOV            S8, R2
34873E:  VSTR            S12, [SP,#0xF0+var_C8]
348742:  VMOV            S10, R3
348746:  STR             R2, [SP,#0xF0+var_BC]
348748:  VADD.F32        S14, S8, S6
34874C:  STR             R3, [SP,#0xF0+var_C0]
34874E:  VSUB.F32        S6, S8, S6
348752:  STR             R1, [SP,#0xF0+var_C4]
348754:  VMAX.F32        D0, D1, D2
348758:  ADD             R1, SP, #0xF0+var_54; CVector *
34875A:  VMIN.F32        D1, D1, D2
34875E:  SUB.W           R2, R7, #-var_CA; CVector *
348762:  VADD.F32        S4, S12, S10
348766:  MOVS            R3, #(stderr+2); __int16 *
348768:  VSUB.F32        S8, S10, S12
34876C:  VMAX.F32        D5, D3, D7
348770:  VSTR            S2, [SP,#0xF0+var_A0]
348774:  VMAX.F32        D6, D4, D2
348778:  VMIN.F32        D1, D4, D2
34877C:  VMIN.F32        D2, D3, D7
348780:  VSTR            S12, [SP,#0xF0+var_50]
348784:  VSTR            S2, [SP,#0xF0+var_A8+4]
348788:  VSTR            S10, [SP,#0xF0+var_54]
34878C:  VSTR            S4, [SP,#0xF0+var_A8]
348790:  VSTR            S0, [SP,#0xF0+var_4C]
348794:  STRD.W          R5, R0, [SP,#0xF0+var_F0]; __int16
348798:  STRD.W          R0, R0, [SP,#0xF0+var_E8]; bool
34879C:  ADD             R0, SP, #0xF0+var_A8; this
34879E:  BLX             j__ZN6CWorld35FindMissionEntitiesIntersectingCubeERK7CVectorS2_PssPP7CEntitybbb; CWorld::FindMissionEntitiesIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool)
3487A2:  LDRSH.W         R0, [R7,#var_CA]
3487A6:  MOVS            R1, #0
3487A8:  CMP             R0, #0
3487AA:  IT GT
3487AC:  MOVGT           R1, #1
3487AE:  B.W             loc_349AC0
3487B2:  BLX             j__ZN6CTimer7SuspendEv; jumptable 003485C8 case 907
3487B6:  MOVS            R0, #0; this
3487B8:  MOVS            R5, #0
3487BA:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3487BE:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
3487C2:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3487C6:  MOV             R0, R4; jumptable 003485C8 case 908
3487C8:  MOVS            R1, #4; __int16
3487CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3487CE:  LDR.W           R0, =(ScriptParams_ptr - 0x3487D6)
3487D2:  ADD             R0, PC; ScriptParams_ptr
3487D4:  LDR             R0, [R0]; ScriptParams
3487D6:  LDR             R1, [R0]
3487D8:  CMP             R1, #0
3487DA:  BLT.W           loc_349CDC
3487DE:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3487EA)
3487E2:  UXTB            R3, R1
3487E4:  LSRS            R1, R1, #8
3487E6:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3487E8:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3487EA:  LDR             R0, [R0]; CPools::ms_pObjectPool
3487EC:  LDR             R2, [R0,#4]
3487EE:  LDRB            R2, [R2,R1]
3487F0:  CMP             R2, R3
3487F2:  BNE.W           loc_349CDC
3487F6:  MOV.W           R2, #0x1A4
3487FA:  LDR             R0, [R0]
3487FC:  MLA.W           R0, R1, R2, R0
348800:  B.W             loc_349CDE
348804:  MOV             R0, R4; jumptable 003485C8 case 909
348806:  MOVS            R1, #9; __int16
348808:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34880C:  MOVS            R0, #0; this
34880E:  MOVS            R5, #0
348810:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
348814:  LDRB.W          R0, [R0,#0x122]
348818:  CMP             R0, #0
34881A:  BNE.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34881E:  LDR.W           R0, =(ScriptParams_ptr - 0x34882E)
348822:  VMOV.F32        S0, #0.5
348826:  ADD             R2, SP, #0xF0+var_C4; float *
348828:  ADD             R3, SP, #0xF0+var_C8; float *
34882A:  ADD             R0, PC; ScriptParams_ptr
34882C:  LDR             R6, [R0]; ScriptParams
34882E:  VLDR            S2, [R6,#0xC]
348832:  VLDR            S4, [R6,#0x10]
348836:  VMUL.F32        S2, S2, S0
34883A:  LDRD.W          R0, R1, [R6,#(dword_81A90C - 0x81A908)]
34883E:  VMUL.F32        S0, S4, S0
348842:  STRD.W          R1, R0, [SP,#0xF0+var_C0]
348846:  ADD             R0, SP, #0xF0+var_BC; float *
348848:  ADD             R1, SP, #0xF0+var_C0; float *
34884A:  VSTR            S2, [SP,#0xF0+var_C4]
34884E:  VSTR            S0, [SP,#0xF0+var_C8]
348852:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
348856:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x348864)
34885A:  MOVS            R2, #4
34885C:  VLDR            S0, [SP,#0xF0+var_C8]
348860:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
348862:  VLDR            S2, [SP,#0xF0+var_C0]
348866:  VLDR            S4, [SP,#0xF0+var_C4]
34886A:  LDR.W           R8, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
34886E:  VADD.F32        S8, S2, S0
348872:  LDR.W           R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x348882)
348876:  VSUB.F32        S0, S2, S0
34887A:  VLDR            S6, [SP,#0xF0+var_BC]
34887E:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
348880:  LDRH.W          R1, [R8]; CTheScripts::NumberOfIntroRectanglesThisFrame
348884:  VADD.F32        S10, S6, S4
348888:  LDRB            R3, [R6,#(dword_81A924 - 0x81A908)]; unsigned __int8
34888A:  VSUB.F32        S2, S6, S4
34888E:  LDR             R4, [R0]; CTheScripts::IntroRectangles ...
348890:  RSB.W           R0, R1, R1,LSL#4
348894:  LDR             R1, [R6]
348896:  STR.W           R2, [R4,R0,LSL#2]
34889A:  ADD.W           R0, R4, R0,LSL#2
34889E:  MOVW            R2, #0xFFFF
3488A2:  ADD             R1, R2
3488A4:  STR             R5, [R0,#0x18]
3488A6:  STRH            R1, [R0,#6]
3488A8:  VSTR            S2, [R0,#8]
3488AC:  VSTR            S0, [R0,#0xC]
3488B0:  VSTR            S10, [R0,#0x10]
3488B4:  VSTR            S8, [R0,#0x14]
3488B8:  LDRB.W          R0, [R6,#(dword_81A928 - 0x81A908)]
3488BC:  LDRB            R1, [R6,#(dword_81A91C - 0x81A908)]; unsigned __int8
3488BE:  LDRB            R2, [R6,#(dword_81A920 - 0x81A908)]; unsigned __int8
3488C0:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int8
3488C2:  ADD             R0, SP, #0xF0+var_A8; this
3488C4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
3488C8:  LDRH.W          R0, [R8]; CTheScripts::NumberOfIntroRectanglesThisFrame
3488CC:  LDRB.W          R1, [SP,#0xF0+var_A8]
3488D0:  RSB.W           R2, R0, R0,LSL#4
3488D4:  ADD.W           R2, R4, R2,LSL#2
3488D8:  B               loc_348996
3488DA:  MOV             R0, R4; jumptable 003485C8 case 910
3488DC:  MOVS            R1, #8; __int16
3488DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3488E2:  LDR.W           R0, =(ScriptParams_ptr - 0x3488F2)
3488E6:  VMOV.F32        S0, #0.5
3488EA:  ADD             R2, SP, #0xF0+var_C4; float *
3488EC:  ADD             R3, SP, #0xF0+var_C8; float *
3488EE:  ADD             R0, PC; ScriptParams_ptr
3488F0:  LDR             R4, [R0]; ScriptParams
3488F2:  VLDR            S2, [R4,#8]
3488F6:  VLDR            S4, [R4,#0xC]
3488FA:  VMUL.F32        S2, S2, S0
3488FE:  LDRD.W          R0, R1, [R4]
348902:  VMUL.F32        S0, S4, S0
348906:  STRD.W          R1, R0, [SP,#0xF0+var_C0]
34890A:  ADD             R0, SP, #0xF0+var_BC; float *
34890C:  ADD             R1, SP, #0xF0+var_C0; float *
34890E:  VSTR            S2, [SP,#0xF0+var_C4]
348912:  VSTR            S0, [SP,#0xF0+var_C8]
348916:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
34891A:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x34892A)
34891E:  MOVS            R2, #3
348920:  VLDR            S0, [SP,#0xF0+var_C8]
348924:  MOVS            R5, #0
348926:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
348928:  VLDR            S2, [SP,#0xF0+var_C0]
34892C:  VLDR            S4, [SP,#0xF0+var_C4]
348930:  LDR.W           R8, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
348934:  VADD.F32        S8, S2, S0
348938:  LDR.W           R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x348948)
34893C:  VSUB.F32        S0, S2, S0
348940:  VLDR            S6, [SP,#0xF0+var_BC]
348944:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
348946:  LDRH.W          R1, [R8]; CTheScripts::NumberOfIntroRectanglesThisFrame
34894A:  VADD.F32        S10, S6, S4
34894E:  LDRB            R3, [R4,#(dword_81A920 - 0x81A908)]; unsigned __int8
348950:  VSUB.F32        S4, S6, S4
348954:  LDR.W           R9, [R0]; CTheScripts::IntroRectangles ...
348958:  RSB.W           R0, R1, R1,LSL#4
34895C:  LDRB            R1, [R4,#(dword_81A918 - 0x81A908)]; unsigned __int8
34895E:  STR.W           R2, [R9,R0,LSL#2]
348962:  ADD.W           R0, R9, R0,LSL#2
348966:  STRH            R6, [R0,#6]
348968:  STR             R5, [R0,#0x18]
34896A:  VSTR            S4, [R0,#8]
34896E:  VSTR            S0, [R0,#0xC]
348972:  VSTR            S10, [R0,#0x10]
348976:  VSTR            S8, [R0,#0x14]
34897A:  LDRB            R0, [R4,#(dword_81A924 - 0x81A908)]
34897C:  LDRB            R2, [R4,#(dword_81A91C - 0x81A908)]; unsigned __int8
34897E:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int8
348980:  ADD             R0, SP, #0xF0+var_A8; this
348982:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
348986:  LDRH.W          R0, [R8]; CTheScripts::NumberOfIntroRectanglesThisFrame
34898A:  LDRB.W          R1, [SP,#0xF0+var_A8]
34898E:  RSB.W           R2, R0, R0,LSL#4
348992:  ADD.W           R2, R9, R2,LSL#2
348996:  STRB            R1, [R2,#0x1C]
348998:  ADDS            R0, #1
34899A:  LDRB.W          R1, [SP,#0xF0+var_A8+1]
34899E:  STRB            R1, [R2,#0x1D]
3489A0:  LDRB.W          R1, [SP,#0xF0+var_A8+2]
3489A4:  STRB            R1, [R2,#0x1E]
3489A6:  LDRB.W          R1, [SP,#0xF0+var_A8+3]
3489AA:  STRB            R1, [R2,#0x1F]
3489AC:  STRB.W          R5, [R2,#0x20]
3489B0:  STRH.W          R0, [R8]; CTheScripts::NumberOfIntroRectanglesThisFrame
3489B4:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3489B8:  MOV             R0, R4; jumptable 003485C8 case 911
3489BA:  MOVS            R1, #1; __int16
3489BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3489C0:  ADD             R5, SP, #0xF0+var_A8
3489C2:  MOV             R0, R4; this
3489C4:  MOVS            R2, #0xF; unsigned __int8
3489C6:  MOV             R1, R5; char *
3489C8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3489CC:  MOVS            R0, #0
3489CE:  LDRB            R1, [R5,R0]
3489D0:  SUB.W           R2, R1, #0x41 ; 'A'
3489D4:  UXTB            R2, R2
3489D6:  CMP             R2, #0x19
3489D8:  ITT LS
3489DA:  ADDLS           R1, #0x20 ; ' '; char *
3489DC:  STRBLS          R1, [R5,R0]
3489DE:  ADDS            R0, #1
3489E0:  CMP             R0, #0xF
3489E2:  BNE             loc_3489CE
3489E4:  ADR.W           R0, aScript; "script"
3489E8:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
3489EC:  MOV             R4, R0
3489EE:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
3489F2:  MOV             R0, R4; this
3489F4:  MOVS            R1, #0; int
3489F6:  MOVS            R5, #0
3489F8:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
3489FC:  LDR.W           R0, =(ScriptParams_ptr - 0x348A08)
348A00:  LDR.W           R1, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x348A0A)
348A04:  ADD             R0, PC; ScriptParams_ptr
348A06:  ADD             R1, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
348A08:  LDR             R0, [R0]; ScriptParams
348A0A:  LDR             R1, [R1]; CTheScripts::ScriptSprites ...
348A0C:  LDR             R0, [R0]
348A0E:  ADD.W           R0, R1, R0,LSL#2
348A12:  ADD             R1, SP, #0xF0+var_A8; char *
348A14:  SUBS            R0, #4; this
348A16:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
348A1A:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
348A1E:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348A22:  SUB.W           R5, R7, #-var_5E; jumptable 003485C8 case 912
348A26:  MOV             R0, R4; this
348A28:  MOVS            R2, #8; unsigned __int8
348A2A:  MOV             R1, R5; char *
348A2C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
348A30:  LDR.W           R0, =(aModelsTxd_0 - 0x348A3E); "models\\txd\\"
348A34:  ADD             R6, SP, #0xF0+var_A8
348A36:  MOV             R1, R5; char *
348A38:  MOVS            R2, #8; size_t
348A3A:  ADD             R0, PC; "models\\txd\\"
348A3C:  VLDR            D16, [R0]
348A40:  MOV             R0, #0x5C6478
348A48:  STR             R0, [SP,#0xF0+var_A0]
348A4A:  ADD.W           R0, R6, #0xB; char *
348A4E:  VSTR            D16, [SP,#0xF0+var_A8]
348A52:  BLX             strncpy
348A56:  MOV             R0, R6; char *
348A58:  BLX             strlen
348A5C:  MOV             R1, #0x6478742E
348A64:  STR             R1, [R6,R0]
348A66:  ADD             R0, R6
348A68:  MOVS            R1, #0; char *
348A6A:  STRB            R1, [R0,#4]
348A6C:  ADR.W           R0, aScript; "script"
348A70:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
348A74:  MOV             R5, R0
348A76:  ADDS            R0, R5, #1
348A78:  BNE             loc_348A8A
348A7A:  ADR.W           R0, aScript; "script"
348A7E:  ADR.W           R1, loc_3494B8; char *
348A82:  MOVS            R2, #0; char *
348A84:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
348A88:  MOV             R5, R0
348A8A:  ADD             R1, SP, #0xF0+var_A8; int
348A8C:  MOV             R0, R5; this
348A8E:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
348A92:  MOV             R0, R5; this
348A94:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
348A98:  LDRB.W          R0, [R4,#0xE6]
348A9C:  CMP             R0, #0
348A9E:  BEQ.W           loc_349E7C
348AA2:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x348AAE)
348AA6:  MOVS            R1, #1; int
348AA8:  MOVS            R2, #0xD; unsigned __int8
348AAA:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
348AAC:  LDR             R0, [R0]; this
348AAE:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
348AB2:  MOVS            R5, #0
348AB4:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348AB8:  BLX             j__ZN11CTheScripts29RemoveScriptTextureDictionaryEv; jumptable 003485C8 case 913
348ABC:  LDRB.W          R0, [R4,#0xE6]
348AC0:  CMP             R0, #0
348AC2:  BEQ.W           loc_349E7C
348AC6:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x348AD2)
348ACA:  MOVS            R1, #1; int
348ACC:  MOVS            R2, #0xD; unsigned __int8
348ACE:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
348AD0:  LDR             R0, [R0]; this
348AD2:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
348AD6:  MOVS            R5, #0
348AD8:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348ADC:  MOV             R0, R4; jumptable 003485C8 case 914
348ADE:  MOVS            R1, #2; __int16
348AE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348AE4:  LDR.W           R0, =(ScriptParams_ptr - 0x348AEC)
348AE8:  ADD             R0, PC; ScriptParams_ptr
348AEA:  LDR             R0, [R0]; ScriptParams
348AEC:  LDR             R1, [R0]
348AEE:  CMP             R1, #0
348AF0:  BLT.W           loc_349D2A
348AF4:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x348B00)
348AF8:  UXTB            R3, R1
348AFA:  LSRS            R1, R1, #8
348AFC:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
348AFE:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
348B00:  LDR             R0, [R0]; CPools::ms_pObjectPool
348B02:  LDR             R2, [R0,#4]
348B04:  LDRB            R2, [R2,R1]
348B06:  CMP             R2, R3
348B08:  BNE.W           loc_349D2A
348B0C:  MOV.W           R2, #0x1A4
348B10:  LDR             R0, [R0]
348B12:  MLA.W           R4, R1, R2, R0
348B16:  B.W             loc_349D2C
348B1A:  MOV             R0, R4; jumptable 003485C8 case 915
348B1C:  MOVS            R1, #1; __int16
348B1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348B22:  LDR.W           R0, =(ScriptParams_ptr - 0x348B2A)
348B26:  ADD             R0, PC; ScriptParams_ptr
348B28:  LDR             R0, [R0]; ScriptParams
348B2A:  LDR             R1, [R0]
348B2C:  CMP             R1, #0
348B2E:  BLT.W           loc_349D5C
348B32:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x348B3E)
348B36:  UXTB            R3, R1
348B38:  LSRS            R1, R1, #8
348B3A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
348B3C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
348B3E:  LDR             R0, [R0]; CPools::ms_pPedPool
348B40:  LDR             R2, [R0,#4]
348B42:  LDRB            R2, [R2,R1]
348B44:  CMP             R2, R3
348B46:  BNE.W           loc_349D5C
348B4A:  MOVW            R2, #0x7CC
348B4E:  LDR             R0, [R0]
348B50:  MLA.W           R6, R1, R2, R0
348B54:  B.W             loc_349D5E
348B58:  MOV             R0, R4; jumptable 003485C8 case 916
348B5A:  MOVS            R1, #1; __int16
348B5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348B60:  LDR.W           R0, =(ScriptParams_ptr - 0x348B68)
348B64:  ADD             R0, PC; ScriptParams_ptr
348B66:  LDR             R0, [R0]; ScriptParams
348B68:  LDR             R0, [R0]
348B6A:  SUBS            R1, R0, #1
348B6C:  CMP             R1, #1
348B6E:  BHI.W           loc_349E7C
348B72:  LDR.W           R1, =(AudioEngine_ptr - 0x348B7C)
348B76:  ADDS            R0, #0xA
348B78:  ADD             R1, PC; AudioEngine_ptr
348B7A:  LDR             R4, [R1]; AudioEngine
348B7C:  SXTH            R1, R0; __int16
348B7E:  MOV             R0, R4; this
348B80:  BLX             j__ZN12CAudioEngine16PreloadBeatTrackEs; CAudioEngine::PreloadBeatTrack(short)
348B84:  MOV             R0, R4; this
348B86:  MOVS            R1, #1; unsigned __int8
348B88:  BLX             j__ZN12CAudioEngine22PlayPreloadedBeatTrackEh; CAudioEngine::PlayPreloadedBeatTrack(uchar)
348B8C:  MOVS            R5, #0
348B8E:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348B92:  MOV             R0, R4; jumptable 003485C8 case 917
348B94:  MOVS            R1, #5; __int16
348B96:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348B9A:  LDR.W           R0, =(ScriptParams_ptr - 0x348BA6)
348B9E:  VLDR            S2, =-100.0
348BA2:  ADD             R0, PC; ScriptParams_ptr
348BA4:  LDR             R0, [R0]; ScriptParams
348BA6:  VLDR            S0, [R0,#8]
348BAA:  LDR             R4, [R0]
348BAC:  VLDR            S16, [R0,#4]
348BB0:  VCMPE.F32       S0, S2
348BB4:  VMRS            APSR_nzcv, FPSCR
348BB8:  STR             R4, [SP,#0xF0+var_BC]
348BBA:  VSTR            S16, [SP,#0xF0+var_C0]
348BBE:  BGT             loc_348BCE
348BC0:  VMOV            R1, S16; float
348BC4:  MOV             R0, R4; this
348BC6:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
348BCA:  VMOV            S0, R0
348BCE:  LDR.W           R0, =(ScriptParams_ptr - 0x348BDA)
348BD2:  VSTR            S16, [SP,#0xF0+var_A8+4]
348BD6:  ADD             R0, PC; ScriptParams_ptr
348BD8:  STR             R4, [SP,#0xF0+var_A8]
348BDA:  VSTR            S0, [SP,#0xF0+var_A0]
348BDE:  LDR             R0, [R0]; ScriptParams
348BE0:  LDRB            R2, [R0,#(dword_81A918 - 0x81A908)]; float
348BE2:  LDR             R1, [R0,#(dword_81A914 - 0x81A908)]; CVector *
348BE4:  ADD             R0, SP, #0xF0+var_A8; this
348BE6:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
348BEA:  MOVS            R5, #0
348BEC:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348BF0:  MOV             R0, R4; jumptable 003485C8 case 918
348BF2:  MOVS            R1, #1; __int16
348BF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348BF8:  LDR.W           R0, =(ScriptParams_ptr - 0x348C06)
348BFC:  MOVS            R5, #0
348BFE:  LDR.W           R1, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x348C08)
348C02:  ADD             R0, PC; ScriptParams_ptr
348C04:  ADD             R1, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
348C06:  LDR             R0, [R0]; ScriptParams
348C08:  LDR             R1, [R1]; CUserDisplay::OnscnTimer ...
348C0A:  LDR             R0, [R0]
348C0C:  CMP             R0, #0
348C0E:  IT NE
348C10:  MOVNE           R0, #1
348C12:  STRB.W          R0, [R1,#(byte_96B691 - 0x96B540)]
348C16:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348C1A:  MOV             R0, R4; jumptable 003485C8 case 919
348C1C:  MOVS            R1, #2; __int16
348C1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348C22:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x348C34)
348C26:  MOVW            R3, #0xA2C
348C2A:  LDR.W           R0, =(ScriptParams_ptr - 0x348C36)
348C2E:  MOVS            R5, #0
348C30:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
348C32:  ADD             R0, PC; ScriptParams_ptr
348C34:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
348C36:  LDR             R0, [R0]; ScriptParams
348C38:  LDRD.W          R2, R0, [R0]
348C3C:  CMP             R0, #0
348C3E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
348C40:  MOV.W           R2, R2,LSR#8
348C44:  LDR             R1, [R1]
348C46:  MLA.W           R1, R2, R3, R1
348C4A:  LDR.W           R2, [R1,#0x430]
348C4E:  BIC.W           R3, R2, #0x8000
348C52:  IT NE
348C54:  ORRNE.W         R3, R2, #0x8000
348C58:  STR.W           R3, [R1,#0x430]
348C5C:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348C60:  MOV             R0, R4; jumptable 003485C8 case 924
348C62:  MOVS            R1, #2; __int16
348C64:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348C68:  LDR.W           R0, =(ScriptParams_ptr - 0x348C70)
348C6C:  ADD             R0, PC; ScriptParams_ptr
348C6E:  LDR             R0, [R0]; ScriptParams
348C70:  LDR             R1, [R0]
348C72:  CMP             R1, #0
348C74:  BLT.W           loc_349D90
348C78:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x348C84)
348C7C:  UXTB            R3, R1
348C7E:  LSRS            R1, R1, #8
348C80:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
348C82:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
348C84:  LDR             R0, [R0]; CPools::ms_pVehiclePool
348C86:  LDR             R2, [R0,#4]
348C88:  LDRB            R2, [R2,R1]
348C8A:  CMP             R2, R3
348C8C:  BNE.W           loc_349D90
348C90:  MOVW            R2, #0xA2C
348C94:  LDR             R0, [R0]
348C96:  MLA.W           R0, R1, R2, R0
348C9A:  B.W             loc_349D92
348C9E:  MOV             R0, R4; jumptable 003485C8 case 926
348CA0:  MOVS            R1, #2; __int16
348CA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348CA6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x348CB8)
348CAA:  MOVW            R3, #0x7CC
348CAE:  LDR.W           R0, =(ScriptParams_ptr - 0x348CBA)
348CB2:  MOVS            R5, #0
348CB4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
348CB6:  ADD             R0, PC; ScriptParams_ptr
348CB8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
348CBA:  LDR             R0, [R0]; ScriptParams
348CBC:  LDRD.W          R2, R0, [R0]
348CC0:  CMP             R0, #0
348CC2:  LDR             R1, [R1]; CPools::ms_pPedPool
348CC4:  MOV.W           R2, R2,LSR#8
348CC8:  LDR             R1, [R1]
348CCA:  MLA.W           R1, R2, R3, R1
348CCE:  LDR.W           R2, [R1,#0x484]
348CD2:  BIC.W           R3, R2, #0x20000000
348CD6:  IT NE
348CD8:  ORRNE.W         R3, R2, #0x20000000
348CDC:  STR.W           R3, [R1,#0x484]
348CE0:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348CE4:  MOV             R0, R4; jumptable 003485C8 case 927
348CE6:  MOVS            R1, #3; __int16
348CE8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348CEC:  LDR.W           R0, =(ScriptParams_ptr - 0x348CF4)
348CF0:  ADD             R0, PC; ScriptParams_ptr
348CF2:  LDR             R0, [R0]; ScriptParams
348CF4:  LDR             R1, [R0]
348CF6:  CMP             R1, #0
348CF8:  BLT.W           loc_349DA6
348CFC:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x348D08)
348D00:  UXTB            R3, R1
348D02:  LSRS            R1, R1, #8
348D04:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
348D06:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
348D08:  LDR             R0, [R0]; CPools::ms_pVehiclePool
348D0A:  LDR             R2, [R0,#4]
348D0C:  LDRB            R2, [R2,R1]
348D0E:  CMP             R2, R3
348D10:  BNE.W           loc_349DA6
348D14:  MOVW            R2, #0xA2C
348D18:  LDR             R0, [R0]
348D1A:  MLA.W           R4, R1, R2, R0
348D1E:  B.W             loc_349DA8
348D22:  MOV             R0, R4; jumptable 003485C8 case 929
348D24:  MOVS            R1, #4; __int16
348D26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348D2A:  LDR.W           R0, =(ScriptParams_ptr - 0x348D36)
348D2E:  VLDR            S2, =-100.0
348D32:  ADD             R0, PC; ScriptParams_ptr
348D34:  LDR             R0, [R0]; ScriptParams
348D36:  VLDR            S0, [R0,#8]
348D3A:  VLDR            S16, [R0]
348D3E:  VCMPE.F32       S0, S2
348D42:  VLDR            S18, [R0,#4]
348D46:  VMRS            APSR_nzcv, FPSCR
348D4A:  BGT             loc_348D5C
348D4C:  VMOV            R0, S16; this
348D50:  VMOV            R1, S18; float
348D54:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
348D58:  VMOV            S0, R0
348D5C:  LDR.W           R0, =(ScriptParams_ptr - 0x348D70)
348D60:  MOVW            LR, #0xCCCD
348D64:  LDR.W           R1, =(byte_81A9D0 - 0x348D76)
348D68:  MOVT            LR, #0x3DCC
348D6C:  ADD             R0, PC; ScriptParams_ptr
348D6E:  VSTR            S18, [SP,#0xF0+var_B8+4]
348D72:  ADD             R1, PC; byte_81A9D0
348D74:  VSTR            S16, [SP,#0xF0+var_B8]
348D78:  LDR             R0, [R0]; ScriptParams
348D7A:  MOV.W           R8, #0x800
348D7E:  VSTR            S0, [SP,#0xF0+var_B0]
348D82:  MOVS            R5, #0
348D84:  LDRB            R2, [R1,#(byte_81A9D1 - 0x81A9D0)]
348D86:  LDR.W           R12, [R4,#0x14]
348D8A:  LDRB            R6, [R1]
348D8C:  LDR             R3, [R0,#(dword_81A914 - 0x81A908)]; CVector *
348D8E:  MOVS            R0, #0xE4
348D90:  LDRB            R1, [R1,#(byte_81A9D2 - 0x81A9D0)]
348D92:  STRD.W          R6, R2, [SP,#0xF0+var_F0]; float
348D96:  ADD             R2, SP, #0xF0+var_B8; unsigned __int16
348D98:  STRD.W          R1, R0, [SP,#0xF0+var_E8]; unsigned __int8
348D9C:  ADD.W           R0, R12, R4; this
348DA0:  MOVS            R1, #1; unsigned int
348DA2:  STRD.W          R8, LR, [SP,#0xF0+var_E0]; unsigned __int8
348DA6:  STR             R5, [SP,#0xF0+var_D8]; float
348DA8:  BLX             j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
348DAC:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348DB0:  MOV             R0, R4; jumptable 003485C8 case 930
348DB2:  MOVS            R1, #2; __int16
348DB4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348DB8:  LDR.W           R0, =(ScriptParams_ptr - 0x348DC8)
348DBC:  MOVW            R6, #0xA2C
348DC0:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x348DCA)
348DC4:  ADD             R0, PC; ScriptParams_ptr
348DC6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
348DC8:  LDR             R0, [R0]; ScriptParams
348DCA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
348DCC:  LDRD.W          R2, R0, [R0]
348DD0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
348DD2:  LSRS            R2, R2, #8
348DD4:  LDR             R3, [R1]
348DD6:  MLA.W           R4, R2, R6, R3
348DDA:  LDRB.W          R1, [R4,#0x3A]!; CVehicle *
348DDE:  AND.W           R6, R1, #0xF8
348DE2:  CMP             R6, #0x10
348DE4:  BNE             loc_348E02
348DE6:  CMP             R0, #2
348DE8:  BEQ             loc_348E02
348DEA:  MOVW            R0, #0xA2C
348DEE:  MLA.W           R0, R2, R0, R3; this
348DF2:  BLX             j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
348DF6:  LDR.W           R0, =(ScriptParams_ptr - 0x348E00)
348DFA:  LDRB            R1, [R4]
348DFC:  ADD             R0, PC; ScriptParams_ptr
348DFE:  LDR             R0, [R0]; ScriptParams
348E00:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
348E02:  AND.W           R1, R1, #7
348E06:  ORR.W           R0, R1, R0,LSL#3
348E0A:  STRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
348E0C:  MOVS            R5, #0
348E0E:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348E12:  MOV             R0, R4; jumptable 003485C8 case 931
348E14:  MOVS            R1, #1; __int16
348E16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348E1A:  LDR.W           R0, =(ScriptParams_ptr - 0x348E2C)
348E1E:  MOVW            R2, #0x7CC
348E22:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x348E2E)
348E26:  MOVS            R5, #0
348E28:  ADD             R0, PC; ScriptParams_ptr
348E2A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
348E2C:  LDR             R0, [R0]; ScriptParams
348E2E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
348E30:  LDR             R0, [R0]
348E32:  LDR             R1, [R1]; CPools::ms_pPedPool
348E34:  LSRS            R0, R0, #8
348E36:  LDR             R1, [R1]
348E38:  MLA.W           R0, R0, R2, R1
348E3C:  MOVS            R1, #0
348E3E:  LDR.W           R0, [R0,#0x59C]
348E42:  CMP             R0, #5
348E44:  IT NE
348E46:  MOVNE           R1, #1
348E48:  CMP             R0, #0x16
348E4A:  MOV.W           R0, #0
348E4E:  IT EQ
348E50:  MOVEQ           R0, #1
348E52:  EORS            R1, R0
348E54:  B.W             loc_349AC0
348E58:  DCFS -100.0
348E5C:  ADD             R1, SP, #0xF0+var_A8; jumptable 003485C8 case 932
348E5E:  MOV             R0, R4; this
348E60:  MOVS            R2, #8; unsigned __int8
348E62:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
348E66:  LDRB.W          R0, [SP,#0xF0+var_A8]
348E6A:  ADD.W           R6, R4, #8
348E6E:  MOVS            R2, #8; size_t
348E70:  SUB.W           R1, R0, #0x41 ; 'A'
348E74:  UXTB            R1, R1
348E76:  CMP             R1, #0x19
348E78:  ITT LS
348E7A:  ADDLS           R0, #0x20 ; ' '
348E7C:  STRBLS.W        R0, [SP,#0xF0+var_A8]
348E80:  LDRB.W          R0, [SP,#0xF0+var_A8+1]
348E84:  SUB.W           R1, R0, #0x41 ; 'A'
348E88:  UXTB            R1, R1
348E8A:  CMP             R1, #0x1A
348E8C:  ITT CC
348E8E:  ADDCC           R0, #0x20 ; ' '
348E90:  STRBCC.W        R0, [SP,#0xF0+var_A8+1]
348E94:  LDRB.W          R0, [SP,#0xF0+var_A8+2]
348E98:  SUB.W           R1, R0, #0x41 ; 'A'
348E9C:  UXTB            R1, R1
348E9E:  CMP             R1, #0x19
348EA0:  ITT LS
348EA2:  ADDLS           R0, #0x20 ; ' '
348EA4:  STRBLS.W        R0, [SP,#0xF0+var_A8+2]
348EA8:  LDRB.W          R0, [SP,#0xF0+var_A8+3]
348EAC:  SUB.W           R1, R0, #0x41 ; 'A'
348EB0:  UXTB            R1, R1
348EB2:  CMP             R1, #0x19
348EB4:  ITT LS
348EB6:  ADDLS           R0, #0x20 ; ' '
348EB8:  STRBLS.W        R0, [SP,#0xF0+var_A8+3]
348EBC:  LDRB.W          R0, [SP,#0xF0+var_A8+4]
348EC0:  SUB.W           R1, R0, #0x41 ; 'A'
348EC4:  UXTB            R1, R1
348EC6:  CMP             R1, #0x19
348EC8:  ITT LS
348ECA:  ADDLS           R0, #0x20 ; ' '
348ECC:  STRBLS.W        R0, [SP,#0xF0+var_A8+4]
348ED0:  LDRB.W          R0, [SP,#0xF0+var_A8+5]
348ED4:  SUB.W           R1, R0, #0x41 ; 'A'
348ED8:  UXTB            R1, R1
348EDA:  CMP             R1, #0x19
348EDC:  ITT LS
348EDE:  ADDLS           R0, #0x20 ; ' '
348EE0:  STRBLS.W        R0, [SP,#0xF0+var_A8+5]
348EE4:  LDRB.W          R0, [SP,#0xF0+var_A8+6]
348EE8:  SUB.W           R1, R0, #0x41 ; 'A'
348EEC:  UXTB            R1, R1
348EEE:  CMP             R1, #0x19
348EF0:  ITT LS
348EF2:  ADDLS           R0, #0x20 ; ' '
348EF4:  STRBLS.W        R0, [SP,#0xF0+var_A8+6]
348EF8:  LDRB.W          R0, [SP,#0xF0+var_A8+7]
348EFC:  SUB.W           R1, R0, #0x41 ; 'A'
348F00:  UXTB            R1, R1
348F02:  CMP             R1, #0x19
348F04:  ITT LS
348F06:  ADDLS           R0, #0x20 ; ' '
348F08:  STRBLS.W        R0, [SP,#0xF0+var_A8+7]
348F0C:  ADD             R1, SP, #0xF0+var_A8; char *
348F0E:  MOV             R0, R6; char *
348F10:  BLX             strncpy
348F14:  ADR.W           R1, aCopcar; "copcar"
348F18:  MOV             R0, R6; char *
348F1A:  BLX             strcmp
348F1E:  CBZ             R0, loc_348F80
348F20:  ADR.W           R1, aAmbulan; "ambulan"
348F24:  MOV             R0, R6; char *
348F26:  BLX             strcmp
348F2A:  CBZ             R0, loc_348F80
348F2C:  ADR.W           R1, aFiretru; "firetru"
348F30:  MOV             R0, R6; char *
348F32:  BLX             strcmp
348F36:  CBZ             R0, loc_348F80
348F38:  ADR.W           R1, aStunt; "stunt"
348F3C:  MOV             R0, R6; char *
348F3E:  BLX             strcmp
348F42:  CBZ             R0, loc_348F80
348F44:  ADR.W           R1, aRam2p; "ram_2p"
348F48:  MOV             R0, R6; char *
348F4A:  BLX             strcmp
348F4E:  CBZ             R0, loc_348F80
348F50:  ADR.W           R1, aBike2p; "bike_2p"
348F54:  MOV             R0, R6; char *
348F56:  BLX             strcmp
348F5A:  CBZ             R0, loc_348F80
348F5C:  ADR.W           R1, aCars2p; "cars_2p"
348F60:  MOV             R0, R6; char *
348F62:  BLX             strcmp
348F66:  CBZ             R0, loc_348F80
348F68:  ADR.W           R1, aHeli2p; "heli_2p"
348F6C:  MOV             R0, R6; char *
348F6E:  BLX             strcmp
348F72:  CBZ             R0, loc_348F80
348F74:  ADR.W           R1, aPeds2p; "peds_2p"
348F78:  MOV             R0, R6; char *
348F7A:  BLX             strcmp
348F7E:  CBNZ            R0, loc_348F8C
348F80:  LDR.W           R0, =(IsOddJob_ptr - 0x348F8A)
348F84:  MOVS            R1, #1
348F86:  ADD             R0, PC; IsOddJob_ptr
348F88:  LDR             R0, [R0]; IsOddJob
348F8A:  STR             R1, [R0]
348F8C:  LDRB.W          R0, [R4,#0xE6]
348F90:  CMP             R0, #0
348F92:  BEQ.W           loc_349E7C
348F96:  LDRB.W          R0, [R4,#0xE7]; this
348F9A:  CMP             R0, #0
348F9C:  BNE.W           loc_349E7C
348FA0:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
348FA4:  MOVS            R5, #0
348FA6:  CMP             R0, #0
348FA8:  BEQ.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348FAC:  LDR.W           R0, =(IsOddJob_ptr - 0x348FB4)
348FB0:  ADD             R0, PC; IsOddJob_ptr
348FB2:  LDR             R0, [R0]; IsOddJob
348FB4:  LDR             R0, [R0]
348FB6:  CMP             R0, #0
348FB8:  BNE.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348FBC:  LDR.W           R0, =(missionReplaySetting_ptr - 0x348FC6)
348FC0:  MOVS            R1, #1
348FC2:  ADD             R0, PC; missionReplaySetting_ptr
348FC4:  LDR             R0, [R0]; missionReplaySetting
348FC6:  STR             R1, [R0]
348FC8:  MOVS            R0, #5
348FCA:  MOV             R1, R6
348FCC:  BLX             j__Z16SaveGameForPause10eSaveTypesPc; SaveGameForPause(eSaveTypes,char *)
348FD0:  MOVS            R5, #0
348FD2:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348FD6:  MOV             R0, R4; jumptable 003485C8 case 938
348FD8:  MOVS            R1, #3; __int16
348FDA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348FDE:  MOVS            R5, #0
348FE0:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
348FE4:  MOV             R0, R4; jumptable 003485C8 case 939
348FE6:  MOVS            R1, #2; __int16
348FE8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
348FEC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x348FFE)
348FF0:  MOVW            R3, #0xA2C
348FF4:  LDR.W           R0, =(ScriptParams_ptr - 0x349000)
348FF8:  MOVS            R5, #0
348FFA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
348FFC:  ADD             R0, PC; ScriptParams_ptr
348FFE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
349000:  LDR             R0, [R0]; ScriptParams
349002:  LDRD.W          R2, R0, [R0]
349006:  CMP             R0, #0
349008:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34900A:  MOV.W           R2, R2,LSR#8
34900E:  LDR             R1, [R1]
349010:  MLA.W           R1, R2, R3, R1
349014:  LDR.W           R2, [R1,#0x42C]
349018:  BIC.W           R3, R2, #0x8000
34901C:  IT NE
34901E:  ORRNE.W         R3, R2, #0x8000
349022:  STR.W           R3, [R1,#0x42C]
349026:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34902A:  MOV             R0, R4; jumptable 003485C8 case 941
34902C:  MOVS            R1, #1; __int16
34902E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349032:  LDR.W           R0, =(ScriptParams_ptr - 0x34903A)
349036:  ADD             R0, PC; ScriptParams_ptr
349038:  LDR             R0, [R0]; ScriptParams
34903A:  LDR             R0, [R0]
34903C:  CMP             R0, #0
34903E:  BEQ.W           loc_349E24
349042:  MOVS            R0, #(stderr+1); this
349044:  BLX             j__ZN8CRubbish13SetVisibilityEb; CRubbish::SetVisibility(bool)
349048:  MOVS            R5, #0
34904A:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34904E:  MOV             R0, R4; jumptable 003485C8 case 943
349050:  MOVS            R1, #1; __int16
349052:  MOVS            R5, #1
349054:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349058:  LDR.W           R0, =(ScriptParams_ptr - 0x349060)
34905C:  ADD             R0, PC; ScriptParams_ptr
34905E:  LDR             R0, [R0]; ScriptParams
349060:  LDR             R0, [R0]
349062:  CMP             R0, #0
349064:  BEQ.W           loc_349E2E
349068:  LDR.W           R0, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x349072)
34906C:  MOVS            R5, #0
34906E:  ADD             R0, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
349070:  LDR             R0, [R0]; CStreaming::ms_disableStreaming ...
349072:  STRB            R5, [R0]; CStreaming::ms_disableStreaming
349074:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349078:  ADD             R5, SP, #0xF0+var_68; jumptable 003485C8 case 944
34907A:  MOV             R0, R4; this
34907C:  MOVS            R2, #8; unsigned __int8
34907E:  MOV             R1, R5; char *
349080:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
349084:  MOV             R0, R5; this
349086:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
34908A:  CMP             R0, R6
34908C:  BLE.W           loc_3497DE
349090:  BLX             j__ZN8CGarages12IsGarageOpenEs; CGarages::IsGarageOpen(short)
349094:  B               loc_3490B2
349096:  ADD             R5, SP, #0xF0+var_68; jumptable 003485C8 case 945
349098:  MOV             R0, R4; this
34909A:  MOVS            R2, #8; unsigned __int8
34909C:  MOV             R1, R5; char *
34909E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3490A2:  MOV             R0, R5; this
3490A4:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
3490A8:  CMP             R0, R6
3490AA:  BLE.W           loc_3497DE
3490AE:  BLX             j__ZN8CGarages14IsGarageClosedEs; CGarages::IsGarageClosed(short)
3490B2:  MOV             R1, R0
3490B4:  B.W             loc_349928
3490B8:  MOV             R0, R4; jumptable 003485C8 case 950
3490BA:  MOVS            R1, #6; __int16
3490BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3490C0:  LDR.W           R0, =(ScriptParams_ptr - 0x3490CC)
3490C4:  VLDR            S0, =-100.0
3490C8:  ADD             R0, PC; ScriptParams_ptr
3490CA:  LDR             R0, [R0]; ScriptParams
3490CC:  VLDR            S20, [R0,#8]
3490D0:  VLDR            S16, [R0]
3490D4:  VCMPE.F32       S20, S0
3490D8:  VLDR            S18, [R0,#4]
3490DC:  VMRS            APSR_nzcv, FPSCR
3490E0:  BGT             loc_3490F2
3490E2:  VMOV            R0, S16; this
3490E6:  VMOV            R1, S18; float
3490EA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3490EE:  VMOV            S20, R0
3490F2:  LDR.W           R0, =(ScriptParams_ptr - 0x3490FA)
3490F6:  ADD             R0, PC; ScriptParams_ptr
3490F8:  LDR             R0, [R0]; ScriptParams
3490FA:  LDR.W           R9, [R0,#(dword_81A918 - 0x81A908)]
3490FE:  VLDR            S22, [R0,#0xC]
349102:  CMP.W           R9, #0xFFFFFFFF
349106:  BGT             loc_349120
349108:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x349114)
34910C:  RSB.W           R1, R9, #0
349110:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
349112:  RSB.W           R1, R1, R1,LSL#3
349116:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
349118:  ADD.W           R0, R0, R1,LSL#2
34911C:  LDR.W           R9, [R0,#0x18]
349120:  LDR.W           R0, =(ScriptParams_ptr - 0x349128)
349124:  ADD             R0, PC; ScriptParams_ptr
349126:  LDR             R0, [R0]; ScriptParams
349128:  LDR.W           R8, [R0,#(dword_81A91C - 0x81A908)]
34912C:  CMP.W           R8, #0xFFFFFFFF
349130:  BGT             loc_34914A
349132:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34913E)
349136:  RSB.W           R1, R8, #0
34913A:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
34913C:  RSB.W           R1, R1, R1,LSL#3
349140:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
349142:  ADD.W           R0, R0, R1,LSL#2
349146:  LDR.W           R8, [R0,#0x18]
34914A:  VMOV            R2, S22; CVector *
34914E:  MOVS            R1, #1
349150:  MOVS            R3, #0x10
349152:  VSTR            S18, [SP,#0xF0+var_50]
349156:  VSTR            S16, [SP,#0xF0+var_54]
34915A:  MOVS            R0, #0
34915C:  VSTR            S20, [SP,#0xF0+var_4C]
349160:  ADD             R6, SP, #0xF0+var_B8
349162:  STRD.W          R6, R3, [SP,#0xF0+var_F0]; bool
349166:  ADD.W           R10, SP, #0xF0+var_A8
34916A:  STRD.W          R10, R1, [SP,#0xF0+var_E8]; __int16
34916E:  ADD             R1, SP, #0xF0+var_54; unsigned int
349170:  STRD.W          R0, R0, [SP,#0xF0+var_E0]; bool
349174:  MOVS            R3, #1; float
349176:  STRD.W          R0, R0, [SP,#0xF0+var_D8]; bool
34917A:  MOV             R0, R9; this
34917C:  BLX             j__ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
349180:  LDRSH.W         R0, [SP,#0xF0+var_B8]
349184:  CMP             R0, #1
349186:  BLT.W           loc_349E7C
34918A:  VADD.F32        S0, S22, S22
34918E:  MOVS            R3, #0
349190:  MOVS            R1, #0
349192:  MOVS            R2, #0
349194:  MOVS            R6, #0
349196:  LDR.W           R3, [R10,R3,LSL#2]
34919A:  ADDS            R1, #1
34919C:  LDR             R4, [R3,#0x14]
34919E:  ADD.W           R5, R4, #0x30 ; '0'
3491A2:  CMP             R4, #0
3491A4:  IT EQ
3491A6:  ADDEQ           R5, R3, #4
3491A8:  VLDR            S2, [R5]
3491AC:  VLDR            S4, [R5,#4]
3491B0:  VSUB.F32        S2, S2, S16
3491B4:  VLDR            S6, [R5,#8]
3491B8:  VSUB.F32        S4, S4, S18
3491BC:  VSUB.F32        S6, S6, S20
3491C0:  VMUL.F32        S2, S2, S2
3491C4:  VMUL.F32        S4, S4, S4
3491C8:  VMUL.F32        S6, S6, S6
3491CC:  VADD.F32        S2, S2, S4
3491D0:  VADD.F32        S2, S2, S6
3491D4:  VSQRT.F32       S2, S2
3491D8:  VCMPE.F32       S2, S0
3491DC:  VMRS            APSR_nzcv, FPSCR
3491E0:  VMIN.F32        D0, D1, D0
3491E4:  ITT LT
3491E6:  MOVLT           R2, R3
3491E8:  MOVLT           R6, R3
3491EA:  UXTH            R3, R1
3491EC:  CMP             R3, R0
3491EE:  BLT             loc_349196
3491F0:  CMP             R2, #0
3491F2:  BEQ.W           loc_349E7C
3491F6:  MOV             R0, R6; this
3491F8:  MOV             R1, R8; int
3491FA:  BLX             j__ZN9CBuilding19ReplaceWithNewModelEi; CBuilding::ReplaceWithNewModel(int)
3491FE:  LDRB.W          R0, [R6,#0x32]
349202:  CMP             R0, #0
349204:  BNE.W           loc_349E7C
349208:  LDR             R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x349212)
34920A:  MOVS            R0, #0
34920C:  MOVS            R2, #0
34920E:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
349210:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
349212:  ADD.W           R0, R0, R0,LSL#1
349216:  MOVS            R5, #0
349218:  LDR.W           R3, [R1,R0,LSL#2]
34921C:  CMP             R3, R6
34921E:  IT NE
349220:  MOVNE           R5, #1
349222:  ADD             R2, R5
349224:  UXTH            R0, R2
349226:  CMP             R0, #0x18
349228:  BHI             loc_34922E
34922A:  CMP             R5, #0
34922C:  BNE             loc_349212
34922E:  CMP             R3, R6
349230:  BEQ.W           loc_349F30
349234:  LDR             R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34923E)
349236:  MOVS            R0, #0
349238:  MOVS            R2, #0
34923A:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
34923C:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
34923E:  ADD.W           R0, R0, R0,LSL#1
349242:  LDR.W           R5, [R1,R0,LSL#2]
349246:  CMP             R5, #0
349248:  MOV             R3, R5
34924A:  IT NE
34924C:  MOVNE           R3, #1
34924E:  ADD             R2, R3
349250:  UXTH            R0, R2
349252:  CMP             R0, #0x18
349254:  BHI             loc_34925A
349256:  CMP             R3, #0
349258:  BNE             loc_34923E
34925A:  CMP             R5, #0
34925C:  BNE.W           loc_349E7C
349260:  LDR             R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34926C)
349262:  ADD.W           R0, R0, R0,LSL#1
349266:  MOVS            R5, #0
349268:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
34926A:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
34926C:  STR.W           R6, [R1,R0,LSL#2]
349270:  ADD.W           R0, R1, R0,LSL#2
349274:  STRD.W          R8, R9, [R0,#4]
349278:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34927C:  MOV             R0, R4; jumptable 003485C8 case 951
34927E:  MOVS            R1, #1; __int16
349280:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349284:  LDR             R0, =(ScriptParams_ptr - 0x34928E)
349286:  MOVS            R5, #0
349288:  LDR             R1, =(_ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x349290)
34928A:  ADD             R0, PC; ScriptParams_ptr
34928C:  ADD             R1, PC; _ZN6CWorld20bProcessCutsceneOnlyE_ptr
34928E:  LDR             R0, [R0]; ScriptParams
349290:  LDR             R1, [R1]; CWorld::bProcessCutsceneOnly ...
349292:  LDR             R0, [R0]
349294:  CMP             R0, #0
349296:  MOV.W           R0, #0
34929A:  IT EQ
34929C:  MOVEQ           R0, #1
34929E:  STRB            R0, [R1]; CWorld::bProcessCutsceneOnly
3492A0:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3492A4:  MOV             R0, R4; jumptable 003485C8 case 954
3492A6:  MOVS            R1, #6; __int16
3492A8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3492AC:  LDR             R0, =(ScriptParams_ptr - 0x3492B2)
3492AE:  ADD             R0, PC; ScriptParams_ptr
3492B0:  LDR             R0, [R0]; ScriptParams
3492B2:  VLDR            S0, [R0]
3492B6:  VLDR            S6, [R0,#0xC]
3492BA:  VLDR            S2, [R0,#4]
3492BE:  VLDR            S8, [R0,#0x10]
3492C2:  VMIN.F32        D6, D0, D3
3492C6:  VLDR            S4, [R0,#8]
3492CA:  VMAX.F32        D0, D0, D3
3492CE:  VLDR            S10, [R0,#0x14]
3492D2:  VMIN.F32        D7, D1, D4
3492D6:  VMAX.F32        D1, D1, D4
3492DA:  VMIN.F32        D8, D2, D5
3492DE:  VMOV            R0, S12; this
3492E2:  VMOV            R3, S0; float
3492E6:  VMOV            R1, S14; float
3492EA:  VMAX.F32        D0, D2, D5
3492EE:  VSTR            S2, [SP,#0xF0+var_F0]
3492F2:  VMOV            R2, S16; float
3492F6:  VSTR            S0, [SP,#0xF0+var_EC]
3492FA:  BLX             j__ZN6CWorld17ClearCarsFromAreaEffffff; CWorld::ClearCarsFromArea(float,float,float,float,float,float)
3492FE:  MOVS            R5, #0
349300:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349304:  MOV             R0, R4; jumptable 003485C8 case 956
349306:  MOVS            R1, #4; __int16
349308:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34930C:  LDR             R0, =(ScriptParams_ptr - 0x349316)
34930E:  VLDR            S0, =-100.0
349312:  ADD             R0, PC; ScriptParams_ptr
349314:  LDR             R0, [R0]; ScriptParams
349316:  VLDR            S20, [R0,#8]
34931A:  VLDR            S16, [R0]
34931E:  VCMPE.F32       S20, S0
349322:  VLDR            S18, [R0,#4]
349326:  VMRS            APSR_nzcv, FPSCR
34932A:  BGT             loc_34933C
34932C:  VMOV            R0, S16; this
349330:  VMOV            R1, S18; float
349334:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
349338:  VMOV            S20, R0
34933C:  LDR.W           R0, =(ScriptParams_ptr - 0x349348)
349340:  VSTR            S18, [SP,#0xF0+var_B8+4]
349344:  ADD             R0, PC; ScriptParams_ptr
349346:  VSTR            S16, [SP,#0xF0+var_B8]
34934A:  VSTR            S20, [SP,#0xF0+var_B0]
34934E:  LDR             R0, [R0]; ScriptParams
349350:  LDR             R5, [R0,#(dword_81A914 - 0x81A908)]
349352:  MOV             R0, R4; this
349354:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
349358:  LDR.W           R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x349362)
34935C:  LDR             R1, [R4,#0x14]
34935E:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
349360:  LDR             R0, [R0]; CTheScripts::ScriptSphereArray ...
349362:  SUB.W           R3, R0, #0xC
349366:  MOV.W           R0, #0xFFFFFFFF
34936A:  ADDS            R0, #1
34936C:  ADD.W           R2, R3, #0x18
349370:  CMP             R0, #0xF
349372:  BHI             loc_34937C
349374:  LDRB            R3, [R3,#0xC]; CTheScripts::ScriptSphereArray
349376:  CMP             R3, #0
349378:  MOV             R3, R2
34937A:  BNE             loc_34936A
34937C:  LDR.W           R12, =(ScriptParams_ptr - 0x34938E)
349380:  ADD             R1, R4
349382:  MOVS            R3, #1
349384:  ADD             R1, R0
349386:  STRB.W          R3, [R2,#-0xC]
34938A:  ADD             R12, PC; ScriptParams_ptr
34938C:  VSTR            S16, [R2,#-4]
349390:  VSTR            S18, [R2]
349394:  VSTR            S20, [R2,#4]
349398:  STR             R5, [R2,#8]
34939A:  LDRH.W          R3, [R2,#-0xA]
34939E:  STR.W           R1, [R2,#-8]
3493A2:  SUBS            R1, R6, #1
3493A4:  LDR.W           R6, [R12]; ScriptParams
3493A8:  UXTH            R1, R1
3493AA:  CMP             R3, R1
3493AC:  MOV.W           R1, #1
3493B0:  IT CC
3493B2:  ADDCC           R1, R3, #1
3493B4:  ORR.W           R0, R0, R1,LSL#16
3493B8:  STRH.W          R1, [R2,#-0xA]
3493BC:  STR             R0, [R6]
3493BE:  B               loc_349B04
3493C0:  MOV             R0, R4; jumptable 003485C8 case 957
3493C2:  MOVS            R1, #1; __int16
3493C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3493C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3493D0)
3493CC:  ADD             R0, PC; ScriptParams_ptr
3493CE:  LDR             R0, [R0]; ScriptParams
3493D0:  LDR             R0, [R0]
3493D2:  ADDS            R1, R0, #1
3493D4:  BEQ.W           loc_349E7C
3493D8:  LDR.W           R2, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x3493E4)
3493DC:  UXTH            R1, R0
3493DE:  LSLS            R3, R1, #1
3493E0:  ADD             R2, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
3493E2:  UXTAH.W         R3, R3, R0
3493E6:  LDR             R2, [R2]; CTheScripts::ScriptSphereArray ...
3493E8:  ADD.W           R2, R2, R3,LSL#3
3493EC:  LDRH            R2, [R2,#2]
3493EE:  CMP.W           R2, R0,LSR#16
3493F2:  BNE.W           loc_349E7C
3493F6:  LDR.W           R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x349400)
3493FA:  MOVS            R5, #0
3493FC:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
3493FE:  LDR             R2, [R0]; CTheScripts::ScriptSphereArray ...
349400:  ADD.W           R0, R1, R1,LSL#1
349404:  LDRB.W          R1, [R2,R0,LSL#3]
349408:  CMP             R1, #0
34940A:  BEQ.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34940E:  ADD.W           R1, R2, R0,LSL#3
349412:  LDR.W           R2, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34941A)
349416:  ADD             R2, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
349418:  STRB            R5, [R1]
34941A:  LDR             R1, [R2]; CTheScripts::ScriptSphereArray ...
34941C:  ADD.W           R0, R1, R0,LSL#3
349420:  STR             R5, [R0,#4]
349422:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349426:  MOV             R0, R4; jumptable 003485C8 case 959
349428:  MOVS            R1, #2; __int16
34942A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34942E:  LDR.W           R0, =(ScriptParams_ptr - 0x34943E)
349432:  MOV.W           R3, #0x194
349436:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x349440)
34943A:  ADD             R0, PC; ScriptParams_ptr
34943C:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
34943E:  LDR             R0, [R0]; ScriptParams
349440:  LDR             R2, [R2]; CWorld::Players ...
349442:  LDRD.W          R1, R0, [R0]
349446:  MULS            R1, R3
349448:  LDR             R1, [R2,R1]
34944A:  LDR.W           R1, [R1,#0x444]
34944E:  CMP             R1, #0
349450:  ITE NE
349452:  LDRNE           R1, [R1]
349454:  MOVEQ           R1, #0
349456:  CMP             R0, #0
349458:  LDRB            R2, [R1,#(dword_1C+2)]
34945A:  BEQ.W           loc_349E3C
34945E:  ORR.W           R0, R2, #4; this
349462:  STRB            R0, [R1,#(dword_1C+2)]
349464:  BLX             j__ZN6CWorld32StopAllLawEnforcersInTheirTracksEv; CWorld::StopAllLawEnforcersInTheirTracks(void)
349468:  MOVS            R5, #0
34946A:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34946E:  ALIGN 0x10
349470:  DCD __stack_chk_guard_ptr - 0x3485B4
349474:  DCD TheText_ptr - 0x3486B4
349478:  DCD ScriptParams_ptr - 0x3486E6
34947C:  DCD _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x3486E8
349480:  DCD ScriptParams_ptr - 0x34871A
349484:  DCD ScriptParams_ptr - 0x3487D6
349488:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3487EA
34948C:  DCD ScriptParams_ptr - 0x34882E
349490:  DCD _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x348864
349494:  DCD _ZN11CTheScripts15IntroRectanglesE_ptr - 0x348882
349498:  DCD ScriptParams_ptr - 0x3488F2
34949C:  DCD _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x34892A
3494A0:  DCD _ZN11CTheScripts15IntroRectanglesE_ptr - 0x348948
3494A4:  DCB "script",0
3494AB:  DCB 0
3494AC:  DCD ScriptParams_ptr - 0x348A08
3494B0:  DCD _ZN11CTheScripts13ScriptSpritesE_ptr - 0x348A0A
3494B4:  DCD aModelsTxd_0 - 0x348A3E
3494B8:  LDRB            R4, [R6,#1]
3494BA:  LSLS            R4, R4, #1
3494BC:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x348AAE
3494C0:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x348AD2
3494C4:  DCD ScriptParams_ptr - 0x348AEC
3494C8:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x348B00
3494CC:  DCD ScriptParams_ptr - 0x348B2A
3494D0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x348B3E
3494D4:  DCD ScriptParams_ptr - 0x348B68
3494D8:  DCD AudioEngine_ptr - 0x348B7C
3494DC:  DCD ScriptParams_ptr - 0x348BA6
3494E0:  DCD ScriptParams_ptr - 0x348BDA
3494E4:  DCD ScriptParams_ptr - 0x348C06
3494E8:  DCD _ZN12CUserDisplay10OnscnTimerE_ptr - 0x348C08
3494EC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x348C34
3494F0:  DCD ScriptParams_ptr - 0x348C36
3494F4:  DCD ScriptParams_ptr - 0x348C70
3494F8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x348C84
3494FC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x348CB8
349500:  DCD ScriptParams_ptr - 0x348CBA
349504:  DCD ScriptParams_ptr - 0x348CF4
349508:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x348D08
34950C:  DCD ScriptParams_ptr - 0x348D36
349510:  DCD ScriptParams_ptr - 0x348D70
349514:  DCD byte_81A9D0 - 0x348D76
349518:  DCD ScriptParams_ptr - 0x348DC8
34951C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x348DCA
349520:  DCD ScriptParams_ptr - 0x348E00
349524:  DCD ScriptParams_ptr - 0x348E2C
349528:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x348E2E
34952C:  DCB "copcar",0
349533:  DCB 0
349534:  DCB "ambulan",0
34953C:  DCB "firetru",0
349544:  DCB "stunt",0
34954A:  ALIGN 4
34954C:  DCB "ram_2p",0
349553:  DCB 0
349554:  DCB "bike_2p",0
34955C:  DCB "cars_2p",0
349564:  DCB "heli_2p",0
34956C:  DCB "peds_2p",0
349574:  DCD IsOddJob_ptr - 0x348F8A
349578:  DCD IsOddJob_ptr - 0x348FB4
34957C:  DCD missionReplaySetting_ptr - 0x348FC6
349580:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x348FFE
349584:  DCD ScriptParams_ptr - 0x349000
349588:  DCD ScriptParams_ptr - 0x34903A
34958C:  DCD ScriptParams_ptr - 0x349060
349590:  DCD _ZN10CStreaming19ms_disableStreamingE_ptr - 0x349072
349594:  DCD ScriptParams_ptr - 0x3490CC
349598:  DCD ScriptParams_ptr - 0x3490FA
34959C:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x349114
3495A0:  DCD ScriptParams_ptr - 0x349128
3495A4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34913E
3495A8:  DCD _ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x349212
3495AC:  DCD _ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34923E
3495B0:  DCD _ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34926C
3495B4:  DCD ScriptParams_ptr - 0x34928E
3495B8:  DCD _ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x349290
3495BC:  DCD ScriptParams_ptr - 0x3492B2
3495C0:  DCD ScriptParams_ptr - 0x349316
3495C4:  DCFS -100.0
3495C8:  MOV             R0, R4; jumptable 003485C8 case 960
3495CA:  MOVS            R1, #1; __int16
3495CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3495D0:  LDR.W           R0, =(ScriptParams_ptr - 0x3495E0)
3495D4:  MOVW            R2, #0x7CC
3495D8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3495E2)
3495DC:  ADD             R0, PC; ScriptParams_ptr
3495DE:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3495E0:  LDR             R0, [R0]; ScriptParams
3495E2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3495E4:  LDR             R0, [R0]
3495E6:  LDR             R1, [R1]; CPools::ms_pPedPool
3495E8:  LSRS            R0, R0, #8
3495EA:  LDR             R1, [R1]
3495EC:  MLA.W           R0, R0, R2, R1
3495F0:  LDRB.W          R1, [R0,#0x485]
3495F4:  LSLS            R1, R1, #0x1F
3495F6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x349606)
3495FA:  ITE NE
3495FC:  LDRNE.W         R0, [R0,#0x590]
349600:  MOVEQ           R0, #0
349602:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
349604:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
349606:  LDR             R1, [R1]; CPools::ms_pVehiclePool
349608:  LDRD.W          R2, R1, [R1]
34960C:  SUBS            R0, R0, R2
34960E:  MOV             R2, #0xBFE6D523
349616:  ASRS            R0, R0, #2
349618:  MULS            R0, R2
34961A:  LDR.W           R2, =(ScriptParams_ptr - 0x349622)
34961E:  ADD             R2, PC; ScriptParams_ptr
349620:  LDR             R2, [R2]; ScriptParams
349622:  LDRB            R1, [R1,R0]
349624:  ORR.W           R0, R1, R0,LSL#8
349628:  STR             R0, [R2]
34962A:  B               loc_349B04
34962C:  MOV             R0, R4; jumptable 003485C8 case 963
34962E:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
349632:  MOV             R8, R0
349634:  MOV             R0, R4; this
349636:  MOVS            R1, #1; __int16
349638:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34963C:  LDR.W           R0, =(ScriptParams_ptr - 0x34964A)
349640:  SUB.W           R5, R7, #-var_5E
349644:  MOVS            R2, #8; unsigned __int8
349646:  ADD             R0, PC; ScriptParams_ptr
349648:  MOV             R1, R5; char *
34964A:  LDR             R0, [R0]; ScriptParams
34964C:  LDR             R6, [R0]
34964E:  MOV             R0, R4; this
349650:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
349654:  LDR.W           R0, =(TheText_ptr - 0x34965E)
349658:  MOV             R1, R5; CKeyGen *
34965A:  ADD             R0, PC; TheText_ptr
34965C:  LDR             R0, [R0]; TheText ; this
34965E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
349662:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x349672)
349666:  CMP             R6, #0
349668:  IT NE
34966A:  MOVNE           R6, #1
34966C:  MOV             R1, R8; unsigned int
34966E:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
349670:  MOV             R2, R5; char *
349672:  MOV             R3, R6; bool
349674:  LDR             R0, [R0]; this
349676:  BLX             j__ZN14COnscreenTimer8AddClockEjPcb; COnscreenTimer::AddClock(uint,char *,bool)
34967A:  MOVS            R5, #0
34967C:  B.W             loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349680:  MOV             R0, R4; jumptable 003485C8 case 964
349682:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
349686:  MOV             R8, R0
349688:  MOV             R0, R4; this
34968A:  MOVS            R1, #1; __int16
34968C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349690:  SUB.W           R6, R7, #-var_5E
349694:  MOV             R0, R4; this
349696:  MOVS            R2, #8; unsigned __int8
349698:  MOV             R1, R6; char *
34969A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34969E:  LDR.W           R0, =(TheText_ptr - 0x3496A8)
3496A2:  MOV             R1, R6; CKeyGen *
3496A4:  ADD             R0, PC; TheText_ptr
3496A6:  LDR             R0, [R0]; TheText ; this
3496A8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3496AC:  LDR.W           R0, =(ScriptParams_ptr - 0x3496BC)
3496B0:  MOVS            R5, #0
3496B2:  LDR.W           R1, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x3496C0)
3496B6:  MOV             R3, R6; char *
3496B8:  ADD             R0, PC; ScriptParams_ptr
3496BA:  STR             R5, [SP,#0xF0+var_F0]; unsigned __int16
3496BC:  ADD             R1, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
3496BE:  LDR             R0, [R0]; ScriptParams
3496C0:  LDRH            R2, [R0]; unsigned __int16
3496C2:  LDR             R0, [R1]; this
3496C4:  MOV             R1, R8; unsigned int
3496C6:  BLX             j__ZN14COnscreenTimer10AddCounterEjtPct; COnscreenTimer::AddCounter(uint,ushort,char *,ushort)
3496CA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3496CC:  MOV             R0, R4; jumptable 003485C8 case 965
3496CE:  MOVS            R1, #4; __int16
3496D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3496D4:  LDR.W           R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x3496DC)
3496D8:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
3496DA:  LDR             R0, [R0]; CCarCtrl::NumRandomCars ...
3496DC:  LDR             R0, [R0]; CCarCtrl::NumRandomCars
3496DE:  CMP             R0, #0x2C ; ','
3496E0:  BGT.W           loc_349E7C
3496E4:  LDR.W           R0, =(_ZN11CPopulation23m_AppropriateLoadedCarsE_ptr - 0x3496F2)
3496E8:  MOVS            R1, #0; bool
3496EA:  MOVS            R2, #1; bool
3496EC:  MOVS            R5, #0
3496EE:  ADD             R0, PC; _ZN11CPopulation23m_AppropriateLoadedCarsE_ptr
3496F0:  LDR             R0, [R0]; this
3496F2:  BLX             j__ZN15CLoadedCarGroup13PickRandomCarEbb; CLoadedCarGroup::PickRandomCar(bool,bool)
3496F6:  MOV             R6, R0
3496F8:  ADDS            R0, R6, #1
3496FA:  BEQ.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3496FE:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x349706)
349702:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
349704:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
349706:  LDR.W           R0, [R0,R6,LSL#2]
34970A:  LDR             R0, [R0,#0x54]
34970C:  SUBS            R0, #1; switch 11 cases
34970E:  CMP             R0, #0xA
349710:  BHI.W           def_349714; jumptable 00349714 default case, cases 5-8
349714:  TBH.W           [PC,R0,LSL#1]; switch jump
349718:  DCW 0xB; jump table for switch statement
34971A:  DCW 0x426
34971C:  DCW 0x430
34971E:  DCW 0x43A
349720:  DCW 0x444
349722:  DCW 0x444
349724:  DCW 0x444
349726:  DCW 0x444
349728:  DCW 0x44F
34972A:  DCW 0x459
34972C:  DCW 0x469
34972E:  MOV.W           R0, #(elf_hash_bucket+0x8B4); jumptable 00349714 case 1
349732:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349736:  MOV             R1, R6; int
349738:  MOVS            R2, #1; unsigned __int8
34973A:  MOV             R4, R0
34973C:  BLX             j__ZN13CMonsterTruckC2Eih; CMonsterTruck::CMonsterTruck(int,uchar)
349740:  B.W             loc_349FFC
349744:  MOV             R0, R4; jumptable 003485C8 case 967
349746:  MOVS            R1, #1; __int16
349748:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34974C:  LDR.W           R0, =(ScriptParams_ptr - 0x349754)
349750:  ADD             R0, PC; ScriptParams_ptr
349752:  LDR             R0, [R0]; ScriptParams
349754:  LDR             R4, [R0]
349756:  MOV.W           R0, #0xFFFFFFFF; int
34975A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
34975E:  STR             R4, [R0,#0x14]
349760:  MOVS            R5, #0
349762:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349764:  LDR.W           R0, =(TheCamera_ptr - 0x34976C); jumptable 003485C8 case 968
349768:  ADD             R0, PC; TheCamera_ptr
34976A:  LDR             R0, [R0]; TheCamera ; this
34976C:  BLX             j__ZN7CCamera49SetCameraDirectlyInFrontForFollowPed_CamOnAStringEv; CCamera::SetCameraDirectlyInFrontForFollowPed_CamOnAString(void)
349770:  MOVS            R5, #0
349772:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349774:  MOV             R0, R4; jumptable 003485C8 case 969
349776:  MOVS            R1, #1; __int16
349778:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34977C:  LDR.W           R0, =(ScriptParams_ptr - 0x34978C)
349780:  MOVW            R2, #0xA2C
349784:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34978E)
349788:  ADD             R0, PC; ScriptParams_ptr
34978A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34978C:  LDR             R0, [R0]; ScriptParams
34978E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
349790:  LDR             R0, [R0]
349792:  LDR             R1, [R1]; CPools::ms_pVehiclePool
349794:  LSRS            R0, R0, #8
349796:  LDR             R1, [R1]
349798:  MLA.W           R0, R0, R2, R1
34979C:  LDRH.W          R0, [R0,#0x42E]
3497A0:  AND.W           R1, R0, #1
3497A4:  B               loc_349928
3497A6:  MOV             R0, R4; jumptable 003485C8 case 970
3497A8:  MOVS            R1, #1; __int16
3497AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3497AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3497B6)
3497B2:  ADD             R0, PC; ScriptParams_ptr
3497B4:  LDR             R0, [R0]; ScriptParams
3497B6:  LDR             R1, [R0]
3497B8:  CMP             R1, #0
3497BA:  BLT             loc_3497DE
3497BC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3497C8)
3497C0:  UXTB            R3, R1
3497C2:  LSRS            R1, R1, #8
3497C4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3497C6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3497C8:  LDR             R0, [R0]; CPools::ms_pObjectPool
3497CA:  LDR             R2, [R0,#4]
3497CC:  LDRB            R2, [R2,R1]
3497CE:  CMP             R2, R3
3497D0:  BNE             loc_3497DE
3497D2:  MOV.W           R2, #0x1A4
3497D6:  LDR             R0, [R0]
3497D8:  MLA.W           R1, R1, R2, R0
3497DC:  B               loc_349922
3497DE:  MOVS            R1, #0
3497E0:  B               loc_349928
3497E2:  MOV             R0, R4; jumptable 003485C8 case 971
3497E4:  MOVS            R1, #3; __int16
3497E6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3497EA:  LDR.W           R0, =(ScriptParams_ptr - 0x3497F2)
3497EE:  ADD             R0, PC; ScriptParams_ptr
3497F0:  LDR             R0, [R0]; ScriptParams ; this
3497F2:  LDM.W           R0, {R4-R6}
3497F6:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
3497FA:  ADD             R0, SP, #0xF0+var_A8
3497FC:  STM             R0!, {R4-R6}
3497FE:  ADD             R0, SP, #0xF0+var_A8; this
349800:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
349804:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
349808:  MOVS            R5, #0
34980A:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34980C:  MOV             R0, R4; jumptable 003485C8 case 972
34980E:  MOVS            R1, #3; __int16
349810:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349814:  LDR.W           R0, =(ScriptParams_ptr - 0x349822)
349818:  MOVS            R5, #0
34981A:  LDR.W           R6, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x349824)
34981E:  ADD             R0, PC; ScriptParams_ptr
349820:  ADD             R6, PC; _ZN11CTheScripts9StuckCarsE_ptr
349822:  LDR             R0, [R0]; ScriptParams
349824:  LDM.W           R0, {R1-R3}; unsigned int
349828:  LDR             R0, [R6]; this
34982A:  STRD.W          R5, R5, [SP,#0xF0+var_F0]; unsigned __int8
34982E:  STRD.W          R5, R5, [SP,#0xF0+var_E8]; unsigned __int8
349832:  STR             R5, [SP,#0xF0+var_E0]; signed __int8
349834:  BLX             j__ZN14CStuckCarCheck13AddCarToCheckEifjhhhha; CStuckCarCheck::AddCarToCheck(int,float,uint,uchar,uchar,uchar,uchar,signed char)
349838:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34983A:  MOV             R0, R4; jumptable 003485C8 case 973
34983C:  MOVS            R1, #1; __int16
34983E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349842:  LDR.W           R0, =(ScriptParams_ptr - 0x34984E)
349846:  LDR.W           R2, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x349850)
34984A:  ADD             R0, PC; ScriptParams_ptr
34984C:  ADD             R2, PC; _ZN11CTheScripts9StuckCarsE_ptr
34984E:  LDR             R0, [R0]; ScriptParams
349850:  LDR             R1, [R0]; int
349852:  LDR             R0, [R2]; this
349854:  BLX             j__ZN14CStuckCarCheck18RemoveCarFromCheckEi; CStuckCarCheck::RemoveCarFromCheck(int)
349858:  MOVS            R5, #0
34985A:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34985C:  MOV             R0, R4; jumptable 003485C8 case 974
34985E:  MOVS            R1, #1; __int16
349860:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349864:  LDR.W           R0, =(ScriptParams_ptr - 0x349870)
349868:  LDR.W           R2, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x349872)
34986C:  ADD             R0, PC; ScriptParams_ptr
34986E:  ADD             R2, PC; _ZN11CTheScripts9StuckCarsE_ptr
349870:  LDR             R0, [R0]; ScriptParams
349872:  LDR             R1, [R0]; int
349874:  LDR             R0, [R2]; this
349876:  BLX             j__ZN14CStuckCarCheck24HasCarBeenStuckForAWhileEi; CStuckCarCheck::HasCarBeenStuckForAWhile(int)
34987A:  B               loc_349920
34987C:  MOV             R0, R4; jumptable 003485C8 case 975
34987E:  MOVS            R1, #2; __int16
349880:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349884:  LDR.W           R0, =(ScriptParams_ptr - 0x349890)
349888:  LDR.W           R1, =(AudioEngine_ptr - 0x349892)
34988C:  ADD             R0, PC; ScriptParams_ptr
34988E:  ADD             R1, PC; AudioEngine_ptr
349890:  LDR             R0, [R0]; ScriptParams
349892:  LDRD.W          R3, R2, [R0]; int
349896:  LDR             R0, [R1]; AudioEngine ; this
349898:  ADD.W           R1, R3, #0xFF
34989C:  UXTB            R1, R1; unsigned __int8
34989E:  BLX             j__ZN12CAudioEngine19PreloadMissionAudioEhi; CAudioEngine::PreloadMissionAudio(uchar,int)
3498A2:  MOVS            R5, #0
3498A4:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3498A6:  MOV             R0, R4; jumptable 003485C8 case 976
3498A8:  MOVS            R1, #1; __int16
3498AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3498AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3498BA)
3498B2:  LDR.W           R1, =(AudioEngine_ptr - 0x3498BC)
3498B6:  ADD             R0, PC; ScriptParams_ptr
3498B8:  ADD             R1, PC; AudioEngine_ptr
3498BA:  LDR             R0, [R0]; ScriptParams
3498BC:  LDR             R2, [R0]
3498BE:  LDR             R0, [R1]; AudioEngine ; this
3498C0:  ADD.W           R1, R2, #0xFF
3498C4:  UXTB            R1, R1; unsigned __int8
3498C6:  BLX             j__ZN12CAudioEngine28GetMissionAudioLoadingStatusEh; CAudioEngine::GetMissionAudioLoadingStatus(uchar)
3498CA:  MOV             R1, R0
3498CC:  CMP             R1, #1
3498CE:  IT NE
3498D0:  MOVNE           R1, #0
3498D2:  B               loc_349928
3498D4:  MOV             R0, R4; jumptable 003485C8 case 977
3498D6:  MOVS            R1, #1; __int16
3498D8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3498DC:  LDR.W           R0, =(ScriptParams_ptr - 0x3498E8)
3498E0:  LDR.W           R1, =(AudioEngine_ptr - 0x3498EA)
3498E4:  ADD             R0, PC; ScriptParams_ptr
3498E6:  ADD             R1, PC; AudioEngine_ptr
3498E8:  LDR             R0, [R0]; ScriptParams
3498EA:  LDR             R2, [R0]
3498EC:  LDR             R0, [R1]; AudioEngine ; this
3498EE:  ADD.W           R1, R2, #0xFF
3498F2:  UXTB            R1, R1; unsigned __int8
3498F4:  BLX             j__ZN12CAudioEngine22PlayLoadedMissionAudioEh; CAudioEngine::PlayLoadedMissionAudio(uchar)
3498F8:  MOVS            R5, #0
3498FA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
3498FC:  MOV             R0, R4; jumptable 003485C8 case 978
3498FE:  MOVS            R1, #1; __int16
349900:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349904:  LDR.W           R0, =(ScriptParams_ptr - 0x349910)
349908:  LDR.W           R1, =(AudioEngine_ptr - 0x349912)
34990C:  ADD             R0, PC; ScriptParams_ptr
34990E:  ADD             R1, PC; AudioEngine_ptr
349910:  LDR             R0, [R0]; ScriptParams
349912:  LDR             R2, [R0]
349914:  LDR             R0, [R1]; AudioEngine ; this
349916:  ADD.W           R1, R2, #0xFF
34991A:  UXTB            R1, R1; unsigned __int8
34991C:  BLX             j__ZN12CAudioEngine28IsMissionAudioSampleFinishedEh; CAudioEngine::IsMissionAudioSampleFinished(uchar)
349920:  MOV             R1, R0
349922:  CMP             R1, #0
349924:  IT NE
349926:  MOVNE           R1, #1; unsigned __int8
349928:  MOV             R0, R4; this
34992A:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34992E:  MOVS            R5, #0
349930:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349932:  MOV             R0, R4; jumptable 003485C8 case 979
349934:  MOVS            R1, #3; __int16
349936:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34993A:  LDR.W           R0, =(ScriptParams_ptr - 0x349946)
34993E:  VLDR            S2, =-100.0
349942:  ADD             R0, PC; ScriptParams_ptr
349944:  LDR             R0, [R0]; ScriptParams
349946:  VLDR            S0, [R0,#8]
34994A:  VLDR            S16, [R0]
34994E:  VCMPE.F32       S0, S2
349952:  VLDR            S18, [R0,#4]
349956:  VMRS            APSR_nzcv, FPSCR
34995A:  BGT             loc_34996C
34995C:  VMOV            R0, S16; this
349960:  VMOV            R1, S18; float
349964:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
349968:  VMOV            S0, R0
34996C:  VMOV            R1, S16
349970:  LDR.W           R0, =(ThePaths_ptr - 0x349982)
349974:  VMOV            R2, S18
349978:  MOVS            R5, #0
34997A:  VMOV            R3, S0
34997E:  ADD             R0, PC; ThePaths_ptr
349980:  MOVS            R6, #1
349982:  STR             R5, [SP,#0xF0+var_D8]
349984:  STRD.W          R5, R5, [SP,#0xF0+var_E0]
349988:  STRD.W          R5, R6, [SP,#0xF0+var_E8]
34998C:  LDR             R6, [R0]; ThePaths
34998E:  MOV             R0, #0x497423FE
349996:  STRD.W          R5, R0, [SP,#0xF0+var_F0]
34999A:  MOV             R0, R6
34999C:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3499A0:  MOV             R8, R0
3499A2:  ADD             R0, SP, #0xF0+var_A8
3499A4:  ADD             R3, SP, #0xF0+var_54
3499A6:  MOV             R1, R6
3499A8:  MOV             R2, R8
3499AA:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
3499AE:  LDRB.W          R0, [SP,#0xF0+var_54]
3499B2:  CMP             R0, #0
3499B4:  BEQ.W           loc_349E46
3499B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3499C4)
3499BC:  LDR.W           R1, =(ThePaths_ptr - 0x3499CA)
3499C0:  ADD             R0, PC; ScriptParams_ptr
3499C2:  LDRD.W          R3, R6, [SP,#0xF0+var_A8]
3499C6:  ADD             R1, PC; ThePaths_ptr
3499C8:  LDR             R5, [SP,#0xF0+var_A0]
3499CA:  LDR             R2, [R0]; ScriptParams
3499CC:  LDR             R0, [R1]; ThePaths
3499CE:  MOV             R1, R8
3499D0:  STRD.W          R3, R6, [R2]
3499D4:  STR             R5, [R2,#(dword_81A910 - 0x81A908)]
3499D6:  BLX             j__ZN9CPathFind34FindNodeOrientationForCarPlacementE12CNodeAddress; CPathFind::FindNodeOrientationForCarPlacement(CNodeAddress)
3499DA:  MOV             R5, R0
3499DC:  MOVS            R6, #1
3499DE:  B               loc_349E54
3499E0:  SUB.W           R5, R7, #-var_5E; jumptable 003485C8 case 981
3499E4:  MOV             R0, R4; this
3499E6:  MOVS            R2, #8; unsigned __int8
3499E8:  MOV             R1, R5; char *
3499EA:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3499EE:  LDR.W           R0, =(TheText_ptr - 0x3499F8)
3499F2:  MOV             R1, R5; CKeyGen *
3499F4:  ADD             R0, PC; TheText_ptr
3499F6:  LDR             R0, [R0]; TheText ; this
3499F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3499FC:  BLX             j__ZN9CMessages14ClearThisPrintEPt; CMessages::ClearThisPrint(ushort *)
349A00:  MOVS            R5, #0
349A02:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349A04:  SUB.W           R5, R7, #-var_5E; jumptable 003485C8 case 982
349A08:  MOV             R0, R4; this
349A0A:  MOVS            R2, #8; unsigned __int8
349A0C:  MOV             R1, R5; char *
349A0E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
349A12:  LDR.W           R0, =(TheText_ptr - 0x349A1C)
349A16:  MOV             R1, R5; CKeyGen *
349A18:  ADD             R0, PC; TheText_ptr
349A1A:  LDR             R0, [R0]; TheText ; this
349A1C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
349A20:  BLX             j__ZN9CMessages17ClearThisBigPrintEPt; CMessages::ClearThisBigPrint(ushort *)
349A24:  MOVS            R5, #0
349A26:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349A28:  MOV             R0, R4; jumptable 003485C8 case 983
349A2A:  MOVS            R1, #4; __int16
349A2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349A30:  LDR.W           R0, =(ScriptParams_ptr - 0x349A3C)
349A34:  LDR.W           R1, =(AudioEngine_ptr - 0x349A3E)
349A38:  ADD             R0, PC; ScriptParams_ptr
349A3A:  ADD             R1, PC; AudioEngine_ptr
349A3C:  LDR             R0, [R0]; ScriptParams
349A3E:  LDM.W           R0, {R2,R3,R6}
349A42:  LDR             R5, [R0,#(dword_81A914 - 0x81A908)]
349A44:  LDR             R0, [R1]; AudioEngine ; this
349A46:  ADD.W           R1, R2, #0xFF
349A4A:  ADD             R2, SP, #0xF0+var_A8; CVector *
349A4C:  STRD.W          R3, R6, [SP,#0xF0+var_A8]
349A50:  UXTB            R1, R1; unsigned __int8
349A52:  STR             R5, [SP,#0xF0+var_A0]
349A54:  BLX             j__ZN12CAudioEngine23SetMissionAudioPositionEhR7CVector; CAudioEngine::SetMissionAudioPosition(uchar,CVector &)
349A58:  MOVS            R5, #0
349A5A:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349A5C:  MOV.W           R0, #0xFFFFFFFF; jumptable 003485C8 case 984
349A60:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
349A64:  CMP             R0, #0
349A66:  BEQ.W           loc_349E7C
349A6A:  MOV.W           R0, #0xFFFFFFFF; int
349A6E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
349A72:  LDRB.W          R0, [R0,#0x485]
349A76:  MOVS            R5, #0
349A78:  LSLS            R0, R0, #0x1F
349A7A:  BNE.W           loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349A7E:  LDR.W           R0, =(gMobileMenu_ptr - 0x349A86)
349A82:  ADD             R0, PC; gMobileMenu_ptr
349A84:  LDR             R0, [R0]; gMobileMenu ; this
349A86:  BLX             j__ZN10MobileMenu11InitForSaveEv; MobileMenu::InitForSave(void)
349A8A:  MOV.W           R0, #0xFFFFFFFF; int
349A8E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
349A92:  STRD.W          R5, R5, [R0,#0x48]
349A96:  STR             R5, [R0,#0x50]
349A98:  MOV.W           R0, #0xFFFFFFFF; int
349A9C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
349AA0:  STRD.W          R5, R5, [R0,#0x54]
349AA4:  STR             R5, [R0,#0x5C]
349AA6:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349AA8:  LDR.W           R0, =(gMobileMenu_ptr - 0x349AB2); jumptable 003485C8 case 985
349AAC:  MOVS            R5, #0
349AAE:  ADD             R0, PC; gMobileMenu_ptr
349AB0:  LDR             R0, [R0]; gMobileMenu
349AB2:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
349AB4:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
349AB6:  ORRS            R0, R1
349AB8:  MOV.W           R1, #0
349ABC:  IT EQ
349ABE:  MOVEQ           R1, #1; unsigned __int8
349AC0:  MOV             R0, R4; this
349AC2:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
349AC6:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349AC8:  MOV             R0, R4; jumptable 003485C8 case 988
349ACA:  MOVS            R1, #1; __int16
349ACC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349AD0:  LDR.W           R0, =(ScriptParams_ptr - 0x349AD8)
349AD4:  ADD             R0, PC; ScriptParams_ptr
349AD6:  LDR             R6, [R0]; ScriptParams
349AD8:  LDR             R0, [R6]; this
349ADA:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
349ADE:  MOV             R0, R4; this
349AE0:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
349AE4:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
349AE8:  LDR             R1, [R6]
349AEA:  ADD.W           R0, R4, #8
349AEE:  STR             R0, [SP,#0xF0+var_F0]
349AF0:  MOVS            R0, #7
349AF2:  MOVS            R2, #6
349AF4:  MOVS            R3, #3
349AF6:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
349AFA:  MOVS            R1, #3; int
349AFC:  MOV             R5, R0
349AFE:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
349B02:  STR             R5, [R6]
349B04:  MOV             R0, R4; this
349B06:  MOVS            R1, #1; __int16
349B08:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
349B0C:  MOVS            R5, #0
349B0E:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349B10:  MOV             R0, R4; jumptable 003485C8 case 990
349B12:  MOVS            R1, #1; __int16
349B14:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349B18:  LDR.W           R0, =(ScriptParams_ptr - 0x349B26)
349B1C:  MOVS            R5, #0
349B1E:  LDR.W           R1, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x349B28)
349B22:  ADD             R0, PC; ScriptParams_ptr
349B24:  ADD             R1, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
349B26:  LDR             R0, [R0]; ScriptParams
349B28:  LDR             R1, [R1]; CPopulation::PedDensityMultiplier ...
349B2A:  LDR             R0, [R0]
349B2C:  STR             R0, [R1]; CPopulation::PedDensityMultiplier
349B2E:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349B30:  MOV             R0, R4; jumptable 003485C8 case 992
349B32:  MOVS            R1, #1; __int16
349B34:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349B38:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x349B46)
349B3C:  MOVS            R5, #0
349B3E:  LDR.W           R1, =(ScriptParams_ptr - 0x349B4C)
349B42:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
349B44:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x349B50)
349B48:  ADD             R1, PC; ScriptParams_ptr
349B4A:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
349B4C:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
349B4E:  LDR             R1, [R1]; ScriptParams
349B50:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
349B52:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
349B54:  LDR             R1, [R1]
349B56:  ADD.W           R0, R0, R0,LSL#4
349B5A:  CMP             R1, #0
349B5C:  IT NE
349B5E:  MOVNE           R1, #1
349B60:  ADD.W           R0, R2, R0,LSL#2
349B64:  STRB.W          R1, [R0,#0x23]
349B68:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349B6A:  MOV             R0, R4; jumptable 003485C8 case 995
349B6C:  MOVS            R1, #1; __int16
349B6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349B72:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x349B80)
349B76:  MOVS            R5, #0
349B78:  LDR.W           R1, =(ScriptParams_ptr - 0x349B86)
349B7C:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
349B7E:  LDR.W           R2, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x349B8A)
349B82:  ADD             R1, PC; ScriptParams_ptr
349B84:  LDR             R0, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
349B86:  ADD             R2, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
349B88:  LDR             R1, [R1]; ScriptParams
349B8A:  LDR             R2, [R2]; CTheScripts::IntroRectangles ...
349B8C:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame
349B8E:  LDR             R1, [R1]
349B90:  RSB.W           R0, R0, R0,LSL#4
349B94:  CMP             R1, #0
349B96:  IT NE
349B98:  MOVNE           R1, #1
349B9A:  ADD.W           R0, R2, R0,LSL#2
349B9E:  STRB            R1, [R0,#4]
349BA0:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349BA2:  MOV             R0, R4; jumptable 003485C8 case 996
349BA4:  MOVS            R1, #1; __int16
349BA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349BAA:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x349BB8)
349BAE:  MOVS            R5, #0
349BB0:  LDR.W           R1, =(ScriptParams_ptr - 0x349BBE)
349BB4:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
349BB6:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x349BC2)
349BBA:  ADD             R1, PC; ScriptParams_ptr
349BBC:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
349BBE:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
349BC0:  LDR             R1, [R1]; ScriptParams
349BC2:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
349BC4:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
349BC6:  LDR             R1, [R1]
349BC8:  ADD.W           R0, R0, R0,LSL#4
349BCC:  CMP             R1, #0
349BCE:  IT NE
349BD0:  MOVNE           R1, #1
349BD2:  ADD.W           R0, R2, R0,LSL#2
349BD6:  STRB.W          R1, [R0,#0x24]
349BDA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349BDC:  SUB.W           R5, R7, #-var_5E; jumptable 003485C8 case 997
349BE0:  MOV             R0, R4; this
349BE2:  MOVS            R2, #8; unsigned __int8
349BE4:  MOV             R1, R5; char *
349BE6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
349BEA:  ADR.W           R0, aHelp42; "HELP_42"
349BEE:  MOV             R1, R5; char *
349BF0:  BLX             strcmp
349BF4:  CMP             R0, #0
349BF6:  BEQ.W           loc_349E6A
349BFA:  LDR.W           R0, =(TheText_ptr - 0x349C06)
349BFE:  SUB.W           R1, R7, #-var_5E; CKeyGen *
349C02:  ADD             R0, PC; TheText_ptr
349C04:  LDR             R0, [R0]; TheText ; this
349C06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
349C0A:  MOV             R5, R0
349C0C:  LDR.W           R0, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x349C14)
349C10:  ADD             R0, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
349C12:  LDR             R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
349C14:  LDRB            R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages
349C16:  CMP             R0, #0
349C18:  ITT EQ
349C1A:  LDRBEQ.W        R0, [R4,#0xE8]
349C1E:  CMPEQ           R0, #0
349C20:  BEQ.W           loc_349ECC
349C24:  SUB.W           R0, R7, #-var_5E; this
349C28:  MOVS            R4, #0
349C2A:  MOV             R1, R5; char *
349C2C:  MOVS            R2, #0; unsigned __int16 *
349C2E:  MOVS            R3, #0; bool
349C30:  STRD.W          R4, R4, [SP,#0xF0+var_F0]; bool
349C34:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
349C38:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x349C40)
349C3C:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
349C3E:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
349C40:  LDRB            R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
349C42:  CMP             R0, #0
349C44:  BEQ.W           loc_349EDA
349C48:  MOV.W           R0, #0xFFFFFFFF
349C4C:  MOV             R1, R5; char *
349C4E:  STRD.W          R0, R0, [SP,#0xF0+var_F0]; int
349C52:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
349C56:  STRD.W          R0, R0, [SP,#0xF0+var_E8]; int
349C5A:  SUB.W           R0, R7, #-var_5E; this
349C5E:  MOV.W           R3, #0xFFFFFFFF; int
349C62:  STR             R4, [SP,#0xF0+var_E0]; int
349C64:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
349C68:  B               loc_349EDA
349C6A:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x349C72); jumptable 003485C8 case 998
349C6E:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
349C70:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
349C72:  LDR             R0, [R0]; CTheScripts::pActiveScripts
349C74:  CBZ             R0, loc_349CA8
349C76:  ADD.W           R5, R0, #8
349C7A:  ADR.W           R1, aStrap3; "strap3"
349C7E:  MOV             R0, R5; char *
349C80:  BLX             strcmp
349C84:  CMP             R0, #0
349C86:  BEQ.W           loc_349E7C
349C8A:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x349C92)
349C8E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
349C90:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
349C92:  LDR.W           R4, [R0,#(dword_6F3A1C - 0x6F3794)]
349C96:  CBZ             R4, loc_349CA8
349C98:  ADR.W           R1, aHeist9; "heist9"
349C9C:  MOV             R0, R5; char *
349C9E:  BLX             strcmp
349CA2:  CMP             R0, #0
349CA4:  BEQ.W           loc_349EFC
349CA8:  MOVS            R5, #0
349CAA:  MOVS            R0, #0; this
349CAC:  MOVS            R1, #0; char *
349CAE:  MOVS            R2, #(stderr+1); unsigned __int16 *
349CB0:  MOVS            R3, #0; bool
349CB2:  STRD.W          R5, R5, [SP,#0xF0+var_F0]; bool
349CB6:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
349CBA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349CBC:  MOV             R0, R4; jumptable 003485C8 case 999
349CBE:  MOVS            R1, #1; __int16
349CC0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349CC4:  LDR.W           R0, =(ScriptParams_ptr - 0x349CD2)
349CC8:  MOVS            R5, #0
349CCA:  LDR.W           R1, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x349CD4)
349CCE:  ADD             R0, PC; ScriptParams_ptr
349CD0:  ADD             R1, PC; _ZN4CHud13m_ItemToFlashE_ptr
349CD2:  LDR             R0, [R0]; ScriptParams
349CD4:  LDR             R1, [R1]; CHud::m_ItemToFlash ...
349CD6:  LDR             R0, [R0]
349CD8:  STRH            R0, [R1]; CHud::m_ItemToFlash
349CDA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349CDC:  MOVS            R0, #0
349CDE:  LDR.W           R1, =(ScriptParams_ptr - 0x349CEC)
349CE2:  MOVS            R5, #0
349CE4:  VLDR            S0, =50.0
349CE8:  ADD             R1, PC; ScriptParams_ptr
349CEA:  VLDR            S8, [R0,#0x4C]
349CEE:  VLDR            S10, [R0,#0x50]
349CF2:  LDR             R1, [R1]; ScriptParams
349CF4:  VLDR            S2, [R1,#4]
349CF8:  VLDR            S6, [R1,#0xC]
349CFC:  VLDR            S4, [R1,#8]
349D00:  VDIV.F32        S2, S2, S0
349D04:  VDIV.F32        S6, S6, S0
349D08:  VDIV.F32        S0, S4, S0
349D0C:  VLDR            S4, [R0,#0x48]
349D10:  VADD.F32        S0, S8, S0
349D14:  VADD.F32        S2, S4, S2
349D18:  VADD.F32        S4, S10, S6
349D1C:  VSTR            S2, [R0,#0x48]
349D20:  VSTR            S0, [R0,#0x4C]
349D24:  VSTR            S4, [R0,#0x50]
349D28:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349D2A:  MOVS            R4, #0
349D2C:  LDR.W           R0, =(ScriptParams_ptr - 0x349D36)
349D30:  LDR             R1, [R4,#0x1C]
349D32:  ADD             R0, PC; ScriptParams_ptr
349D34:  LDR             R2, [R0]; ScriptParams
349D36:  AND.W           R0, R1, #4
349D3A:  LDR             R1, [R2,#(dword_81A90C - 0x81A908)]
349D3C:  CMP             R1, #0
349D3E:  BEQ.W           loc_349E7A
349D42:  CMP             R0, #0
349D44:  BEQ.W           loc_349E7C
349D48:  LDR             R0, [R4]
349D4A:  MOVS            R1, #0
349D4C:  MOVS            R5, #0
349D4E:  LDR             R2, [R0,#0x14]
349D50:  MOV             R0, R4
349D52:  BLX             R2
349D54:  MOV             R0, R4; this
349D56:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
349D5A:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349D5C:  MOVS            R6, #0
349D5E:  ADD             R5, SP, #0xF0+var_54
349D60:  MOV             R0, R4; this
349D62:  MOVS            R2, #0x18; unsigned __int8
349D64:  MOV             R1, R5; char *
349D66:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
349D6A:  LDR             R0, [R6,#0x18]; int
349D6C:  MOV             R1, R5; this
349D6E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
349D72:  MOV             R5, R0
349D74:  MOV             R0, R4; this
349D76:  MOVS            R1, #1; __int16
349D78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
349D7C:  CMP             R5, #0
349D7E:  BEQ             loc_349E7C
349D80:  LDR.W           R0, =(ScriptParams_ptr - 0x349D88)
349D84:  ADD             R0, PC; ScriptParams_ptr
349D86:  LDR             R0, [R0]; ScriptParams
349D88:  LDR             R0, [R0]
349D8A:  STR             R0, [R5,#0x24]
349D8C:  MOVS            R5, #0
349D8E:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349D90:  MOVS            R0, #0
349D92:  LDR.W           R1, [R0,#0x5A0]
349D96:  CMP             R1, #9
349D98:  BEQ.W           loc_349EAA
349D9C:  CMP             R1, #0
349D9E:  BNE             loc_349E7C
349DA0:  ADDW            R0, R0, #0x87C
349DA4:  B               loc_349EAE
349DA6:  MOVS            R4, #0
349DA8:  LDR.W           R0, =(ScriptParams_ptr - 0x349DB2)
349DAC:  LDR             R1, [R4,#0x14]
349DAE:  ADD             R0, PC; ScriptParams_ptr
349DB0:  ADD.W           R2, R1, #0x30 ; '0'
349DB4:  CMP             R1, #0
349DB6:  IT EQ
349DB8:  ADDEQ           R2, R4, #4
349DBA:  LDR             R0, [R0]; ScriptParams
349DBC:  VLDR            D16, [R2]
349DC0:  VSTR            D16, [SP,#0xF0+var_B8]
349DC4:  VLDR            S0, [R0,#4]
349DC8:  VLDR            S4, [SP,#0xF0+var_B8]
349DCC:  VLDR            S2, [R0,#8]
349DD0:  VLDR            S6, [SP,#0xF0+var_B8+4]
349DD4:  VSUB.F32        S0, S4, S0
349DD8:  LDR             R2, [R2,#8]; float
349DDA:  VSUB.F32        S2, S6, S2
349DDE:  STR             R2, [SP,#0xF0+var_B0]
349DE0:  VMOV            R0, S0; this
349DE4:  VMOV            R1, S2; float
349DE8:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
349DEC:  VLDR            S0, =1.5708
349DF0:  VMOV            S2, R0
349DF4:  VLDR            S4, =6.2832
349DF8:  VADD.F32        S0, S2, S0
349DFC:  VLDR            S2, =-6.2832
349E00:  VCMPE.F32       S0, S4
349E04:  VMRS            APSR_nzcv, FPSCR
349E08:  VADD.F32        S2, S0, S2
349E0C:  IT GT
349E0E:  VMOVGT.F32      S0, S2
349E12:  LDR             R0, [R4,#0x14]; this
349E14:  CMP             R0, #0
349E16:  BEQ             loc_349EA2
349E18:  VMOV            R1, S0; x
349E1C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
349E20:  MOVS            R5, #0
349E22:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349E24:  MOVS            R0, #0; this
349E26:  MOVS            R5, #0
349E28:  BLX             j__ZN8CRubbish13SetVisibilityEb; CRubbish::SetVisibility(bool)
349E2C:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349E2E:  LDR.W           R0, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x349E36)
349E32:  ADD             R0, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
349E34:  LDR             R0, [R0]; CStreaming::ms_disableStreaming ...
349E36:  STRB            R5, [R0]; CStreaming::ms_disableStreaming
349E38:  MOVS            R5, #0
349E3A:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349E3C:  AND.W           R0, R2, #0xFB
349E40:  STRB            R0, [R1,#(dword_1C+2)]
349E42:  MOVS            R5, #0
349E44:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349E46:  LDR             R0, =(ScriptParams_ptr - 0x349E4E)
349E48:  MOVS            R6, #0
349E4A:  ADD             R0, PC; ScriptParams_ptr
349E4C:  LDR             R0, [R0]; ScriptParams
349E4E:  STRD.W          R5, R5, [R0]
349E52:  STR             R5, [R0,#(dword_81A910 - 0x81A908)]
349E54:  LDR             R0, =(ScriptParams_ptr - 0x349E5C)
349E56:  MOVS            R1, #4; __int16
349E58:  ADD             R0, PC; ScriptParams_ptr
349E5A:  LDR             R0, [R0]; ScriptParams
349E5C:  STR             R5, [R0,#(dword_81A914 - 0x81A908)]
349E5E:  MOV             R0, R4; this
349E60:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
349E64:  MOV             R0, R4
349E66:  MOV             R1, R6
349E68:  B               loc_34992A
349E6A:  MOVS            R0, #0; this
349E6C:  MOVS            R5, #0
349E6E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
349E72:  MOVS            R1, #1
349E74:  STRB.W          R1, [R0,#0x149]
349E78:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349E7A:  CBZ             R0, loc_349EE8
349E7C:  MOVS            R5, #0
349E7E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x349E88); jumptable 003485C8 cases 937,980,986,991,993
349E82:  LDR             R1, [SP,#0xF0+var_3C]
349E84:  ADD             R0, PC; __stack_chk_guard_ptr
349E86:  LDR             R0, [R0]; __stack_chk_guard
349E88:  LDR             R0, [R0]
349E8A:  SUBS            R0, R0, R1
349E8C:  ITTTT EQ
349E8E:  SXTBEQ          R0, R5
349E90:  ADDEQ           SP, SP, #0xB8
349E92:  VPOPEQ          {D8-D11}
349E96:  POPEQ.W         {R8-R10}
349E9A:  IT EQ
349E9C:  POPEQ           {R4-R7,PC}
349E9E:  BLX             __stack_chk_fail
349EA2:  VSTR            S0, [R4,#0x10]
349EA6:  MOVS            R5, #0
349EA8:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349EAA:  ADD.W           R0, R0, #0x628
349EAE:  LDR.W           R1, =(ScriptParams_ptr - 0x349EBA)
349EB2:  MOVS            R5, #0
349EB4:  LDRB            R2, [R0]
349EB6:  ADD             R1, PC; ScriptParams_ptr
349EB8:  AND.W           R3, R2, #0xFB
349EBC:  LDR             R1, [R1]; ScriptParams
349EBE:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
349EC0:  CMP             R1, #0
349EC2:  IT NE
349EC4:  ORRNE.W         R3, R2, #4
349EC8:  STRB            R3, [R0]
349ECA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349ECC:  LDR             R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x349ED2)
349ECE:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
349ED0:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress ...
349ED2:  LDRB            R0, [R0]; CTheScripts::bMiniGameInProgress
349ED4:  CMP             R0, #0
349ED6:  BEQ.W           loc_349C24
349EDA:  LDR             R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x349EE4)
349EDC:  MOVS            R1, #1
349EDE:  MOVS            R5, #0
349EE0:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
349EE2:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
349EE4:  STRB            R1, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
349EE6:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349EE8:  LDR             R0, [R4]
349EEA:  MOVS            R1, #1
349EEC:  LDR             R2, [R0,#0x14]
349EEE:  MOV             R0, R4
349EF0:  BLX             R2
349EF2:  MOV             R0, R4; this
349EF4:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
349EF8:  MOVS            R5, #0
349EFA:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349EFC:  LDR             R0, =(TheText_ptr - 0x349F04)
349EFE:  ADR             R1, aHm949; "HM9_49"
349F00:  ADD             R0, PC; TheText_ptr
349F02:  LDR             R0, [R0]; TheText ; this
349F04:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
349F08:  MOV             R1, R0; CMessages *
349F0A:  MOV             R0, R4; this
349F0C:  BLX             j__ZN15CWidgetHelpText14IsStringQueuedEPt; CWidgetHelpText::IsStringQueued(ushort *)
349F10:  CMP             R0, #0
349F12:  BNE             loc_349E7C
349F14:  LDR             R0, =(TheText_ptr - 0x349F1C)
349F16:  ADR             R1, aHm949x; "HM9_49X"
349F18:  ADD             R0, PC; TheText_ptr
349F1A:  LDR             R0, [R0]; TheText ; this
349F1C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
349F20:  MOV             R1, R0; CMessages *
349F22:  MOV             R0, R4; this
349F24:  BLX             j__ZN15CWidgetHelpText14IsStringQueuedEPt; CWidgetHelpText::IsStringQueued(ushort *)
349F28:  CMP             R0, #0
349F2A:  BEQ.W           loc_349CA8
349F2E:  B               loc_349E7C
349F30:  LDR             R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x349F3A)
349F32:  ADD.W           R0, R0, R0,LSL#1
349F36:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
349F38:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
349F3A:  ADD.W           R1, R1, R0,LSL#2
349F3E:  LDR.W           R2, [R1,#8]!
349F42:  CMP             R2, R8
349F44:  BNE.W           loc_34A0EA
349F48:  LDR             R2, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x349F52)
349F4A:  MOVS            R3, #0
349F4C:  MOVS            R5, #0
349F4E:  ADD             R2, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
349F50:  LDR             R2, [R2]; CTheScripts::BuildingSwapArray ...
349F52:  STR.W           R3, [R2,R0,LSL#2]
349F56:  ADD.W           R0, R2, R0,LSL#2
349F5A:  MOV.W           R2, #0xFFFFFFFF
349F5E:  STR             R2, [R0,#4]
349F60:  STR             R2, [R1]
349F62:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
349F64:  MOV.W           R0, #(elf_hash_bucket+0x8D4); jumptable 00349714 case 2
349F68:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349F6C:  MOV             R1, R6; int
349F6E:  MOVS            R2, #1; unsigned __int8
349F70:  MOV             R4, R0
349F72:  BLX             j__ZN9CQuadBikeC2Eih; CQuadBike::CQuadBike(int,uchar)
349F76:  B               loc_349FFC
349F78:  MOVW            R0, #(elf_hash_bucket+0x930); jumptable 00349714 case 3
349F7C:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349F80:  MOV             R1, R6; int
349F82:  MOVS            R2, #1; unsigned __int8
349F84:  MOV             R4, R0
349F86:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
349F8A:  B               loc_349FFC
349F8C:  MOVW            R0, #(elf_hash_bucket+0x91C); jumptable 00349714 case 4
349F90:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349F94:  MOV             R1, R6; int
349F96:  MOVS            R2, #1; unsigned __int8
349F98:  MOV             R4, R0
349F9A:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
349F9E:  B               loc_349FFC
349FA0:  MOVW            R0, #(elf_hash_bucket+0x8A0); jumptable 00349714 default case, cases 5-8
349FA4:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349FA8:  MOV             R1, R6; int
349FAA:  MOVS            R2, #1; unsigned __int8
349FAC:  MOVS            R3, #1; unsigned __int8
349FAE:  MOV             R4, R0
349FB0:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
349FB4:  B               loc_349FFC
349FB6:  MOVW            R0, #(elf_hash_bucket+0x72C); jumptable 00349714 case 9
349FBA:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349FBE:  MOV             R1, R6; int
349FC0:  MOVS            R2, #1; unsigned __int8
349FC2:  MOV             R4, R0
349FC4:  BLX             j__ZN5CBikeC2Eih_0; CBike::CBike(int,uchar)
349FC8:  B               loc_349FDC
349FCA:  MOVW            R0, #(elf_hash_bucket+0x750); jumptable 00349714 case 10
349FCE:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349FD2:  MOV             R1, R6; int
349FD4:  MOVS            R2, #1; unsigned __int8
349FD6:  MOV             R4, R0
349FD8:  BLX             j__ZN4CBmxC2Eih; CBmx::CBmx(int,uchar)
349FDC:  LDRB.W          R0, [R4,#0x628]
349FE0:  ORR.W           R0, R0, #0x10
349FE4:  STRB.W          R0, [R4,#0x628]
349FE8:  B               loc_349FFC
349FEA:  MOVW            R0, #(elf_hash_bucket+0x90C); jumptable 00349714 case 11
349FEE:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
349FF2:  MOV             R1, R6; int
349FF4:  MOVS            R2, #1; unsigned __int8
349FF6:  MOV             R4, R0
349FF8:  BLX             j__ZN8CTrailerC2Eih; CTrailer::CTrailer(int,uchar)
349FFC:  LDR             R0, =(ScriptParams_ptr - 0x34A004)
349FFE:  LDR             R1, [R4]
34A000:  ADD             R0, PC; ScriptParams_ptr
34A002:  LDR             R0, [R0]; ScriptParams
34A004:  LDR.W           R1, [R1,#0xD8]
34A008:  LDRD.W          R6, R5, [R0]
34A00C:  VLDR            S16, [R0,#8]
34A010:  MOV             R0, R4
34A012:  BLX             R1
34A014:  VMOV            S0, R0
34A018:  STRD.W          R6, R5, [SP,#0xF0+var_B8]
34A01C:  VADD.F32        S0, S16, S0
34A020:  VSTR            S0, [SP,#0xF0+var_B0]
34A024:  LDR             R0, [R4,#0x14]
34A026:  CBZ             R0, loc_34A034
34A028:  STR             R6, [R0,#0x30]
34A02A:  LDR             R0, [R4,#0x14]
34A02C:  STR             R5, [R0,#0x34]
34A02E:  LDR             R0, [R4,#0x14]
34A030:  ADDS            R0, #0x38 ; '8'
34A032:  B               loc_34A03C
34A034:  ADD.W           R0, R4, #0xC
34A038:  STRD.W          R6, R5, [R4,#4]
34A03C:  LDR             R1, =(ScriptParams_ptr - 0x34A046)
34A03E:  VSTR            S0, [R0]
34A042:  ADD             R1, PC; ScriptParams_ptr
34A044:  VLDR            S2, =3.1416
34A048:  LDR             R0, [R4,#0x14]; this
34A04A:  LDR             R1, [R1]; ScriptParams
34A04C:  CMP             R0, #0
34A04E:  VLDR            S0, [R1,#0xC]
34A052:  VMUL.F32        S0, S0, S2
34A056:  VLDR            S2, =180.0
34A05A:  VDIV.F32        S0, S0, S2
34A05E:  BEQ             loc_34A070
34A060:  VMOV            R1, S0; x
34A064:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
34A068:  B               loc_34A074
34A06A:  ALIGN 4
34A06C:  DCFS 50.0
34A070:  VSTR            S0, [R4,#0x10]
34A074:  ADD             R0, SP, #0xF0+var_B8; this
34A076:  MOV             R1, R4; CVector *
34A078:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
34A07C:  LDRB.W          R0, [R4,#0x3A]
34A080:  MOVS            R1, #byte_4; CVehicle *
34A082:  LDR.W           R2, [R4,#0x42C]
34A086:  BFI.W           R0, R1, #3, #0x1D
34A08A:  STRB.W          R0, [R4,#0x3A]
34A08E:  MOV             R0, #0xFDFFFFF7
34A096:  ANDS            R0, R2
34A098:  ORR.W           R0, R0, #0x2000000
34A09C:  STR.W           R0, [R4,#0x42C]
34A0A0:  MOV             R0, R4; this
34A0A2:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
34A0A6:  LDRB.W          R1, [R4,#0x3BE]
34A0AA:  MOVS            R5, #0
34A0AC:  ADDW            R0, R4, #0x42C
34A0B0:  SUBS            R1, #0x39 ; '9'
34A0B2:  UXTB            R1, R1
34A0B4:  CMP             R1, #2
34A0B6:  ITT CS
34A0B8:  MOVCS           R1, #0
34A0BA:  STRBCS.W        R1, [R4,#0x3BE]
34A0BE:  STRB.W          R5, [R4,#0x3BD]
34A0C2:  MOVS            R1, #0
34A0C4:  STRB.W          R5, [R4,#0x3BF]
34A0C8:  MOVT            R1, #0x4110
34A0CC:  STR.W           R1, [R4,#0x3CC]
34A0D0:  MOVS            R1, #9
34A0D2:  STRB.W          R1, [R4,#0x3D4]
34A0D6:  STRH.W          R5, [R4,#0x3BB]
34A0DA:  LDR             R1, [R0]
34A0DC:  BIC.W           R1, R1, #0x10; CEntity *
34A0E0:  STR             R1, [R0]
34A0E2:  MOV             R0, R4; this
34A0E4:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
34A0E8:  B               loc_349E7E; jumptable 003485C8 cases 937,980,986,991,993
34A0EA:  LDR             R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34A0F0)
34A0EC:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
34A0EE:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
34A0F0:  ADD.W           R0, R1, R0,LSL#2
34A0F4:  STR.W           R8, [R0,#4]
34A0F8:  B               loc_349E7C
