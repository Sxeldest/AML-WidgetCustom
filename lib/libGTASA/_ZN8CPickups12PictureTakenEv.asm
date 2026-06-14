; =========================================================
; Game Engine Function: _ZN8CPickups12PictureTakenEv
; Address            : 0x321680 - 0x3218C4
; =========================================================

321680:  PUSH            {R4-R7,LR}
321682:  ADD             R7, SP, #0xC
321684:  PUSH.W          {R8-R11}
321688:  SUB             SP, SP, #4
32168A:  VPUSH           {D8-D14}
32168E:  SUB             SP, SP, #0x10
321690:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3216A2)
321692:  VMOV.F32        S18, #0.125
321696:  VMOV.F32        S24, #20.0
32169A:  VLDR            S16, =1000000.0
32169E:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3216A0:  VMOV.I32        D10, #0x3E000000
3216A4:  VLDR            S22, =90.0
3216A8:  ADD.W           R9, SP, #0x68+var_64
3216AC:  LDR             R0, [R0]; CPickups::aPickUps ...
3216AE:  MOV.W           R11, #0xFFFFFFFF
3216B2:  MOVS            R6, #0
3216B4:  MOV             R8, SP
3216B6:  ADD.W           R5, R0, #0x10
3216BA:  LDR             R0, =(TheCamera_ptr - 0x3216C0)
3216BC:  ADD             R0, PC; TheCamera_ptr
3216BE:  LDR             R4, [R0]; TheCamera
3216C0:  LDR             R0, =(TheCamera_ptr - 0x3216C6)
3216C2:  ADD             R0, PC; TheCamera_ptr
3216C4:  LDR.W           R10, [R0]; TheCamera
3216C8:  LDRB            R0, [R5,#0xC]
3216CA:  CMP             R0, #0x14
3216CC:  BNE             loc_3217A4
3216CE:  LDRSH.W         R1, [R5]
3216D2:  LDR.W           R0, [R5,#2]
3216D6:  STR             R0, [SP,#0x68+var_68]; __int16
3216D8:  VMOV            S0, R1
3216DC:  VCVT.F32.S32    S0, S0
3216E0:  VLD1.32         {D16[0]}, [R8@32]
3216E4:  VMOVL.S16       Q8, D16
3216E8:  LDR             R0, [R4,#(dword_951FBC - 0x951FA8)]
3216EA:  VCVT.F32.S32    D16, D16
3216EE:  ADD.W           R1, R0, #0x30 ; '0'
3216F2:  VMUL.F32        S0, S0, S18
3216F6:  CMP             R0, #0
3216F8:  IT EQ
3216FA:  ADDEQ           R1, R4, #4
3216FC:  MOV             R0, R4; this
3216FE:  VLDR            S2, [R1]
321702:  VMUL.F32        D16, D16, D10
321706:  VLDR            D17, [R1,#4]
32170A:  VSUB.F32        S0, S0, S2
32170E:  VSUB.F32        D16, D16, D17
321712:  VMUL.F32        D13, D16, D16
321716:  VMUL.F32        S0, S0, S0
32171A:  VADD.F32        S28, S0, S26
32171E:  BLX             j__ZN7CCamera10FindCamFOVEv; CCamera::FindCamFOV(void)
321722:  VMOV            S0, R0
321726:  VADD.F32        S2, S28, S27
32172A:  VDIV.F32        S0, S22, S0
32172E:  VSQRT.F32       S26, S2
321732:  VMUL.F32        S0, S0, S24
321736:  VCMPE.F32       S26, S0
32173A:  VMRS            APSR_nzcv, FPSCR
32173E:  BGE             loc_3217A4
321740:  LDRSH.W         R0, [R5]
321744:  LDRSH.W         R1, [R5,#2]
321748:  LDRSH.W         R2, [R5,#4]
32174C:  VMOV            S2, R0
321750:  MOV             R0, R10; this
321752:  VMOV            S0, R1
321756:  MOV             R1, R9; CVector *
321758:  VMOV            S4, R2
32175C:  MOVW            R2, #0xCCCD
321760:  VCVT.F32.S32    S0, S0
321764:  MOVT            R2, #0x3E4C; float
321768:  VCVT.F32.S32    S2, S2
32176C:  VCVT.F32.S32    S4, S4
321770:  VMUL.F32        S0, S0, S18
321774:  VMUL.F32        S2, S2, S18
321778:  VMUL.F32        S4, S4, S18
32177C:  VSTR            S0, [SP,#0x68+var_60]
321780:  VSTR            S2, [SP,#0x68+var_64]
321784:  VSTR            S4, [SP,#0x68+var_5C]
321788:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
32178C:  VCMPE.F32       S26, S16
321790:  MOVS            R1, #0
321792:  VMRS            APSR_nzcv, FPSCR
321796:  IT LT
321798:  MOVLT           R1, #1
32179A:  ANDS            R0, R1
32179C:  ITT NE
32179E:  VMOVNE.F32      S16, S26
3217A2:  MOVNE           R11, R6
3217A4:  ADDS            R6, #1
3217A6:  ADDS            R5, #0x20 ; ' '
3217A8:  CMP.W           R6, #0x26C
3217AC:  BNE             loc_3216C8
3217AE:  CMP.W           R11, #0xFFFFFFFF
3217B2:  BLE.W           loc_3218B6
3217B6:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3217C0)
3217B8:  MOV.W           R1, R11,LSL#5
3217BC:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3217BE:  LDR             R0, [R0]; CPickups::aPickUps ...
3217C0:  ADD.W           R4, R0, R11,LSL#5
3217C4:  LDRH            R0, [R4,#0x1A]
3217C6:  LSLS            R0, R0, #0x10
3217C8:  ORR.W           R1, R0, R1,ASR#5
3217CC:  MOVS            R0, #7
3217CE:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
3217D2:  LDR.W           R0, [R4,#4]!; this
3217D6:  CBZ             R0, loc_3217EC
3217D8:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3217DC:  LDR             R0, [R4]
3217DE:  CMP             R0, #0
3217E0:  ITTT NE
3217E2:  LDRNE           R1, [R0]
3217E4:  LDRNE           R1, [R1,#4]
3217E6:  BLXNE           R1
3217E8:  MOVS            R0, #0
3217EA:  STR             R0, [R4]
3217EC:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3217F6)
3217EE:  MOVS            R6, #0
3217F0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3217FA)
3217F2:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3217F4:  LDR             R2, =(AudioEngine_ptr - 0x3217FE)
3217F6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3217F8:  LDR             R0, [R0]; CPickups::aPickUps ...
3217FA:  ADD             R2, PC; AudioEngine_ptr
3217FC:  LDR             R1, [R1]; CWorld::Players ...
3217FE:  ADD.W           R0, R0, R11,LSL#5
321802:  LDRB            R3, [R0,#0x1D]
321804:  STRB            R6, [R0,#0x1C]
321806:  ORR.W           R3, R3, #1
32180A:  STRB            R3, [R0,#0x1D]
32180C:  LDR.W           R3, [R1,#(dword_96B754 - 0x96B69C)]
321810:  LDR             R0, [R2]; AudioEngine ; this
321812:  ADD.W           R2, R3, #0x64 ; 'd'
321816:  STR.W           R2, [R1,#(dword_96B754 - 0x96B69C)]
32181A:  MOVS            R1, #0xD; int
32181C:  MOVS            R2, #0; float
32181E:  MOV.W           R3, #0x3F800000; float
321822:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
321826:  MOVS            R0, #(dword_E4+3); this
321828:  MOV.W           R1, #0x3F800000; unsigned __int16
32182C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
321830:  MOVS            R0, #(dword_E4+3); this
321832:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
321836:  VMOV            S16, R0
32183A:  MOVS            R0, #dword_E8; this
32183C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
321840:  VMOV            S0, R0
321844:  VCMP.F32        S16, S0
321848:  VMRS            APSR_nzcv, FPSCR
32184C:  BNE             loc_321888
32184E:  ADR             R0, aSnAll; "SN_ALL"
321850:  MOV.W           R1, #0xFFFFFFFF; char *
321854:  MOVW            R2, #0x1388; __int16
321858:  MOV.W           R3, #0xFFFFFFFF; unsigned __int16
32185C:  BLX             j__ZN8CGarages14TriggerMessageEPcsts; CGarages::TriggerMessage(char *,short,ushort,short)
321860:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x32186C)
321862:  MOV.W           R2, #0x194
321866:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x32186E)
321868:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
32186A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
32186C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
32186E:  LDR             R1, [R1]; CWorld::Players ...
321870:  LDR             R0, [R0]; CWorld::PlayerInFocus
321872:  SMLABB.W        R0, R0, R2, R1
321876:  LDR.W           R1, [R0,#0xB8]
32187A:  ADD.W           R1, R1, #0x18000
32187E:  ADD.W           R1, R1, #0x6A0
321882:  STR.W           R1, [R0,#0xB8]
321886:  B               loc_3218B6
321888:  MOVS            R0, #(dword_E4+3); this
32188A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
32188E:  VMOV            S16, R0
321892:  MOVS            R0, #dword_E8; this
321894:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
321898:  VMOV            S0, R0
32189C:  ADR             R0, aSnOne; "SN_ONE"
32189E:  VCVT.S32.F32    S2, S16
3218A2:  MOVW            R2, #0x1388; __int16
3218A6:  VCVT.S32.F32    S0, S0
3218AA:  VMOV            R1, S2; char *
3218AE:  VMOV            R3, S0; unsigned __int16
3218B2:  BLX             j__ZN8CGarages14TriggerMessageEPcsts; CGarages::TriggerMessage(char *,short,ushort,short)
3218B6:  ADD             SP, SP, #0x10
3218B8:  VPOP            {D8-D14}
3218BC:  ADD             SP, SP, #4
3218BE:  POP.W           {R8-R11}
3218C2:  POP             {R4-R7,PC}
