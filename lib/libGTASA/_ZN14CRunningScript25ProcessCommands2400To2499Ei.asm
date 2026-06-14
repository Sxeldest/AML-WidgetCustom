; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2400To2499Ei
; Address            : 0x33C69C - 0x33E224
; =========================================================

33C69C:  PUSH            {R4-R7,LR}
33C69E:  ADD             R7, SP, #0xC
33C6A0:  PUSH.W          {R8-R11}
33C6A4:  SUB             SP, SP, #4
33C6A6:  VPUSH           {D8-D13}
33C6AA:  SUB             SP, SP, #0x80; float
33C6AC:  MOV             R10, R0
33C6AE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x33C6B8)
33C6B2:  MOV             R5, R1
33C6B4:  ADD             R0, PC; __stack_chk_guard_ptr
33C6B6:  LDR             R0, [R0]; __stack_chk_guard
33C6B8:  LDR             R0, [R0]
33C6BA:  STR             R0, [SP,#0xD0+var_54]
33C6BC:  SUB.W           R0, R5, #0x960; switch 100 cases
33C6C0:  CMP             R0, #0x63 ; 'c'
33C6C2:  BHI.W           def_33C6C8; jumptable 0033C6C8 default case, case 2441
33C6C6:  MOVS            R6, #0
33C6C8:  TBH.W           [PC,R0,LSL#1]; switch jump
33C6CC:  DCW 0x80; jump table for switch statement
33C6CE:  DCW 0x95
33C6D0:  DCW 0xD9A
33C6D2:  DCW 0xD9A
33C6D4:  DCW 0xB6
33C6D6:  DCW 0x10A
33C6D8:  DCW 0x124
33C6DA:  DCW 0x141
33C6DC:  DCW 0x165
33C6DE:  DCW 0x183
33C6E0:  DCW 0x19D
33C6E2:  DCW 0x1AD
33C6E4:  DCW 0x1B1
33C6E6:  DCW 0x1B5
33C6E8:  DCW 0x1D4
33C6EA:  DCW 0x200
33C6EC:  DCW 0x22C
33C6EE:  DCW 0x230
33C6F0:  DCW 0x234
33C6F2:  DCW 0x254
33C6F4:  DCW 0x26B
33C6F6:  DCW 0x26F
33C6F8:  DCW 0x28E
33C6FA:  DCW 0x2C4
33C6FC:  DCW 0x2E3
33C6FE:  DCW 0xD9A
33C700:  DCW 0x2F5
33C702:  DCW 0x30D
33C704:  DCW 0x32C
33C706:  DCW 0x34B
33C708:  DCW 0xD9A
33C70A:  DCW 0xD9A
33C70C:  DCW 0x36C
33C70E:  DCW 0x382
33C710:  DCW 0x39C
33C712:  DCW 0x3BB
33C714:  DCW 0x3C7
33C716:  DCW 0x3E0
33C718:  DCW 0x47E
33C71A:  DCW 0x486
33C71C:  DCW 0x4B7
33C71E:  DCW 0x4D6
33C720:  DCW 0x4D9
33C722:  DCW 0x64
33C724:  DCW 0x64
33C726:  DCW 0x4E5
33C728:  DCW 0x504
33C72A:  DCW 0xD9A
33C72C:  DCW 0xD9A
33C72E:  DCW 0x51D
33C730:  DCW 0x52E
33C732:  DCW 0xD9A
33C734:  DCW 0x543
33C736:  DCW 0x555
33C738:  DCW 0x55D
33C73A:  DCW 0x57F
33C73C:  DCW 0x593
33C73E:  DCW 0xD9A
33C740:  DCW 0x5A7
33C742:  DCW 0x5CD
33C744:  DCW 0x5EC
33C746:  DCW 0x5FF
33C748:  DCW 0x604
33C74A:  DCW 0x60F
33C74C:  DCW 0x638
33C74E:  DCW 0x63F
33C750:  DCW 0x65E
33C752:  DCW 0x699
33C754:  DCW 0x6AA
33C756:  DCW 0xD9A
33C758:  DCW 0x6D2
33C75A:  DCW 0x6DD
33C75C:  DCW 0x6FD
33C75E:  DCW 0x72F
33C760:  DCW 0x73D
33C762:  DCW 0x757
33C764:  DCW 0x838
33C766:  DCW 0x849
33C768:  DCW 0x85E
33C76A:  DCW 0x882
33C76C:  DCW 0x898
33C76E:  DCW 0xD9A
33C770:  DCW 0x8BC
33C772:  DCW 0x8DD
33C774:  DCW 0x8F6
33C776:  DCW 0x911
33C778:  DCW 0x931
33C77A:  DCW 0x954
33C77C:  DCW 0x985
33C77E:  DCW 0x9B3
33C780:  DCW 0x9BE
33C782:  DCW 0x9D3
33C784:  DCW 0x9F1
33C786:  DCW 0xA10
33C788:  DCW 0xA2D
33C78A:  DCW 0xA33
33C78C:  DCW 0xA42
33C78E:  DCW 0xAC4
33C790:  DCW 0xAD3
33C792:  DCW 0xAD6
33C794:  MOV             R0, R10; jumptable 0033C6C8 cases 2443,2444
33C796:  MOVS            R1, #2; unsigned __int8
33C798:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33C79C:  MOV             R8, R0
33C79E:  MOV             R0, R10; this
33C7A0:  MOVS            R1, #2; unsigned __int8
33C7A2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33C7A6:  MOV             R9, R0
33C7A8:  MOV             R0, R8; char *
33C7AA:  BLX             strlen
33C7AE:  MOV             R6, R0
33C7B0:  MOV             R0, R9; char *
33C7B2:  BLX             strlen
33C7B6:  ADD             R0, R6
33C7B8:  MOVW            R1, #0x98B
33C7BC:  CMP             R5, R1
33C7BE:  BNE.W           loc_33DDCE
33C7C2:  CMP             R0, #0xF
33C7C4:  BLE.W           loc_33DDD4
33C7C8:  B.W             loc_33E1FE
33C7CC:  MOV             R0, R10; jumptable 0033C6C8 case 2400
33C7CE:  MOVS            R1, #2; __int16
33C7D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C7D4:  LDR.W           R0, =(ScriptParams_ptr - 0x33C7E0)
33C7D8:  MOVS            R4, #0
33C7DA:  MOVS            R6, #0
33C7DC:  ADD             R0, PC; ScriptParams_ptr
33C7DE:  LDR             R1, [R0]; ScriptParams
33C7E0:  LDRD.W          R0, R1, [R1]; int
33C7E4:  CMP             R1, #0
33C7E6:  IT EQ
33C7E8:  MOVEQ           R4, #1
33C7EA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
33C7EE:  STRB.W          R4, [R0,#0x133]
33C7F2:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33C7F6:  MOV             R0, R10; jumptable 0033C6C8 case 2401
33C7F8:  MOVS            R1, #2; __int16
33C7FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C7FE:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C80E)
33C802:  MOVW            R3, #0x7CC
33C806:  LDR.W           R0, =(ScriptParams_ptr - 0x33C810)
33C80A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C80C:  ADD             R0, PC; ScriptParams_ptr
33C80E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33C810:  LDR             R0, [R0]; ScriptParams
33C812:  LDRD.W          R2, R0, [R0]
33C816:  CMP             R0, #0
33C818:  LDR             R1, [R1]; CPools::ms_pPedPool
33C81A:  MOV.W           R2, R2,LSR#8
33C81E:  LDR             R1, [R1]
33C820:  MLA.W           R1, R2, R3, R1
33C824:  LDR.W           R2, [R1,#0x490]
33C828:  IT NE
33C82A:  MOVNE           R0, #1
33C82C:  BIC.W           R2, R2, #0x10
33C830:  ORR.W           R0, R2, R0,LSL#4
33C834:  B.W             loc_33D96C
33C838:  SUB.W           R5, R7, #-var_5E; jumptable 0033C6C8 case 2404
33C83C:  MOV             R0, R10; this
33C83E:  MOVS            R2, #8; unsigned __int8
33C840:  MOV             R1, R5; char *
33C842:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33C846:  LDR.W           R1, =(aPedDummy+4 - 0x33C856); "DUMMY"
33C84A:  MOVS            R0, #0
33C84C:  STRB.W          R0, [SP,#0xD0+var_B0]
33C850:  MOV             R0, R5; char *
33C852:  ADD             R1, PC; "DUMMY"
33C854:  BLX             strcasecmp
33C858:  CMP             R0, #0
33C85A:  ITTT NE
33C85C:  ADDNE.W         R0, SP, #0xD0+var_B0; char *
33C860:  SUBNE.W         R1, R7, #-var_5E; char *
33C864:  BLXNE           strcpy
33C868:  MOV             R0, R10; this
33C86A:  MOVS            R1, #7; __int16
33C86C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C870:  LDR.W           R0, =(RsGlobal_ptr - 0x33C880)
33C874:  ADD.W           R12, SP, #0xD0+var_CC
33C878:  VLDR            S4, =640.0
33C87C:  ADD             R0, PC; RsGlobal_ptr
33C87E:  VLDR            S6, =448.0
33C882:  LDR             R0, [R0]; RsGlobal
33C884:  VLDR            S0, [R0,#4]
33C888:  VLDR            S2, [R0,#8]
33C88C:  VCVT.F32.S32    S0, S0
33C890:  LDR.W           R0, =(ScriptParams_ptr - 0x33C89C)
33C894:  VCVT.F32.S32    S2, S2
33C898:  ADD             R0, PC; ScriptParams_ptr
33C89A:  LDR             R4, [R0]; ScriptParams
33C89C:  VDIV.F32        S0, S0, S4
33C8A0:  LDRB            R0, [R4,#(dword_81A914 - 0x81A908)]
33C8A2:  LDRB            R1, [R4,#(dword_81A918 - 0x81A908)]
33C8A4:  LDRB            R6, [R4,#(dword_81A91C - 0x81A908)]
33C8A6:  LDRB            R5, [R4,#(dword_81A920 - 0x81A908)]
33C8A8:  VDIV.F32        S2, S2, S6
33C8AC:  VLDR            S4, [R4]
33C8B0:  VLDR            S6, [R4,#4]
33C8B4:  VMUL.F32        S0, S4, S0
33C8B8:  VLDR            S8, [R4,#8]
33C8BC:  VMUL.F32        S4, S6, S2
33C8C0:  STM.W           R12, {R0,R1,R6}
33C8C4:  ADD             R1, SP, #0xD0+var_B0; unsigned __int8
33C8C6:  MOVS            R0, #(stderr+1); this
33C8C8:  STR             R5, [SP,#0xD0+var_C0]; unsigned __int8
33C8CA:  VMOV            R2, S0; char *
33C8CE:  VMOV            R3, S4; float
33C8D2:  VMUL.F32        S0, S8, S2
33C8D6:  VSTR            S0, [SP,#0xD0+var_D0]
33C8DA:  BLX             j__ZN11CMenuSystem13CreateNewMenuEhPcfffhhhh; CMenuSystem::CreateNewMenu(uchar,char *,float,float,float,uchar,uchar,uchar,uchar)
33C8DE:  B               loc_33C948
33C8E0:  MOV             R0, R10; jumptable 0033C6C8 case 2405
33C8E2:  MOVS            R1, #1; __int16
33C8E4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C8E8:  LDR.W           R0, =(ScriptParams_ptr - 0x33C8F8)
33C8EC:  MOVW            R2, #0x7CC
33C8F0:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C8FA)
33C8F4:  ADD             R0, PC; ScriptParams_ptr
33C8F6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C8F8:  LDR             R0, [R0]; ScriptParams
33C8FA:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33C8FC:  LDR             R0, [R0]
33C8FE:  LDR             R1, [R1]; CPools::ms_pPedPool
33C900:  LSRS            R0, R0, #8
33C902:  LDR             R1, [R1]
33C904:  MLA.W           R0, R0, R2, R1
33C908:  LDR.W           R0, [R0,#0x440]; this
33C90C:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
33C910:  B.W             loc_33DF14
33C914:  MOV             R0, R10; jumptable 0033C6C8 case 2406
33C916:  MOVS            R1, #1; __int16
33C918:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C91C:  LDR.W           R0, =(ScriptParams_ptr - 0x33C92C)
33C920:  MOVW            R2, #0x7CC
33C924:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C92E)
33C928:  ADD             R0, PC; ScriptParams_ptr
33C92A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C92C:  LDR             R4, [R0]; ScriptParams
33C92E:  LDR             R0, [R1]; CPools::ms_pPedPool ...
33C930:  LDR             R1, [R4]
33C932:  LDR             R0, [R0]; CPools::ms_pPedPool
33C934:  LSRS            R1, R1, #8
33C936:  LDR             R0, [R0]
33C938:  MLA.W           R0, R1, R2, R0
33C93C:  LDR.W           R0, [R0,#0x440]; this
33C940:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
33C944:  LDRSH.W         R0, [R0,#0xA]
33C948:  STR             R0, [R4]
33C94A:  B.W             loc_33E1F6
33C94E:  MOV             R0, R10; jumptable 0033C6C8 case 2407
33C950:  MOVS            R1, #2; __int16
33C952:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C956:  LDR.W           R0, =(ScriptParams_ptr - 0x33C966)
33C95A:  MOVW            R2, #0x7CC
33C95E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C968)
33C962:  ADD             R0, PC; ScriptParams_ptr
33C964:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C966:  LDR             R4, [R0]; ScriptParams
33C968:  LDR             R0, [R1]; CPools::ms_pPedPool ...
33C96A:  LDR             R1, [R4]
33C96C:  LDR             R0, [R0]; CPools::ms_pPedPool
33C96E:  LSRS            R1, R1, #8
33C970:  LDR             R0, [R0]
33C972:  MLA.W           R0, R1, R2, R0
33C976:  MOVS            R1, #3; int
33C978:  LDR.W           R0, [R0,#0x440]
33C97C:  ADDS            R0, #4; this
33C97E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
33C982:  LDR             R2, [R4,#(dword_81A90C - 0x81A908)]; int
33C984:  MOVS            R6, #0
33C986:  MOVS            R1, #7; int
33C988:  MOV.W           R3, #0xFFFFFFFF; int
33C98C:  STR             R6, [SP,#0xD0+var_D0]; int
33C98E:  BLX             j__ZN18CTaskComplexFacial10SetRequestEiiii; CTaskComplexFacial::SetRequest(int,int,int,int)
33C992:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33C996:  MOV             R0, R10; jumptable 0033C6C8 case 2408
33C998:  MOVS            R1, #1; __int16
33C99A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C99E:  LDR.W           R0, =(ScriptParams_ptr - 0x33C9AE)
33C9A2:  MOVW            R2, #0x7CC
33C9A6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C9B0)
33C9AA:  ADD             R0, PC; ScriptParams_ptr
33C9AC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C9AE:  LDR             R0, [R0]; ScriptParams
33C9B0:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33C9B2:  LDR             R0, [R0]
33C9B4:  LDR             R1, [R1]; CPools::ms_pPedPool
33C9B6:  LSRS            R0, R0, #8
33C9B8:  LDR             R1, [R1]
33C9BA:  MLA.W           R0, R0, R2, R1
33C9BE:  MOVS            R1, #3; int
33C9C0:  LDR.W           R0, [R0,#0x440]
33C9C4:  ADDS            R0, #4; this
33C9C6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
33C9CA:  BLX             j__ZN18CTaskComplexFacial7StopAllEv; CTaskComplexFacial::StopAll(void)
33C9CE:  B.W             loc_33E1FE
33C9D2:  MOV             R0, R10; jumptable 0033C6C8 case 2409
33C9D4:  MOVS            R1, #1; __int16
33C9D6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C9DA:  LDR.W           R0, =(ScriptParams_ptr - 0x33C9EA)
33C9DE:  MOVW            R2, #0xA2C
33C9E2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33C9EC)
33C9E6:  ADD             R0, PC; ScriptParams_ptr
33C9E8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33C9EA:  LDR             R0, [R0]; ScriptParams
33C9EC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33C9EE:  LDR             R0, [R0]
33C9F0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33C9F2:  LSRS            R0, R0, #8
33C9F4:  LDR             R1, [R1]
33C9F6:  MLA.W           R0, R0, R2, R1
33C9FA:  LDR.W           R0, [R0,#0x42C]
33C9FE:  UBFX.W          R1, R0, #0xA, #1
33CA02:  B.W             loc_33E0D8
33CA06:  MOV             R0, R10; jumptable 0033C6C8 case 2410
33CA08:  MOVS            R1, #1; __int16
33CA0A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CA0E:  LDR.W           R0, =(ScriptParams_ptr - 0x33CA16)
33CA12:  ADD             R0, PC; ScriptParams_ptr
33CA14:  LDR             R0, [R0]; ScriptParams
33CA16:  LDR             R0, [R0]
33CA18:  CMP             R0, #0
33CA1A:  IT NE
33CA1C:  MOVNE           R0, #(stderr+1); this
33CA1E:  BLX             j__ZN5CHeli17SwitchPoliceHelisEb; CHeli::SwitchPoliceHelis(bool)
33CA22:  B.W             loc_33E1FE
33CA26:  BLX             j__ZN9CShopping16StoreVehicleModsEv; jumptable 0033C6C8 case 2411
33CA2A:  B.W             loc_33E1FE
33CA2E:  BLX             j__ZN9CShopping18RestoreVehicleModsEv; jumptable 0033C6C8 case 2412
33CA32:  B.W             loc_33E1FE
33CA36:  MOV             R0, R10; jumptable 0033C6C8 case 2413
33CA38:  MOVS            R1, #2; __int16
33CA3A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CA3E:  LDR.W           R0, =(ScriptParams_ptr - 0x33CA46)
33CA42:  ADD             R0, PC; ScriptParams_ptr
33CA44:  LDR             R0, [R0]; ScriptParams
33CA46:  LDR             R1, [R0]
33CA48:  CMP             R1, #0
33CA4A:  BLT.W           loc_33DE58
33CA4E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CA5A)
33CA52:  UXTB            R3, R1
33CA54:  LSRS            R1, R1, #8
33CA56:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CA58:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33CA5A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33CA5C:  LDR             R2, [R0,#4]
33CA5E:  LDRB            R2, [R2,R1]
33CA60:  CMP             R2, R3
33CA62:  BNE.W           loc_33DE58
33CA66:  MOVW            R2, #0xA2C
33CA6A:  LDR             R0, [R0]
33CA6C:  MLA.W           R5, R1, R2, R0
33CA70:  B.W             loc_33DE5A
33CA74:  MOV             R0, R10; jumptable 0033C6C8 case 2414
33CA76:  MOVS            R1, #1; __int16
33CA78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CA7C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CA8C)
33CA80:  MOVW            R2, #0xA2C
33CA84:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CA8E)
33CA88:  ADD             R0, PC; ScriptParams_ptr
33CA8A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CA8C:  LDR             R0, [R0]; ScriptParams
33CA8E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33CA90:  LDR             R0, [R0]
33CA92:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33CA94:  LSRS            R0, R0, #8
33CA96:  LDR             R1, [R1]
33CA98:  MLA.W           R0, R0, R2, R1
33CA9C:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CAA4)
33CAA0:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33CAA2:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
33CAA4:  LDRSH.W         R0, [R0,#0x26]
33CAA8:  LDR.W           R0, [R1,R0,LSL#2]
33CAAC:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x33CAB8)
33CAB0:  LDRB.W          R0, [R0,#0x62]
33CAB4:  ADD             R1, PC; mod_HandlingManager_ptr
33CAB6:  LDR             R1, [R1]; mod_HandlingManager
33CAB8:  RSB.W           R0, R0, R0,LSL#3
33CABC:  ADD.W           R0, R1, R0,LSL#5
33CAC0:  LDR.W           R0, [R0,#0xE4]
33CAC4:  UBFX.W          R1, R0, #0x19, #1
33CAC8:  B.W             loc_33E0D8
33CACC:  MOV             R0, R10; jumptable 0033C6C8 case 2415
33CACE:  MOVS            R1, #1; __int16
33CAD0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CAD4:  LDR.W           R0, =(ScriptParams_ptr - 0x33CAE4)
33CAD8:  MOVW            R2, #0xA2C
33CADC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CAE6)
33CAE0:  ADD             R0, PC; ScriptParams_ptr
33CAE2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CAE4:  LDR             R0, [R0]; ScriptParams
33CAE6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33CAE8:  LDR             R0, [R0]
33CAEA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33CAEC:  LSRS            R0, R0, #8
33CAEE:  LDR             R1, [R1]
33CAF0:  MLA.W           R0, R0, R2, R1
33CAF4:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CAFC)
33CAF8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33CAFA:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
33CAFC:  LDRSH.W         R0, [R0,#0x26]
33CB00:  LDR.W           R0, [R1,R0,LSL#2]
33CB04:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x33CB10)
33CB08:  LDRB.W          R0, [R0,#0x62]
33CB0C:  ADD             R1, PC; mod_HandlingManager_ptr
33CB0E:  LDR             R1, [R1]; mod_HandlingManager
33CB10:  RSB.W           R0, R0, R0,LSL#3
33CB14:  ADD.W           R0, R1, R0,LSL#5
33CB18:  LDR.W           R0, [R0,#0xE4]
33CB1C:  UBFX.W          R1, R0, #0x1A, #1
33CB20:  B.W             loc_33E0D8
33CB24:  BLX             j__ZN10CGameLogic17ForceDeathRestartEv; jumptable 0033C6C8 case 2416
33CB28:  B.W             loc_33E1FE
33CB2C:  BLX             j__ZN11CWaterLevel9SyncWaterEv; jumptable 0033C6C8 case 2417
33CB30:  B.W             loc_33E1FE
33CB34:  MOV             R0, R10; jumptable 0033C6C8 case 2418
33CB36:  MOVS            R1, #4; __int16
33CB38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CB3C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CB46)
33CB40:  MOVS            R6, #0
33CB42:  ADD             R0, PC; ScriptParams_ptr
33CB44:  LDR             R0, [R0]; ScriptParams
33CB46:  LDR             R0, [R0]
33CB48:  CMP             R0, #0
33CB4A:  BLT.W           loc_33DE9E
33CB4E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33CB5A)
33CB52:  UXTB            R3, R0
33CB54:  LSRS            R0, R0, #8
33CB56:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33CB58:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33CB5A:  LDR             R1, [R1]; CPools::ms_pPedPool
33CB5C:  LDR             R2, [R1,#4]
33CB5E:  LDRB            R2, [R2,R0]
33CB60:  CMP             R2, R3
33CB62:  BNE.W           loc_33DE9E
33CB66:  MOVW            R2, #0x7CC
33CB6A:  LDR             R1, [R1]
33CB6C:  MLA.W           R1, R0, R2, R1
33CB70:  B.W             loc_33DEA0
33CB74:  MOV             R0, R10; jumptable 0033C6C8 case 2419
33CB76:  MOVS            R1, #1; __int16
33CB78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CB7C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CB86)
33CB80:  MOVS            R1, #5; int
33CB82:  ADD             R0, PC; ScriptParams_ptr
33CB84:  LDR             R0, [R0]; ScriptParams
33CB86:  LDR             R0, [R0]; this
33CB88:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33CB8C:  CMP             R0, #0x3C ; '<'
33CB8E:  MOV.W           R1, #0
33CB92:  IT CC
33CB94:  MOVCC           R1, #1; unsigned __int8
33CB96:  MOV             R0, R10; this
33CB98:  MOVS            R6, #0
33CB9A:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33CB9E:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33CBA2:  BLX             j__ZN10CGameLogic26ResetStuffUponResurrectionEv; jumptable 0033C6C8 case 2420
33CBA6:  B.W             loc_33E1FE
33CBAA:  MOV             R0, R10; jumptable 0033C6C8 case 2421
33CBAC:  MOVS            R1, #1; __int16
33CBAE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CBB2:  LDR.W           R0, =(ScriptParams_ptr - 0x33CBBA)
33CBB6:  ADD             R0, PC; ScriptParams_ptr
33CBB8:  LDR             R0, [R0]; ScriptParams
33CBBA:  LDR             R1, [R0]
33CBBC:  CMP             R1, #0
33CBBE:  BLT.W           loc_33DEB6
33CBC2:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CBCE)
33CBC6:  UXTB            R3, R1
33CBC8:  LSRS            R1, R1, #8
33CBCA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CBCC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33CBCE:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33CBD0:  LDR             R2, [R0,#4]
33CBD2:  LDRB            R2, [R2,R1]
33CBD4:  CMP             R2, R3
33CBD6:  BNE.W           loc_33DEB6
33CBDA:  MOVW            R2, #0xA2C
33CBDE:  LDR             R0, [R0]
33CBE0:  MLA.W           R5, R1, R2, R0
33CBE4:  B.W             loc_33DEB8
33CBE8:  MOV             R0, R10; jumptable 0033C6C8 case 2422
33CBEA:  MOVS            R1, #1; __int16
33CBEC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CBF0:  LDR.W           R0, =(ScriptParams_ptr - 0x33CBFA)
33CBF4:  MOVS            R1, #1; int
33CBF6:  ADD             R0, PC; ScriptParams_ptr
33CBF8:  LDR             R0, [R0]; ScriptParams
33CBFA:  LDR             R5, [R0]
33CBFC:  MOV             R0, R5; this
33CBFE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33CC02:  CMP             R0, #0
33CC04:  BLT.W           loc_33E1FE
33CC08:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x33CC10)
33CC0C:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
33CC0E:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
33CC10:  ADD.W           R0, R1, R0,LSL#3
33CC14:  LDR             R1, [R0,#4]; FxSystem_c *
33CC16:  CMP             R1, #0
33CC18:  BEQ.W           loc_33E1FE
33CC1C:  LDR.W           R0, =(g_fxMan_ptr - 0x33CC24)
33CC20:  ADD             R0, PC; g_fxMan_ptr
33CC22:  LDR             R0, [R0]; g_fxMan ; this
33CC24:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
33CC28:  MOV             R0, R5; this
33CC2A:  BLX             j__ZN11CTheScripts24RemoveScriptEffectSystemEi; CTheScripts::RemoveScriptEffectSystem(int)
33CC2E:  LDRB.W          R0, [R10,#0xE6]
33CC32:  CMP             R0, #0
33CC34:  BEQ.W           loc_33E1FE
33CC38:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33CC44)
33CC3C:  MOV             R1, R5
33CC3E:  MOVS            R2, #4
33CC40:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33CC42:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
33CC44:  B.W             loc_33DE12
33CC48:  DCFS 640.0
33CC4C:  DCFS 448.0
33CC50:  DCFS -100.0
33CC54:  MOV             R0, R10; jumptable 0033C6C8 case 2423
33CC56:  MOVS            R1, #1; __int16
33CC58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CC5C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CC64)
33CC60:  ADD             R0, PC; ScriptParams_ptr
33CC62:  LDR             R0, [R0]; ScriptParams
33CC64:  LDR             R1, [R0]
33CC66:  CMP             R1, #0
33CC68:  BLT.W           loc_33DEC8
33CC6C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33CC78)
33CC70:  UXTB            R3, R1
33CC72:  LSRS            R1, R1, #8
33CC74:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33CC76:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33CC78:  LDR             R0, [R0]; CPools::ms_pObjectPool
33CC7A:  LDR             R2, [R0,#4]
33CC7C:  LDRB            R2, [R2,R1]
33CC7E:  CMP             R2, R3
33CC80:  BNE.W           loc_33DEC8
33CC84:  MOV.W           R2, #0x1A4
33CC88:  LDR             R0, [R0]
33CC8A:  MLA.W           R5, R1, R2, R0
33CC8E:  B.W             loc_33DECA
33CC92:  MOV             R0, R10; jumptable 0033C6C8 case 2424
33CC94:  MOVS            R1, #1; __int16
33CC96:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CC9A:  LDR.W           R0, =(ScriptParams_ptr - 0x33CCA2)
33CC9E:  ADD             R0, PC; ScriptParams_ptr
33CCA0:  LDR             R0, [R0]; ScriptParams
33CCA2:  LDR             R0, [R0]; this
33CCA4:  ADDS            R1, R0, #1
33CCA6:  BEQ.W           loc_33E07E
33CCAA:  MOVS            R1, #7; int
33CCAC:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33CCB0:  MOV             R5, R0
33CCB2:  B.W             loc_33E082
33CCB6:  MOV             R0, R10; jumptable 0033C6C8 case 2426
33CCB8:  MOVS            R1, #4; __int16
33CCBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CCBE:  LDR.W           R0, =(ScriptParams_ptr - 0x33CCCA)
33CCC2:  LDR.W           R2, =(AudioEngine_ptr - 0x33CCCC)
33CCC6:  ADD             R0, PC; ScriptParams_ptr
33CCC8:  ADD             R2, PC; AudioEngine_ptr
33CCCA:  LDR             R0, [R0]; ScriptParams
33CCCC:  LDRD.W          R3, R6, [R0]
33CCD0:  LDR             R5, [R0,#(dword_81A910 - 0x81A908)]
33CCD2:  LDRH            R1, [R0,#(dword_81A914 - 0x81A908)]; unsigned __int16
33CCD4:  LDR             R0, [R2]; AudioEngine ; this
33CCD6:  ADD             R2, SP, #0xD0+var_B0; CVector *
33CCD8:  STRD.W          R3, R6, [SP,#0xD0+var_B0]
33CCDC:  STR             R5, [SP,#0xD0+var_A8]
33CCDE:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtR7CVector; CAudioEngine::ReportMissionAudioEvent(ushort,CVector &)
33CCE2:  B.W             loc_33E1FE
33CCE6:  MOV             R0, R10; jumptable 0033C6C8 case 2427
33CCE8:  MOVS            R1, #2; __int16
33CCEA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CCEE:  LDR.W           R0, =(ScriptParams_ptr - 0x33CCF6)
33CCF2:  ADD             R0, PC; ScriptParams_ptr
33CCF4:  LDR             R0, [R0]; ScriptParams
33CCF6:  LDR             R1, [R0]
33CCF8:  CMP             R1, #0
33CCFA:  BLT.W           loc_33DF1E
33CCFE:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33CD0A)
33CD02:  UXTB            R3, R1
33CD04:  LSRS            R1, R1, #8
33CD06:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33CD08:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33CD0A:  LDR             R0, [R0]; CPools::ms_pObjectPool
33CD0C:  LDR             R2, [R0,#4]
33CD0E:  LDRB            R2, [R2,R1]
33CD10:  CMP             R2, R3
33CD12:  BNE.W           loc_33DF1E
33CD16:  MOV.W           R2, #0x1A4
33CD1A:  LDR             R0, [R0]
33CD1C:  MLA.W           R2, R1, R2, R0
33CD20:  B.W             loc_33DF20
33CD24:  MOV             R0, R10; jumptable 0033C6C8 case 2428
33CD26:  MOVS            R1, #2; __int16
33CD28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CD2C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CD34)
33CD30:  ADD             R0, PC; ScriptParams_ptr
33CD32:  LDR             R0, [R0]; ScriptParams
33CD34:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
33CD36:  CMP             R1, #0
33CD38:  BLT.W           loc_33DF38
33CD3C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33CD48)
33CD40:  UXTB            R3, R1
33CD42:  LSRS            R1, R1, #8
33CD44:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33CD46:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33CD48:  LDR             R0, [R0]; CPools::ms_pObjectPool
33CD4A:  LDR             R2, [R0,#4]
33CD4C:  LDRB            R2, [R2,R1]
33CD4E:  CMP             R2, R3
33CD50:  BNE.W           loc_33DF38
33CD54:  MOV.W           R2, #0x1A4
33CD58:  LDR             R0, [R0]
33CD5A:  MLA.W           R2, R1, R2, R0
33CD5E:  B.W             loc_33DF3A
33CD62:  MOV             R0, R10; jumptable 0033C6C8 case 2429
33CD64:  MOVS            R1, #1; __int16
33CD66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CD6A:  LDR.W           R0, =(ScriptParams_ptr - 0x33CD7A)
33CD6E:  MOVW            R3, #0xA2C
33CD72:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CD7C)
33CD76:  ADD             R0, PC; ScriptParams_ptr
33CD78:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CD7A:  LDR             R0, [R0]; ScriptParams
33CD7C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33CD7E:  LDR             R2, [R0]
33CD80:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33CD82:  LSRS            R2, R2, #8
33CD84:  LDR             R1, [R1]
33CD86:  MLA.W           R1, R2, R3, R1
33CD8A:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CD92)
33CD8E:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33CD90:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
33CD92:  LDRSH.W         R1, [R1,#0x26]
33CD96:  LDR.W           R1, [R2,R1,LSL#2]
33CD9A:  LDRB.W          R1, [R1,#0x368]
33CD9E:  STR             R1, [R0]
33CDA0:  B.W             loc_33E1F6
33CDA4:  MOV             R0, R10; jumptable 0033C6C8 case 2432
33CDA6:  MOVS            R1, #4; __int16
33CDA8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CDAC:  LDR.W           R0, =(ScriptParams_ptr - 0x33CDB8)
33CDB0:  LDR.W           R6, =(gFireManager_ptr - 0x33CDBA)
33CDB4:  ADD             R0, PC; ScriptParams_ptr
33CDB6:  ADD             R6, PC; gFireManager_ptr
33CDB8:  LDR             R0, [R0]; ScriptParams
33CDBA:  LDM.W           R0, {R1-R3}
33CDBE:  VLDR            S0, [R0,#0xC]
33CDC2:  LDR             R0, [R6]; gFireManager
33CDC4:  VSTR            S0, [SP,#0xD0+var_D0]
33CDC8:  BLX             j__ZN12CFireManager15ExtinguishPointE7CVectorf; CFireManager::ExtinguishPoint(CVector,float)
33CDCC:  B.W             loc_33E1FE
33CDD0:  MOV             R0, R10; jumptable 0033C6C8 case 2433
33CDD2:  MOVS            R1, #1; __int16
33CDD4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CDD8:  LDR.W           R0, =(ScriptParams_ptr - 0x33CDE8)
33CDDC:  MOVW            R2, #0xA2C
33CDE0:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CDEA)
33CDE4:  ADD             R0, PC; ScriptParams_ptr
33CDE6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CDE8:  LDR             R0, [R0]; ScriptParams
33CDEA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33CDEC:  LDR             R0, [R0]
33CDEE:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33CDF0:  LSRS            R0, R0, #8
33CDF2:  LDR             R1, [R1]
33CDF4:  MLA.W           R0, R0, R2, R1
33CDF8:  LDRB.W          R0, [R0,#0x5CD]
33CDFC:  AND.W           R1, R0, #1
33CE00:  B.W             loc_33E0D8
33CE04:  MOV             R0, R10; jumptable 0033C6C8 case 2434
33CE06:  MOVS            R1, #2; __int16
33CE08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CE0C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33CE1C)
33CE10:  MOVW            R3, #0x7CC
33CE14:  LDR.W           R0, =(ScriptParams_ptr - 0x33CE1E)
33CE18:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33CE1A:  ADD             R0, PC; ScriptParams_ptr
33CE1C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33CE1E:  LDR             R0, [R0]; ScriptParams
33CE20:  LDRD.W          R2, R0, [R0]
33CE24:  LDR             R1, [R1]; CPools::ms_pPedPool
33CE26:  AND.W           R0, R0, #1
33CE2A:  LSRS            R2, R2, #8
33CE2C:  LDR             R1, [R1]
33CE2E:  MLA.W           R1, R2, R3, R1
33CE32:  LDR.W           R2, [R1,#0x490]
33CE36:  BIC.W           R2, R2, #0x80
33CE3A:  ORR.W           R0, R2, R0,LSL#7
33CE3E:  B.W             loc_33D96C
33CE42:  MOV             R0, R10; jumptable 0033C6C8 case 2435
33CE44:  MOVS            R1, #1; __int16
33CE46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CE4A:  LDR.W           R0, =(ScriptParams_ptr - 0x33CE56)
33CE4E:  LDR.W           R1, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x33CE58)
33CE52:  ADD             R0, PC; ScriptParams_ptr
33CE54:  ADD             R1, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
33CE56:  B.W             loc_33DA5C
33CE5A:  MOV             R0, R10; jumptable 0033C6C8 case 2436
33CE5C:  MOVS            R1, #1; __int16
33CE5E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CE62:  LDR.W           R0, =(ScriptParams_ptr - 0x33CE72)
33CE66:  MOV.W           R3, #0x1A4
33CE6A:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33CE74)
33CE6E:  ADD             R0, PC; ScriptParams_ptr
33CE70:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33CE72:  LDR             R0, [R0]; ScriptParams
33CE74:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33CE76:  LDR             R2, [R0]
33CE78:  LDR             R1, [R1]; CPools::ms_pObjectPool
33CE7A:  LSRS            R2, R2, #8
33CE7C:  LDR             R1, [R1]
33CE7E:  MLA.W           R1, R2, R3, R1
33CE82:  LDRSH.W         R1, [R1,#0x26]
33CE86:  STR             R1, [R0]
33CE88:  B.W             loc_33E1F6
33CE8C:  MOV             R0, R10; jumptable 0033C6C8 case 2437
33CE8E:  MOVS            R1, #7; __int16
33CE90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CE94:  LDR.W           R0, =(ScriptParams_ptr - 0x33CEA0)
33CE98:  VLDR            S0, =-100.0
33CE9C:  ADD             R0, PC; ScriptParams_ptr
33CE9E:  LDR             R0, [R0]; ScriptParams
33CEA0:  VLDR            S20, [R0,#8]
33CEA4:  VLDR            S16, [R0]
33CEA8:  VCMPE.F32       S20, S0
33CEAC:  VLDR            S18, [R0,#4]
33CEB0:  VMRS            APSR_nzcv, FPSCR
33CEB4:  BGT             loc_33CEC6
33CEB6:  VMOV            R0, S16; this
33CEBA:  VMOV            R1, S18; float
33CEBE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
33CEC2:  VMOV            S20, R0
33CEC6:  LDR.W           R0, =(ScriptParams_ptr - 0x33CECE)
33CECA:  ADD             R0, PC; ScriptParams_ptr
33CECC:  LDR             R0, [R0]; ScriptParams
33CECE:  VLDR            S22, [R0,#0xC]
33CED2:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
33CED4:  CMP.W           R0, #0xFFFFFFFF
33CED8:  BGT             loc_33CEEE
33CEDA:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33CEE4)
33CEDE:  NEGS            R0, R0
33CEE0:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33CEE2:  RSB.W           R0, R0, R0,LSL#3
33CEE6:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
33CEE8:  ADD.W           R0, R1, R0,LSL#2
33CEEC:  LDR             R0, [R0,#0x18]; this
33CEEE:  VMOV            R2, S22; CVector *
33CEF2:  MOVS            R1, #1
33CEF4:  MOVS            R4, #0
33CEF6:  MOVS            R3, #0x10
33CEF8:  VSTR            S18, [SP,#0xD0+var_68]
33CEFC:  ADD             R5, SP, #0xD0+var_B0
33CEFE:  VSTR            S16, [SP,#0xD0+var_6C]
33CF02:  SUB.W           R6, R7, #-var_5E
33CF06:  VSTR            S20, [SP,#0xD0+var_64]
33CF0A:  STRD.W          R6, R3, [SP,#0xD0+var_D0]; bool
33CF0E:  MOVS            R3, #1; float
33CF10:  STRD.W          R5, R1, [SP,#0xD0+var_C8]; __int16
33CF14:  STRD.W          R4, R4, [SP,#0xD0+var_C0]; bool
33CF18:  STRD.W          R1, R1, [SP,#0xD0+var_B8]; bool
33CF1C:  ADD             R1, SP, #0xD0+var_6C; unsigned int
33CF1E:  BLX             j__ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
33CF22:  LDRSH.W         R0, [R7,#var_5E]
33CF26:  CMP             R0, #1
33CF28:  BLT             loc_33CF8C
33CF2A:  VADD.F32        S0, S22, S22
33CF2E:  MOVS            R2, #0
33CF30:  MOVS            R4, #0
33CF32:  MOVS            R1, #0
33CF34:  LDR.W           R2, [R5,R2,LSL#2]
33CF38:  ADDS            R1, #1
33CF3A:  LDR             R3, [R2,#0x14]
33CF3C:  ADD.W           R6, R3, #0x30 ; '0'
33CF40:  CMP             R3, #0
33CF42:  IT EQ
33CF44:  ADDEQ           R6, R2, #4
33CF46:  VLDR            S2, [R6]
33CF4A:  VLDR            S4, [R6,#4]
33CF4E:  VSUB.F32        S2, S2, S16
33CF52:  VLDR            S6, [R6,#8]
33CF56:  VSUB.F32        S4, S4, S18
33CF5A:  VSUB.F32        S6, S6, S20
33CF5E:  VMUL.F32        S2, S2, S2
33CF62:  VMUL.F32        S4, S4, S4
33CF66:  VMUL.F32        S6, S6, S6
33CF6A:  VADD.F32        S2, S2, S4
33CF6E:  VADD.F32        S2, S2, S6
33CF72:  VSQRT.F32       S2, S2
33CF76:  VCMPE.F32       S2, S0
33CF7A:  VMRS            APSR_nzcv, FPSCR
33CF7E:  VMIN.F32        D0, D1, D0
33CF82:  IT LT
33CF84:  MOVLT           R4, R2
33CF86:  UXTH            R2, R1
33CF88:  CMP             R2, R0
33CF8A:  BLT             loc_33CF34
33CF8C:  LDR.W           R0, =(ScriptParams_ptr - 0x33CF94)
33CF90:  ADD             R0, PC; ScriptParams_ptr
33CF92:  LDR             R0, [R0]; ScriptParams
33CF94:  LDR             R1, [R0,#(dword_81A920 - 0x81A908)]
33CF96:  CMP             R1, #0
33CF98:  BLT.W           loc_33DF58
33CF9C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33CFA8)
33CFA0:  UXTB            R3, R1
33CFA2:  LSRS            R1, R1, #8
33CFA4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33CFA6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33CFA8:  LDR             R0, [R0]; CPools::ms_pPedPool
33CFAA:  LDR             R2, [R0,#4]
33CFAC:  LDRB            R2, [R2,R1]
33CFAE:  CMP             R2, R3
33CFB0:  BNE.W           loc_33DF58
33CFB4:  MOVW            R2, #0x7CC
33CFB8:  LDR             R0, [R0]
33CFBA:  MLA.W           R0, R1, R2, R0
33CFBE:  CMP             R4, #0
33CFC0:  BNE.W           loc_33DF60
33CFC4:  B.W             loc_33E1FE
33CFC8:  LDR.W           R0, =(gFireManager_ptr - 0x33CFD0); jumptable 0033C6C8 case 2438
33CFCC:  ADD             R0, PC; gFireManager_ptr
33CFCE:  LDR             R0, [R0]; gFireManager ; this
33CFD0:  BLX             j__ZN12CFireManager23ClearAllScriptFireFlagsEv; CFireManager::ClearAllScriptFireFlags(void)
33CFD4:  B.W             loc_33E1FE
33CFD8:  MOV             R0, R10; jumptable 0033C6C8 case 2439
33CFDA:  MOVS            R1, #1; __int16
33CFDC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33CFE0:  LDR.W           R0, =(ScriptParams_ptr - 0x33CFEC)
33CFE4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CFEE)
33CFE8:  ADD             R0, PC; ScriptParams_ptr
33CFEA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33CFEC:  LDR             R0, [R0]; ScriptParams
33CFEE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33CFF0:  LDR             R2, [R0]
33CFF2:  LDR             R0, [R1]; CPools::ms_pVehiclePool
33CFF4:  LSRS            R1, R2, #8
33CFF6:  MOVW            R2, #0xA2C
33CFFA:  LDR             R3, [R0]
33CFFC:  MLA.W           R1, R1, R2, R3
33D000:  LDR.W           R1, [R1,#0x424]
33D004:  CMP             R1, #0
33D006:  BEQ.W           loc_33E02E
33D00A:  LDRB.W          R2, [R1,#0x3A]
33D00E:  AND.W           R2, R2, #7
33D012:  CMP             R2, #2
33D014:  BNE.W           loc_33E148
33D018:  LDRD.W          R2, R0, [R0]
33D01C:  SUBS            R1, R1, R2
33D01E:  MOV             R2, #0xBFE6D523
33D026:  ASRS            R1, R1, #2
33D028:  MULS            R1, R2
33D02A:  LDRB            R0, [R0,R1]
33D02C:  ORR.W           R0, R0, R1,LSL#8
33D030:  LDR.W           R1, =(ScriptParams_ptr - 0x33D038)
33D034:  ADD             R1, PC; ScriptParams_ptr
33D036:  B.W             loc_33E1F2
33D03A:  MOV             R0, R10; jumptable 0033C6C8 case 2440
33D03C:  MOVS            R1, #1; __int16
33D03E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D042:  LDR.W           R0, =(ScriptParams_ptr - 0x33D04A)
33D046:  ADD             R0, PC; ScriptParams_ptr
33D048:  LDR             R0, [R0]; ScriptParams
33D04A:  LDR             R1, [R0]
33D04C:  CMP             R1, #0
33D04E:  BLT.W           loc_33DF76
33D052:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D05E)
33D056:  UXTB            R3, R1
33D058:  LSRS            R1, R1, #8
33D05A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D05C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33D05E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33D060:  LDR             R2, [R0,#4]
33D062:  LDRB            R2, [R2,R1]
33D064:  CMP             R2, R3
33D066:  BNE.W           loc_33DF76
33D06A:  MOVW            R2, #0xA2C
33D06E:  LDR             R0, [R0]
33D070:  MLA.W           R0, R1, R2, R0
33D074:  B.W             loc_33DF78
33D078:  MOVS            R6, #0xFF; jumptable 0033C6C8 default case, case 2441
33D07A:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D07E:  MOV             R0, R10; jumptable 0033C6C8 case 2442
33D080:  MOVS            R1, #1; __int16
33D082:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D086:  LDR.W           R0, =(ScriptParams_ptr - 0x33D092)
33D08A:  LDR.W           R1, =(_ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr - 0x33D094)
33D08E:  ADD             R0, PC; ScriptParams_ptr
33D090:  ADD             R1, PC; _ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr
33D092:  B.W             loc_33DB46
33D096:  MOV             R0, R10; jumptable 0033C6C8 case 2445
33D098:  MOVS            R1, #1; __int16
33D09A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D09E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D0A6)
33D0A2:  ADD             R0, PC; ScriptParams_ptr
33D0A4:  LDR             R0, [R0]; ScriptParams
33D0A6:  LDR             R1, [R0]
33D0A8:  CMP             R1, #0
33D0AA:  BLT.W           loc_33DF84
33D0AE:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D0BA)
33D0B2:  UXTB            R3, R1
33D0B4:  LSRS            R1, R1, #8
33D0B6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D0B8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33D0BA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33D0BC:  LDR             R2, [R0,#4]
33D0BE:  LDRB            R2, [R2,R1]
33D0C0:  CMP             R2, R3
33D0C2:  BNE.W           loc_33DF84
33D0C6:  MOVW            R2, #0xA2C
33D0CA:  LDR             R0, [R0]
33D0CC:  MLA.W           R0, R1, R2, R0
33D0D0:  B.W             loc_33DF86
33D0D4:  SUB.W           R5, R7, #-var_5E; jumptable 0033C6C8 case 2446
33D0D8:  MOV             R0, R10; this
33D0DA:  MOVS            R2, #8; unsigned __int8
33D0DC:  MOV             R1, R5; char *
33D0DE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D0E2:  MOV             R0, R10; this
33D0E4:  MOVS            R1, #2; __int16
33D0E6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D0EA:  LDR.W           R0, =(ScriptParams_ptr - 0x33D0F2)
33D0EE:  ADD             R0, PC; ScriptParams_ptr
33D0F0:  LDR             R0, [R0]; ScriptParams
33D0F2:  LDRD.W          R1, R2, [R0]; char *
33D0F6:  CMP             R2, #0
33D0F8:  IT NE
33D0FA:  MOVNE           R2, #1; unsigned int
33D0FC:  MOV             R0, R5; this
33D0FE:  BLX             j__ZN17CEntryExitManager16SetEntryExitFlagEPKcjb; CEntryExitManager::SetEntryExitFlag(char const*,uint,bool)
33D102:  B.W             loc_33E1FE
33D106:  MOV             R0, R10; jumptable 0033C6C8 case 2449
33D108:  MOVS            R1, #1; __int16
33D10A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D10E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D11A)
33D112:  LDR.W           R2, =(AudioEngine_ptr - 0x33D11C)
33D116:  ADD             R0, PC; ScriptParams_ptr
33D118:  ADD             R2, PC; AudioEngine_ptr
33D11A:  LDR             R0, [R0]; ScriptParams
33D11C:  LDRB            R1, [R0]; unsigned __int8
33D11E:  LDR             R0, [R2]; AudioEngine ; this
33D120:  BLX             j__ZN12CAudioEngine14PauseBeatTrackEh; CAudioEngine::PauseBeatTrack(uchar)
33D124:  B.W             loc_33E1FE
33D128:  MOV             R0, R10; jumptable 0033C6C8 case 2450
33D12A:  MOVS            R1, #2; __int16
33D12C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D130:  LDR.W           R0, =(ScriptParams_ptr - 0x33D13C)
33D134:  MOVS            R4, #0
33D136:  MOVS            R6, #0
33D138:  ADD             R0, PC; ScriptParams_ptr
33D13A:  LDR             R1, [R0]; ScriptParams
33D13C:  LDRD.W          R0, R1, [R1]; int
33D140:  CMP             R1, #0
33D142:  IT EQ
33D144:  MOVEQ           R4, #1
33D146:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
33D14A:  STRB.W          R4, [R0,#0x131]
33D14E:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D152:  MOV             R0, R10; jumptable 0033C6C8 case 2452
33D154:  MOVS            R1, #3; __int16
33D156:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D15A:  LDR.W           R0, =(ScriptParams_ptr - 0x33D166)
33D15E:  LDR.W           R6, =(ThePaths_ptr - 0x33D168)
33D162:  ADD             R0, PC; ScriptParams_ptr
33D164:  ADD             R6, PC; ThePaths_ptr
33D166:  LDR             R0, [R0]; ScriptParams
33D168:  LDM.W           R0, {R1-R3}; float
33D16C:  LDR             R0, [R6]; ThePaths ; this
33D16E:  BLX             j__ZN9CPathFind24MarkRoadNodeAsDontWanderEfff; CPathFind::MarkRoadNodeAsDontWander(float,float,float)
33D172:  B.W             loc_33E1FE
33D176:  LDR.W           R0, =(ThePaths_ptr - 0x33D17E); jumptable 0033C6C8 case 2453
33D17A:  ADD             R0, PC; ThePaths_ptr
33D17C:  LDR             R0, [R0]; ThePaths ; this
33D17E:  BLX             j__ZN9CPathFind30UnMarkAllRoadNodesAsDontWanderEv; CPathFind::UnMarkAllRoadNodesAsDontWander(void)
33D182:  B.W             loc_33E1FE
33D186:  MOV             R0, R10; jumptable 0033C6C8 case 2454
33D188:  MOVS            R1, #2; __int16
33D18A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D18E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D198)
33D192:  MOVS            R1, #3; int
33D194:  ADD             R0, PC; ScriptParams_ptr
33D196:  LDR             R0, [R0]; ScriptParams
33D198:  VLDR            S16, [R0,#4]
33D19C:  LDR             R0, [R0]; this
33D19E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33D1A2:  CMP             R0, #0
33D1A4:  BLT.W           loc_33E1FE
33D1A8:  LDR.W           R1, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x33D1B0)
33D1AC:  ADD             R1, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
33D1AE:  LDR             R1, [R1]; CTheScripts::ScriptCheckpointArray ...
33D1B0:  ADD.W           R0, R1, R0,LSL#3
33D1B4:  LDR             R0, [R0,#4]
33D1B6:  CMP             R0, #0
33D1B8:  BEQ.W           loc_33E1FE
33D1BC:  VMOV            R1, S16; unsigned int
33D1C0:  LDR             R0, [R0,#4]; this
33D1C2:  BLX             j__ZN12CCheckpoints10SetHeadingEjf; CCheckpoints::SetHeading(uint,float)
33D1C6:  B.W             loc_33E1FE
33D1CA:  MOV             R0, R10; jumptable 0033C6C8 case 2455
33D1CC:  MOVS            R1, #1; __int16
33D1CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D1D2:  LDR.W           R0, =(ScriptParams_ptr - 0x33D1DA)
33D1D6:  ADD             R0, PC; ScriptParams_ptr
33D1D8:  LDR             R0, [R0]; ScriptParams
33D1DA:  LDR             R0, [R0]
33D1DC:  VMOV            S0, R0
33D1E0:  MOVS            R0, #0xE4
33D1E2:  VCVT.F32.S32    S0, S0
33D1E6:  VMOV            R1, S0
33D1EA:  NOP
33D1EC:  NOP
33D1EE:  B.W             loc_33E1FE
33D1F2:  MOV             R0, R10; jumptable 0033C6C8 case 2456
33D1F4:  MOVS            R1, #1; __int16
33D1F6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D1FA:  LDR.W           R0, =(ScriptParams_ptr - 0x33D202)
33D1FE:  ADD             R0, PC; ScriptParams_ptr
33D200:  LDR             R0, [R0]; ScriptParams
33D202:  LDR             R0, [R0]
33D204:  VMOV            S0, R0
33D208:  MOVS            R0, #dword_E0; this
33D20A:  VCVT.F32.S32    S0, S0
33D20E:  VMOV            R1, S0; unsigned __int16
33D212:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
33D216:  B.W             loc_33E1FE
33D21A:  MOV             R0, R10; jumptable 0033C6C8 case 2458
33D21C:  MOVS            R1, #2; __int16
33D21E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D222:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D22E)
33D226:  LDR.W           R0, =(ScriptParams_ptr - 0x33D230)
33D22A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D22C:  ADD             R0, PC; ScriptParams_ptr
33D22E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33D230:  LDR             R0, [R0]; ScriptParams
33D232:  LDRD.W          R2, R6, [R0]
33D236:  CMP             R6, #0
33D238:  LDR             R0, [R1]; CPools::ms_pVehiclePool
33D23A:  MOV.W           R1, R2,LSR#8
33D23E:  MOVW            R2, #0xA2C
33D242:  LDR             R0, [R0]
33D244:  MLA.W           R0, R1, R2, R0
33D248:  MOV             R1, R0
33D24A:  LDR.W           R3, [R1,#0x1C]!
33D24E:  LDR             R2, [R1,#4]
33D250:  BEQ.W           loc_33E09E
33D254:  ORR.W           R3, R3, #1
33D258:  STRD.W          R3, R2, [R1]
33D25C:  LDR             R1, [R0,#0x44]
33D25E:  ORR.W           R1, R1, #2
33D262:  B.W             loc_33E0AC
33D266:  MOV             R0, R10; jumptable 0033C6C8 case 2459
33D268:  MOVS            R1, #1; __int16
33D26A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D26E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D276)
33D272:  ADD             R0, PC; ScriptParams_ptr
33D274:  LDR             R0, [R0]; ScriptParams
33D276:  LDR             R1, [R0]; CVehicle *
33D278:  CMP             R1, #0
33D27A:  BLT.W           loc_33DF92
33D27E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D28A)
33D282:  UXTB            R3, R1
33D284:  LSRS            R1, R1, #8
33D286:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D288:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33D28A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33D28C:  LDR             R2, [R0,#4]
33D28E:  LDRB            R2, [R2,R1]
33D290:  CMP             R2, R3
33D292:  BNE.W           loc_33DF92
33D296:  MOVW            R2, #0xA2C
33D29A:  LDR             R0, [R0]
33D29C:  MLA.W           R0, R1, R2, R0
33D2A0:  B.W             loc_33DF94
33D2A4:  MOV             R0, R10; jumptable 0033C6C8 case 2460
33D2A6:  MOVS            R1, #3; __int16
33D2A8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D2AC:  LDR.W           R0, =(ScriptParams_ptr - 0x33D2B8)
33D2B0:  LDR.W           R6, =(TheCamera_ptr - 0x33D2BA)
33D2B4:  ADD             R0, PC; ScriptParams_ptr
33D2B6:  ADD             R6, PC; TheCamera_ptr
33D2B8:  LDR             R0, [R0]; ScriptParams
33D2BA:  LDRD.W          R2, R1, [R0]; int
33D2BE:  LDR             R3, [R0,#(dword_81A910 - 0x81A908)]; float
33D2C0:  LDR             R0, [R6]; TheCamera ; this
33D2C2:  BLX             j__ZN7CCamera14AddShakeSimpleEfif; CCamera::AddShakeSimple(float,int,float)
33D2C6:  B.W             loc_33E1FE
33D2CA:  LDR.W           R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x33D2D2); jumptable 0033C6C8 case 2461
33D2CE:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
33D2D0:  B.W             loc_33DB2C
33D2D4:  MOV             R0, R10; jumptable 0033C6C8 case 2462
33D2D6:  MOVS            R1, #1; __int16
33D2D8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D2DC:  LDR.W           R0, =(ScriptParams_ptr - 0x33D2E8)
33D2E0:  LDR.W           R1, =(_ZN11CPopulation23m_bDontCreateRandomCopsE_ptr - 0x33D2EA)
33D2E4:  ADD             R0, PC; ScriptParams_ptr
33D2E6:  ADD             R1, PC; _ZN11CPopulation23m_bDontCreateRandomCopsE_ptr
33D2E8:  B               loc_33DA5C
33D2EA:  MOV             R0, R10; jumptable 0033C6C8 case 2463
33D2EC:  MOVS            R1, #2; __int16
33D2EE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D2F2:  LDR.W           R0, =(ScriptParams_ptr - 0x33D2FA)
33D2F6:  ADD             R0, PC; ScriptParams_ptr
33D2F8:  LDR             R0, [R0]; ScriptParams
33D2FA:  LDR             R0, [R0]
33D2FC:  ADDS            R1, R0, #1; unsigned int
33D2FE:  BEQ.W           loc_33E038
33D302:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D314)
33D306:  LSRS            R0, R0, #8
33D308:  LDR.W           R2, =(ScriptParams_ptr - 0x33D318)
33D30C:  MOVW            R3, #0x7CC
33D310:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D312:  MOVS            R6, #0
33D314:  ADD             R2, PC; ScriptParams_ptr
33D316:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D318:  LDR             R1, [R1]; CPools::ms_pPedPool
33D31A:  LDR             R1, [R1]
33D31C:  MLA.W           R0, R0, R3, R1
33D320:  LDR             R1, [R2]; ScriptParams
33D322:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33D324:  LDR.W           R2, [R0,#0x490]
33D328:  AND.W           R1, R1, #1
33D32C:  BIC.W           R2, R2, #0x200
33D330:  ORR.W           R1, R2, R1,LSL#9
33D334:  STR.W           R1, [R0,#0x490]
33D338:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D33C:  MOV             R0, R10; jumptable 0033C6C8 case 2464
33D33E:  MOV.W           R1, #0x9A0; int
33D342:  BLX             j__ZN14CRunningScript22ScriptTaskPickUpObjectEi; CRunningScript::ScriptTaskPickUpObject(int)
33D346:  B.W             loc_33E1FE
33D34A:  MOV             R0, R10; jumptable 0033C6C8 case 2465
33D34C:  MOVS            R1, #2; __int16
33D34E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D352:  LDR.W           R0, =(ScriptParams_ptr - 0x33D35A)
33D356:  ADD             R0, PC; ScriptParams_ptr
33D358:  LDR             R0, [R0]; ScriptParams
33D35A:  LDR             R1, [R0]
33D35C:  CMP             R1, #0
33D35E:  BLT.W           loc_33DF9A
33D362:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D36E)
33D366:  UXTB            R3, R1
33D368:  LSRS            R1, R1, #8
33D36A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D36C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33D36E:  LDR             R0, [R0]; CPools::ms_pPedPool
33D370:  LDR             R2, [R0,#4]
33D372:  LDRB            R2, [R2,R1]
33D374:  CMP             R2, R3
33D376:  BNE.W           loc_33DF9A
33D37A:  MOVW            R2, #0x7CC
33D37E:  LDR             R0, [R0]
33D380:  MLA.W           R4, R1, R2, R0
33D384:  B.W             loc_33DF9C
33D388:  MOV             R0, R10; jumptable 0033C6C8 case 2466
33D38A:  MOVS            R1, #1; __int16
33D38C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D390:  LDR.W           R0, =(ScriptParams_ptr - 0x33D398)
33D394:  ADD             R0, PC; ScriptParams_ptr
33D396:  LDR             R0, [R0]; ScriptParams
33D398:  LDR             R0, [R0]
33D39A:  CMP             R0, #0
33D39C:  BLT.W           loc_33DDEE
33D3A0:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33D3AC)
33D3A4:  LSRS            R4, R0, #8
33D3A6:  UXTB            R0, R0
33D3A8:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33D3AA:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33D3AC:  LDR             R1, [R1]; CObject *
33D3AE:  LDR             R2, [R1,#4]
33D3B0:  LDRB            R2, [R2,R4]
33D3B2:  CMP             R2, R0
33D3B4:  BNE.W           loc_33DDEE
33D3B8:  MOV.W           R0, #0x1A4
33D3BC:  LDR             R6, [R1]
33D3BE:  MLA.W           R5, R4, R0, R6
33D3C2:  MOV             R0, R5; this
33D3C4:  BLX             j__ZN11CTheScripts17CleanUpThisObjectEP7CObject; CTheScripts::CleanUpThisObject(CObject *)
33D3C8:  CMP             R5, #0
33D3CA:  BEQ.W           loc_33DDF4
33D3CE:  LDR             R0, [R5,#0x18]
33D3D0:  CBZ             R0, loc_33D3E6
33D3D2:  LDR.W           R1, =(_ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr - 0x33D3DE)
33D3D6:  LDR.W           R2, =(_ZN18CVisibilityPlugins19RenderFadingClumpCBEP8RpAtomic_ptr - 0x33D3E0)
33D3DA:  ADD             R1, PC; _ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv_ptr
33D3DC:  ADD             R2, PC; _ZN18CVisibilityPlugins19RenderFadingClumpCBEP8RpAtomic_ptr
33D3DE:  LDR             R1, [R1]; CClumpModelInfo::SetAtomicRendererCB(RpAtomic *,void *)
33D3E0:  LDR             R2, [R2]; CVisibilityPlugins::RenderFadingClumpCB(RpAtomic *)
33D3E2:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
33D3E6:  MOV.W           R0, #0x1A4
33D3EA:  MLA.W           R0, R4, R0, R6
33D3EE:  LDR.W           R1, [R0,#0x144]
33D3F2:  ORR.W           R1, R1, #0x400000
33D3F6:  STR.W           R1, [R0,#0x144]
33D3FA:  B.W             loc_33DDF4
33D3FE:  MOV             R0, R10; jumptable 0033C6C8 case 2467
33D400:  MOVS            R1, #1; __int16
33D402:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D406:  LDR.W           R0, =(ScriptParams_ptr - 0x33D412)
33D40A:  LDR.W           R1, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x33D414)
33D40E:  ADD             R0, PC; ScriptParams_ptr
33D410:  ADD             R1, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
33D412:  LDR             R0, [R0]; ScriptParams
33D414:  LDR             R1, [R1]; CTheScripts::bDrawCrossHair ...
33D416:  LDR             R0, [R0]
33D418:  CMP             R0, #0
33D41A:  IT NE
33D41C:  MOVNE           R0, #1
33D41E:  B               loc_33DB4C
33D420:  ADD.W           R8, SP, #0xD0+var_B0; jumptable 0033C6C8 case 2468
33D424:  MOV             R0, R10; this
33D426:  MOVS            R2, #8; unsigned __int8
33D428:  MOV             R1, R8; char *
33D42A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D42E:  ADD             R6, SP, #0xD0+var_6C
33D430:  MOV             R0, R10; this
33D432:  MOVS            R2, #8; unsigned __int8
33D434:  MOV             R1, R6; char *
33D436:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D43A:  SUB.W           R5, R7, #-var_5E
33D43E:  MOV             R0, R10; this
33D440:  MOVS            R2, #8; unsigned __int8
33D442:  MOV             R1, R5; char *
33D444:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D448:  MOV             R0, R10; this
33D44A:  MOVS            R1, #3; __int16
33D44C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D450:  LDR.W           R0, =(ScriptParams_ptr - 0x33D45A)
33D454:  MOV             R2, R5; char *
33D456:  ADD             R0, PC; ScriptParams_ptr
33D458:  LDR             R0, [R0]; ScriptParams
33D45A:  LDRD.W          R3, R1, [R0]; char *
33D45E:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33D460:  STRD.W          R1, R0, [SP,#0xD0+var_D0]; int
33D464:  MOV             R0, R8; this
33D466:  MOV             R1, R6; char *
33D468:  BLX             j__ZN14CConversations21SetUpConversationNodeEPcS0_S0_iii; CConversations::SetUpConversationNode(char *,char *,char *,int,int,int)
33D46C:  B.W             loc_33E1FE
33D470:  MOV             R0, R10; jumptable 0033C6C8 case 2470
33D472:  MOVS            R1, #1; __int16
33D474:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D478:  LDR.W           R0, =(ScriptParams_ptr - 0x33D484)
33D47C:  LDR.W           R1, =(_ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr - 0x33D486)
33D480:  ADD             R0, PC; ScriptParams_ptr
33D482:  ADD             R1, PC; _ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr
33D484:  B               loc_33D750
33D486:  MOV             R0, R10; jumptable 0033C6C8 case 2471
33D488:  MOVS            R1, #2; __int16
33D48A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D48E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D49E)
33D492:  MOVW            R3, #0x7CC
33D496:  LDR.W           R0, =(ScriptParams_ptr - 0x33D4A0)
33D49A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D49C:  ADD             R0, PC; ScriptParams_ptr
33D49E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D4A0:  LDR             R0, [R0]; ScriptParams
33D4A2:  LDRD.W          R2, R0, [R0]
33D4A6:  CMP             R0, #0
33D4A8:  LDR             R1, [R1]; CPools::ms_pPedPool
33D4AA:  MOV.W           R2, R2,LSR#8
33D4AE:  LDR             R1, [R1]
33D4B0:  MLA.W           R1, R2, R3, R1
33D4B4:  LDR.W           R2, [R1,#0x490]
33D4B8:  IT NE
33D4BA:  MOVNE           R0, #1
33D4BC:  BIC.W           R2, R2, #0x400
33D4C0:  ORR.W           R0, R2, R0,LSL#10
33D4C4:  B               loc_33D96C
33D4C6:  MOV             R0, R10; jumptable 0033C6C8 case 2472
33D4C8:  MOVS            R1, #1; __int16
33D4CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D4CE:  LDR.W           R0, =(ScriptParams_ptr - 0x33D4D6)
33D4D2:  ADD             R0, PC; ScriptParams_ptr
33D4D4:  LDR             R0, [R0]; ScriptParams
33D4D6:  LDR             R0, [R0]
33D4D8:  CMP             R0, #0
33D4DA:  BLT.W           loc_33E0D6
33D4DE:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D4EA)
33D4E2:  UXTB            R3, R0
33D4E4:  LSRS            R0, R0, #8
33D4E6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D4E8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D4EA:  LDR             R1, [R1]; CPools::ms_pPedPool
33D4EC:  LDR             R2, [R1,#4]
33D4EE:  LDRB            R2, [R2,R0]
33D4F0:  CMP             R2, R3
33D4F2:  BNE.W           loc_33E0D6
33D4F6:  MOVW            R3, #0x7CC
33D4FA:  LDR             R2, [R1]
33D4FC:  MLA.W           R1, R0, R3, R2
33D500:  CMP             R1, #0
33D502:  BEQ.W           loc_33E0D6
33D506:  LDRB.W          R1, [R1,#0x485]
33D50A:  LSLS            R1, R1, #0x18
33D50C:  MOV.W           R1, #0
33D510:  BPL.W           loc_33E0D8
33D514:  MOVW            R3, #0x7CC
33D518:  MLA.W           R0, R0, R3, R2
33D51C:  LDRB.W          R0, [R0,#0x75C]
33D520:  CMP             R0, #2
33D522:  IT EQ
33D524:  MOVEQ           R1, #1
33D526:  B.W             loc_33E0D8
33D52A:  ADD             R5, SP, #0xD0+var_B0; jumptable 0033C6C8 case 2473
33D52C:  MOV             R0, R10; this
33D52E:  MOVS            R2, #0xF; unsigned __int8
33D530:  MOV             R1, R5; char *
33D532:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D536:  MOV             R0, R5; this
33D538:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
33D53C:  LDR.W           R1, =(ScriptParams_ptr - 0x33D544)
33D540:  ADD             R1, PC; ScriptParams_ptr
33D542:  B.W             loc_33E1F2
33D546:  SUB.W           R5, R7, #-var_5E; jumptable 0033C6C8 case 2474
33D54A:  MOV             R0, R10; this
33D54C:  MOVS            R2, #8; unsigned __int8
33D54E:  MOV             R1, R5; char *
33D550:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D554:  MOV             R0, R10; this
33D556:  MOVS            R1, #1; __int16
33D558:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D55C:  LDR.W           R0, =(ScriptParams_ptr - 0x33D56A)
33D560:  MOVS            R6, #0
33D562:  MOVS            R1, #0; char *
33D564:  MOVS            R2, #0; char *
33D566:  ADD             R0, PC; ScriptParams_ptr
33D568:  LDR             R0, [R0]; ScriptParams
33D56A:  LDR             R3, [R0]; char *
33D56C:  MOV             R0, R5; this
33D56E:  STRD.W          R6, R6, [SP,#0xD0+var_D0]; int
33D572:  BLX             j__ZN14CConversations21SetUpConversationNodeEPcS0_S0_iii; CConversations::SetUpConversationNode(char *,char *,char *,int,int,int)
33D576:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D57A:  MOV             R0, R10; jumptable 0033C6C8 case 2475
33D57C:  MOVS            R1, #2; __int16
33D57E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D582:  LDR.W           R0, =(ScriptParams_ptr - 0x33D58A)
33D586:  ADD             R0, PC; ScriptParams_ptr
33D588:  LDR             R0, [R0]; ScriptParams
33D58A:  LDR             R1, [R0]
33D58C:  CMP             R1, #0
33D58E:  BLT.W           loc_33DE18
33D592:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D59E)
33D596:  UXTB            R3, R1
33D598:  LSRS            R1, R1, #8
33D59A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D59C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33D59E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33D5A0:  LDR             R2, [R0,#4]
33D5A2:  LDRB            R2, [R2,R1]
33D5A4:  CMP             R2, R3
33D5A6:  BNE.W           loc_33DE18
33D5AA:  MOVW            R2, #0xA2C
33D5AE:  LDR             R0, [R0]
33D5B0:  MLA.W           R0, R1, R2, R0
33D5B4:  B.W             loc_33DE1A
33D5B8:  DCD __stack_chk_guard_ptr - 0x33C6B8
33D5BC:  DCD ScriptParams_ptr - 0x33C7E0
33D5C0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33C80E
33D5C4:  DCD ScriptParams_ptr - 0x33C810
33D5C8:  DCD aPedDummy+4 - 0x33C856
33D5CC:  DCD RsGlobal_ptr - 0x33C880
33D5D0:  DCD ScriptParams_ptr - 0x33C89C
33D5D4:  DCD ScriptParams_ptr - 0x33C8F8
33D5D8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33C8FA
33D5DC:  DCD ScriptParams_ptr - 0x33C92C
33D5E0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33C92E
33D5E4:  DCD ScriptParams_ptr - 0x33C966
33D5E8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33C968
33D5EC:  DCD ScriptParams_ptr - 0x33C9AE
33D5F0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33C9B0
33D5F4:  DCD ScriptParams_ptr - 0x33C9EA
33D5F8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33C9EC
33D5FC:  DCD ScriptParams_ptr - 0x33CA16
33D600:  DCD ScriptParams_ptr - 0x33CA46
33D604:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CA5A
33D608:  DCD ScriptParams_ptr - 0x33CA8C
33D60C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CA8E
33D610:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CAA4
33D614:  DCD mod_HandlingManager_ptr - 0x33CAB8
33D618:  DCD ScriptParams_ptr - 0x33CAE4
33D61C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CAE6
33D620:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CAFC
33D624:  DCD mod_HandlingManager_ptr - 0x33CB10
33D628:  DCD ScriptParams_ptr - 0x33CB46
33D62C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33CB5A
33D630:  DCD ScriptParams_ptr - 0x33CB86
33D634:  DCD ScriptParams_ptr - 0x33CBBA
33D638:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CBCE
33D63C:  DCD ScriptParams_ptr - 0x33CBFA
33D640:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x33CC10
33D644:  DCD g_fxMan_ptr - 0x33CC24
33D648:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x33CC44
33D64C:  DCD ScriptParams_ptr - 0x33CC64
33D650:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33CC78
33D654:  DCD ScriptParams_ptr - 0x33CCA2
33D658:  DCD ScriptParams_ptr - 0x33CCCA
33D65C:  DCD AudioEngine_ptr - 0x33CCCC
33D660:  DCD ScriptParams_ptr - 0x33CCF6
33D664:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33CD0A
33D668:  DCD ScriptParams_ptr - 0x33CD34
33D66C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33CD48
33D670:  DCD ScriptParams_ptr - 0x33CD7A
33D674:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CD7C
33D678:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33CD92
33D67C:  DCD ScriptParams_ptr - 0x33CDB8
33D680:  DCD gFireManager_ptr - 0x33CDBA
33D684:  DCD ScriptParams_ptr - 0x33CDE8
33D688:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CDEA
33D68C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33CE1C
33D690:  DCD ScriptParams_ptr - 0x33CE1E
33D694:  DCD ScriptParams_ptr - 0x33CE56
33D698:  DCD _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x33CE58
33D69C:  DCD ScriptParams_ptr - 0x33CE72
33D6A0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33CE74
33D6A4:  DCD ScriptParams_ptr - 0x33CEA0
33D6A8:  DCD ScriptParams_ptr - 0x33CECE
33D6AC:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33CEE4
33D6B0:  DCD ScriptParams_ptr - 0x33CF94
33D6B4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33CFA8
33D6B8:  DCD gFireManager_ptr - 0x33CFD0
33D6BC:  DCD ScriptParams_ptr - 0x33CFEC
33D6C0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33CFEE
33D6C4:  DCD ScriptParams_ptr - 0x33D038
33D6C8:  DCD ScriptParams_ptr - 0x33D04A
33D6CC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D05E
33D6D0:  DCD ScriptParams_ptr - 0x33D092
33D6D4:  DCD _ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr - 0x33D094
33D6D8:  DCD ScriptParams_ptr - 0x33D0A6
33D6DC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D0BA
33D6E0:  DCD ScriptParams_ptr - 0x33D0F2
33D6E4:  DCD ScriptParams_ptr - 0x33D11A
33D6E8:  DCD AudioEngine_ptr - 0x33D11C
33D6EC:  DCD ScriptParams_ptr - 0x33D13C
33D6F0:  DCD ScriptParams_ptr - 0x33D166
33D6F4:  DCD ThePaths_ptr - 0x33D168
33D6F8:  DCD ThePaths_ptr - 0x33D17E
33D6FC:  DCD ScriptParams_ptr - 0x33D198
33D700:  DCD _ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x33D1B0
33D704:  DCD ScriptParams_ptr - 0x33D1DA
33D708:  DCD ScriptParams_ptr - 0x33D202
33D70C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D22E
33D710:  DCD ScriptParams_ptr - 0x33D230
33D714:  DCD ScriptParams_ptr - 0x33D276
33D718:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D28A
33D71C:  DCD ScriptParams_ptr - 0x33D2B8
33D720:  DCD TheCamera_ptr - 0x33D2BA
33D724:  DCD _ZN12CPostEffects14m_bNightVisionE_ptr - 0x33D2D2
33D728:  DCD ScriptParams_ptr - 0x33D2E8
33D72C:  DCD _ZN11CPopulation23m_bDontCreateRandomCopsE_ptr - 0x33D2EA
33D730:  DCD ScriptParams_ptr - 0x33D2FA
33D734:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33D314
33D738:  DCD ScriptParams_ptr - 0x33D318
33D73C:  MOV             R0, R10; jumptable 0033C6C8 case 2476
33D73E:  MOVS            R1, #1; __int16
33D740:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D744:  LDR.W           R0, =(ScriptParams_ptr - 0x33D750)
33D748:  LDR.W           R1, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x33D752)
33D74C:  ADD             R0, PC; ScriptParams_ptr
33D74E:  ADD             R1, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
33D750:  LDR             R0, [R0]; ScriptParams
33D752:  LDR             R1, [R1]; CTheScripts::RadarShowBlipOnAllLevels
33D754:  LDR             R0, [R0]
33D756:  CMP             R0, #0
33D758:  IT NE
33D75A:  MOVNE           R0, #1
33D75C:  B               loc_33DC6E
33D75E:  MOV             R0, R10; jumptable 0033C6C8 case 2477
33D760:  MOVS            R1, #1; __int16
33D762:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D766:  LDR.W           R0, =(ScriptParams_ptr - 0x33D76E)
33D76A:  ADD             R0, PC; ScriptParams_ptr
33D76C:  LDR             R0, [R0]; ScriptParams
33D76E:  LDR             R0, [R0]
33D770:  CMP             R0, #4
33D772:  BEQ.W           loc_33E1FE
33D776:  LDR.W           R1, =(TheCamera_ptr - 0x33D780)
33D77A:  MOVS            R6, #0
33D77C:  ADD             R1, PC; TheCamera_ptr
33D77E:  LDR             R1, [R1]; TheCamera
33D780:  STR.W           R0, [R1,#(dword_952058 - 0x951FA8)]
33D784:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D788:  MOV             R0, R10; jumptable 0033C6C8 case 2478
33D78A:  MOVS            R1, #1; __int16
33D78C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D790:  LDR.W           R0, =(ScriptParams_ptr - 0x33D7A0)
33D794:  MOVW            R2, #0x7CC
33D798:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D7A2)
33D79C:  ADD             R0, PC; ScriptParams_ptr
33D79E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D7A0:  LDR             R0, [R0]; ScriptParams
33D7A2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D7A4:  LDR             R0, [R0]
33D7A6:  LDR             R1, [R1]; CPools::ms_pPedPool
33D7A8:  LSRS            R0, R0, #8
33D7AA:  LDR             R1, [R1]
33D7AC:  MLA.W           R0, R0, R2, R1
33D7B0:  LDRB.W          R1, [R0,#0x485]
33D7B4:  LSLS            R1, R1, #0x1F
33D7B6:  MOV.W           R1, #0
33D7BA:  BEQ.W           loc_33E0D8
33D7BE:  LDR.W           R0, [R0,#0x590]
33D7C2:  LDR.W           R0, [R0,#0x5A0]
33D7C6:  CMP             R0, #6
33D7C8:  IT EQ
33D7CA:  MOVEQ           R1, #1
33D7CC:  B.W             loc_33E0D8
33D7D0:  MOV             R0, R10; jumptable 0033C6C8 case 2479
33D7D2:  MOVS            R1, #4; __int16
33D7D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D7D8:  LDR.W           R0, =(ScriptParams_ptr - 0x33D7E8)
33D7DC:  ADD.W           R12, SP, #0xD0+var_B0
33D7E0:  MOVS            R6, #0
33D7E2:  MOVS            R5, #1
33D7E4:  ADD             R0, PC; ScriptParams_ptr
33D7E6:  LDR             R3, [R0]; ScriptParams
33D7E8:  LDM             R3, {R0-R3}
33D7EA:  STM.W           R12, {R0-R2}
33D7EE:  STRD.W          R5, R6, [SP,#0xD0+var_D0]
33D7F2:  STR             R6, [SP,#0xD0+var_C8]
33D7F4:  BLX             j__ZN10CGameLogic9SetUpSkipE7CVectorfbP8CVehicleb; CGameLogic::SetUpSkip(CVector,float,bool,CVehicle *,bool)
33D7F8:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D7FC:  MOV             R0, R10; jumptable 0033C6C8 case 2480
33D7FE:  MOVS            R1, #2; __int16
33D800:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D804:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D816)
33D808:  MOVW            R3, #0xA2C
33D80C:  LDR.W           R0, =(ScriptParams_ptr - 0x33D818)
33D810:  MOVS            R6, #0
33D812:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D814:  ADD             R0, PC; ScriptParams_ptr
33D816:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33D818:  LDR             R0, [R0]; ScriptParams
33D81A:  LDRD.W          R2, R0, [R0]
33D81E:  CMP             R0, #0
33D820:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33D822:  MOV.W           R2, R2,LSR#8
33D826:  LDR             R1, [R1]
33D828:  MLA.W           R1, R2, R3, R1
33D82C:  LDR.W           R2, [R1,#0x430]
33D830:  IT NE
33D832:  MOVNE           R0, #1
33D834:  BIC.W           R2, R2, #0x200000
33D838:  ORR.W           R0, R2, R0,LSL#21
33D83C:  STR.W           R0, [R1,#0x430]
33D840:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D844:  MOV             R0, R10; jumptable 0033C6C8 case 2482
33D846:  MOVS            R1, #1; __int16
33D848:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D84C:  LDR.W           R0, =(ScriptParams_ptr - 0x33D858)
33D850:  LDR.W           R1, =(_ZN11CPopulation23m_AppropriateLoadedCarsE_ptr - 0x33D85A)
33D854:  ADD             R0, PC; ScriptParams_ptr
33D856:  ADD             R1, PC; _ZN11CPopulation23m_AppropriateLoadedCarsE_ptr
33D858:  LDR             R4, [R0]; ScriptParams
33D85A:  LDR             R0, [R1]; this
33D85C:  MOVS            R1, #0; bool
33D85E:  LDR             R2, [R4]
33D860:  CMP             R2, #0
33D862:  IT NE
33D864:  MOVNE           R2, #1; bool
33D866:  BLX             j__ZN15CLoadedCarGroup13PickRandomCarEbb; CLoadedCarGroup::PickRandomCar(bool,bool)
33D86A:  ADDS            R1, R0, #1
33D86C:  STR             R0, [R4]
33D86E:  BEQ.W           loc_33E06C
33D872:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33D87A)
33D876:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33D878:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
33D87A:  LDR.W           R0, [R1,R0,LSL#2]
33D87E:  LDRSB.W         R0, [R0,#0x65]
33D882:  B.W             loc_33E070
33D886:  MOV             R0, R10; jumptable 0033C6C8 case 2483
33D888:  MOVS            R1, #1; __int16
33D88A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D88E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D89E)
33D892:  MOVW            R3, #0xA2C
33D896:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33D8A0)
33D89A:  ADD             R0, PC; ScriptParams_ptr
33D89C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33D89E:  LDR             R0, [R0]; ScriptParams
33D8A0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33D8A2:  LDR             R2, [R0]
33D8A4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33D8A6:  LSRS            R2, R2, #8
33D8A8:  LDR             R1, [R1]
33D8AA:  MLA.W           R1, R2, R3, R1
33D8AE:  LDR.W           R1, [R1,#0x508]
33D8B2:  STR             R1, [R0]
33D8B4:  B.W             loc_33E1F6
33D8B8:  MOV             R0, R10; jumptable 0033C6C8 case 2484
33D8BA:  MOVS            R1, #5; __int16
33D8BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D8C0:  LDR.W           R0, =(ScriptParams_ptr - 0x33D8C8)
33D8C4:  ADD             R0, PC; ScriptParams_ptr
33D8C6:  LDR             R4, [R0]; ScriptParams
33D8C8:  LDRD.W          R0, R2, [R4]
33D8CC:  LDR             R1, [R4,#(dword_81A910 - 0x81A908)]
33D8CE:  STRD.W          R0, R2, [SP,#0xD0+var_B0]
33D8D2:  ADD             R0, SP, #0xD0+var_B0
33D8D4:  MOV.W           R2, #0xFFFFFFFF
33D8D8:  BLX             j__ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi; CEntryExitManager::FindNearestEntryExit(CVector2D const&,float,int)
33D8DC:  LDRD.W          R1, R2, [R4,#(dword_81A914 - 0x81A908)]; int
33D8E0:  CMP             R2, #0
33D8E2:  IT NE
33D8E4:  MOVNE           R2, #1; unsigned int
33D8E6:  BLX             j__ZN17CEntryExitManager25SetEntryExitFlagWithIndexEijb; CEntryExitManager::SetEntryExitFlagWithIndex(int,uint,bool)
33D8EA:  B.W             loc_33E1FE
33D8EE:  MOV             R0, R10; jumptable 0033C6C8 case 2485
33D8F0:  MOVS            R1, #2; __int16
33D8F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D8F6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D906)
33D8FA:  MOVW            R3, #0x7CC
33D8FE:  LDR.W           R0, =(ScriptParams_ptr - 0x33D908)
33D902:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D904:  ADD             R0, PC; ScriptParams_ptr
33D906:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D908:  LDR             R0, [R0]; ScriptParams
33D90A:  LDRD.W          R2, R0, [R0]
33D90E:  CMP             R0, #0
33D910:  LDR             R1, [R1]; CPools::ms_pPedPool
33D912:  MOV.W           R2, R2,LSR#8
33D916:  LDR             R1, [R1]
33D918:  MLA.W           R1, R2, R3, R1
33D91C:  LDR.W           R2, [R1,#0x490]
33D920:  IT NE
33D922:  MOVNE           R0, #1
33D924:  BIC.W           R2, R2, #0x1000
33D928:  ORR.W           R0, R2, R0,LSL#12
33D92C:  B               loc_33D96C
33D92E:  MOV             R0, R10; jumptable 0033C6C8 case 2486
33D930:  MOVS            R1, #2; __int16
33D932:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D936:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D946)
33D93A:  MOVW            R3, #0x7CC
33D93E:  LDR.W           R0, =(ScriptParams_ptr - 0x33D948)
33D942:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D944:  ADD             R0, PC; ScriptParams_ptr
33D946:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D948:  LDR             R0, [R0]; ScriptParams
33D94A:  LDRD.W          R2, R0, [R0]
33D94E:  CMP             R0, #0
33D950:  LDR             R1, [R1]; CPools::ms_pPedPool
33D952:  MOV.W           R2, R2,LSR#8
33D956:  LDR             R1, [R1]
33D958:  MLA.W           R1, R2, R3, R1
33D95C:  LDR.W           R2, [R1,#0x490]
33D960:  IT NE
33D962:  MOVNE           R0, #1
33D964:  BIC.W           R2, R2, #0x800
33D968:  ORR.W           R0, R2, R0,LSL#11
33D96C:  STR.W           R0, [R1,#0x490]
33D970:  B.W             loc_33E1FE
33D974:  SUB.W           R5, R7, #-var_5E; jumptable 0033C6C8 case 2487
33D978:  MOV             R0, R10; this
33D97A:  MOVS            R2, #8; unsigned __int8
33D97C:  MOV             R1, R5; char *
33D97E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33D982:  MOV             R0, R10; this
33D984:  MOVS            R1, #1; __int16
33D986:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D98A:  MOV             R0, R5; char *
33D98C:  MOVS            R1, #2
33D98E:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
33D992:  CMP             R0, #0
33D994:  BLT.W           loc_33E1FE
33D998:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x33D9A6)
33D99C:  MOVS            R6, #0
33D99E:  LDR.W           R2, =(ScriptParams_ptr - 0x33D9AC)
33D9A2:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
33D9A4:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x33D9B0)
33D9A8:  ADD             R2, PC; ScriptParams_ptr
33D9AA:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
33D9AC:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
33D9AE:  LDR             R2, [R2]; ScriptParams
33D9B0:  ADD.W           R0, R1, R0,LSL#5
33D9B4:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
33D9B6:  LDRH            R0, [R0,#0x1C]
33D9B8:  LDRH            R2, [R2]
33D9BA:  ADD.W           R0, R0, R0,LSL#4
33D9BE:  ADD             R0, R1
33D9C0:  LSLS            R2, R2, #7
33D9C2:  UXTB            R2, R2
33D9C4:  LDRH.W          R1, [R0,#0xF]
33D9C8:  BIC.W           R1, R1, #0x80
33D9CC:  ORRS            R1, R2
33D9CE:  STRH.W          R1, [R0,#0xF]
33D9D2:  B.W             loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33D9D6:  MOV             R0, R10; jumptable 0033C6C8 case 2488
33D9D8:  MOVS            R1, #8; __int16
33D9DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33D9DE:  LDR.W           R0, =(ScriptParams_ptr - 0x33D9EA)
33D9E2:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33D9EC)
33D9E6:  ADD             R0, PC; ScriptParams_ptr
33D9E8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33D9EA:  LDR             R0, [R0]; ScriptParams
33D9EC:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33D9EE:  LDRD.W          R12, R6, [R0]
33D9F2:  LDRD.W          R5, LR, [R0,#(dword_81A910 - 0x81A908)]
33D9F6:  LDRD.W          R2, R4, [R0,#(dword_81A918 - 0x81A908)]
33D9FA:  LDRD.W          R3, R0, [R0,#(dword_81A920 - 0x81A908)]; int
33D9FE:  LDR             R1, [R1]; CPools::ms_pPedPool
33DA00:  LSRS            R0, R0, #8
33DA02:  STR             R5, [SP,#0xD0+var_A8]
33DA04:  STRD.W          R12, R6, [SP,#0xD0+var_B0]
33DA08:  STR             R4, [SP,#0xD0+var_64]
33DA0A:  STRD.W          LR, R2, [SP,#0xD0+var_6C]
33DA0E:  MOVW            R2, #0x7CC
33DA12:  LDR             R1, [R1]
33DA14:  MLA.W           R0, R0, R2, R1
33DA18:  LDR.W           R2, =(g_fx_ptr - 0x33DA22)
33DA1C:  ADD             R1, SP, #0xD0+var_B0; CVector *
33DA1E:  ADD             R2, PC; g_fx_ptr
33DA20:  VLDR            S0, [R0,#0x130]
33DA24:  LDR             R0, [R2]; g_fx ; this
33DA26:  ADD             R2, SP, #0xD0+var_6C; CVector *
33DA28:  VSTR            S0, [SP,#0xD0+var_D0]
33DA2C:  BLX             j__ZN4Fx_c8AddBloodER7CVectorS1_if; Fx_c::AddBlood(CVector &,CVector &,int,float)
33DA30:  B               loc_33E1FE
33DA32:  MOV             R0, R10; jumptable 0033C6C8 case 2489
33DA34:  MOVS            R1, #1; __int16
33DA36:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DA3A:  LDR.W           R0, =(ScriptParams_ptr - 0x33DA46)
33DA3E:  LDR.W           R1, =(_ZN4CHud29bScriptDontDisplayVehicleNameE_ptr - 0x33DA48)
33DA42:  ADD             R0, PC; ScriptParams_ptr
33DA44:  ADD             R1, PC; _ZN4CHud29bScriptDontDisplayVehicleNameE_ptr
33DA46:  B               loc_33DA5C
33DA48:  MOV             R0, R10; jumptable 0033C6C8 case 2490
33DA4A:  MOVS            R1, #1; __int16
33DA4C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DA50:  LDR.W           R0, =(ScriptParams_ptr - 0x33DA5C)
33DA54:  LDR.W           R1, =(_ZN4CHud26bScriptDontDisplayAreaNameE_ptr - 0x33DA5E)
33DA58:  ADD             R0, PC; ScriptParams_ptr
33DA5A:  ADD             R1, PC; _ZN4CHud26bScriptDontDisplayAreaNameE_ptr
33DA5C:  LDR             R0, [R0]; ScriptParams
33DA5E:  MOVS            R6, #0
33DA60:  LDR             R1, [R1]; CHud::bScriptDontDisplayVehicleName
33DA62:  LDR             R0, [R0]
33DA64:  CMP             R0, #0
33DA66:  MOV.W           R0, #0
33DA6A:  IT EQ
33DA6C:  MOVEQ           R0, #1
33DA6E:  STRB            R0, [R1]; CHud::bScriptDontDisplayVehicleName
33DA70:  B               loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DA72:  MOV             R0, R10; jumptable 0033C6C8 case 2491
33DA74:  MOVS            R1, #2; __int16
33DA76:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DA7A:  LDR.W           R0, =(ScriptParams_ptr - 0x33DA82)
33DA7E:  ADD             R0, PC; ScriptParams_ptr
33DA80:  LDR             R0, [R0]; ScriptParams
33DA82:  LDR             R1, [R0]
33DA84:  CMP             R1, #0
33DA86:  BLT.W           loc_33DE42
33DA8A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DA96)
33DA8E:  UXTB            R3, R1
33DA90:  LSRS            R1, R1, #8
33DA92:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DA94:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33DA96:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33DA98:  LDR             R2, [R0,#4]
33DA9A:  LDRB            R2, [R2,R1]
33DA9C:  CMP             R2, R3
33DA9E:  BNE.W           loc_33DE42
33DAA2:  MOVW            R2, #0xA2C
33DAA6:  LDR             R0, [R0]
33DAA8:  MLA.W           R0, R1, R2, R0
33DAAC:  B               loc_33DE44
33DAAE:  MOV             R0, R10; jumptable 0033C6C8 case 2492
33DAB0:  MOVS            R1, #4; __int16
33DAB2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DAB6:  LDR.W           R0, =(ScriptParams_ptr - 0x33DAC0)
33DABA:  MOVS            R6, #0
33DABC:  ADD             R0, PC; ScriptParams_ptr
33DABE:  LDR             R0, [R0]; ScriptParams
33DAC0:  LDR             R0, [R0]
33DAC2:  CMP             R0, #0
33DAC4:  BLT.W           loc_33E00E
33DAC8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33DAD4)
33DACC:  UXTB            R3, R0
33DACE:  LSRS            R0, R0, #8
33DAD0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33DAD2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33DAD4:  LDR             R1, [R1]; CPools::ms_pPedPool
33DAD6:  LDR             R2, [R1,#4]
33DAD8:  LDRB            R2, [R2,R0]
33DADA:  CMP             R2, R3
33DADC:  BNE.W           loc_33E00E
33DAE0:  MOVW            R2, #0x7CC
33DAE4:  LDR             R1, [R1]
33DAE6:  MLA.W           R1, R0, R2, R1
33DAEA:  B               loc_33E010
33DAEC:  MOV             R0, R10; jumptable 0033C6C8 case 2493
33DAEE:  MOVS            R1, #1; __int16
33DAF0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DAF4:  LDR.W           R0, =(ScriptParams_ptr - 0x33DB04)
33DAF8:  MOVS            R3, #0
33DAFA:  LDR.W           R1, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x33DB0A)
33DAFE:  MOVS            R6, #0
33DB00:  ADD             R0, PC; ScriptParams_ptr
33DB02:  LDR.W           R2, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x33DB0E)
33DB06:  ADD             R1, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
33DB08:  LDR             R0, [R0]; ScriptParams
33DB0A:  ADD             R2, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
33DB0C:  LDR             R1, [R1]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
33DB0E:  LDR             R2, [R2]; CTheScripts::bMiniGameInProgress ...
33DB10:  LDR             R0, [R0]
33DB12:  CMP             R0, #0
33DB14:  IT NE
33DB16:  MOVNE           R0, #1
33DB18:  STRB.W          R0, [R10,#0xE8]
33DB1C:  IT EQ
33DB1E:  MOVEQ           R3, #1
33DB20:  STRB            R3, [R1]; CTheScripts::bDisplayNonMiniGameHelpMessages
33DB22:  STRB            R0, [R2]; CTheScripts::bMiniGameInProgress
33DB24:  B               loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DB26:  LDR.W           R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x33DB2E); jumptable 0033C6C8 case 2494
33DB2A:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
33DB2C:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress
33DB2E:  LDRB            R1, [R0]; CTheScripts::bMiniGameInProgress
33DB30:  B               loc_33E0D8
33DB32:  MOV             R0, R10; jumptable 0033C6C8 case 2495
33DB34:  MOVS            R1, #1; __int16
33DB36:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DB3A:  LDR.W           R0, =(ScriptParams_ptr - 0x33DB46)
33DB3E:  LDR.W           R1, =(_ZN11CTheScripts19ForceRandomCarModelE_ptr - 0x33DB48)
33DB42:  ADD             R0, PC; ScriptParams_ptr
33DB44:  ADD             R1, PC; _ZN11CTheScripts19ForceRandomCarModelE_ptr
33DB46:  LDR             R0, [R0]; ScriptParams
33DB48:  LDR             R1, [R1]; CEventGunShot::ms_fGunShotSenseRangeForRiot2
33DB4A:  LDR             R0, [R0]
33DB4C:  STR             R0, [R1]; CEventGunShot::ms_fGunShotSenseRangeForRiot2
33DB4E:  B               loc_33E1FE
33DB50:  MOV             R0, R10; jumptable 0033C6C8 case 2496
33DB52:  MOVS            R1, #6; __int16
33DB54:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DB58:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DB60)
33DB5C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DB5E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33DB60:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33DB62:  LDR             R1, [R0,#8]
33DB64:  CMP             R1, #0
33DB66:  BEQ.W           loc_33E0B0
33DB6A:  LDR.W           R2, =(ScriptParams_ptr - 0x33DB74)
33DB6E:  SUBS            R4, R1, #1
33DB70:  ADD             R2, PC; ScriptParams_ptr
33DB72:  LDR             R2, [R2]; ScriptParams
33DB74:  VLDR            S16, [R2]
33DB78:  VLDR            S18, [R2,#4]
33DB7C:  VLDR            S20, [R2,#8]
33DB80:  VLDR            S22, [R2,#0xC]
33DB84:  VLDR            S24, [R2,#0x10]
33DB88:  MOVW            R2, #0xA2C
33DB8C:  MULS            R2, R1
33DB8E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DB96)
33DB92:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DB94:  LDR.W           R8, [R1]; CPools::ms_pVehiclePool ...
33DB98:  LDR.W           R1, =(ScriptParams_ptr - 0x33DBA4)
33DB9C:  SUBW            R6, R2, #0xA2C
33DBA0:  ADD             R1, PC; ScriptParams_ptr
33DBA2:  LDR.W           R9, [R1]; ScriptParams
33DBA6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DBAE)
33DBAA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DBAC:  LDR.W           R11, [R1]; CPools::ms_pVehiclePool ...
33DBB0:  B               loc_33DBBC
33DBB2:  SUBS            R4, #1
33DBB4:  LDR.W           R0, [R8]; CPools::ms_pVehiclePool
33DBB8:  SUBW            R6, R6, #0xA2C
33DBBC:  LDR             R1, [R0,#4]
33DBBE:  LDRSB           R1, [R1,R4]
33DBC0:  CMP             R1, #0
33DBC2:  BLT             loc_33DC44
33DBC4:  LDR             R0, [R0]
33DBC6:  ADDS            R5, R0, R6
33DBC8:  BEQ             loc_33DC44
33DBCA:  MOV             R0, R5; this
33DBCC:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
33DBD0:  CMP             R0, #1
33DBD2:  BEQ             loc_33DBDE
33DBD4:  MOV             R0, R5; this
33DBD6:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
33DBDA:  CMP             R0, #2
33DBDC:  BNE             loc_33DC44
33DBDE:  LDRSH.W         R1, [R5,#0x26]
33DBE2:  LDR.W           R0, [R9,#(dword_81A91C - 0x81A908)]
33DBE6:  CMP             R0, R1
33DBE8:  BEQ             loc_33DBF0
33DBEA:  CMP.W           R0, #0xFFFFFFFF
33DBEE:  BGT             loc_33DC44
33DBF0:  MOV             R0, R5; this
33DBF2:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
33DBF6:  CBZ             R0, loc_33DC44
33DBF8:  VMOV            R1, S16; this
33DBFC:  LDR.W           R12, [R5,#0x14]
33DC00:  VMOV            R2, S18; float
33DC04:  VSTR            S22, [SP,#0xD0+var_D0]
33DC08:  VMOV            R3, S20; float
33DC0C:  ADD.W           R0, R12, #0x30 ; '0'
33DC10:  CMP.W           R12, #0
33DC14:  VSTR            S24, [SP,#0xD0+var_CC]
33DC18:  IT EQ
33DC1A:  ADDEQ           R0, R5, #4; CVector *
33DC1C:  BLX             j__Z19IsVecIn2dAngledAreaR7CVectorfffff; IsVecIn2dAngledArea(CVector &,float,float,float,float,float)
33DC20:  CMP             R0, #1
33DC22:  BNE             loc_33DC44
33DC24:  LDR.W           R0, [R11]; CPools::ms_pVehiclePool
33DC28:  MOV             R2, #0xBFE6D523
33DC30:  LDRD.W          R1, R0, [R0]
33DC34:  SUBS            R1, R5, R1
33DC36:  ASRS            R1, R1, #2
33DC38:  MULS            R1, R2
33DC3A:  LDRB            R0, [R0,R1]
33DC3C:  ORR.W           R0, R0, R1,LSL#8
33DC40:  CBNZ            R4, loc_33DC4E
33DC42:  B               loc_33E0B4
33DC44:  MOV.W           R0, #0xFFFFFFFF
33DC48:  CMP             R4, #0
33DC4A:  BEQ.W           loc_33E0B4
33DC4E:  ADDS            R1, R0, #1
33DC50:  BEQ             loc_33DBB2
33DC52:  B               loc_33E0B4
33DC54:  MOV             R0, R10; jumptable 0033C6C8 case 2497
33DC56:  MOVS            R1, #1; __int16
33DC58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DC5C:  LDR.W           R0, =(ScriptParams_ptr - 0x33DC68)
33DC60:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x33DC6A)
33DC64:  ADD             R0, PC; ScriptParams_ptr
33DC66:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
33DC68:  LDR             R0, [R0]; ScriptParams
33DC6A:  LDR             R1, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
33DC6C:  LDR             R0, [R0]
33DC6E:  STRB            R0, [R1]; CTheScripts::RadarShowBlipOnAllLevels
33DC70:  B               loc_33E1FE
33DC72:  BLX             j__ZN7CDarkel14FailKillFrenzyEv; jumptable 0033C6C8 case 2498
33DC76:  B               loc_33E1FE
33DC78:  MOV             R0, R10; jumptable 0033C6C8 case 2499
33DC7A:  MOVS            R1, #6; __int16
33DC7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33DC80:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DC8A)
33DC84:  MOVS            R6, #0
33DC86:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DC88:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33DC8A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33DC8C:  LDR.W           R12, [R0,#8]
33DC90:  CMP.W           R12, #1
33DC94:  BLT.W           loc_33DDC8
33DC98:  LDR.W           R2, =(ScriptParams_ptr - 0x33DCA0)
33DC9C:  ADD             R2, PC; ScriptParams_ptr
33DC9E:  LDR             R4, [R2]; ScriptParams
33DCA0:  LDM.W           R4, {R1,R3,R5}
33DCA4:  LDRD.W          R2, LR, [R4,#(dword_81A914 - 0x81A908)]
33DCA8:  VMOV            S10, R1
33DCAC:  MOV             R9, R1
33DCAE:  VMOV            S4, LR
33DCB2:  LDR.W           R8, [R4,#(dword_81A91C - 0x81A908)]
33DCB6:  VMOV            S8, R2
33DCBA:  VMOV            S6, R3
33DCBE:  VCMPE.F32       S10, S8
33DCC2:  MOV             R4, R8
33DCC4:  VMRS            APSR_nzcv, FPSCR
33DCC8:  VCMPE.F32       S6, S4
33DCCC:  VMOV            S0, R8
33DCD0:  VMOV            S2, R5
33DCD4:  ITT GT
33DCD6:  MOVGT           R9, R2
33DCD8:  MOVGT           R2, R1
33DCDA:  VMRS            APSR_nzcv, FPSCR
33DCDE:  MOV             R1, LR
33DCE0:  VCMPE.F32       S2, S0
33DCE4:  VMOV            S26, R9
33DCE8:  MOV.W           R9, #0
33DCEC:  VMOV            S24, R2
33DCF0:  IT GT
33DCF2:  MOVGT           R1, R3
33DCF4:  VMRS            APSR_nzcv, FPSCR
33DCF8:  VCMPE.F32       S6, S4
33DCFC:  VMOV            S20, R1
33DD00:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33DD08)
33DD04:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33DD06:  LDR.W           R11, [R1]; CPools::ms_pVehiclePool ...
33DD0A:  IT GT
33DD0C:  MOVGT           R4, R5
33DD0E:  IT GT
33DD10:  MOVGT           R5, R8
33DD12:  VMRS            APSR_nzcv, FPSCR
33DD16:  VMOV            S16, R4
33DD1A:  VMOV            S18, R5
33DD1E:  SUB.W           R8, R12, #1
33DD22:  MOV.W           R4, #0
33DD26:  IT GT
33DD28:  MOVGT           R3, LR
33DD2A:  VMOV            S22, R3
33DD2E:  B               loc_33DD3A
33DD30:  ADDS            R4, #1
33DD32:  LDR.W           R0, [R11]; CPools::ms_pVehiclePool
33DD36:  ADDW            R6, R6, #0xA2C
33DD3A:  LDR             R1, [R0,#4]
33DD3C:  LDRSB           R1, [R1,R4]
33DD3E:  CMP             R1, #0
33DD40:  BLT             loc_33DD5A
33DD42:  LDR             R0, [R0]
33DD44:  ADDS            R5, R0, R6
33DD46:  BEQ             loc_33DD5A
33DD48:  MOV             R0, R5; this
33DD4A:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
33DD4E:  CMP             R0, #0
33DD50:  ITT NE
33DD52:  LDRHNE          R0, [R5,#0x26]
33DD54:  CMPNE.W         R0, #0x1AE
33DD58:  BNE             loc_33DD60
33DD5A:  CMP             R8, R4
33DD5C:  BNE             loc_33DD30
33DD5E:  B               loc_33DDC6
33DD60:  LDR             R1, [R5,#0x14]
33DD62:  ADD.W           R0, R1, #0x30 ; '0'
33DD66:  CMP             R1, #0
33DD68:  IT EQ
33DD6A:  ADDEQ           R0, R5, #4
33DD6C:  VLDR            S0, [R0]
33DD70:  VCMPE.F32       S0, S26
33DD74:  VMRS            APSR_nzcv, FPSCR
33DD78:  BLT             loc_33DD5A
33DD7A:  VCMPE.F32       S0, S24
33DD7E:  VMRS            APSR_nzcv, FPSCR
33DD82:  BGT             loc_33DD5A
33DD84:  VLDR            S0, [R0,#4]
33DD88:  VCMPE.F32       S0, S22
33DD8C:  VMRS            APSR_nzcv, FPSCR
33DD90:  BLT             loc_33DD5A
33DD92:  VCMPE.F32       S0, S20
33DD96:  VMRS            APSR_nzcv, FPSCR
33DD9A:  BGT             loc_33DD5A
33DD9C:  VLDR            S0, [R0,#8]
33DDA0:  MOVS            R0, #0
33DDA2:  MOVS            R1, #0
33DDA4:  VCMPE.F32       S0, S18
33DDA8:  VMRS            APSR_nzcv, FPSCR
33DDAC:  VCMPE.F32       S0, S16
33DDB0:  IT GE
33DDB2:  MOVGE           R0, #1
33DDB4:  VMRS            APSR_nzcv, FPSCR
33DDB8:  IT LE
33DDBA:  MOVLE           R1, #1
33DDBC:  ANDS            R0, R1
33DDBE:  ORR.W           R9, R9, R0
33DDC2:  CMP             R8, R4
33DDC4:  BNE             loc_33DD30
33DDC6:  MOV             R6, R9
33DDC8:  AND.W           R1, R6, #1
33DDCC:  B               loc_33E0D8
33DDCE:  CMP             R0, #7
33DDD0:  BGT.W           loc_33E1FE
33DDD4:  MOV             R0, R10; this
33DDD6:  MOVS            R1, #2; unsigned __int8
33DDD8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33DDDC:  MOV             R1, R8; char *
33DDDE:  MOV             R4, R0
33DDE0:  BLX             strcpy
33DDE4:  MOV             R0, R4; dest
33DDE6:  MOV             R1, R9; src
33DDE8:  BLX             strcat
33DDEC:  B               loc_33E1FE
33DDEE:  MOVS            R0, #0; this
33DDF0:  BLX             j__ZN11CTheScripts17CleanUpThisObjectEP7CObject; CTheScripts::CleanUpThisObject(CObject *)
33DDF4:  LDRB.W          R0, [R10,#0xE6]
33DDF8:  CMP             R0, #0
33DDFA:  BEQ.W           loc_33E1FE
33DDFE:  LDR.W           R0, =(ScriptParams_ptr - 0x33DE0A)
33DE02:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33DE0C)
33DE06:  ADD             R0, PC; ScriptParams_ptr
33DE08:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33DE0A:  LDR             R2, [R0]; ScriptParams
33DE0C:  LDR             R0, [R1]; this
33DE0E:  LDR             R1, [R2]; int
33DE10:  MOVS            R2, #3; unsigned __int8
33DE12:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
33DE16:  B               loc_33E1FE
33DE18:  MOVS            R0, #0; this
33DE1A:  BLX             j__ZN8CVehicle19PickRandomPassengerEv; CVehicle::PickRandomPassenger(void)
33DE1E:  MOVS            R6, #0
33DE20:  CMP             R0, #0
33DE22:  BEQ.W           loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DE26:  LDR.W           R1, =(ScriptParams_ptr - 0x33DE34)
33DE2A:  MOVS            R2, #0; unsigned int
33DE2C:  MOV.W           R3, #0x3F800000; float
33DE30:  ADD             R1, PC; ScriptParams_ptr
33DE32:  LDR             R1, [R1]; ScriptParams
33DE34:  LDRH            R1, [R1,#(dword_81A90C - 0x81A908)]; unsigned __int16
33DE36:  STRD.W          R6, R6, [SP,#0xD0+var_D0]; unsigned __int8
33DE3A:  STR             R6, [SP,#0xD0+var_C8]; unsigned __int8
33DE3C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
33DE40:  B               loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DE42:  MOVS            R0, #0
33DE44:  LDR.W           R1, =(ScriptParams_ptr - 0x33DE50)
33DE48:  ADDW            R0, R0, #0x5B4
33DE4C:  ADD             R1, PC; ScriptParams_ptr
33DE4E:  LDR             R1, [R1]; ScriptParams
33DE50:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33DE52:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
33DE56:  B               loc_33DF14
33DE58:  MOVS            R5, #0
33DE5A:  LDR.W           R0, =(ScriptParams_ptr - 0x33DE62)
33DE5E:  ADD             R0, PC; ScriptParams_ptr
33DE60:  LDR             R1, [R0]; ScriptParams
33DE62:  MOV.W           R0, #0xFFFFFFFF
33DE66:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33DE68:  CMP             R1, #0x10; switch 17 cases
33DE6A:  BHI.W           def_33DE6E; jumptable 0033DE6E default case, case 11
33DE6E:  TBH.W           [PC,R1,LSL#1]; switch jump
33DE72:  DCW 0x11; jump table for switch statement
33DE74:  DCW 0x170
33DE76:  DCW 0x17B
33DE78:  DCW 0x180
33DE7A:  DCW 0x18B
33DE7C:  DCW 0x190
33DE7E:  DCW 0x195
33DE80:  DCW 0x19A
33DE82:  DCW 0x19F
33DE84:  DCW 0x1A4
33DE86:  DCW 0x1A9
33DE88:  DCW 0x1BE
33DE8A:  DCW 0x1AE
33DE8C:  DCW 0x1B1
33DE8E:  DCW 0x1B4
33DE90:  DCW 0x1B7
33DE92:  DCW 0x1BA
33DE94:  MOV             R0, R5; jumptable 0033DE6E case 0
33DE96:  MOVS            R1, #0; int
33DE98:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33DE9C:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33DE9E:  MOVS            R1, #0
33DEA0:  LDR.W           R0, =(ScriptParams_ptr - 0x33DEA8)
33DEA4:  ADD             R0, PC; ScriptParams_ptr
33DEA6:  LDR             R0, [R0]; ScriptParams
33DEA8:  LDRD.W          R2, R3, [R0,#(dword_81A90C - 0x81A908)]
33DEAC:  VLDR            S0, [R0,#0xC]
33DEB0:  MOVS            R0, #1
33DEB2:  STR             R0, [SP,#0xD0+var_CC]
33DEB4:  B               loc_33E020
33DEB6:  MOVS            R5, #0
33DEB8:  MOV             R0, R5; this
33DEBA:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
33DEBE:  CMP             R0, #0
33DEC0:  BEQ.W           loc_33E0BA
33DEC4:  MOVS            R1, #1
33DEC6:  B               loc_33E0D8
33DEC8:  MOVS            R5, #0
33DECA:  MOVS            R1, #0
33DECC:  CMP             R5, #0
33DECE:  BEQ.W           loc_33E0D8
33DED2:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x33DEE2)
33DED6:  MOV.W           R3, #0x194
33DEDA:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x33DEE4)
33DEDE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
33DEE0:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
33DEE2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
33DEE4:  LDR             R2, [R2]; CWorld::Players ...
33DEE6:  LDR             R0, [R0]; int
33DEE8:  SMULBB.W        R3, R0, R3
33DEEC:  LDR             R2, [R2,R3]
33DEEE:  CMP             R2, #0
33DEF0:  BEQ.W           loc_33E0D8
33DEF4:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
33DEF8:  LDR.W           R1, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x33DF02)
33DEFC:  LDR             R2, [R0,#8]
33DEFE:  ADD             R1, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
33DF00:  VLDR            D16, [R0]
33DF04:  STR             R2, [SP,#0xD0+var_A8]
33DF06:  ADD             R2, SP, #0xD0+var_B0; CVector *
33DF08:  LDR             R0, [R1]; this
33DF0A:  MOV             R1, R5; CObject *
33DF0C:  VSTR            D16, [SP,#0xD0+var_B0]
33DF10:  BLX             j__ZN17CScriptsForBrains34IsObjectWithinBrainActivationRangeEP7CObjectRK7CVector; CScriptsForBrains::IsObjectWithinBrainActivationRange(CObject *,CVector const&)
33DF14:  MOV             R1, R0
33DF16:  CMP             R1, #0
33DF18:  IT NE
33DF1A:  MOVNE           R1, #1
33DF1C:  B               loc_33E0D8
33DF1E:  MOVS            R2, #0; CObject *
33DF20:  LDR.W           R0, =(ScriptParams_ptr - 0x33DF2C)
33DF24:  LDR.W           R3, =(AudioEngine_ptr - 0x33DF2E)
33DF28:  ADD             R0, PC; ScriptParams_ptr
33DF2A:  ADD             R3, PC; AudioEngine_ptr
33DF2C:  LDR             R0, [R0]; ScriptParams
33DF2E:  LDRH            R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int16
33DF30:  LDR             R0, [R3]; AudioEngine ; this
33DF32:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP7CObject; CAudioEngine::ReportMissionAudioEvent(ushort,CObject *)
33DF36:  B               loc_33E1FE
33DF38:  MOVS            R2, #0; CObject *
33DF3A:  LDR.W           R0, =(ScriptParams_ptr - 0x33DF46)
33DF3E:  LDR.W           R1, =(AudioEngine_ptr - 0x33DF48)
33DF42:  ADD             R0, PC; ScriptParams_ptr
33DF44:  ADD             R1, PC; AudioEngine_ptr
33DF46:  LDR             R0, [R0]; ScriptParams
33DF48:  LDR             R3, [R0]
33DF4A:  LDR             R0, [R1]; AudioEngine ; this
33DF4C:  ADD.W           R1, R3, #0xFF
33DF50:  UXTB            R1, R1; unsigned __int8
33DF52:  BLX             j__ZN12CAudioEngine26AttachMissionAudioToObjectEhP7CObject; CAudioEngine::AttachMissionAudioToObject(uchar,CObject *)
33DF56:  B               loc_33E1FE
33DF58:  MOVS            R0, #0
33DF5A:  CMP             R4, #0
33DF5C:  BEQ.W           loc_33E1FE
33DF60:  LDR.W           R1, =(ScriptParams_ptr - 0x33DF68)
33DF64:  ADD             R1, PC; ScriptParams_ptr
33DF66:  LDR             R1, [R1]; ScriptParams
33DF68:  LDR             R1, [R1,#(dword_81A91C - 0x81A908)]
33DF6A:  CMP             R1, #0
33DF6C:  IT NE
33DF6E:  MOVNE           R4, #0
33DF70:  STR.W           R4, [R0,#0x12C]
33DF74:  B               loc_33E1FE
33DF76:  MOVS            R0, #0; this
33DF78:  BLX             j__ZN8CVehicle13GetRemapIndexEv; CVehicle::GetRemapIndex(void)
33DF7C:  LDR.W           R1, =(ScriptParams_ptr - 0x33DF84)
33DF80:  ADD             R1, PC; ScriptParams_ptr
33DF82:  B               loc_33E1F2
33DF84:  MOVS            R0, #0; this
33DF86:  BLX             j__ZN11CAutomobile24GetMovingCollisionOffsetEv; CAutomobile::GetMovingCollisionOffset(void)
33DF8A:  LDR.W           R1, =(ScriptParams_ptr - 0x33DF92)
33DF8E:  ADD             R1, PC; ScriptParams_ptr
33DF90:  B               loc_33E1F2
33DF92:  MOVS            R0, #0; this
33DF94:  BLX             j__ZN17CVehicleRecording24ChangeCarPlaybackToUseAIEP8CVehicle; CVehicleRecording::ChangeCarPlaybackToUseAI(CVehicle *)
33DF98:  B               loc_33E1FE
33DF9A:  MOVS            R4, #0
33DF9C:  LDR.W           R0, =(ScriptParams_ptr - 0x33DFAA)
33DFA0:  MOVS            R6, #0
33DFA2:  LDR.W           R1, [R4,#0x440]
33DFA6:  ADD             R0, PC; ScriptParams_ptr
33DFA8:  LDR             R0, [R0]; ScriptParams
33DFAA:  LDR.W           R8, [R0,#(dword_81A90C - 0x81A908)]
33DFAE:  ADDS            R0, R1, #4; this
33DFB0:  MOVS            R1, #0; int
33DFB2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
33DFB6:  CMP             R0, #0
33DFB8:  BEQ.W           loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DFBC:  LDR.W           R0, [R4,#0x440]
33DFC0:  MOVS            R1, #0; int
33DFC2:  MOVS            R6, #0
33DFC4:  ADDS            R0, #4; this
33DFC6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
33DFCA:  LDR             R1, [R0]
33DFCC:  LDR             R1, [R1,#0x14]
33DFCE:  BLX             R1
33DFD0:  MOVW            R1, #0x133
33DFD4:  CMP             R0, R1
33DFD6:  BNE.W           loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33DFDA:  LDR.W           R0, [R4,#0x440]
33DFDE:  MOVS            R1, #0; int
33DFE0:  MOVS            R6, #0
33DFE2:  ADDS            R0, #4; this
33DFE4:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
33DFE8:  CMP.W           R8, #0
33DFEC:  MOV             R1, R4; CPed *
33DFEE:  IT NE
33DFF0:  MOVNE.W         R8, #1
33DFF4:  MOV             R5, R0
33DFF6:  MOV             R2, R8; bool
33DFF8:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
33DFFC:  LDR             R0, [R5]
33DFFE:  MOV             R1, R4
33E000:  MOVS            R2, #1
33E002:  MOVS            R3, #0
33E004:  LDR.W           R12, [R0,#0x1C]
33E008:  MOV             R0, R5
33E00A:  BLX             R12
33E00C:  B               loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33E00E:  MOVS            R1, #0; CPed *
33E010:  LDR             R0, =(ScriptParams_ptr - 0x33E016)
33E012:  ADD             R0, PC; ScriptParams_ptr
33E014:  LDR             R0, [R0]; ScriptParams
33E016:  LDRD.W          R2, R3, [R0,#(dword_81A90C - 0x81A908)]; float
33E01A:  VLDR            S0, [R0,#0xC]
33E01E:  STR             R6, [SP,#0xD0+var_CC]; bool
33E020:  MOV             R0, R10; this
33E022:  STR             R6, [SP,#0xD0+var_C8]; bool
33E024:  VSTR            S0, [SP,#0xD0+var_D0]
33E028:  BLX             j__ZN14CRunningScript18SetCharCoordinatesEP4CPedfffbb; CRunningScript::SetCharCoordinates(CPed *,float,float,float,bool,bool)
33E02C:  B               loc_33E200; jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33E02E:  LDR             R1, =(ScriptParams_ptr - 0x33E038)
33E030:  MOV.W           R0, #0xFFFFFFFF
33E034:  ADD             R1, PC; ScriptParams_ptr
33E036:  B               loc_33E1F2
33E038:  MOVS            R0, #(byte_9+3); this
33E03A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33E03E:  MOV             R5, R0
33E040:  LDR             R0, =(ScriptParams_ptr - 0x33E046)
33E042:  ADD             R0, PC; ScriptParams_ptr
33E044:  LDR             R0, [R0]; ScriptParams
33E046:  LDR             R4, [R0,#(dword_81A90C - 0x81A908)]
33E048:  MOV             R0, R5; this
33E04A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
33E04E:  LDR             R0, =(_ZTV39CTaskSimpleSetCharIgnoreWeaponRangeFlag_ptr - 0x33E05C)
33E050:  MOV.W           R1, #0xFFFFFFFF; int
33E054:  STRB            R4, [R5,#8]
33E056:  MOV             R2, R5; CTask *
33E058:  ADD             R0, PC; _ZTV39CTaskSimpleSetCharIgnoreWeaponRangeFlag_ptr
33E05A:  MOVW            R3, #0x99F; int
33E05E:  LDR             R0, [R0]; `vtable for'CTaskSimpleSetCharIgnoreWeaponRangeFlag ...
33E060:  ADDS            R0, #8
33E062:  STR             R0, [R5]
33E064:  MOV             R0, R10; this
33E066:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33E06A:  B               loc_33E1FE
33E06C:  MOV.W           R0, #0xFFFFFFFF
33E070:  LDR             R1, =(ScriptParams_ptr - 0x33E076)
33E072:  ADD             R1, PC; ScriptParams_ptr
33E074:  LDR             R1, [R1]; ScriptParams
33E076:  STR             R0, [R1,#(dword_81A90C - 0x81A908)]
33E078:  MOV             R0, R10
33E07A:  MOVS            R1, #2
33E07C:  B               loc_33E1FA
33E07E:  MOV.W           R5, #0xFFFFFFFF
33E082:  MOV             R0, R10; this
33E084:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
33E088:  MOVS            R1, #7; int
33E08A:  MOV             R6, R0
33E08C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33E090:  ADDS            R0, #1
33E092:  BEQ             loc_33E0E0
33E094:  LDR             R0, =(ScriptParams_ptr - 0x33E09A)
33E096:  ADD             R0, PC; ScriptParams_ptr
33E098:  LDR             R0, [R0]; ScriptParams
33E09A:  STR             R6, [R0]
33E09C:  B               loc_33E136
33E09E:  BIC.W           R3, R3, #1
33E0A2:  STRD.W          R3, R2, [R1]
33E0A6:  LDR             R1, [R0,#0x44]
33E0A8:  BIC.W           R1, R1, #2
33E0AC:  STR             R1, [R0,#0x44]
33E0AE:  B               loc_33E1FE
33E0B0:  MOV.W           R0, #0xFFFFFFFF
33E0B4:  LDR             R1, =(ScriptParams_ptr - 0x33E0BA)
33E0B6:  ADD             R1, PC; ScriptParams_ptr
33E0B8:  B               loc_33E1F2
33E0BA:  LDRSH.W         R0, [R5,#0x26]
33E0BE:  MOVW            R1, #0x197
33E0C2:  CMP             R0, R1
33E0C4:  BEQ.W           loc_33DEC4
33E0C8:  CMP.W           R0, #0x220
33E0CC:  IT NE
33E0CE:  CMPNE.W         R0, #0x1A0
33E0D2:  BEQ.W           loc_33DEC4
33E0D6:  MOVS            R1, #0; unsigned __int8
33E0D8:  MOV             R0, R10; this
33E0DA:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33E0DE:  B               loc_33E1FE
33E0E0:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33E0E6)
33E0E2:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
33E0E4:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33E0E6:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
33E0E8:  CBNZ            R0, loc_33E0FE
33E0EA:  MOVW            R0, #0xF1C0; unsigned int
33E0EE:  BLX             _Znwj; operator new(uint)
33E0F2:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
33E0F6:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33E0FC)
33E0F8:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
33E0FA:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33E0FC:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
33E0FE:  LDRB.W          R3, [R10,#0xE6]; unsigned __int8
33E102:  MOV             R1, R5; int
33E104:  MOVS            R2, #0; int
33E106:  BLX             j__ZN19CDecisionMakerTypes17CopyDecisionMakerEiih; CDecisionMakerTypes::CopyDecisionMaker(int,int,uchar)
33E10A:  MOVS            R1, #7; int
33E10C:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
33E110:  MOV             R6, R0
33E112:  LDR             R0, =(ScriptParams_ptr - 0x33E118)
33E114:  ADD             R0, PC; ScriptParams_ptr
33E116:  LDR             R0, [R0]; ScriptParams
33E118:  STR             R6, [R0]
33E11A:  LDRB.W          R0, [R10,#0xE6]
33E11E:  CBZ             R0, loc_33E136
33E120:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33E12A)
33E122:  MOV             R1, R6; int
33E124:  MOVS            R2, #9; unsigned __int8
33E126:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33E128:  LDR             R0, [R0]; this
33E12A:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
33E12E:  LDR             R0, =(ScriptParams_ptr - 0x33E134)
33E130:  ADD             R0, PC; ScriptParams_ptr
33E132:  LDR             R0, [R0]; ScriptParams
33E134:  LDR             R6, [R0]
33E136:  LDR             R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x33E142)
33E138:  MOV             R1, R6; int
33E13A:  MOVS            R2, #3; unsigned int
33E13C:  MOV             R3, R10; CRunningScript *
33E13E:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
33E140:  LDR             R0, [R0]; this
33E142:  BLX             j__ZN22CScriptResourceManager20AddToResourceManagerEijP14CRunningScript; CScriptResourceManager::AddToResourceManager(int,uint,CRunningScript *)
33E146:  B               loc_33E1F6
33E148:  LDR             R1, =(ScriptParams_ptr - 0x33E152)
33E14A:  MOV.W           R0, #0xFFFFFFFF
33E14E:  ADD             R1, PC; ScriptParams_ptr
33E150:  B               loc_33E1F2
33E152:  MOV             R0, R5; jumptable 0033DE6E case 1
33E154:  MOVS            R1, #1; int
33E156:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E15A:  ADDS            R1, R0, #1
33E15C:  BNE             def_33DE6E; jumptable 0033DE6E default case, case 11
33E15E:  MOV             R0, R5; this
33E160:  MOVS            R1, #2; int
33E162:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E166:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E168:  MOV             R0, R5; jumptable 0033DE6E case 2
33E16A:  MOVS            R1, #6; int
33E16C:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E170:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E172:  MOV             R0, R5; jumptable 0033DE6E case 3
33E174:  MOVS            R1, #8; int
33E176:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E17A:  ADDS            R1, R0, #1
33E17C:  BNE             def_33DE6E; jumptable 0033DE6E default case, case 11
33E17E:  MOV             R0, R5; this
33E180:  MOVS            R1, #9; int
33E182:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E186:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E188:  MOV             R0, R5; jumptable 0033DE6E case 4
33E18A:  MOVS            R1, #0xA; int
33E18C:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E190:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E192:  MOV             R0, R5; jumptable 0033DE6E case 5
33E194:  MOVS            R1, #0xB; int
33E196:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E19A:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E19C:  MOV             R0, R5; jumptable 0033DE6E case 6
33E19E:  MOVS            R1, #0xC; int
33E1A0:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E1A4:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E1A6:  MOV             R0, R5; jumptable 0033DE6E case 7
33E1A8:  MOVS            R1, #0xE; int
33E1AA:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E1AE:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E1B0:  MOV             R0, R5; jumptable 0033DE6E case 8
33E1B2:  MOVS            R1, #0xF; int
33E1B4:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E1B8:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E1BA:  MOV             R0, R5; jumptable 0033DE6E case 9
33E1BC:  MOVS            R1, #0x10; int
33E1BE:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E1C2:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E1C4:  MOV             R0, R5; jumptable 0033DE6E case 10
33E1C6:  MOVS            R1, #0x11; int
33E1C8:  BLX             j__ZN8CVehicle10GetUpgradeEi; CVehicle::GetUpgrade(int)
33E1CC:  B               def_33DE6E; jumptable 0033DE6E default case, case 11
33E1CE:  MOV             R0, R5; jumptable 0033DE6E case 12
33E1D0:  MOVS            R1, #2
33E1D2:  B               loc_33E1EA
33E1D4:  MOV             R0, R5; jumptable 0033DE6E case 13
33E1D6:  MOVS            R1, #0x13
33E1D8:  B               loc_33E1EA
33E1DA:  MOV             R0, R5; jumptable 0033DE6E case 14
33E1DC:  MOVS            R1, #0xC
33E1DE:  B               loc_33E1EA
33E1E0:  MOV             R0, R5; jumptable 0033DE6E case 15
33E1E2:  MOVS            R1, #0xD
33E1E4:  B               loc_33E1EA
33E1E6:  MOV             R0, R5; jumptable 0033DE6E case 16
33E1E8:  MOVS            R1, #0x14; int
33E1EA:  BLX             j__ZN8CVehicle21GetReplacementUpgradeEi; CVehicle::GetReplacementUpgrade(int)
33E1EE:  LDR             R1, =(ScriptParams_ptr - 0x33E1F4); jumptable 0033DE6E default case, case 11
33E1F0:  ADD             R1, PC; ScriptParams_ptr
33E1F2:  LDR             R1, [R1]; ScriptParams
33E1F4:  STR             R0, [R1]
33E1F6:  MOV             R0, R10; this
33E1F8:  MOVS            R1, #1; __int16
33E1FA:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33E1FE:  MOVS            R6, #0
33E200:  LDR             R0, =(__stack_chk_guard_ptr - 0x33E208); jumptable 0033C6C8 cases 2402,2403,2425,2430,2431,2447,2448,2451,2457,2469,2481
33E202:  LDR             R1, [SP,#0xD0+var_54]
33E204:  ADD             R0, PC; __stack_chk_guard_ptr
33E206:  LDR             R0, [R0]; __stack_chk_guard
33E208:  LDR             R0, [R0]
33E20A:  SUBS            R0, R0, R1
33E20C:  ITTTT EQ
33E20E:  SXTBEQ          R0, R6
33E210:  ADDEQ           SP, SP, #0x80
33E212:  VPOPEQ          {D8-D13}
33E216:  ADDEQ           SP, SP, #4
33E218:  ITT EQ
33E21A:  POPEQ.W         {R8-R11}
33E21E:  POPEQ           {R4-R7,PC}
33E220:  BLX             __stack_chk_fail
