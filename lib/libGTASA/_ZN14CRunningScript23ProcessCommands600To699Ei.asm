; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands600To699Ei
; Address            : 0x34490C - 0x344E92
; =========================================================

34490C:  PUSH            {R4-R7,LR}
34490E:  ADD             R7, SP, #0xC
344910:  PUSH.W          {R11}
344914:  VPUSH           {D8-D13}
344918:  SUB             SP, SP, #0x20
34491A:  MOV             R4, R0
34491C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x344924)
344920:  ADD             R0, PC; __stack_chk_guard_ptr
344922:  LDR             R0, [R0]; __stack_chk_guard
344924:  LDR             R0, [R0]
344926:  STR             R0, [SP,#0x60+var_44]
344928:  SUBW            R0, R1, #0x293; switch 39 cases
34492C:  CMP             R0, #0x26 ; '&'
34492E:  BHI.W           def_344938; jumptable 00344938 default case, cases 661,666,668-671,673,674,678,685-696
344932:  MOVS            R5, #0
344934:  MOV.W           R6, #0xFFFFFFFF
344938:  TBH.W           [PC,R0,LSL#1]; switch jump
34493C:  DCW 0x27; jump table for switch statement
34493E:  DCW 0x32
344940:  DCW 0x54
344942:  DCW 0x56
344944:  DCW 0x76
344946:  DCW 0x82
344948:  DCW 0x90
34494A:  DCW 0x54
34494C:  DCW 0x9E
34494E:  DCW 0x54
344950:  DCW 0x54
344952:  DCW 0x54
344954:  DCW 0x54
344956:  DCW 0xF1
344958:  DCW 0x54
34495A:  DCW 0x54
34495C:  DCW 0x10E
34495E:  DCW 0x29A
344960:  DCW 0x29A
344962:  DCW 0x54
344964:  DCW 0x11F
344966:  DCW 0x154
344968:  DCW 0x193
34496A:  DCW 0x19E
34496C:  DCW 0x1BC
34496E:  DCW 0x1C7
344970:  DCW 0x54
344972:  DCW 0x54
344974:  DCW 0x54
344976:  DCW 0x54
344978:  DCW 0x54
34497A:  DCW 0x54
34497C:  DCW 0x54
34497E:  DCW 0x54
344980:  DCW 0x54
344982:  DCW 0x54
344984:  DCW 0x54
344986:  DCW 0x54
344988:  DCW 0x202
34498A:  LDR.W           R0, =(ScriptParams_ptr - 0x344996); jumptable 00344938 case 659
34498E:  MOVS            R5, #0
344990:  MOVS            R1, #1; __int16
344992:  ADD             R0, PC; ScriptParams_ptr
344994:  LDR             R0, [R0]; ScriptParams
344996:  STR             R5, [R0]
344998:  MOV             R0, R4; this
34499A:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34499E:  B               loc_344E70; jumptable 00344938 cases 676,677
3449A0:  MOV             R0, R4; jumptable 00344938 case 660
3449A2:  MOVS            R1, #2; __int16
3449A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3449A8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3449BA)
3449AC:  MOVW            R3, #0xA2C
3449B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3449BC)
3449B4:  MOVS            R5, #0
3449B6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3449B8:  ADD             R0, PC; ScriptParams_ptr
3449BA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3449BC:  LDR             R0, [R0]; ScriptParams
3449BE:  LDRD.W          R2, R0, [R0]
3449C2:  CMP             R0, #0
3449C4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3449C6:  MOV.W           R2, R2,LSR#8
3449CA:  LDR             R1, [R1]
3449CC:  MLA.W           R1, R2, R3, R1
3449D0:  LDRB.W          R2, [R1,#0x87C]
3449D4:  ORR.W           R3, R2, #2
3449D8:  IT NE
3449DA:  ANDNE.W         R3, R2, #0xFD
3449DE:  STRB.W          R3, [R1,#0x87C]
3449E2:  B               loc_344E70; jumptable 00344938 cases 676,677
3449E4:  MOVS            R5, #0xFF; jumptable 00344938 default case, cases 661,666,668-671,673,674,678,685-696
3449E6:  B               loc_344E70; jumptable 00344938 cases 676,677
3449E8:  MOV             R0, R4; jumptable 00344938 case 662
3449EA:  MOVS            R1, #1; __int16
3449EC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3449F0:  LDR.W           R0, =(ScriptParams_ptr - 0x3449FC)
3449F4:  LDR.W           R1, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x3449FE)
3449F8:  ADD             R0, PC; ScriptParams_ptr
3449FA:  ADD             R1, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
3449FC:  LDR             R2, [R0]; ScriptParams
3449FE:  LDR             R0, [R1]; this
344A00:  LDR             R3, [R2]
344A02:  SUBS            R1, R3, #1
344A04:  STR             R1, [R2]
344A06:  ADDW            R1, R3, #0x121; int
344A0A:  MOVS            R2, #2; unsigned int
344A0C:  MOV             R3, R4; CRunningScript *
344A0E:  BLX             j__ZN22CScriptResourceManager25RemoveFromResourceManagerEijP14CRunningScript; CScriptResourceManager::RemoveFromResourceManager(int,uint,CRunningScript *)
344A12:  CMP             R0, #0
344A14:  BEQ.W           loc_344E6E
344A18:  LDR.W           R0, =(ScriptParams_ptr - 0x344A20)
344A1C:  ADD             R0, PC; ScriptParams_ptr
344A1E:  LDR             R0, [R0]; ScriptParams
344A20:  LDR             R0, [R0]; this
344A22:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
344A26:  B               loc_344E6E
344A28:  MOV             R0, R4; jumptable 00344938 case 663
344A2A:  MOVS            R1, #1; __int16
344A2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344A30:  LDR.W           R0, =(ScriptParams_ptr - 0x344A38)
344A34:  ADD             R0, PC; ScriptParams_ptr
344A36:  LDR             R0, [R0]; ScriptParams
344A38:  LDR             R0, [R0]; this
344A3A:  BLX             j__ZN7CDarkel25ResetModelsKilledByPlayerEi; CDarkel::ResetModelsKilledByPlayer(int)
344A3E:  B               loc_344E6E
344A40:  MOV             R0, R4; jumptable 00344938 case 664
344A42:  MOVS            R1, #2; __int16
344A44:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344A48:  LDR.W           R0, =(ScriptParams_ptr - 0x344A50)
344A4C:  ADD             R0, PC; ScriptParams_ptr
344A4E:  LDR             R5, [R0]; ScriptParams
344A50:  LDRD.W          R1, R0, [R5]; int
344A54:  BLX             j__ZN7CDarkel25QueryModelsKilledByPlayerEii; CDarkel::QueryModelsKilledByPlayer(int,int)
344A58:  STR             R0, [R5]
344A5A:  B               loc_344C58
344A5C:  ADD             R5, SP, #0x60+var_50; jumptable 00344938 case 665
344A5E:  MOV             R0, R4; this
344A60:  MOVS            R2, #8; unsigned __int8
344A62:  MOV             R1, R5; char *
344A64:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
344A68:  MOV             R0, R5; this
344A6A:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
344A6E:  CMP             R0, R6
344A70:  IT GT
344A72:  BLXGT           j__ZN8CGarages14ActivateGarageEs; CGarages::ActivateGarage(short)
344A76:  B               loc_344E6E
344A78:  MOV             R0, R4; jumptable 00344938 case 667
344A7A:  MOVS            R1, #4; __int16
344A7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344A80:  LDR.W           R0, =(ScriptParams_ptr - 0x344A88)
344A84:  ADD             R0, PC; ScriptParams_ptr
344A86:  LDR             R0, [R0]; ScriptParams
344A88:  LDR             R0, [R0]
344A8A:  CMP.W           R0, #0xFFFFFFFF
344A8E:  BGT             loc_344AA4
344A90:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x344A9A)
344A94:  NEGS            R0, R0
344A96:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
344A98:  RSB.W           R0, R0, R0,LSL#3
344A9C:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
344A9E:  ADD.W           R0, R1, R0,LSL#2
344AA2:  LDR             R0, [R0,#0x18]; this
344AA4:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x344AAC)
344AA8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
344AAA:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
344AAC:  LDR.W           R6, [R1,R0,LSL#2]
344AB0:  MOVS            R1, #0xFF
344AB2:  STRB.W          R1, [R6,#0x22]
344AB6:  MOVS            R1, #0; int
344AB8:  BLX             j__ZN7CObject6CreateEib; CObject::Create(int,bool)
344ABC:  LDRB.W          R1, [R4,#0xE7]
344AC0:  MOV             R5, R0
344AC2:  MOVS            R0, #6
344AC4:  CBNZ            R1, loc_344AD0
344AC6:  LDRB.W          R1, [R4,#0xE9]
344ACA:  CMP             R1, #0xFF
344ACC:  IT EQ
344ACE:  MOVEQ           R0, #2
344AD0:  LDR.W           R1, =(ScriptParams_ptr - 0x344ADC)
344AD4:  STRB.W          R0, [R5,#0x140]
344AD8:  ADD             R1, PC; ScriptParams_ptr
344ADA:  VLDR            S0, =-100.0
344ADE:  LDR             R1, [R1]; ScriptParams
344AE0:  VLDR            S20, [R1,#0xC]
344AE4:  VLDR            S16, [R1,#4]
344AE8:  VCMPE.F32       S20, S0
344AEC:  VLDR            S18, [R1,#8]
344AF0:  VMRS            APSR_nzcv, FPSCR
344AF4:  BGT             loc_344B06
344AF6:  VMOV            R0, S16; this
344AFA:  VMOV            R1, S18; float
344AFE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
344B02:  VMOV            S20, R0
344B06:  LDR             R0, [R5,#0x14]
344B08:  CMP             R0, #0
344B0A:  BEQ.W           loc_344D72
344B0E:  VSTR            S16, [R0,#0x30]
344B12:  LDR             R0, [R5,#0x14]
344B14:  VSTR            S18, [R0,#0x34]
344B18:  LDR             R0, [R5,#0x14]
344B1A:  ADDS            R0, #0x38 ; '8'
344B1C:  B               loc_344D7E
344B1E:  MOV             R0, R4; jumptable 00344938 case 672
344B20:  MOVS            R1, #1; __int16
344B22:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344B26:  LDR.W           R0, =(ScriptParams_ptr - 0x344B2E)
344B2A:  ADD             R0, PC; ScriptParams_ptr
344B2C:  LDR             R0, [R0]; ScriptParams
344B2E:  LDR             R1, [R0]; CPed *
344B30:  CMP             R1, #0
344B32:  BLT.W           loc_344D5C
344B36:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x344B40)
344B38:  UXTB            R3, R1
344B3A:  LSRS            R1, R1, #8
344B3C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
344B3E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
344B40:  LDR             R0, [R0]; CPools::ms_pPedPool
344B42:  LDR             R2, [R0,#4]
344B44:  LDRB            R2, [R2,R1]
344B46:  CMP             R2, R3
344B48:  BNE.W           loc_344D5C
344B4C:  MOVW            R2, #0x7CC
344B50:  LDR             R0, [R0]
344B52:  MLA.W           R0, R1, R2, R0
344B56:  B               loc_344D5E
344B58:  MOV             R0, R4; jumptable 00344938 case 675
344B5A:  MOVS            R1, #1; __int16
344B5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344B60:  LDR             R0, =(ScriptParams_ptr - 0x344B66)
344B62:  ADD             R0, PC; ScriptParams_ptr
344B64:  LDR             R0, [R0]; ScriptParams
344B66:  LDR             R0, [R0]
344B68:  CMP             R0, #0
344B6A:  BEQ.W           loc_344DC4
344B6E:  LDR             R0, =(TheCamera_ptr - 0x344B74)
344B70:  ADD             R0, PC; TheCamera_ptr
344B72:  LDR             R0, [R0]; TheCamera ; this
344B74:  BLX             j__ZN7CCamera15SetWideScreenOnEv; CCamera::SetWideScreenOn(void)
344B78:  B               loc_344E6E
344B7A:  MOV             R0, R4; jumptable 00344938 case 679
344B7C:  MOVS            R1, #4; __int16
344B7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344B82:  LDR             R0, =(ScriptParams_ptr - 0x344B8C)
344B84:  VLDR            S0, =-100.0
344B88:  ADD             R0, PC; ScriptParams_ptr
344B8A:  LDR             R0, [R0]; ScriptParams
344B8C:  VLDR            S20, [R0,#8]
344B90:  VLDR            S16, [R0]
344B94:  VCMPE.F32       S20, S0
344B98:  VLDR            S18, [R0,#4]
344B9C:  VMRS            APSR_nzcv, FPSCR
344BA0:  BGT             loc_344BB2
344BA2:  VMOV            R0, S16; this
344BA6:  VMOV            R1, S18; float
344BAA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
344BAE:  VMOV            S20, R0
344BB2:  MOV             R0, R4; this
344BB4:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
344BB8:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
344BBC:  VMOV            R1, S16
344BC0:  ADD.W           R0, R4, #8
344BC4:  VMOV            R2, S18
344BC8:  MOVS            R6, #3
344BCA:  VMOV            R3, S20
344BCE:  MOVS            R5, #2
344BD0:  STRD.W          R5, R6, [SP,#0x60+var_60]
344BD4:  STR             R0, [SP,#0x60+var_58]
344BD6:  MOVS            R0, #5
344BD8:  BLX             j__ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
344BDC:  MOV             R5, R0
344BDE:  LDR             R0, =(ScriptParams_ptr - 0x344BE4)
344BE0:  ADD             R0, PC; ScriptParams_ptr
344BE2:  B               loc_344C4C
344BE4:  MOV             R0, R4; jumptable 00344938 case 680
344BE6:  MOVS            R1, #4; __int16
344BE8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344BEC:  LDR             R0, =(ScriptParams_ptr - 0x344BF6)
344BEE:  VLDR            S0, =-100.0
344BF2:  ADD             R0, PC; ScriptParams_ptr
344BF4:  LDR             R0, [R0]; ScriptParams
344BF6:  VLDR            S20, [R0,#8]
344BFA:  VLDR            S16, [R0]
344BFE:  VCMPE.F32       S20, S0
344C02:  VLDR            S18, [R0,#4]
344C06:  VMRS            APSR_nzcv, FPSCR
344C0A:  BGT             loc_344C1C
344C0C:  VMOV            R0, S16; this
344C10:  VMOV            R1, S18; float
344C14:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
344C18:  VMOV            S20, R0
344C1C:  MOV             R0, R4; this
344C1E:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
344C22:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
344C26:  VMOV            R1, S16
344C2A:  ADD.W           R0, R4, #8
344C2E:  VMOV            R2, S18
344C32:  MOVS            R6, #3
344C34:  VMOV            R3, S20
344C38:  MOVS            R5, #5
344C3A:  STRD.W          R5, R6, [SP,#0x60+var_60]
344C3E:  STR             R0, [SP,#0x60+var_58]
344C40:  MOVS            R0, #4
344C42:  BLX             j__ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
344C46:  MOV             R5, R0
344C48:  LDR             R0, =(ScriptParams_ptr - 0x344C4E)
344C4A:  ADD             R0, PC; ScriptParams_ptr
344C4C:  LDR             R6, [R0]; ScriptParams
344C4E:  MOV             R0, R5; this
344C50:  LDR             R1, [R6,#(dword_81A914 - 0x81A908)]; int
344C52:  BLX             j__ZN6CRadar13SetBlipSpriteEii; CRadar::SetBlipSprite(int,int)
344C56:  STR             R5, [R6]
344C58:  MOV             R0, R4; this
344C5A:  MOVS            R1, #1; __int16
344C5C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
344C60:  B               loc_344E6E
344C62:  MOV             R0, R4; jumptable 00344938 case 681
344C64:  MOVS            R1, #2; __int16
344C66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344C6A:  LDR             R0, =(ScriptParams_ptr - 0x344C76)
344C6C:  MOVW            R3, #0x7CC
344C70:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x344C78)
344C72:  ADD             R0, PC; ScriptParams_ptr
344C74:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
344C76:  B               loc_344C8C
344C78:  MOV             R0, R4; jumptable 00344938 case 682
344C7A:  MOVS            R1, #2; __int16
344C7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344C80:  LDR             R0, =(ScriptParams_ptr - 0x344C8C)
344C82:  MOVW            R3, #0xA2C
344C86:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x344C8E)
344C88:  ADD             R0, PC; ScriptParams_ptr
344C8A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
344C8C:  LDR             R0, [R0]; ScriptParams
344C8E:  LDR             R1, [R1]; CPools::ms_pPedPool
344C90:  LDRD.W          R2, R0, [R0]
344C94:  LDR             R1, [R1]; CPools::ms_pPedPool
344C96:  LSRS            R2, R2, #8
344C98:  LDR             R1, [R1]
344C9A:  CMP             R0, #0
344C9C:  MLA.W           R1, R2, R3, R1
344CA0:  MOV.W           R5, #0
344CA4:  LDR             R2, [R1,#0x44]
344CA6:  BIC.W           R3, R2, #0x400000
344CAA:  IT NE
344CAC:  ORRNE.W         R3, R2, #0x400000
344CB0:  STR             R3, [R1,#0x44]
344CB2:  B               loc_344E70; jumptable 00344938 cases 676,677
344CB4:  MOV             R0, R4; jumptable 00344938 case 683
344CB6:  MOVS            R1, #6; __int16
344CB8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344CBC:  LDR             R0, =(ScriptParams_ptr - 0x344CC8)
344CBE:  MOVW            R12, #0x7CC
344CC2:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x344CCA)
344CC4:  ADD             R0, PC; ScriptParams_ptr
344CC6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
344CC8:  B               loc_344CDE
344CCA:  MOV             R0, R4; jumptable 00344938 case 684
344CCC:  MOVS            R1, #6; __int16
344CCE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344CD2:  LDR             R0, =(ScriptParams_ptr - 0x344CDE)
344CD4:  MOVW            R12, #0xA2C
344CD8:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x344CE0)
344CDA:  ADD             R0, PC; ScriptParams_ptr
344CDC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
344CDE:  LDR             R0, [R0]; ScriptParams
344CE0:  LDR             R1, [R1]; CPools::ms_pPedPool
344CE2:  LDM.W           R0, {R2,R3,R6}
344CE6:  LDRD.W          R5, R4, [R0,#(dword_81A914 - 0x81A908)]
344CEA:  LDR.W           LR, [R0,#(dword_81A91C - 0x81A908)]
344CEE:  LSRS            R2, R2, #8
344CF0:  LDR             R1, [R1]; CPools::ms_pPedPool
344CF2:  LDR             R1, [R1]
344CF4:  CMP             R3, #0
344CF6:  MLA.W           R1, R2, R12, R1
344CFA:  LDR             R2, [R1,#0x44]
344CFC:  BIC.W           R0, R2, #0x40000
344D00:  IT NE
344D02:  ORRNE.W         R0, R2, #0x40000
344D06:  CMP             R6, #0
344D08:  BIC.W           R2, R0, #0x80000
344D0C:  IT NE
344D0E:  ORRNE.W         R2, R0, #0x80000
344D12:  CMP             R5, #0
344D14:  BIC.W           R0, R2, #0x800000
344D18:  MOV.W           R5, #0
344D1C:  IT NE
344D1E:  ORRNE.W         R0, R2, #0x800000
344D22:  CMP             R4, #0
344D24:  BIC.W           R2, R0, #0x100000
344D28:  IT NE
344D2A:  ORRNE.W         R2, R0, #0x100000
344D2E:  CMP.W           LR, #0
344D32:  BIC.W           R0, R2, #0x200000
344D36:  IT NE
344D38:  ORRNE.W         R0, R2, #0x200000
344D3C:  STR             R0, [R1,#0x44]
344D3E:  B               loc_344E70; jumptable 00344938 cases 676,677
344D40:  ADD             R5, SP, #0x60+var_50; jumptable 00344938 case 697
344D42:  MOV             R0, R4; this
344D44:  MOVS            R2, #8; unsigned __int8
344D46:  MOV             R1, R5; char *
344D48:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
344D4C:  MOV             R0, R5; this
344D4E:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
344D52:  CMP             R0, R6
344D54:  IT GT
344D56:  BLXGT           j__ZN8CGarages16DeActivateGarageEs; CGarages::DeActivateGarage(short)
344D5A:  B               loc_344E6E
344D5C:  MOVS            R0, #0; this
344D5E:  BLX             j__ZN11CTheScripts12IsPedStoppedEP4CPed; CTheScripts::IsPedStopped(CPed *)
344D62:  MOV             R1, R0
344D64:  CMP             R1, #0
344D66:  IT NE
344D68:  MOVNE           R1, #1; unsigned __int8
344D6A:  MOV             R0, R4; this
344D6C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
344D70:  B               loc_344E6E
344D72:  ADD.W           R0, R5, #0xC
344D76:  VSTR            S16, [R5,#4]
344D7A:  VSTR            S18, [R5,#8]
344D7E:  VSTR            S20, [R0]
344D82:  LDR             R0, [R5,#0x14]; this
344D84:  CBZ             R0, loc_344DD0
344D86:  MOVS            R1, #0; x
344D88:  MOVS            R2, #0; float
344D8A:  MOVS            R3, #0; float
344D8C:  VLDR            S22, [R0,#0x30]
344D90:  VLDR            S24, [R0,#0x34]
344D94:  VLDR            S26, [R0,#0x38]
344D98:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
344D9C:  LDR             R0, [R5,#0x14]
344D9E:  VLDR            S0, [R0,#0x30]
344DA2:  VLDR            S2, [R0,#0x34]
344DA6:  VLDR            S4, [R0,#0x38]
344DAA:  VADD.F32        S0, S22, S0
344DAE:  VADD.F32        S2, S24, S2
344DB2:  VADD.F32        S4, S26, S4
344DB6:  VSTR            S0, [R0,#0x30]
344DBA:  VSTR            S2, [R0,#0x34]
344DBE:  VSTR            S4, [R0,#0x38]
344DC2:  B               loc_344DD4
344DC4:  LDR             R0, =(TheCamera_ptr - 0x344DCA)
344DC6:  ADD             R0, PC; TheCamera_ptr
344DC8:  LDR             R0, [R0]; TheCamera ; this
344DCA:  BLX             j__ZN7CCamera16SetWideScreenOffEv; CCamera::SetWideScreenOff(void)
344DCE:  B               loc_344E6E
344DD0:  MOVS            R0, #0
344DD2:  STR             R0, [R5,#0x10]
344DD4:  LDR             R0, [R5,#0x18]
344DD6:  CBZ             R0, loc_344DF2
344DD8:  LDR             R1, [R0,#4]
344DDA:  LDR             R0, [R5,#0x14]
344DDC:  ADDS            R1, #0x10
344DDE:  CBZ             R0, loc_344DEC
344DE0:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
344DE4:  B               loc_344DF2
344DE6:  ALIGN 4
344DE8:  DCFS -100.0
344DEC:  ADDS            R0, R5, #4
344DEE:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
344DF2:  MOV             R0, R5; this
344DF4:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
344DF8:  LDR             R0, [R6]
344DFA:  LDR             R1, [R0,#0x10]
344DFC:  MOV             R0, R6
344DFE:  BLX             R1
344E00:  CMP             R0, #0
344E02:  ITT NE
344E04:  MOVNE           R0, R5; this
344E06:  BLXNE           j__ZN7CEntity16SetupBigBuildingEv; CEntity::SetupBigBuilding(void)
344E0A:  ADD             R0, SP, #0x60+var_50; this
344E0C:  MOV             R1, R5; CVector *
344E0E:  VSTR            S18, [SP,#0x60+var_4C]
344E12:  VSTR            S16, [SP,#0x60+var_50]
344E16:  VSTR            S20, [SP,#0x60+var_48]
344E1A:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
344E1E:  MOV             R0, R5; this
344E20:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
344E24:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x344E32)
344E26:  MOV             R2, #0xD8FD8FD9
344E2E:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
344E30:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
344E32:  LDR             R0, [R0]; CPools::ms_pObjectPool
344E34:  LDRD.W          R1, R0, [R0]
344E38:  SUBS            R1, R5, R1
344E3A:  ASRS            R1, R1, #2
344E3C:  MULS            R1, R2
344E3E:  LDR             R2, =(ScriptParams_ptr - 0x344E44)
344E40:  ADD             R2, PC; ScriptParams_ptr
344E42:  LDR             R2, [R2]; ScriptParams
344E44:  LDRB            R0, [R0,R1]
344E46:  ORR.W           R0, R0, R1,LSL#8
344E4A:  STR             R0, [R2]
344E4C:  MOV             R0, R4; this
344E4E:  MOVS            R1, #1; __int16
344E50:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
344E54:  LDRB.W          R0, [R4,#0xE6]
344E58:  CBZ             R0, loc_344E6E
344E5A:  LDR             R0, =(ScriptParams_ptr - 0x344E62)
344E5C:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x344E64)
344E5E:  ADD             R0, PC; ScriptParams_ptr
344E60:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
344E62:  LDR             R2, [R0]; ScriptParams
344E64:  LDR             R0, [R1]; this
344E66:  LDR             R1, [R2]; int
344E68:  MOVS            R2, #3; unsigned __int8
344E6A:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
344E6E:  MOVS            R5, #0
344E70:  LDR             R0, =(__stack_chk_guard_ptr - 0x344E78); jumptable 00344938 cases 676,677
344E72:  LDR             R1, [SP,#0x60+var_44]
344E74:  ADD             R0, PC; __stack_chk_guard_ptr
344E76:  LDR             R0, [R0]; __stack_chk_guard
344E78:  LDR             R0, [R0]
344E7A:  SUBS            R0, R0, R1
344E7C:  ITTTT EQ
344E7E:  SXTBEQ          R0, R5
344E80:  ADDEQ           SP, SP, #0x20 ; ' '
344E82:  VPOPEQ          {D8-D13}
344E86:  POPEQ.W         {R11}
344E8A:  IT EQ
344E8C:  POPEQ           {R4-R7,PC}
344E8E:  BLX             __stack_chk_fail
