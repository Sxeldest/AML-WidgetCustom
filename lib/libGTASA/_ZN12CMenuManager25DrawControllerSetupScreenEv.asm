; =========================================================
; Game Engine Function: _ZN12CMenuManager25DrawControllerSetupScreenEv
; Address            : 0x434570 - 0x434E30
; =========================================================

434570:  PUSH            {R4-R7,LR}
434572:  ADD             R7, SP, #0xC
434574:  PUSH.W          {R8-R11}
434578:  SUB             SP, SP, #4
43457A:  VPUSH           {D8-D10}
43457E:  SUB             SP, SP, #0x100
434580:  MOV             R4, R0
434582:  LDR.W           R0, =(TheText_ptr - 0x43458E)
434586:  LDR.W           R1, =(aFecFir - 0x434590); "FEC_FIR"
43458A:  ADD             R0, PC; TheText_ptr
43458C:  ADD             R1, PC; "FEC_FIR"
43458E:  LDR             R5, [R0]; TheText
434590:  MOV             R0, R5; this
434592:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434596:  LDR.W           R1, =(aFecFia - 0x4345A2); "FEC_FIA"
43459A:  STR             R0, [SP,#0x138+var_E8]
43459C:  MOV             R0, R5; this
43459E:  ADD             R1, PC; "FEC_FIA"
4345A0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4345A4:  LDR.W           R1, =(aFecNwe - 0x4345B0); "FEC_NWE"
4345A8:  STR             R0, [SP,#0x138+var_E4]
4345AA:  MOV             R0, R5; this
4345AC:  ADD             R1, PC; "FEC_NWE"
4345AE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4345B2:  LDR.W           R1, =(aFecPwe - 0x4345BE); "FEC_PWE"
4345B6:  STR             R0, [SP,#0x138+var_E0]
4345B8:  MOV             R0, R5; this
4345BA:  ADD             R1, PC; "FEC_PWE"
4345BC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4345C0:  LDR.W           R2, =(aFecAcc - 0x4345D0); "FEC_ACC"
4345C4:  STR             R0, [SP,#0x138+var_DC]
4345C6:  MOV             R0, R5; this
4345C8:  LDR.W           R1, =(aFecFor - 0x4345D6); "FEC_FOR"
4345CC:  ADD             R2, PC; "FEC_ACC"
4345CE:  LDRB.W          R6, [R4,#0x7B]
4345D2:  ADD             R1, PC; "FEC_FOR"
4345D4:  CMP             R6, #0
4345D6:  IT NE
4345D8:  MOVNE           R1, R2; CKeyGen *
4345DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4345DE:  LDR.W           R2, =(aFecBra - 0x4345EC); "FEC_BRA"
4345E2:  CMP             R6, #0
4345E4:  LDR.W           R1, =(aFecBac - 0x4345F0); "FEC_BAC"
4345E8:  ADD             R2, PC; "FEC_BRA"
4345EA:  STR             R0, [SP,#0x138+var_D8]
4345EC:  ADD             R1, PC; "FEC_BAC"
4345EE:  MOV             R0, R5; this
4345F0:  IT NE
4345F2:  MOVNE           R1, R2; CKeyGen *
4345F4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4345F8:  LDR.W           R2, =(aFecTsk - 0x434606); "FEC_TSK"
4345FC:  CMP             R6, #0
4345FE:  LDR.W           R1, =(aFecCoy - 0x43460A); "FEC_COY"
434602:  ADD             R2, PC; "FEC_TSK"
434604:  STR             R0, [SP,#0x138+var_D4]
434606:  ADD             R1, PC; "FEC_COY"
434608:  MOV             R0, R5; this
43460A:  IT NE
43460C:  MOVNE           R1, R2; CKeyGen *
43460E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434612:  LDR.W           R1, =(aFecLef - 0x43461E); "FEC_LEF"
434616:  STR             R0, [SP,#0x138+var_C0]
434618:  MOV             R0, R5; this
43461A:  ADD             R1, PC; "FEC_LEF"
43461C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434620:  LDR.W           R1, =(aFecRig - 0x43462C); "FEC_RIG"
434624:  STR             R0, [SP,#0x138+var_D0]
434626:  MOV             R0, R5; this
434628:  ADD             R1, PC; "FEC_RIG"
43462A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43462E:  LDR.W           R1, =(aFecPlu - 0x43463A); "FEC_PLU"
434632:  STR             R0, [SP,#0x138+var_CC]
434634:  MOV             R0, R5; this
434636:  ADD             R1, PC; "FEC_PLU"
434638:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43463C:  ADR.W           R1, aFecPld; "FEC_PLD"
434640:  STR             R0, [SP,#0x138+var_C8]
434642:  MOV             R0, R5; this
434644:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434648:  ADR.W           R1, aFecCon; "FEC_CON"
43464C:  STR             R0, [SP,#0x138+var_C4]
43464E:  MOV             R0, R5; this
434650:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434654:  ADR.W           R1, aFecGpf; "FEC_GPF"
434658:  STR             R0, [SP,#0x138+var_BC]
43465A:  MOV             R0, R5; this
43465C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434660:  ADR.W           R1, aFecGpb; "FEC_GPB"
434664:  STR             R0, [SP,#0x138+var_B8]
434666:  MOV             R0, R5; this
434668:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43466C:  ADR.W           R1, aFecZin; "FEC_ZIN"
434670:  STR             R0, [SP,#0x138+var_B4]
434672:  MOV             R0, R5; this
434674:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434678:  ADR.W           R1, aFecZot; "FEC_ZOT"
43467C:  STR             R0, [SP,#0x138+var_B0]
43467E:  MOV             R0, R5; this
434680:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434684:  ADR.W           R1, aFecEex; "FEC_EEX"
434688:  STR             R0, [SP,#0x138+var_AC]
43468A:  MOV             R0, R5; this
43468C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434690:  ADR.W           R1, aFecRsc; "FEC_RSC"
434694:  STR             R0, [SP,#0x138+var_A8]
434696:  MOV             R0, R5; this
434698:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43469C:  ADR.W           R1, aFecRsp; "FEC_RSP"
4346A0:  STR             R0, [SP,#0x138+var_A4]
4346A2:  MOV             R0, R5; this
4346A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346A8:  ADR.W           R1, aFecRts; "FEC_RTS"
4346AC:  STR             R0, [SP,#0x138+var_A0]
4346AE:  MOV             R0, R5; this
4346B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346B4:  ADR.W           R1, aFecHrn; "FEC_HRN"
4346B8:  STR             R0, [SP,#0x138+var_9C]
4346BA:  MOV             R0, R5; this
4346BC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346C0:  ADR.W           R1, aFecSub; "FEC_SUB"
4346C4:  STR             R0, [SP,#0x138+var_98]
4346C6:  MOV             R0, R5; this
4346C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346CC:  ADR.W           R1, aFecCmr; "FEC_CMR"
4346D0:  STR             R0, [SP,#0x138+var_94]
4346D2:  MOV             R0, R5; this
4346D4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346D8:  ADR.W           R1, aFecJmp; "FEC_JMP"
4346DC:  STR             R0, [SP,#0x138+var_90]
4346DE:  MOV             R0, R5; this
4346E0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346E4:  ADR.W           R1, aFecSpn; "FEC_SPN"
4346E8:  STR             R0, [SP,#0x138+var_8C]
4346EA:  MOV             R0, R5; this
4346EC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346F0:  ADR.W           R1, aFecHnd; "FEC_HND"
4346F4:  STR             R0, [SP,#0x138+var_88]
4346F6:  MOV             R0, R5; this
4346F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4346FC:  ADR.W           R1, aFecTar; "FEC_TAR"
434700:  STR             R0, [SP,#0x138+var_84]
434702:  MOV             R0, R5; this
434704:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434708:  ADR.W           R1, aFecCro; "FEC_CRO"
43470C:  STR             R0, [SP,#0x138+var_80]
43470E:  MOV             R0, R5; this
434710:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434714:  ADR.W           R1, aFecAns; "FEC_ANS"
434718:  STR             R0, [SP,#0x138+var_7C]
43471A:  MOV             R0, R5; this
43471C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434720:  ADR.W           R1, aFecPdw; "FEC_PDW"
434724:  STR             R0, [SP,#0x138+var_78]
434726:  MOV             R0, R5; this
434728:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43472C:  ADR.W           R1, aFecTfl; "FEC_TFL"
434730:  STR             R0, [SP,#0x138+var_74]
434732:  MOV             R0, R5; this
434734:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434738:  ADR.W           R1, aFecTfr; "FEC_TFR"
43473C:  STR             R0, [SP,#0x138+var_70]
43473E:  MOV             R0, R5; this
434740:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434744:  ADR.W           R1, aFecTfu; "FEC_TFU"
434748:  STR             R0, [SP,#0x138+var_6C]
43474A:  MOV             R0, R5; this
43474C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434750:  ADR.W           R1, aFecTfd; "FEC_TFD"
434754:  STR             R0, [SP,#0x138+var_68]
434756:  MOV             R0, R5; this
434758:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43475C:  ADR.W           R1, aFecLba; "FEC_LBA"
434760:  STR             R0, [SP,#0x138+var_64]
434762:  MOV             R0, R5; this
434764:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434768:  ADR.W           R1, aFecVml; "FEC_VML"
43476C:  STR             R0, [SP,#0x138+var_60]
43476E:  MOV             R0, R5; this
434770:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434774:  ADR.W           R1, aFecLol; "FEC_LOL"
434778:  STR             R0, [SP,#0x138+var_5C]
43477A:  MOV             R0, R5; this
43477C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434780:  ADR.W           R1, aFecLor; "FEC_LOR"
434784:  STR             R0, [SP,#0x138+var_58]
434786:  MOV             R0, R5; this
434788:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43478C:  ADR.W           R1, aFecLud; "FEC_LUD"
434790:  STR             R0, [SP,#0x138+var_54]
434792:  MOV             R0, R5; this
434794:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434798:  ADR.W           R1, aFecLdu; "FEC_LDU"
43479C:  STR             R0, [SP,#0x138+var_4C]
43479E:  MOV             R0, R5; this
4347A0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4347A4:  ADR.W           R1, aFecCen; "FEC_CEN"
4347A8:  STR             R0, [SP,#0x138+var_50]
4347AA:  MOV             R0, R5; this
4347AC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4347B0:  STR             R0, [SP,#0x138+var_40]
4347B2:  MOVS            R0, #0
4347B4:  STR             R0, [SP,#0x138+var_3C]
4347B6:  MOVS            R0, #0; this
4347B8:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
4347BC:  MOVW            R1, #0x999A
4347C0:  MOV             R0, R4; this
4347C2:  MOVT            R1, #0x3FD9; float
4347C6:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4347CA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
4347CE:  MOVS            R0, #0; this
4347D0:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
4347D4:  LDR.W           R0, =(HudColour_ptr - 0x4347E0)
4347D8:  ADD             R5, SP, #0x138+var_EC
4347DA:  MOVS            R2, #3
4347DC:  ADD             R0, PC; HudColour_ptr
4347DE:  LDR             R1, [R0]; HudColour ; unsigned __int8
4347E0:  MOV             R0, R5; this
4347E2:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
4347E6:  MOV             R0, R5
4347E8:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
4347EC:  MOVS            R0, #(stderr+2); this
4347EE:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
4347F2:  LDR.W           R0, =(RsGlobal_ptr - 0x434800)
4347F6:  MOVS            R1, #0x42400000; float
4347FC:  ADD             R0, PC; RsGlobal_ptr
4347FE:  LDR             R0, [R0]; RsGlobal
434800:  VLDR            S0, [R0,#4]
434804:  MOV             R0, R4; this
434806:  VCVT.F32.S32    S16, S0
43480A:  LDRB.W          R6, [R4,#0x94]
43480E:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434812:  VMOV            S0, R0
434816:  MOVS            R1, #0x41300000; float
43481C:  MOV             R0, R4; this
43481E:  VSUB.F32        S16, S16, S0
434822:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434826:  MOV             R5, R0
434828:  CBZ             R6, loc_434838
43482A:  LDR.W           R0, =(TheText_ptr - 0x434836)
43482E:  LDR.W           R1, =(aFetCcn_0 - 0x434838); "FET_CCN"
434832:  ADD             R0, PC; TheText_ptr
434834:  ADD             R1, PC; "FET_CCN"
434836:  B               loc_434844
434838:  LDR.W           R0, =(TheText_ptr - 0x434844)
43483C:  LDR.W           R1, =(aFetScn_0 - 0x434846); "FET_SCN"
434840:  ADD             R0, PC; TheText_ptr
434842:  ADD             R1, PC; "FET_SCN"
434844:  LDR             R0, [R0]; TheText ; this
434846:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43484A:  MOV             R2, R0; CFont *
43484C:  VMOV            R0, S16; this
434850:  MOV             R1, R5; float
434852:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
434856:  MOVS            R0, #(stderr+1); this
434858:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
43485C:  LDRB.W          R0, [R4,#0x7B]
434860:  CMP             R0, #1
434862:  BEQ             loc_4348B0
434864:  CMP             R0, #0
434866:  BNE             loc_4348EC
434868:  MOVS            R1, #0
43486A:  MOV             R0, R4; this
43486C:  MOVT            R1, #0x4240; float
434870:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434874:  MOVS            R1, #0
434876:  MOV             R5, R0
434878:  MOVT            R1, #0x4130; float
43487C:  MOV             R0, R4; this
43487E:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434882:  MOV             R6, R0
434884:  LDR.W           R0, =(TheText_ptr - 0x434890)
434888:  LDR.W           R1, =(aFetCft - 0x434892); "FET_CFT"
43488C:  ADD             R0, PC; TheText_ptr
43488E:  ADD             R1, PC; "FET_CFT"
434890:  LDR             R0, [R0]; TheText ; this
434892:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434896:  MOV             R2, R0; CFont *
434898:  MOV             R0, R5; this
43489A:  MOV             R1, R6; float
43489C:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4348A0:  LDRB.W          R0, [R4,#0x94]
4348A4:  MOVS            R1, #0xB
4348A6:  CMP             R0, #0
4348A8:  IT EQ
4348AA:  MOVEQ           R1, #0xF
4348AC:  STR             R1, [SP,#0x138+var_118]
4348AE:  B               loc_4348F0
4348B0:  MOVS            R1, #0
4348B2:  MOV             R0, R4; this
4348B4:  MOVT            R1, #0x4240; float
4348B8:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4348BC:  MOVS            R1, #0
4348BE:  MOV             R5, R0
4348C0:  MOVT            R1, #0x4130; float
4348C4:  MOV             R0, R4; this
4348C6:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4348CA:  MOV             R6, R0
4348CC:  LDR.W           R0, =(TheText_ptr - 0x4348D8)
4348D0:  LDR.W           R1, =(aFetCcr - 0x4348DA); "FET_CCR"
4348D4:  ADD             R0, PC; TheText_ptr
4348D6:  ADD             R1, PC; "FET_CCR"
4348D8:  LDR             R0, [R0]; TheText ; this
4348DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4348DE:  MOV             R2, R0; CFont *
4348E0:  MOV             R0, R5; this
4348E2:  MOV             R1, R6; float
4348E4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4348E8:  MOVS            R0, #0xD
4348EA:  B               loc_4348EE
4348EC:  MOVS            R0, #0
4348EE:  STR             R0, [SP,#0x138+var_118]
4348F0:  MOVW            R9, #0
4348F4:  MOV             R0, R4; this
4348F6:  MOVT            R9, #0x41A0
4348FA:  MOV             R1, R9; float
4348FC:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434900:  MOVW            R8, #0
434904:  MOV             R10, R0
434906:  MOVT            R8, #0x4248
43490A:  MOV             R0, R4; this
43490C:  MOV             R1, R8; float
43490E:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434912:  MOV             R5, R0
434914:  LDR.W           R0, =(RsGlobal_ptr - 0x43491E)
434918:  MOV             R1, R9; float
43491A:  ADD             R0, PC; RsGlobal_ptr
43491C:  LDR             R6, [R0]; RsGlobal
43491E:  MOV             R0, R4; this
434920:  VLDR            S0, [R6,#4]
434924:  VCVT.F32.S32    S16, S0
434928:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43492C:  VLDR            S0, [R6,#8]
434930:  VMOV            S20, R0
434934:  MOV             R0, R4; this
434936:  MOV             R1, R8; float
434938:  VCVT.F32.S32    S18, S0
43493C:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434940:  VMOV            S0, R0
434944:  STR.W           R10, [SP,#0x138+var_FC]
434948:  VSUB.F32        S2, S16, S20
43494C:  STR             R5, [SP,#0x138+var_F0]
43494E:  VSUB.F32        S0, S18, S0
434952:  ADD             R5, SP, #0x138+var_100
434954:  MOVS            R0, #0x64 ; 'd'
434956:  MOVS            R1, #0x31 ; '1'; unsigned __int8
434958:  STR             R0, [SP,#0x138+var_138]; unsigned __int8
43495A:  MOV             R0, R5; this
43495C:  MOVS            R2, #0x65 ; 'e'; unsigned __int8
43495E:  MOVS            R3, #0x94; unsigned __int8
434960:  VSTR            S2, [SP,#0x138+var_F4]
434964:  VSTR            S0, [SP,#0x138+var_F8]
434968:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43496C:  ADD             R0, SP, #0x138+var_FC
43496E:  MOV             R1, R5
434970:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
434974:  LDRB.W          R0, [R4,#0x7B]
434978:  CBZ             R0, loc_434980
43497A:  MOVS            R0, #0x19
43497C:  STR             R0, [SP,#0x138+var_114]
43497E:  B               loc_43498E
434980:  LDRB.W          R0, [R4,#0x94]
434984:  MOVS            R1, #0x1C
434986:  CMP             R0, #0
434988:  IT EQ
43498A:  MOVEQ           R1, #0x16
43498C:  STR             R1, [SP,#0x138+var_114]
43498E:  MOVW            R0, #0x1ACC
434992:  LDR.W           R9, [SP,#0x138+var_118]
434996:  ADD             R0, R4
434998:  STR             R0, [SP,#0x138+var_130]
43499A:  MOVW            R0, #0x1AC4
43499E:  MOV.W           R8, #0
4349A2:  ADD             R0, R4
4349A4:  STR             R0, [SP,#0x138+var_120]
4349A6:  MOVW            R0, #0x1ABC
4349AA:  MOV.W           R11, #0
4349AE:  ADD             R0, R4
4349B0:  STR             R0, [SP,#0x138+var_124]
4349B2:  MOVW            R0, #0x1AC8
4349B6:  ADD             R0, R4
4349B8:  STR             R0, [SP,#0x138+var_128]
4349BA:  MOVW            R0, #0x1ACD
4349BE:  ADD             R0, R4
4349C0:  STR             R0, [SP,#0x138+var_110]
4349C2:  ADD.W           R0, R4, #0x24 ; '$'
4349C6:  STR             R0, [SP,#0x138+var_134]
4349C8:  ADD.W           R0, R4, #0x1AC0
4349CC:  STR             R0, [SP,#0x138+var_12C]
4349CE:  ADD.W           R0, R9, #0x45 ; 'E'
4349D2:  STR             R0, [SP,#0x138+var_11C]
4349D4:  LDR.W           R0, =(RsGlobal_ptr - 0x4349DC)
4349D8:  ADD             R0, PC; RsGlobal_ptr
4349DA:  LDR.W           R10, [R0]; RsGlobal
4349DE:  LDR             R0, [SP,#0x138+var_110]
4349E0:  LDRB            R0, [R0]
4349E2:  CMP             R0, #0
4349E4:  BNE.W           loc_434AF0
4349E8:  MOVS            R1, #0
4349EA:  MOV             R0, R4; this
4349EC:  MOVT            R1, #0x41A0; float
4349F0:  LDR.W           R5, [R4,#0x80]
4349F4:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4349F8:  VMOV            S0, R5
4349FC:  VMOV            S2, R0
434A00:  VCVT.F32.S32    S0, S0
434A04:  VCMPE.F32       S2, S0
434A08:  VMRS            APSR_nzcv, FPSCR
434A0C:  BGE             loc_434AF0
434A0E:  MOVS            R1, #0
434A10:  MOV             R0, R4; this
434A12:  MOVT            R1, #0x4416; float
434A16:  LDR.W           R5, [R4,#0x80]
434A1A:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434A1E:  VMOV            S0, R5
434A22:  VMOV            S2, R0
434A26:  VCVT.F32.S32    S0, S0
434A2A:  VCMPE.F32       S2, S0
434A2E:  VMRS            APSR_nzcv, FPSCR
434A32:  BLE             loc_434AF0
434A34:  UXTB.W          R5, R11
434A38:  MOVS            R0, #0x45 ; 'E'
434A3A:  SMLABB.W        R0, R9, R5, R0
434A3E:  VMOV            S0, R0
434A42:  MOV             R0, R4; this
434A44:  VCVT.F32.S32    S0, S0
434A48:  LDR.W           R6, [R4,#0x84]
434A4C:  VMOV            R1, S0; float
434A50:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434A54:  VMOV            S0, R6
434A58:  VMOV            S2, R0
434A5C:  VCVT.F32.S32    S0, S0
434A60:  VCMPE.F32       S2, S0
434A64:  VMRS            APSR_nzcv, FPSCR
434A68:  BGE             loc_434AF0
434A6A:  SMULBB.W        R0, R9, R5
434A6E:  LDR             R1, [SP,#0x138+var_11C]
434A70:  ADD             R0, R1
434A72:  VMOV            S0, R0
434A76:  MOV             R0, R4; this
434A78:  VCVT.F32.S32    S0, S0
434A7C:  LDR.W           R5, [R4,#0x84]
434A80:  VMOV            R1, S0; float
434A84:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434A88:  VMOV            S0, R5
434A8C:  VMOV            S2, R0
434A90:  VCVT.F32.S32    S0, S0
434A94:  VCMPE.F32       S2, S0
434A98:  VMRS            APSR_nzcv, FPSCR
434A9C:  BLE             loc_434AF0
434A9E:  LDR             R0, [SP,#0x138+var_128]
434AA0:  STR.W           R8, [R0]
434AA4:  LDR             R1, [SP,#0x138+var_124]
434AA6:  LDR.W           R0, [R4,#0x80]
434AAA:  LDR             R1, [R1]
434AAC:  CMP             R1, R0
434AAE:  BNE             loc_434AC2
434AB0:  LDR             R1, [SP,#0x138+var_12C]
434AB2:  LDR.W           R0, [R4,#0x84]
434AB6:  LDR             R1, [R1]
434AB8:  CMP             R1, R0
434ABA:  IT NE
434ABC:  STRNE.W         R8, [R4,#0x54]
434AC0:  B               loc_434AC6
434AC2:  STR.W           R8, [R4,#0x54]
434AC6:  LDR             R1, [SP,#0x138+var_120]
434AC8:  LDR             R0, [R1]
434ACA:  CMP             R0, #5
434ACC:  BNE             loc_434AEC
434ACE:  LDR             R0, [R4,#0x54]
434AD0:  CMP             R0, R8
434AD2:  BNE             loc_434AF0
434AD4:  LDR             R0, [SP,#0x138+var_120]
434AD6:  MOVS            R1, #0x10
434AD8:  STR             R1, [R0]
434ADA:  MOVS            R1, #1
434ADC:  LDR             R0, [SP,#0x138+var_110]
434ADE:  STRB            R1, [R0]
434AE0:  LDR             R0, [SP,#0x138+var_130]
434AE2:  STRB            R1, [R0]
434AE4:  LDR             R0, [SP,#0x138+var_134]
434AE6:  STR.W           R0, [R4,#0xB8]
434AEA:  B               loc_434AF0
434AEC:  MOVS            R0, #0x10
434AEE:  STR             R0, [R1]
434AF0:  LDR             R0, [R4,#0x54]
434AF2:  UXTB.W          R5, R11
434AF6:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
434AF8:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
434AFA:  CMP             R0, R5
434AFC:  MOV.W           R0, #0xFF
434B00:  STR             R0, [SP,#0x138+var_138]; unsigned __int8
434B02:  ITE EQ
434B04:  ADDEQ.W         R0, SP, #0x138+var_108
434B08:  ADDNE.W         R0, SP, #0x138+var_104; this
434B0C:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
434B0E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
434B12:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
434B16:  MOVW            R1, #0x999A
434B1A:  MOV             R0, R4; this
434B1C:  MOVT            R1, #0x3F19; float
434B20:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434B24:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
434B28:  MOVS            R0, #(stderr+2); this
434B2A:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
434B2E:  MOVS            R1, #0
434B30:  MOV             R0, R4; this
434B32:  MOVT            R1, #0x42C8; float
434B36:  LDR.W           R6, [R10,#(dword_9FC900 - 0x9FC8FC)]
434B3A:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434B3E:  VMOV            S0, R6
434B42:  VMOV            S2, R0
434B46:  VCVT.F32.S32    S0, S0
434B4A:  VADD.F32        S0, S2, S0
434B4E:  VMOV            R0, S0; this
434B52:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
434B56:  LDRB.W          R0, [R4,#0x7B]
434B5A:  CMP             R0, #1
434B5C:  BEQ             loc_434BA0
434B5E:  CBNZ            R0, loc_434BDE
434B60:  MOVS            R0, #0x45 ; 'E'
434B62:  MOVS            R1, #0
434B64:  SMLABB.W        R0, R9, R5, R0
434B68:  MOVT            R1, #0x4220; float
434B6C:  VMOV            S0, R0
434B70:  MOV             R0, R4; this
434B72:  VCVT.F32.S32    S16, S0
434B76:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434B7A:  VMOV            R1, S16; float
434B7E:  MOV             R9, R0
434B80:  MOV             R0, R4; this
434B82:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434B86:  MOV             R1, R0
434B88:  LDR.W           R0, =(unk_618A9C - 0x434B92)
434B8C:  ADD             R2, SP, #0x138+var_E8
434B8E:  ADD             R0, PC; unk_618A9C
434B90:  LDR.W           R0, [R0,R8,LSL#2]
434B94:  LDR.W           R2, [R2,R0,LSL#2]
434B98:  MOV             R0, R9
434B9A:  LDR.W           R9, [SP,#0x138+var_118]
434B9E:  B               loc_434BDA
434BA0:  MOVS            R0, #0x45 ; 'E'
434BA2:  MOVS            R1, #0
434BA4:  SMLABB.W        R0, R9, R5, R0
434BA8:  MOVT            R1, #0x4220; float
434BAC:  VMOV            S0, R0
434BB0:  MOV             R0, R4; this
434BB2:  VCVT.F32.S32    S16, S0
434BB6:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434BBA:  VMOV            R1, S16; float
434BBE:  MOV             R5, R0
434BC0:  MOV             R0, R4; this
434BC2:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434BC6:  MOV             R1, R0; float
434BC8:  LDR.W           R0, =(unk_618B0C - 0x434BD2)
434BCC:  ADD             R2, SP, #0x138+var_E8
434BCE:  ADD             R0, PC; unk_618B0C
434BD0:  LDR.W           R0, [R0,R8,LSL#2]
434BD4:  LDR.W           R2, [R2,R0,LSL#2]; CFont *
434BD8:  MOV             R0, R5; this
434BDA:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
434BDE:  ADD.W           R11, R11, #1
434BE2:  LDR             R0, [SP,#0x138+var_114]
434BE4:  UXTB.W          R8, R11
434BE8:  CMP             R0, R8
434BEA:  BHI.W           loc_4349DE
434BEE:  MOV             R0, R4; this
434BF0:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
434BF2:  MOVS            R2, #0; bool
434BF4:  BLX             j__ZN12CMenuManager19DrawControllerBoundEtb; CMenuManager::DrawControllerBound(ushort,bool)
434BF8:  LDR             R0, [SP,#0x138+var_110]
434BFA:  LDRB            R0, [R0]
434BFC:  CMP             R0, #0
434BFE:  BNE.W           loc_434DA4
434C02:  MOV             R0, R4; this
434C04:  MOV.W           R1, #0x3F800000; float
434C08:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434C0C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
434C10:  MOVS            R1, #0
434C12:  MOV             R0, R4; this
434C14:  MOVT            R1, #0x420C; float
434C18:  LDR.W           R5, [R4,#0x80]
434C1C:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434C20:  LDR             R2, =(TheText_ptr - 0x434C2C)
434C22:  VMOV            S16, R0
434C26:  LDR             R1, =(aFedsTb_0 - 0x434C2E); "FEDS_TB"
434C28:  ADD             R2, PC; TheText_ptr
434C2A:  ADD             R1, PC; "FEDS_TB"
434C2C:  LDR             R2, [R2]; TheText
434C2E:  MOV             R0, R2; this
434C30:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434C34:  MOVS            R1, #(stderr+1); unsigned __int16 *
434C36:  MOVS            R2, #0; unsigned __int8
434C38:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
434C3C:  MOV             R1, R0; float
434C3E:  MOV             R0, R4; this
434C40:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434C44:  VMOV            S0, R0
434C48:  VMOV            S2, R5
434C4C:  VADD.F32        S0, S16, S0
434C50:  VCVT.F32.S32    S2, S2
434C54:  VCMPE.F32       S0, S2
434C58:  VMRS            APSR_nzcv, FPSCR
434C5C:  BLE             loc_434CF0
434C5E:  MOVS            R1, #0
434C60:  MOV             R0, R4; this
434C62:  MOVT            R1, #0x4170; float
434C66:  LDR.W           R5, [R4,#0x80]
434C6A:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434C6E:  VMOV            S0, R5
434C72:  VMOV            S2, R0
434C76:  VCVT.F32.S32    S0, S0
434C7A:  VCMPE.F32       S2, S0
434C7E:  VMRS            APSR_nzcv, FPSCR
434C82:  BGE             loc_434CF0
434C84:  LDR             R0, =(RsGlobal_ptr - 0x434C94)
434C86:  MOVS            R1, #0
434C88:  VLDR            S2, [R4,#0x84]
434C8C:  MOVT            R1, #0x4204; float
434C90:  ADD             R0, PC; RsGlobal_ptr
434C92:  LDR             R0, [R0]; RsGlobal
434C94:  VLDR            S0, [R0,#8]
434C98:  MOV             R0, R4; this
434C9A:  VCVT.F32.S32    S16, S0
434C9E:  VCVT.F32.S32    S18, S2
434CA2:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434CA6:  VMOV            S0, R0
434CAA:  VSUB.F32        S0, S16, S0
434CAE:  VCMPE.F32       S0, S18
434CB2:  VMRS            APSR_nzcv, FPSCR
434CB6:  BGE             loc_434CF0
434CB8:  LDR             R0, =(RsGlobal_ptr - 0x434CC8)
434CBA:  MOVS            R1, #0
434CBC:  VLDR            S2, [R4,#0x84]
434CC0:  MOVT            R1, #0x4120; float
434CC4:  ADD             R0, PC; RsGlobal_ptr
434CC6:  LDR             R0, [R0]; RsGlobal
434CC8:  VLDR            S0, [R0,#8]
434CCC:  MOV             R0, R4; this
434CCE:  VCVT.F32.S32    S16, S0
434CD2:  VCVT.F32.S32    S18, S2
434CD6:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434CDA:  VMOV            S0, R0
434CDE:  VSUB.F32        S0, S16, S0
434CE2:  VCMPE.F32       S0, S18
434CE6:  VMRS            APSR_nzcv, FPSCR
434CEA:  BLE             loc_434CF0
434CEC:  MOVS            R0, #3
434CEE:  B               loc_434DA0
434CF0:  MOVS            R1, #0
434CF2:  MOV             R0, R4; this
434CF4:  MOVT            R1, #0x41A0; float
434CF8:  LDR.W           R5, [R4,#0x80]
434CFC:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434D00:  VMOV            S0, R5
434D04:  VMOV            S2, R0
434D08:  VCVT.F32.S32    S0, S0
434D0C:  VCMPE.F32       S2, S0
434D10:  VMRS            APSR_nzcv, FPSCR
434D14:  BGE             loc_434D9E
434D16:  MOVS            R1, #0
434D18:  MOV             R0, R4; this
434D1A:  MOVT            R1, #0x4416; float
434D1E:  LDR.W           R5, [R4,#0x80]
434D22:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434D26:  VMOV            S0, R5
434D2A:  VMOV            S2, R0
434D2E:  VCVT.F32.S32    S0, S0
434D32:  VCMPE.F32       S2, S0
434D36:  VMRS            APSR_nzcv, FPSCR
434D3A:  BLE             loc_434D9E
434D3C:  MOVS            R1, #0
434D3E:  MOV             R0, R4; this
434D40:  MOVT            R1, #0x4240; float
434D44:  LDR.W           R5, [R4,#0x84]
434D48:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434D4C:  VMOV            S0, R5
434D50:  VMOV            S2, R0
434D54:  VCVT.F32.S32    S0, S0
434D58:  VCMPE.F32       S2, S0
434D5C:  VMRS            APSR_nzcv, FPSCR
434D60:  BGE             loc_434D9E
434D62:  LDR             R0, =(RsGlobal_ptr - 0x434D72)
434D64:  MOVS            R1, #0
434D66:  VLDR            S2, [R4,#0x84]
434D6A:  MOVT            R1, #0x4204; float
434D6E:  ADD             R0, PC; RsGlobal_ptr
434D70:  LDR             R0, [R0]; RsGlobal
434D72:  VLDR            S0, [R0,#8]
434D76:  MOV             R0, R4; this
434D78:  VCVT.F32.S32    S16, S0
434D7C:  VCVT.F32.S32    S18, S2
434D80:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434D84:  VMOV            S0, R0
434D88:  LDR             R1, [SP,#0x138+var_120]
434D8A:  VSUB.F32        S0, S16, S0
434D8E:  VCMPE.F32       S0, S18
434D92:  VMRS            APSR_nzcv, FPSCR
434D96:  ITE GT
434D98:  MOVGT           R0, #4
434D9A:  MOVLE           R0, #0x10
434D9C:  B               loc_434DA2
434D9E:  MOVS            R0, #0x10
434DA0:  LDR             R1, [SP,#0x138+var_120]; unsigned __int8
434DA2:  STR             R0, [R1]
434DA4:  MOVS            R0, #(stderr+2); this
434DA6:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
434DAA:  MOV             R0, R4; this
434DAC:  MOV.W           R1, #0x3F800000; float
434DB0:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434DB4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
434DB8:  MOVS            R0, #(stderr+1); this
434DBA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
434DBE:  MOVS            R0, #0; this
434DC0:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
434DC4:  MOVS            R0, #0xFF
434DC6:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
434DC8:  STR             R0, [SP,#0x138+var_138]; unsigned __int8
434DCA:  ADD             R0, SP, #0x138+var_10C; this
434DCC:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
434DCE:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
434DD0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
434DD4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
434DD8:  MOVS            R1, #0
434DDA:  MOV             R0, R4; this
434DDC:  MOVT            R1, #0x4204; float
434DE0:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434DE4:  MOV             R5, R0
434DE6:  LDR             R0, =(RsGlobal_ptr - 0x434DEE)
434DE8:  MOVS            R1, #0
434DEA:  ADD             R0, PC; RsGlobal_ptr
434DEC:  MOVT            R1, #0x4218; float
434DF0:  LDR             R0, [R0]; RsGlobal
434DF2:  VLDR            S0, [R0,#8]
434DF6:  MOV             R0, R4; this
434DF8:  VCVT.F32.S32    S16, S0
434DFC:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434E00:  VMOV            S0, R0
434E04:  LDR             R0, =(TheText_ptr - 0x434E0C)
434E06:  LDR             R1, =(aFedsTb_0 - 0x434E12); "FEDS_TB"
434E08:  ADD             R0, PC; TheText_ptr
434E0A:  VSUB.F32        S16, S16, S0
434E0E:  ADD             R1, PC; "FEDS_TB"
434E10:  LDR             R0, [R0]; TheText ; this
434E12:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434E16:  VMOV            R1, S16; float
434E1A:  MOV             R2, R0; CFont *
434E1C:  MOV             R0, R5; this
434E1E:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
434E22:  ADD             SP, SP, #0x100
434E24:  VPOP            {D8-D10}
434E28:  ADD             SP, SP, #4
434E2A:  POP.W           {R8-R11}
434E2E:  POP             {R4-R7,PC}
