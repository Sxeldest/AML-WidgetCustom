; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1200To1299Ei
; Address            : 0x350768 - 0x351B6A
; =========================================================

350768:  PUSH            {R4-R7,LR}
35076A:  ADD             R7, SP, #0xC
35076C:  PUSH.W          {R8-R11}
350770:  SUB             SP, SP, #4
350772:  VPUSH           {D8-D10}
350776:  SUB             SP, SP, #0x80; float
350778:  MOV             R4, R0
35077A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x350786)
35077E:  MOVW            R6, #0xFFFF
350782:  ADD             R0, PC; __stack_chk_guard_ptr
350784:  LDR             R0, [R0]; __stack_chk_guard
350786:  LDR             R0, [R0]
350788:  STR             R0, [SP,#0xB8+var_3C]
35078A:  SUB.W           R0, R1, #0x4B0; switch 100 cases
35078E:  CMP             R0, #0x63 ; 'c'
350790:  STRH.W          R6, [SP,#0xB8+var_6C]
350794:  STRH.W          R6, [SP,#0xB8+var_70]
350798:  BHI.W           def_35079E; jumptable 0035079E default case, cases 1218,1219,1222,1225-1229,1231,1236,1244,1246,1256,1260,1266,1267,1270,1275,1277,1279,1282,1284,1285,1292,1293,1296,1297
35079C:  MOVS            R5, #0
35079E:  TBH.W           [PC,R0,LSL#1]; switch jump
3507A2:  DCW 0x6E; jump table for switch statement
3507A4:  DCW 0x7B
3507A6:  DCW 0x8B
3507A8:  DCW 0x97
3507AA:  DCW 0xAD
3507AC:  DCW 0xBA
3507AE:  DCW 0xCA
3507B0:  DCW 0xD6
3507B2:  DCW 0xF0
3507B4:  DCW 0x114
3507B6:  DCW 0x150
3507B8:  DCW 0x196
3507BA:  DCW 0x9C6
3507BC:  DCW 0x1A8
3507BE:  DCW 0x9C6
3507C0:  DCW 0x9C6
3507C2:  DCW 0x1C7
3507C4:  DCW 0x1DD
3507C6:  DCW 0x1E1
3507C8:  DCW 0x1E1
3507CA:  DCW 0x1E4
3507CC:  DCW 0x203
3507CE:  DCW 0x1E1
3507D0:  DCW 0x9C6
3507D2:  DCW 0x238
3507D4:  DCW 0x1E1
3507D6:  DCW 0x1E1
3507D8:  DCW 0x1E1
3507DA:  DCW 0x1E1
3507DC:  DCW 0x1E1
3507DE:  DCW 0x261
3507E0:  DCW 0x1E1
3507E2:  DCW 0x29F
3507E4:  DCW 0x2BE
3507E6:  DCW 0x2DD
3507E8:  DCW 0x303
3507EA:  DCW 0x1E1
3507EC:  DCW 0x358
3507EE:  DCW 0x3B0
3507F0:  DCW 0x3C6
3507F2:  DCW 0x3E7
3507F4:  DCW 0x40A
3507F6:  DCW 0x42C
3507F8:  DCW 0x446
3507FA:  DCW 0x1E1
3507FC:  DCW 0x459
3507FE:  DCW 0x1E1
350800:  DCW 0x474
350802:  DCW 0x496
350804:  DCW 0x4B0
350806:  DCW 0x4CF
350808:  DCW 0x4D5
35080A:  DCW 0x4E7
35080C:  DCW 0x64
35080E:  DCW 0x64
350810:  DCW 0x4FF
350812:  DCW 0x1E1
350814:  DCW 0x69
350816:  DCW 0x69
350818:  DCW 0x521
35081A:  DCW 0x1E1
35081C:  DCW 0x53A
35081E:  DCW 0x555
350820:  DCW 0x560
350822:  DCW 0x580
350824:  DCW 0x58D
350826:  DCW 0x1E1
350828:  DCW 0x1E1
35082A:  DCW 0x5A7
35082C:  DCW 0x9C6
35082E:  DCW 0x1E1
350830:  DCW 0x5C5
350832:  DCW 0x5EF
350834:  DCW 0x60F
350836:  DCW 0x622
350838:  DCW 0x1E1
35083A:  DCW 0x632
35083C:  DCW 0x1E1
35083E:  DCW 0x65A
350840:  DCW 0x1E1
350842:  DCW 0x678
350844:  DCW 0x6A0
350846:  DCW 0x1E1
350848:  DCW 0x6B9
35084A:  DCW 0x1E1
35084C:  DCW 0x1E1
35084E:  DCW 0x795
350850:  DCW 0x9C6
350852:  DCW 0x7A7
350854:  DCW 0x7C5
350856:  DCW 0x7E0
350858:  DCW 0x9C6
35085A:  DCW 0x1E1
35085C:  DCW 0x1E1
35085E:  DCW 0x809
350860:  DCW 0x827
350862:  DCW 0x1E1
350864:  DCW 0x1E1; int
350866:  DCW 0x834
350868:  DCW 0x9C6
35086A:  MOV             R0, R4; jumptable 0035079E cases 1253,1254
35086C:  BLX             j__ZN14CRunningScript19LocateObjectCommandEi; CRunningScript::LocateObjectCommand(int)
350870:  B.W             loc_351B2C
350874:  MOV             R0, R4; jumptable 0035079E cases 1257,1258
350876:  BLX             j__ZN14CRunningScript24ObjectInAreaCheckCommandEi; CRunningScript::ObjectInAreaCheckCommand(int)
35087A:  B.W             loc_351B2C
35087E:  MOV             R0, R4; jumptable 0035079E case 1200
350880:  MOVS            R1, #2; unsigned __int8
350882:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
350886:  MOV             R5, R0
350888:  MOV             R0, R4; this
35088A:  MOVS            R1, #1; __int16
35088C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350890:  LDR.W           R0, =(ScriptParams_ptr - 0x350898)
350894:  ADD             R0, PC; ScriptParams_ptr
350896:  B               loc_3508B0
350898:  MOV             R0, R4; jumptable 0035079E case 1201
35089A:  MOVS            R1, #1; unsigned __int8
35089C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
3508A0:  MOV             R5, R0
3508A2:  MOV             R0, R4; this
3508A4:  MOVS            R1, #1; __int16
3508A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3508AA:  LDR.W           R0, =(ScriptParams_ptr - 0x3508B2)
3508AE:  ADD             R0, PC; ScriptParams_ptr
3508B0:  LDR             R0, [R0]; ScriptParams
3508B2:  LDR             R1, [R5]
3508B4:  LDR             R0, [R0]
3508B6:  B               loc_3508EC
3508B8:  MOV             R0, R4; jumptable 0035079E case 1202
3508BA:  MOVS            R1, #1; __int16
3508BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3508C0:  MOV             R0, R4; this
3508C2:  MOVS            R1, #2; unsigned __int8
3508C4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
3508C8:  LDR.W           R1, =(ScriptParams_ptr - 0x3508D0)
3508CC:  ADD             R1, PC; ScriptParams_ptr
3508CE:  B               loc_3508E6
3508D0:  MOV             R0, R4; jumptable 0035079E case 1203
3508D2:  MOVS            R1, #1; __int16
3508D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3508D8:  MOV             R0, R4; this
3508DA:  MOVS            R1, #1; unsigned __int8
3508DC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
3508E0:  LDR.W           R1, =(ScriptParams_ptr - 0x3508E8)
3508E4:  ADD             R1, PC; ScriptParams_ptr
3508E6:  LDR             R1, [R1]; ScriptParams
3508E8:  LDR             R0, [R0]
3508EA:  LDR             R1, [R1]
3508EC:  CMP             R1, R0
3508EE:  MOV.W           R1, #0
3508F2:  MOV.W           R5, #0
3508F6:  IT GT
3508F8:  MOVGT           R1, #1
3508FA:  B               loc_350978
3508FC:  MOV             R0, R4; jumptable 0035079E case 1204
3508FE:  MOVS            R1, #2; unsigned __int8
350900:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
350904:  MOV             R5, R0
350906:  MOV             R0, R4; this
350908:  MOVS            R1, #1; __int16
35090A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35090E:  LDR.W           R0, =(ScriptParams_ptr - 0x350916)
350912:  ADD             R0, PC; ScriptParams_ptr
350914:  B               loc_35092E
350916:  MOV             R0, R4; jumptable 0035079E case 1205
350918:  MOVS            R1, #1; unsigned __int8
35091A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
35091E:  MOV             R5, R0
350920:  MOV             R0, R4; this
350922:  MOVS            R1, #1; __int16
350924:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350928:  LDR.W           R0, =(ScriptParams_ptr - 0x350930)
35092C:  ADD             R0, PC; ScriptParams_ptr
35092E:  LDR             R0, [R0]; ScriptParams
350930:  LDR             R1, [R5]
350932:  LDR             R0, [R0]
350934:  B               loc_35096A
350936:  MOV             R0, R4; jumptable 0035079E case 1206
350938:  MOVS            R1, #1; __int16
35093A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35093E:  MOV             R0, R4; this
350940:  MOVS            R1, #2; unsigned __int8
350942:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
350946:  LDR.W           R1, =(ScriptParams_ptr - 0x35094E)
35094A:  ADD             R1, PC; ScriptParams_ptr
35094C:  B               loc_350964
35094E:  MOV             R0, R4; jumptable 0035079E case 1207
350950:  MOVS            R1, #1; __int16
350952:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350956:  MOV             R0, R4; this
350958:  MOVS            R1, #1; unsigned __int8
35095A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
35095E:  LDR.W           R1, =(ScriptParams_ptr - 0x350966)
350962:  ADD             R1, PC; ScriptParams_ptr
350964:  LDR             R1, [R1]; ScriptParams
350966:  LDR             R0, [R0]
350968:  LDR             R1, [R1]
35096A:  CMP             R1, R0
35096C:  MOV.W           R1, #0
350970:  MOV.W           R5, #0
350974:  IT GE
350976:  MOVGE           R1, #1; unsigned __int8
350978:  MOV             R0, R4; this
35097A:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
35097E:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350982:  MOV             R0, R4; jumptable 0035079E case 1208
350984:  MOVS            R1, #2; __int16
350986:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35098A:  LDR.W           R0, =(ScriptParams_ptr - 0x35099A)
35098E:  MOVW            R3, #0x7CC
350992:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35099C)
350996:  ADD             R0, PC; ScriptParams_ptr
350998:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35099A:  LDR             R5, [R0]; ScriptParams
35099C:  LDR             R0, [R1]; CPools::ms_pPedPool ...
35099E:  LDRD.W          R1, R2, [R5]
3509A2:  LDR             R0, [R0]; CPools::ms_pPedPool
3509A4:  LSRS            R1, R1, #8
3509A6:  LDR             R0, [R0]
3509A8:  MLA.W           R0, R1, R3, R0
3509AC:  RSB.W           R1, R2, R2,LSL#3
3509B0:  ADD.W           R1, R0, R1,LSL#2
3509B4:  LDR.W           R0, [R1,#0x588]
3509B8:  LDR.W           R1, [R1,#0x594]
3509BC:  STRD.W          R0, R1, [R5]
3509C0:  BLX             j__ZN8CPickups14ModelForWeaponE11eWeaponType; CPickups::ModelForWeapon(eWeaponType)
3509C4:  STR             R0, [R5,#(dword_81A910 - 0x81A908)]
3509C6:  B.W             loc_3518D8
3509CA:  MOV             R0, R4; jumptable 0035079E case 1209
3509CC:  MOVS            R1, #5; __int16
3509CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3509D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3509E4)
3509D6:  MOVS            R5, #1
3509D8:  LDR.W           R12, =(ThePaths_ptr - 0x3509EA)
3509DC:  MOV.W           LR, #0
3509E0:  ADD             R0, PC; ScriptParams_ptr
3509E2:  ADD.W           R8, SP, #0xB8+var_70
3509E6:  ADD             R12, PC; ThePaths_ptr
3509E8:  LDR             R0, [R0]; ScriptParams
3509EA:  LDM.W           R0, {R1-R3}; int
3509EE:  VLDR            S0, [R0,#0xC]
3509F2:  VLDR            S2, [R0,#0x10]
3509F6:  LDR.W           R0, [R12]; ThePaths ; int
3509FA:  ADD.W           R12, SP, #0xB8+var_74
3509FE:  STRD.W          R5, R5, [SP,#0xB8+var_A0]; int
350A02:  ADD             R5, SP, #0xB8+var_6C
350A04:  STR.W           LR, [SP,#0xB8+var_98]; int
350A08:  VSTR            S0, [SP,#0xB8+var_A8]
350A0C:  VSTR            S2, [SP,#0xB8+var_A4]
350A10:  STRD.W          LR, R5, [SP,#0xB8+var_B8]; int
350A14:  STRD.W          R8, R12, [SP,#0xB8+var_B0]; int
350A18:  BLX             j__ZN9CPathFind26FindNodePairClosestToCoorsE7CVectorhP12CNodeAddressS2_Pfffbbb; CPathFind::FindNodePairClosestToCoors(CVector,uchar,CNodeAddress *,CNodeAddress *,float *,float,float,bool,bool,bool)
350A1C:  LDRH.W          R0, [SP,#0xB8+var_6C]
350A20:  CMP             R0, R6
350A22:  BNE.W           loc_351A50
350A26:  LDR.W           R0, =(ScriptParams_ptr - 0x350A34)
350A2A:  VMOV.I32        Q8, #0
350A2E:  MOVS            R5, #0
350A30:  ADD             R0, PC; ScriptParams_ptr
350A32:  LDR             R0, [R0]; ScriptParams
350A34:  VST1.32         {D16-D17}, [R0]
350A38:  ADDS            R0, #0xC
350A3A:  VST1.32         {D16-D17}, [R0]
350A3E:  B.W             loc_351B1C
350A42:  MOV             R0, R4; jumptable 0035079E case 1210
350A44:  MOVS            R1, #2; __int16
350A46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350A4A:  LDR.W           R0, =(ScriptParams_ptr - 0x350A5A)
350A4E:  MOVW            R2, #0xA2C
350A52:  VLDR            S0, =60.0
350A56:  ADD             R0, PC; ScriptParams_ptr
350A58:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x350A62)
350A5C:  LDR             R0, [R0]; ScriptParams
350A5E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
350A60:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
350A62:  VLDR            S2, [R0,#4]
350A66:  LDR             R0, [R0]
350A68:  VDIV.F32        S0, S2, S0
350A6C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
350A6E:  LSRS            R0, R0, #8
350A70:  LDR             R1, [R1]
350A72:  MLA.W           R2, R0, R2, R1
350A76:  LDR             R3, [R2,#0x14]
350A78:  VLDR            S2, [R3,#0x10]
350A7C:  VLDR            S4, [R3,#0x14]
350A80:  VLDR            S6, [R3,#0x18]
350A84:  VMUL.F32        S2, S0, S2
350A88:  VMUL.F32        S4, S0, S4
350A8C:  LDR.W           R3, [R2,#0x388]
350A90:  VMUL.F32        S0, S0, S6
350A94:  VSTR            S2, [R2,#0x48]
350A98:  VSTR            S4, [R2,#0x4C]
350A9C:  VSTR            S0, [R2,#0x50]
350AA0:  LDRB.W          R3, [R3,#0xCF]
350AA4:  LSLS            R3, R3, #0x1E
350AA6:  BPL.W           loc_351B2C
350AAA:  LDR.W           R2, [R2,#0x5A0]
350AAE:  CMP             R2, #0
350AB0:  BNE.W           loc_351B2C
350AB4:  MOVW            R2, #0xA2C
350AB8:  MOVS            R5, #0
350ABA:  MLA.W           R0, R0, R2, R1
350ABE:  MOV             R1, #0x3E6147AE
350AC6:  STR.W           R1, [R0,#0x860]
350ACA:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350ACE:  MOV             R0, R4; jumptable 0035079E case 1211
350AD0:  MOVS            R1, #1; __int16
350AD2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350AD6:  LDR.W           R0, =(ScriptParams_ptr - 0x350AE2)
350ADA:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x350AE4)
350ADE:  ADD             R0, PC; ScriptParams_ptr
350AE0:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
350AE2:  LDR             R0, [R0]; ScriptParams
350AE4:  LDR             R1, [R1]; int
350AE6:  LDR             R0, [R0]; this
350AE8:  STR             R0, [R1]; CGame::currArea
350AEA:  BLX             j__ZN10CStreaming24RemoveBuildingsNotInAreaEi; CStreaming::RemoveBuildingsNotInArea(int)
350AEE:  B.W             loc_351B2C
350AF2:  MOV             R0, R4; jumptable 0035079E case 1213
350AF4:  MOVS            R1, #2; __int16
350AF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350AFA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x350B0A)
350AFE:  MOVW            R3, #0xA2C
350B02:  LDR.W           R0, =(ScriptParams_ptr - 0x350B0C)
350B06:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
350B08:  ADD             R0, PC; ScriptParams_ptr
350B0A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
350B0C:  LDR             R0, [R0]; ScriptParams
350B0E:  LDRD.W          R2, R0, [R0]
350B12:  CMP             R0, #0
350B14:  LDR             R1, [R1]; CPools::ms_pVehiclePool
350B16:  MOV.W           R2, R2,LSR#8
350B1A:  LDR             R1, [R1]
350B1C:  MLA.W           R1, R2, R3, R1
350B20:  LDR.W           R2, [R1,#0x42C]
350B24:  BIC.W           R3, R2, #0x8000000
350B28:  IT NE
350B2A:  ORRNE.W         R3, R2, #0x8000000
350B2E:  B               loc_3510C6
350B30:  MOV             R0, R4; jumptable 0035079E case 1216
350B32:  MOVS            R1, #7; __int16
350B34:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350B38:  LDR.W           R0, =(ScriptParams_ptr - 0x350B40)
350B3C:  ADD             R0, PC; ScriptParams_ptr
350B3E:  LDR             R6, [R0]; ScriptParams
350B40:  LDM.W           R6, {R0-R3,R5}
350B44:  LDRD.W          R4, R6, [R6,#(dword_81A91C - 0x81A908)]
350B48:  CMP             R6, #0
350B4A:  IT NE
350B4C:  MOVNE           R6, #1
350B4E:  STRD.W          R5, R4, [SP,#0xB8+var_B8]
350B52:  STR             R6, [SP,#0xB8+var_B0]
350B54:  BLX             j__ZN11CRoadBlocks23RegisterScriptRoadBlockE7CVectorS0_b; CRoadBlocks::RegisterScriptRoadBlock(CVector,CVector,bool)
350B58:  B.W             loc_351B2C
350B5C:  BLX             j__ZN11CRoadBlocks21ClearScriptRoadBlocksEv; jumptable 0035079E case 1217
350B60:  B.W             loc_351B2C
350B64:  MOVS            R5, #0xFF; jumptable 0035079E default case, cases 1218,1219,1222,1225-1229,1231,1236,1244,1246,1256,1260,1266,1267,1270,1275,1277,1279,1282,1284,1285,1292,1293,1296,1297
350B66:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350B6A:  MOV             R0, R4; jumptable 0035079E case 1220
350B6C:  MOVS            R1, #4; __int16
350B6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350B72:  LDR.W           R0, =(ScriptParams_ptr - 0x350B7A)
350B76:  ADD             R0, PC; ScriptParams_ptr
350B78:  LDR             R0, [R0]; ScriptParams
350B7A:  LDR             R1, [R0]
350B7C:  CMP             R1, #0
350B7E:  BLT.W           loc_351880
350B82:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350B8E)
350B86:  UXTB            R3, R1
350B88:  LSRS            R1, R1, #8
350B8A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
350B8C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
350B8E:  LDR             R0, [R0]; CPools::ms_pPedPool
350B90:  LDR             R2, [R0,#4]
350B92:  LDRB            R2, [R2,R1]
350B94:  CMP             R2, R3
350B96:  BNE.W           loc_351880
350B9A:  MOVW            R2, #0x7CC
350B9E:  LDR             R0, [R0]
350BA0:  MLA.W           R5, R1, R2, R0
350BA4:  B.W             loc_351882
350BA8:  MOV             R0, R4; jumptable 0035079E case 1221
350BAA:  MOVS            R1, #1; __int16
350BAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350BB0:  LDR.W           R0, =(ScriptParams_ptr - 0x350BB8)
350BB4:  ADD             R0, PC; ScriptParams_ptr
350BB6:  LDR             R0, [R0]; ScriptParams
350BB8:  LDR             R1, [R0]
350BBA:  CMP             R1, #0
350BBC:  BLT.W           loc_3511E0
350BC0:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350BCC)
350BC4:  UXTB            R3, R1
350BC6:  LSRS            R1, R1, #8
350BC8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
350BCA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
350BCC:  LDR             R0, [R0]; CPools::ms_pPedPool
350BCE:  LDR             R2, [R0,#4]
350BD0:  LDRB            R2, [R2,R1]
350BD2:  CMP             R2, R3
350BD4:  BNE.W           loc_3511E0
350BD8:  MOVW            R2, #0x7CC
350BDC:  LDR             R0, [R0]
350BDE:  MLA.W           R0, R1, R2, R0
350BE2:  CMP             R0, #0
350BE4:  BEQ.W           loc_3511E0
350BE8:  LDR.W           R1, [R0,#0x488]
350BEC:  TST.W           R1, #0x40000
350BF0:  BEQ.W           loc_3511E0
350BF4:  ADDW            R2, R0, #0x484
350BF8:  LDR.W           R3, [R0,#0x484]
350BFC:  LDR.W           R6, [R0,#0x48C]
350C00:  BIC.W           R1, R1, #0x40000
350C04:  LDR.W           R0, [R0,#0x490]
350C08:  STRD.W          R3, R1, [R2]
350C0C:  STRD.W          R6, R0, [R2,#8]
350C10:  B               loc_350C60
350C12:  MOV             R0, R4; jumptable 0035079E case 1224
350C14:  MOVS            R1, #1; __int16
350C16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350C1A:  LDR.W           R0, =(ScriptParams_ptr - 0x350C2A)
350C1E:  MOVW            R2, #0x7CC
350C22:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350C2C)
350C26:  ADD             R0, PC; ScriptParams_ptr
350C28:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350C2A:  LDR             R0, [R0]; ScriptParams
350C2C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
350C2E:  LDR             R0, [R0]
350C30:  LDR             R1, [R1]; CPools::ms_pPedPool
350C32:  LSRS            R0, R0, #8
350C34:  LDR             R1, [R1]
350C36:  MLA.W           R5, R0, R2, R1
350C3A:  LDRB.W          R0, [R5,#0x485]
350C3E:  LSLS            R0, R0, #0x1F
350C40:  BEQ.W           loc_3511E0
350C44:  LDR.W           R0, [R5,#0x590]; this
350C48:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
350C4C:  CMP             R0, #5
350C4E:  BEQ             loc_350C60
350C50:  ADD.W           R0, R5, #0x590
350C54:  LDR             R0, [R0]; this
350C56:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
350C5A:  CMP             R0, #3
350C5C:  BNE.W           loc_3511E0
350C60:  MOVS            R1, #1
350C62:  B               loc_3512EA
350C64:  MOV             R0, R4; jumptable 0035079E case 1230
350C66:  MOVS            R1, #4; __int16
350C68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350C6C:  LDR.W           R0, =(ScriptParams_ptr - 0x350C78)
350C70:  VLDR            S0, =-100.0
350C74:  ADD             R0, PC; ScriptParams_ptr
350C76:  LDR             R0, [R0]; ScriptParams
350C78:  VLDR            S20, [R0,#8]
350C7C:  VLDR            S16, [R0]
350C80:  VCMPE.F32       S20, S0
350C84:  VLDR            S18, [R0,#4]
350C88:  VMRS            APSR_nzcv, FPSCR
350C8C:  BGT             loc_350C9E
350C8E:  VMOV            R0, S16; this
350C92:  VMOV            R1, S18; float
350C96:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
350C9A:  VMOV            S20, R0
350C9E:  MOV             R0, R4; this
350CA0:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
350CA4:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
350CA8:  VMOV            R1, S16
350CAC:  ADD.W           R0, R4, #8
350CB0:  VMOV            R2, S18
350CB4:  MOVS            R6, #3
350CB6:  VMOV            R3, S20
350CBA:  MOVS            R5, #5
350CBC:  STRD.W          R5, R6, [SP,#0xB8+var_B8]
350CC0:  STR             R0, [SP,#0xB8+var_B0]
350CC2:  MOVS            R0, #4
350CC4:  BLX             j__ZN6CRadar22SetShortRangeCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetShortRangeCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
350CC8:  MOV             R5, R0
350CCA:  LDR.W           R0, =(ScriptParams_ptr - 0x350CD2)
350CCE:  ADD             R0, PC; ScriptParams_ptr
350CD0:  LDR             R6, [R0]; ScriptParams
350CD2:  MOV             R0, R5; this
350CD4:  LDR             R1, [R6,#(dword_81A914 - 0x81A908)]; int
350CD6:  BLX             j__ZN6CRadar13SetBlipSpriteEii; CRadar::SetBlipSprite(int,int)
350CDA:  STR             R5, [R6]
350CDC:  B.W             loc_351804
350CE0:  MOV             R0, R4; jumptable 0035079E case 1232
350CE2:  MOVS            R1, #2; __int16
350CE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350CE8:  LDR.W           R0, =(ScriptParams_ptr - 0x350CF0)
350CEC:  ADD             R0, PC; ScriptParams_ptr
350CEE:  LDR             R0, [R0]; ScriptParams
350CF0:  LDR             R1, [R0]
350CF2:  CMP             R1, #0
350CF4:  BLT.W           loc_3518E2
350CF8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x350D04)
350CFC:  UXTB            R3, R1
350CFE:  LSRS            R1, R1, #8
350D00:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
350D02:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
350D04:  LDR             R0, [R0]; CPools::ms_pVehiclePool
350D06:  LDR             R2, [R0,#4]
350D08:  LDRB            R2, [R2,R1]
350D0A:  CMP             R2, R3
350D0C:  BNE.W           loc_3518E2
350D10:  MOVW            R2, #0xA2C
350D14:  LDR             R0, [R0]
350D16:  MLA.W           R0, R1, R2, R0
350D1A:  B.W             loc_3518E4
350D1E:  MOV             R0, R4; jumptable 0035079E case 1233
350D20:  MOVS            R1, #1; __int16
350D22:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350D26:  LDR.W           R0, =(ScriptParams_ptr - 0x350D2E)
350D2A:  ADD             R0, PC; ScriptParams_ptr
350D2C:  LDR             R0, [R0]; ScriptParams
350D2E:  LDR             R1, [R0]
350D30:  CMP             R1, #0
350D32:  BLT.W           loc_35195A
350D36:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x350D42)
350D3A:  UXTB            R3, R1
350D3C:  LSRS            R1, R1, #8
350D3E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
350D40:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
350D42:  LDR             R0, [R0]; CPools::ms_pVehiclePool
350D44:  LDR             R2, [R0,#4]
350D46:  LDRB            R2, [R2,R1]
350D48:  CMP             R2, R3
350D4A:  BNE.W           loc_35195A
350D4E:  MOVW            R2, #0xA2C
350D52:  LDR             R0, [R0]
350D54:  MLA.W           R0, R1, R2, R0
350D58:  B.W             loc_35195C
350D5C:  MOV             R0, R4; jumptable 0035079E case 1234
350D5E:  MOVS            R1, #6; __int16
350D60:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350D64:  LDR.W           R0, =(ScriptParams_ptr - 0x350D6C)
350D68:  ADD             R0, PC; ScriptParams_ptr
350D6A:  LDR             R0, [R0]; ScriptParams
350D6C:  LDR             R1, [R0]
350D6E:  CMP             R1, #0
350D70:  BLT.W           loc_351962
350D74:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x350D80)
350D78:  UXTB            R3, R1
350D7A:  LSRS            R1, R1, #8
350D7C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
350D7E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
350D80:  LDR             R0, [R0]; CPools::ms_pVehiclePool
350D82:  LDR             R2, [R0,#4]
350D84:  LDRB            R2, [R2,R1]
350D86:  CMP             R2, R3
350D88:  BNE.W           loc_351962
350D8C:  MOVW            R2, #0xA2C
350D90:  LDR             R0, [R0]
350D92:  MLA.W           R0, R1, R2, R0
350D96:  B.W             loc_351964
350D9A:  ALIGN 4
350D9C:  DCFS 60.0
350DA0:  DCFS -100.0
350DA4:  DCD __stack_chk_guard_ptr - 0x350786
350DA8:  MOV             R0, R4; jumptable 0035079E case 1235
350DAA:  MOVS            R1, #4; __int16
350DAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350DB0:  LDR.W           R0, =(ScriptParams_ptr - 0x350DBC)
350DB4:  VLDR            S2, =-100.0
350DB8:  ADD             R0, PC; ScriptParams_ptr
350DBA:  LDR             R0, [R0]; ScriptParams
350DBC:  VLDR            S0, [R0,#8]
350DC0:  VLDR            S16, [R0]
350DC4:  VCMPE.F32       S0, S2
350DC8:  VLDR            S18, [R0,#4]
350DCC:  VMRS            APSR_nzcv, FPSCR
350DD0:  BGT             loc_350DE2
350DD2:  VMOV            R0, S16; this
350DD6:  VMOV            R1, S18; float
350DDA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
350DDE:  VMOV            S0, R0
350DE2:  VMOV            R1, S16; int
350DE6:  LDR.W           R0, =(ScriptParams_ptr - 0x350DFA)
350DEA:  VMOV            R2, S18; int
350DEE:  LDR.W           R5, =(ThePaths_ptr - 0x350DFC)
350DF2:  VMOV            R3, S0; int
350DF6:  ADD             R0, PC; ScriptParams_ptr
350DF8:  ADD             R5, PC; ThePaths_ptr
350DFA:  MOVW            LR, #0x23FE
350DFE:  LDR             R0, [R0]; ScriptParams
350E00:  MOVS            R6, #0
350E02:  LDR             R5, [R5]; ThePaths
350E04:  MOV.W           R12, #1
350E08:  MOVT            LR, #0x4974
350E0C:  LDR             R0, [R0,#(dword_81A914 - 0x81A908)]
350E0E:  STRD.W          R6, LR, [SP,#0xB8+var_B8]; int
350E12:  SUBS            R0, #1
350E14:  STRD.W          R6, R12, [SP,#0xB8+var_B0]; int
350E18:  STRD.W          R0, R6, [SP,#0xB8+var_A8]; int
350E1C:  MOV             R0, R5; int
350E1E:  STRD.W          R6, R6, [SP,#0xB8+var_A0]; int
350E22:  BLX             j__ZN9CPathFind25FindNthNodeClosestToCoorsE7CVectorhfbbibbP12CNodeAddress; CPathFind::FindNthNodeClosestToCoors(CVector,uchar,float,bool,bool,int,bool,bool,CNodeAddress *)
350E26:  MOV             R2, R0
350E28:  ADD             R0, SP, #0xB8+var_58
350E2A:  ADD             R3, SP, #0xB8+var_68
350E2C:  MOV             R1, R5
350E2E:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
350E32:  LDRB.W          R0, [SP,#0xB8+var_68]
350E36:  CMP             R0, #0
350E38:  BEQ.W           loc_351AB6
350E3C:  LDR.W           R0, =(ScriptParams_ptr - 0x350E48)
350E40:  ADD             R6, SP, #0xB8+var_58
350E42:  MOVS            R5, #1
350E44:  ADD             R0, PC; ScriptParams_ptr
350E46:  LDM             R6, {R1,R2,R6}
350E48:  LDR             R0, [R0]; ScriptParams
350E4A:  STRD.W          R1, R2, [R0]
350E4E:  B.W             loc_351AC2
350E52:  MOV             R0, R4; jumptable 0035079E case 1237
350E54:  MOVS            R1, #9; __int16
350E56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350E5A:  LDR.W           R0, =(ScriptParams_ptr - 0x350E66)
350E5E:  VLDR            S2, =-100.0
350E62:  ADD             R0, PC; ScriptParams_ptr
350E64:  LDR             R0, [R0]; ScriptParams
350E66:  VLDR            S0, [R0,#8]
350E6A:  VLDR            S16, [R0]
350E6E:  VCMPE.F32       S0, S2
350E72:  VLDR            S18, [R0,#4]
350E76:  VMRS            APSR_nzcv, FPSCR
350E7A:  BGT             loc_350E8C
350E7C:  VMOV            R0, S16; this
350E80:  VMOV            R1, S18; float
350E84:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
350E88:  VMOV            S0, R0
350E8C:  LDR.W           R0, =(ScriptParams_ptr - 0x350E9E)
350E90:  MOVS            R5, #0x41700000
350E96:  LDR.W           R12, [R4,#0x14]
350E9A:  ADD             R0, PC; ScriptParams_ptr
350E9C:  STR             R5, [SP,#0xB8+var_80]; float
350E9E:  MOVW            R5, #0xCCCD
350EA2:  VSTR            S18, [SP,#0xB8+var_58+4]
350EA6:  LDR             R1, [R0]; ScriptParams
350EA8:  MOVT            R5, #0x3E4C
350EAC:  STR             R5, [SP,#0xB8+var_88]; float
350EAE:  MOVS            R5, #1
350EB0:  STR             R5, [SP,#0xB8+var_9C]; unsigned __int8
350EB2:  MOVS            R5, #0
350EB4:  LDRB            R2, [R1,#(dword_81A920 - 0x81A908)]; CEntity *
350EB6:  LDRB            R3, [R1,#(dword_81A924 - 0x81A908)]; unsigned __int8
350EB8:  LDRB.W          R6, [R1,#(dword_81A928 - 0x81A908)]
350EBC:  VLDR            S2, [R1,#0xC]
350EC0:  LDRB            R0, [R1,#(dword_81A918 - 0x81A908)]
350EC2:  LDRB            R1, [R1,#(dword_81A91C - 0x81A908)]
350EC4:  VSTR            S16, [SP,#0xB8+var_58]
350EC8:  VSTR            S0, [SP,#0xB8+var_50]
350ECC:  STRD.W          R5, R5, [SP,#0xB8+var_7C]; float
350ED0:  STR             R5, [SP,#0xB8+var_84]; float
350ED2:  STRD.W          R5, R5, [SP,#0xB8+var_90]; float
350ED6:  STRD.W          R5, R5, [SP,#0xB8+var_98]; unsigned __int8
350EDA:  STRD.W          R0, R1, [SP,#0xB8+var_A4]; float
350EDE:  MOVS            R0, #0x43160000
350EE4:  MOVS            R1, #0xFF
350EE6:  STR             R0, [SP,#0xB8+var_A8]; float
350EE8:  ADD             R0, SP, #0xB8+var_58
350EEA:  VSTR            S2, [SP,#0xB8+var_AC]
350EEE:  STRD.W          R6, R1, [SP,#0xB8+var_B8]; unsigned __int8
350EF2:  MOVS            R1, #0; unsigned int
350EF4:  STR             R0, [SP,#0xB8+var_B0]; unsigned __int8
350EF6:  ADD.W           R0, R12, R4; this
350EFA:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
350EFE:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350F02:  MOV             R0, R4; jumptable 0035079E case 1238
350F04:  MOVS            R1, #1; __int16
350F06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350F0A:  LDR.W           R0, =(ScriptParams_ptr - 0x350F18)
350F0E:  MOVS            R5, #0
350F10:  LDR.W           R1, =(_ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr - 0x350F1A)
350F14:  ADD             R0, PC; ScriptParams_ptr
350F16:  ADD             R1, PC; _ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr
350F18:  LDR             R0, [R0]; ScriptParams
350F1A:  LDR             R1, [R1]; CVehicle::bDisableRemoteDetonationOnContact ...
350F1C:  LDR             R0, [R0]
350F1E:  CMP             R0, #0
350F20:  MOV.W           R0, #0
350F24:  IT EQ
350F26:  MOVEQ           R0, #1
350F28:  STRB            R0, [R1]; CVehicle::bDisableRemoteDetonationOnContact
350F2A:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350F2E:  MOV             R0, R4; jumptable 0035079E case 1239
350F30:  MOVS            R1, #2; __int16
350F32:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350F36:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350F48)
350F3A:  MOVW            R3, #0x7CC
350F3E:  LDR.W           R0, =(ScriptParams_ptr - 0x350F4A)
350F42:  MOVS            R5, #0
350F44:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350F46:  ADD             R0, PC; ScriptParams_ptr
350F48:  LDR             R1, [R1]; CPools::ms_pPedPool ...
350F4A:  LDR             R0, [R0]; ScriptParams
350F4C:  LDRD.W          R2, R0, [R0]
350F50:  CMP             R0, #0
350F52:  LDR             R1, [R1]; CPools::ms_pPedPool
350F54:  MOV.W           R2, R2,LSR#8
350F58:  LDR             R1, [R1]
350F5A:  MLA.W           R1, R2, R3, R1
350F5E:  LDR             R2, [R1,#0x44]
350F60:  BIC.W           R3, R2, #0x2000
350F64:  IT NE
350F66:  ORRNE.W         R3, R2, #0x2000
350F6A:  STR             R3, [R1,#0x44]
350F6C:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350F70:  MOV             R0, R4; jumptable 0035079E case 1240
350F72:  MOVS            R1, #2; __int16
350F74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350F78:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350F8A)
350F7C:  MOVW            R3, #0x7CC
350F80:  LDR.W           R0, =(ScriptParams_ptr - 0x350F8C)
350F84:  MOVS            R5, #0
350F86:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350F88:  ADD             R0, PC; ScriptParams_ptr
350F8A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
350F8C:  LDR             R0, [R0]; ScriptParams
350F8E:  LDRD.W          R2, R0, [R0]
350F92:  CMP             R0, #0
350F94:  LDR             R1, [R1]; CPools::ms_pPedPool
350F96:  MOV.W           R2, R2,LSR#8
350F9A:  LDR             R1, [R1]
350F9C:  MLA.W           R1, R2, R3, R1
350FA0:  LDR.W           R2, [R1,#0x488]
350FA4:  BIC.W           R3, R2, #0x100000
350FA8:  IT NE
350FAA:  ORRNE.W         R3, R2, #0x100000
350FAE:  STR.W           R3, [R1,#0x488]
350FB2:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350FB6:  MOV             R0, R4; jumptable 0035079E case 1241
350FB8:  MOVS            R1, #2; __int16
350FBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350FBE:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x350FCC)
350FC2:  MOVS            R5, #0
350FC4:  LDR.W           R0, =(ScriptParams_ptr - 0x350FCE)
350FC8:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
350FCA:  ADD             R0, PC; ScriptParams_ptr
350FCC:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
350FCE:  LDR             R0, [R0]; ScriptParams
350FD0:  LDRD.W          R2, R3, [R0]
350FD4:  CMP             R3, #0
350FD6:  LDR             R0, [R1]; CPools::ms_pObjectPool
350FD8:  MOV.W           R1, R2,LSR#8
350FDC:  MOV.W           R2, #0x1A4
350FE0:  LDR             R0, [R0]
350FE2:  MLA.W           R0, R1, R2, R0
350FE6:  LDR.W           R1, [R0,#0x44]!
350FEA:  ITE NE
350FEC:  ORRNE.W         R1, R1, #0x10000000
350FF0:  BICEQ.W         R1, R1, #0x10000000
350FF4:  STR             R1, [R0]
350FF6:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
350FFA:  MOV             R0, R4; jumptable 0035079E case 1242
350FFC:  MOVS            R1, #1; __int16
350FFE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351002:  LDR.W           R0, =(ScriptParams_ptr - 0x351012)
351006:  MOV.W           R2, #0x1A4
35100A:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x351014)
35100E:  ADD             R0, PC; ScriptParams_ptr
351010:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
351012:  LDR             R0, [R0]; ScriptParams
351014:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
351016:  LDR             R0, [R0]
351018:  LDR             R1, [R1]; CPools::ms_pObjectPool
35101A:  LSRS            R0, R0, #8
35101C:  LDR             R1, [R1]
35101E:  MLA.W           R0, R0, R2, R1
351022:  LDRB.W          R1, [R0,#0xBD]
351026:  CMP             R1, #0
351028:  IT NE
35102A:  MOVNE           R1, #1
35102C:  B               loc_3512EA
35102E:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x351040); jumptable 0035079E case 1243
351032:  MOV.W           R2, #0x194
351036:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x351042)
35103A:  MOVS            R5, #0
35103C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
35103E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
351040:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
351042:  LDR             R1, [R1]; CWorld::Players ...
351044:  LDR             R0, [R0]; CWorld::PlayerInFocus
351046:  SMLABB.W        R0, R0, R2, R1; this
35104A:  MOVS            R1, #0; CRemote *
35104C:  BLX             j__ZN11CPlayerInfo13BlowUpRCBuggyEb; CPlayerInfo::BlowUpRCBuggy(bool)
351050:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351054:  MOV             R0, R4; jumptable 0035079E case 1245
351056:  MOVS            R1, #1; __int16
351058:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35105C:  LDR.W           R0, =(ScriptParams_ptr - 0x35106C)
351060:  MOVW            R3, #0x7CC
351064:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35106E)
351068:  ADD             R0, PC; ScriptParams_ptr
35106A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35106C:  LDR             R0, [R0]; ScriptParams
35106E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
351070:  LDR             R2, [R0]
351072:  LDR             R1, [R1]; CPools::ms_pPedPool
351074:  LSRS            R2, R2, #8
351076:  LDR             R1, [R1]
351078:  MLA.W           R1, R2, R3, R1
35107C:  ADDW            R1, R1, #0x54C
351080:  VLDR            S0, [R1]
351084:  VCVT.S32.F32    S0, S0
351088:  B               loc_3517AE
35108A:  MOV             R0, R4; jumptable 0035079E case 1247
35108C:  MOVS            R1, #2; __int16
35108E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351092:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3510A2)
351096:  MOVW            R3, #0xA2C
35109A:  LDR.W           R0, =(ScriptParams_ptr - 0x3510A4)
35109E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3510A0:  ADD             R0, PC; ScriptParams_ptr
3510A2:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3510A4:  LDR             R0, [R0]; ScriptParams
3510A6:  LDRD.W          R2, R0, [R0]
3510AA:  CMP             R0, #0
3510AC:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3510AE:  MOV.W           R2, R2,LSR#8
3510B2:  LDR             R1, [R1]
3510B4:  MLA.W           R1, R2, R3, R1
3510B8:  LDR.W           R2, [R1,#0x42C]
3510BC:  BIC.W           R3, R2, #0x10000000
3510C0:  IT NE
3510C2:  ORRNE.W         R3, R2, #0x10000000
3510C6:  STR.W           R3, [R1,#0x42C]
3510CA:  B.W             loc_351B2C
3510CE:  MOV             R0, R4; jumptable 0035079E case 1248
3510D0:  MOVS            R1, #2; __int16
3510D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3510D6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3510E8)
3510DA:  MOVW            R3, #0xA2C
3510DE:  LDR.W           R0, =(ScriptParams_ptr - 0x3510EA)
3510E2:  MOVS            R5, #0
3510E4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3510E6:  ADD             R0, PC; ScriptParams_ptr
3510E8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3510EA:  LDR             R0, [R0]; ScriptParams
3510EC:  LDRD.W          R2, R0, [R0]
3510F0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3510F2:  LSRS            R2, R2, #8
3510F4:  LDR             R1, [R1]
3510F6:  MLA.W           R1, R2, R3, R1
3510FA:  STRB.W          R0, [R1,#0x3E1]
3510FE:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351102:  MOV             R0, R4; jumptable 0035079E case 1249
351104:  MOVS            R1, #1; __int16
351106:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35110A:  LDR.W           R0, =(ScriptParams_ptr - 0x351112)
35110E:  ADD             R0, PC; ScriptParams_ptr
351110:  LDR             R0, [R0]; ScriptParams
351112:  LDR             R1, [R0]
351114:  CMP             R1, #0
351116:  BLT.W           loc_351984
35111A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x351126)
35111E:  UXTB            R3, R1
351120:  LSRS            R1, R1, #8
351122:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
351124:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
351126:  LDR             R0, [R0]; CPools::ms_pVehiclePool
351128:  LDR             R2, [R0,#4]
35112A:  LDRB            R2, [R2,R1]
35112C:  CMP             R2, R3
35112E:  BNE.W           loc_351984
351132:  MOVW            R2, #0xA2C
351136:  LDR             R0, [R0]
351138:  MLA.W           R0, R1, R2, R0
35113C:  B.W             loc_351986
351140:  MOV             R0, R4; jumptable 0035079E case 1250
351142:  MOVS            R1, #2; __int16
351144:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351148:  B.W             loc_351B2C
35114C:  MOV             R0, R4; jumptable 0035079E case 1251
35114E:  MOVS            R1, #3; __int16
351150:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351154:  LDR.W           R0, =(ScriptParams_ptr - 0x351162)
351158:  SXTH            R2, R6; unsigned int
35115A:  MOV             R3, R2; __int16
35115C:  STR             R2, [SP,#0xB8+var_B8]; __int16
35115E:  ADD             R0, PC; ScriptParams_ptr
351160:  LDR             R0, [R0]; ScriptParams
351162:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]; __int16
351164:  LDRSH.W         R0, [R0,#(dword_81A90C - 0x81A908)]; this
351168:  BLX             j__ZN23CAEPedSpeechAudioEntity9SetCJMoodEsjsss; CAEPedSpeechAudioEntity::SetCJMood(short,uint,short,short,short)
35116C:  B.W             loc_351B2C
351170:  MOV             R0, R4; jumptable 0035079E case 1252
351172:  MOVS            R1, #2; __int16
351174:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351178:  LDR.W           R0, =(ScriptParams_ptr - 0x351186)
35117C:  MOVS            R5, #0
35117E:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x351188)
351182:  ADD             R0, PC; ScriptParams_ptr
351184:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
351186:  LDR             R0, [R0]; ScriptParams
351188:  LDR             R1, [R1]; CGame::currArea ...
35118A:  LDRD.W          R2, R0, [R0]; int
35118E:  STRD.W          R2, R0, [SP,#0xB8+var_58]
351192:  ADD             R0, SP, #0xB8+var_58; this
351194:  LDR             R1, [R1]; CVector *
351196:  STR             R5, [SP,#0xB8+var_50]
351198:  BLX             j__ZN9CColStore16RequestCollisionERK7CVectori; CColStore::RequestCollision(CVector const&,int)
35119C:  B.W             loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
3511A0:  MOV             R0, R4; jumptable 0035079E case 1255
3511A2:  MOVS            R1, #1; __int16
3511A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3511A8:  LDR.W           R0, =(ScriptParams_ptr - 0x3511B0)
3511AC:  ADD             R0, PC; ScriptParams_ptr
3511AE:  LDR             R0, [R0]; ScriptParams
3511B0:  LDR             R1, [R0]
3511B2:  CMP             R1, #0
3511B4:  BLT             loc_3511E0
3511B6:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3511C2)
3511BA:  UXTB            R3, R1
3511BC:  LSRS            R1, R1, #8
3511BE:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3511C0:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3511C2:  LDR             R0, [R0]; CPools::ms_pObjectPool
3511C4:  LDR             R2, [R0,#4]
3511C6:  LDRB            R2, [R2,R1]
3511C8:  CMP             R2, R3
3511CA:  BNE             loc_3511E0
3511CC:  MOV.W           R2, #0x1A4
3511D0:  LDR             R0, [R0]
3511D2:  MLA.W           R0, R1, R2, R0
3511D6:  CBZ             R0, loc_3511E0
3511D8:  LDR             R0, [R0,#0x44]
3511DA:  UBFX.W          R1, R0, #8, #1
3511DE:  B               loc_3512EA
3511E0:  MOVS            R1, #0
3511E2:  B               loc_3512EA
3511E4:  MOV             R0, R4; jumptable 0035079E case 1259
3511E6:  MOVS            R1, #2; __int16
3511E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3511EC:  MOVS            R0, #(byte_9+3); this
3511EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3511F2:  MOV             R5, R0
3511F4:  LDR.W           R0, =(ScriptParams_ptr - 0x3511FC)
3511F8:  ADD             R0, PC; ScriptParams_ptr
3511FA:  LDR             R6, [R0]; ScriptParams
3511FC:  MOV             R0, R5; this
3511FE:  LDR             R1, [R6,#(dword_81A90C - 0x81A908)]; int
351200:  BLX             j__ZN21CTaskSimpleDuckToggleC2Ei; CTaskSimpleDuckToggle::CTaskSimpleDuckToggle(int)
351204:  LDR             R1, [R6]; int
351206:  MOV             R0, R4; this
351208:  MOV             R2, R5; CTask *
35120A:  MOVW            R3, #0x4EB; int
35120E:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
351212:  B.W             loc_351B2C
351216:  ADD             R5, SP, #0xB8+var_58; jumptable 0035079E case 1261
351218:  MOV             R0, R4; this
35121A:  MOVS            R2, #0x10; unsigned __int8
35121C:  MOV             R1, R5; char *
35121E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
351222:  MOV             R0, R5; this
351224:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
351228:  MOV             R5, R0
35122A:  MOVW            R0, #0x63E7
35122E:  ADD             R0, R5; this
351230:  MOVS            R1, #4; int
351232:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
351236:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x351244)
35123A:  MOV             R1, R5; int
35123C:  MOVS            R2, #1; unsigned int
35123E:  MOV             R3, R4; CRunningScript *
351240:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
351242:  LDR             R0, [R0]; this
351244:  BLX             j__ZN22CScriptResourceManager20AddToResourceManagerEijP14CRunningScript; CScriptResourceManager::AddToResourceManager(int,uint,CRunningScript *)
351248:  B.W             loc_351B2C
35124C:  ADD             R5, SP, #0xB8+var_58; jumptable 0035079E case 1262
35124E:  MOV             R0, R4; this
351250:  MOVS            R2, #0x10; unsigned __int8
351252:  MOV             R1, R5; char *
351254:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
351258:  MOV             R0, R5; this
35125A:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
35125E:  LDRB            R1, [R0,#0x10]
351260:  B               loc_3512EA
351262:  ADD             R5, SP, #0xB8+var_58; jumptable 0035079E case 1263
351264:  MOV             R0, R4; this
351266:  MOVS            R2, #0x10; unsigned __int8
351268:  MOV             R1, R5; char *
35126A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
35126E:  MOV             R0, R5; this
351270:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
351274:  MOV             R5, R0
351276:  ADDS            R0, R5, #1
351278:  BEQ.W           loc_351B2C
35127C:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x35128A)
351280:  MOV             R1, R5; int
351282:  MOVS            R2, #1; unsigned int
351284:  MOV             R3, R4; CRunningScript *
351286:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
351288:  LDR             R0, [R0]; this
35128A:  BLX             j__ZN22CScriptResourceManager25RemoveFromResourceManagerEijP14CRunningScript; CScriptResourceManager::RemoveFromResourceManager(int,uint,CRunningScript *)
35128E:  CMP             R0, #0
351290:  BEQ.W           loc_351B2C
351294:  MOVW            R0, #0x63E7
351298:  ADD             R0, R5; this
35129A:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
35129E:  B.W             loc_351B2C
3512A2:  MOV             R0, R4; jumptable 0035079E case 1264
3512A4:  MOVS            R1, #1; __int16
3512A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3512AA:  LDR.W           R0, =(ScriptParams_ptr - 0x3512BA)
3512AE:  MOVW            R2, #0x7CC
3512B2:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3512BC)
3512B6:  ADD             R0, PC; ScriptParams_ptr
3512B8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3512BA:  B               loc_3512D4
3512BC:  MOV             R0, R4; jumptable 0035079E case 1265
3512BE:  MOVS            R1, #1; __int16
3512C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3512C4:  LDR.W           R0, =(ScriptParams_ptr - 0x3512D4)
3512C8:  MOVW            R2, #0xA2C
3512CC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3512D6)
3512D0:  ADD             R0, PC; ScriptParams_ptr
3512D2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3512D4:  LDR             R0, [R0]; ScriptParams
3512D6:  LDR             R1, [R1]; CPools::ms_pPedPool
3512D8:  LDR             R0, [R0]
3512DA:  LDR             R1, [R1]; CPools::ms_pPedPool
3512DC:  LSRS            R0, R0, #8
3512DE:  LDR             R1, [R1]
3512E0:  MLA.W           R0, R0, R2, R1
3512E4:  LDR             R0, [R0,#0x1C]
3512E6:  UBFX.W          R1, R0, #0x12, #1
3512EA:  MOV             R0, R4
3512EC:  B.W             loc_351B28
3512F0:  MOV             R0, R4; jumptable 0035079E case 1268
3512F2:  MOVS            R1, #8; __int16
3512F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3512F8:  LDR.W           R0, =(ScriptParams_ptr - 0x351300)
3512FC:  ADD             R0, PC; ScriptParams_ptr
3512FE:  LDR             R0, [R0]; ScriptParams
351300:  LDR             R1, [R0]
351302:  CMP             R1, #0
351304:  BLT.W           loc_35198C
351308:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x351314)
35130C:  UXTB            R3, R1
35130E:  LSRS            R1, R1, #8
351310:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
351312:  LDR             R0, [R0]; CPools::ms_pPedPool ...
351314:  LDR             R0, [R0]; CPools::ms_pPedPool
351316:  LDR             R2, [R0,#4]
351318:  LDRB            R2, [R2,R1]
35131A:  CMP             R2, R3
35131C:  BNE.W           loc_35198C
351320:  MOVW            R2, #0x7CC
351324:  LDR             R0, [R0]
351326:  MLA.W           R0, R1, R2, R0
35132A:  B               loc_35198E
35132C:  MOV             R0, R4; jumptable 0035079E case 1271
35132E:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
351332:  MOV             R5, R0
351334:  MOV             R0, R4; this
351336:  MOVS            R1, #2; __int16
351338:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35133C:  SUB.W           R6, R7, #-var_46
351340:  MOV             R0, R4; this
351342:  MOVS            R2, #8; unsigned __int8
351344:  MOV             R1, R6; char *
351346:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
35134A:  LDR.W           R0, =(TheText_ptr - 0x351354)
35134E:  MOV             R1, R6; CKeyGen *
351350:  ADD             R0, PC; TheText_ptr
351352:  LDR             R0, [R0]; TheText ; this
351354:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
351358:  LDR.W           R0, =(ScriptParams_ptr - 0x351368)
35135C:  MOVW            R4, #0xFFFF
351360:  LDR.W           R1, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x35136A)
351364:  ADD             R0, PC; ScriptParams_ptr
351366:  ADD             R1, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
351368:  LDR             R2, [R0]; ScriptParams
35136A:  LDR             R0, [R1]; this
35136C:  LDR             R3, [R2,#(dword_81A90C - 0x81A908)]
35136E:  LDRH            R2, [R2]; unsigned __int16
351370:  ADDS            R1, R3, R4
351372:  MOV             R3, R6; char *
351374:  UXTH            R1, R1
351376:  STR             R1, [SP,#0xB8+var_B8]; unsigned __int16
351378:  MOV             R1, R5; unsigned int
35137A:  BLX             j__ZN14COnscreenTimer10AddCounterEjtPct; COnscreenTimer::AddCounter(uint,ushort,char *,ushort)
35137E:  B               loc_351B2C
351380:  MOV             R0, R4; jumptable 0035079E case 1272
351382:  MOVS            R1, #0xD; __int16
351384:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351388:  LDR.W           R0, =(ScriptParams_ptr - 0x351390)
35138C:  ADD             R0, PC; ScriptParams_ptr
35138E:  LDR             R6, [R0]; ScriptParams
351390:  ADDS            R5, R6, #4
351392:  ADD.W           LR, R6, #0x14
351396:  LDRB            R0, [R6]
351398:  ADD.W           R11, R6, #0x20 ; ' '
35139C:  LDM             R5, {R1-R3,R5}
35139E:  LDM.W           LR, {R4,R12,LR}
3513A2:  LDM.W           R11, {R8-R11}
3513A6:  LDR             R6, [R6,#(dword_81A938 - 0x81A908)]
3513A8:  STR             R6, [SP,#0xB8+var_98]
3513AA:  STRD.W          R5, R4, [SP,#0xB8+var_B8]
3513AE:  STRD.W          R12, LR, [SP,#0xB8+var_B0]
3513B2:  ADD.W           R12, SP, #0xB8+var_A8
3513B6:  STM.W           R12, {R8-R11}
3513BA:  BLX             j__ZN10CSetPieces6AddOneEh9CVector2DS0_S0_S0_S0_S0_; CSetPieces::AddOne(uchar,CVector2D,CVector2D,CVector2D,CVector2D,CVector2D,CVector2D)
3513BE:  B               loc_351B2C
3513C0:  MOV             R0, R4; jumptable 0035079E case 1273
3513C2:  MOVS            R1, #2; __int16
3513C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3513C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3513D0)
3513CC:  ADD             R0, PC; ScriptParams_ptr
3513CE:  LDR             R0, [R0]; ScriptParams
3513D0:  LDRD.W          R1, R2, [R0]; bool
3513D4:  CMP             R2, #0
3513D6:  SUB.W           R0, R1, #1; this
3513DA:  BEQ.W           loc_351AD0
3513DE:  MOVS            R1, #1; int
3513E0:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
3513E4:  B               loc_351B2C
3513E6:  MOV             R0, R4; jumptable 0035079E case 1274
3513E8:  MOVS            R1, #1; __int16
3513EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3513EE:  LDR.W           R0, =(ScriptParams_ptr - 0x3513F6)
3513F2:  ADD             R0, PC; ScriptParams_ptr
3513F4:  LDR             R0, [R0]; ScriptParams
3513F6:  LDR             R0, [R0]
3513F8:  CMP             R0, #0
3513FA:  BEQ.W           loc_351ADA
3513FE:  MOVS            R0, #(stderr+1); this
351400:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
351404:  B               loc_351B2C
351406:  MOV             R0, R4; jumptable 0035079E case 1276
351408:  MOVS            R1, #1; __int16
35140A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35140E:  LDR.W           R0, =(ScriptParams_ptr - 0x35141E)
351412:  MOV.W           R3, #0x194
351416:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x351420)
35141A:  ADD             R0, PC; ScriptParams_ptr
35141C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
35141E:  LDR             R0, [R0]; ScriptParams
351420:  LDR             R1, [R1]; CWorld::Players ...
351422:  LDR             R2, [R0]
351424:  MLA.W           R6, R2, R3, R1
351428:  MOV             R1, R0
35142A:  ADD.W           R5, R6, #0x118
35142E:  VLD1.32         {D16-D17}, [R5]
351432:  VST1.32         {D16-D17}, [R1]!
351436:  LDRD.W          R2, R3, [R6,#0x128]
35143A:  STR             R2, [R1]
35143C:  MOVS            R1, #6; __int16
35143E:  STR             R3, [R0,#(dword_81A91C - 0x81A908)]
351440:  MOV             R0, R4; this
351442:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
351446:  VMOV.I32        Q8, #0
35144A:  VST1.32         {D16-D17}, [R5]
35144E:  MOVS            R5, #0
351450:  STRD.W          R5, R5, [R6,#0x128]
351454:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351456:  MOV             R0, R4; jumptable 0035079E case 1278
351458:  MOVS            R1, #2; __int16
35145A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35145E:  LDR.W           R0, =(ScriptParams_ptr - 0x351466)
351462:  ADD             R0, PC; ScriptParams_ptr
351464:  LDR             R0, [R0]; ScriptParams
351466:  LDR             R1, [R0]
351468:  CMP             R1, #0
35146A:  BLT.W           loc_3519BA
35146E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35147A)
351472:  UXTB            R3, R1
351474:  LSRS            R1, R1, #8
351476:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
351478:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35147A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35147C:  LDR             R2, [R0,#4]
35147E:  LDRB            R2, [R2,R1]
351480:  CMP             R2, R3
351482:  BNE.W           loc_3519BA
351486:  MOVW            R2, #0xA2C
35148A:  LDR             R0, [R0]
35148C:  MLA.W           R0, R1, R2, R0
351490:  B               loc_3519BC
351492:  MOV             R0, R4; jumptable 0035079E case 1280
351494:  MOVS            R1, #2; __int16
351496:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35149A:  LDR.W           R0, =(ScriptParams_ptr - 0x3514AC)
35149E:  MOV.W           R3, #0x194
3514A2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3514AE)
3514A6:  ADD             R5, SP, #0xB8+var_58
3514A8:  ADD             R0, PC; ScriptParams_ptr
3514AA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3514AC:  LDR             R0, [R0]; ScriptParams
3514AE:  LDR             R1, [R1]; CWorld::Players ...
3514B0:  LDRD.W          R2, R0, [R0]
3514B4:  MLA.W           R1, R2, R3, R1
3514B8:  MOVS            R2, #0x10; unsigned __int8
3514BA:  LDR             R1, [R1,#8]
3514BC:  ADD.W           R0, R1, R0,LSL#2
3514C0:  MOV             R1, R5; char *
3514C2:  LDR             R6, [R0,#0x28]
3514C4:  MOV             R0, R4; this
3514C6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3514CA:  MOV             R0, R5; this
3514CC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3514D0:  CMP             R6, R0
3514D2:  MOV.W           R1, #0
3514D6:  MOV.W           R5, #0
3514DA:  IT EQ
3514DC:  MOVEQ           R1, #1
3514DE:  B.W             loc_350978
3514E2:  MOV             R0, R4; jumptable 0035079E case 1281
3514E4:  MOVS            R1, #2; __int16
3514E6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3514EA:  LDR.W           R0, =(ScriptParams_ptr - 0x3514FC)
3514EE:  MOV.W           R3, #0x194
3514F2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3514FE)
3514F6:  MOVS            R5, #0
3514F8:  ADD             R0, PC; ScriptParams_ptr
3514FA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3514FC:  LDR             R0, [R0]; ScriptParams
3514FE:  LDR             R1, [R1]; CWorld::Players ...
351500:  LDRD.W          R2, R0, [R0]
351504:  CMP             R0, #0
351506:  IT NE
351508:  MOVNE           R0, #1
35150A:  MLA.W           R1, R2, R3, R1
35150E:  STRB.W          R0, [R1,#0x153]
351512:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351514:  MOV             R0, R4; jumptable 0035079E case 1283
351516:  MOVS            R1, #5; __int16
351518:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35151C:  LDR.W           R0, =(ScriptParams_ptr - 0x351528)
351520:  ADD.W           R8, SP, #0xB8+var_58
351524:  ADD             R0, PC; ScriptParams_ptr
351526:  LDR             R0, [R0]; ScriptParams
351528:  LDRD.W          R5, R6, [R0]
35152C:  LDRD.W          R1, R2, [R0,#(dword_81A910 - 0x81A908)]; CVector *
351530:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
351532:  STRD.W          R1, R2, [SP,#0xB8+var_58]
351536:  STR             R0, [SP,#0xB8+var_50]
351538:  MOV             R0, R8; this
35153A:  BLX             j__ZN6CRopes20CreateRopeForSwatPedERK7CVector; CRopes::CreateRopeForSwatPed(CVector const&)
35153E:  MOV             R9, R0
351540:  MOV             R0, R5
351542:  MOV             R1, R6
351544:  MOV             R2, R8
351546:  MOVS            R3, #1
351548:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
35154C:  MOV             R5, R0
35154E:  MOVS            R0, #dword_1C; this
351550:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
351554:  MOV             R1, R9; int
351556:  MOV             R6, R0
351558:  BLX             j__ZN23CTaskComplexUseSwatRopeC2Ei; CTaskComplexUseSwatRope::CTaskComplexUseSwatRope(int)
35155C:  LDR.W           R0, [R5,#0x440]
351560:  MOV             R1, R6; CTask *
351562:  MOVS            R2, #3; int
351564:  MOVS            R3, #0; bool
351566:  ADDS            R0, #4; this
351568:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
35156C:  LDR.W           R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x351574)
351570:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr ; this
351572:  LDR.W           R8, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
351576:  BLX             j__ZN22CPedScriptedTaskRecord13GetVacantSlotEv; CPedScriptedTaskRecord::GetVacantSlot(void)
35157A:  ADD.W           R0, R0, R0,LSL#2
35157E:  MOV             R1, R5; CPed *
351580:  MOVW            R2, #0x503; int
351584:  MOV             R3, R6; CTask *
351586:  ADD.W           R0, R8, R0,LSL#2; this
35158A:  BLX             j__ZN26CPedScriptedTaskRecordData3SetEP4CPediPK5CTask; CPedScriptedTaskRecordData::Set(CPed *,int,CTask const*)
35158E:  MOV             R0, R5; this
351590:  MOVS            R1, #2; unsigned __int8
351592:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
351596:  LDR.W           R0, [R5,#0x484]
35159A:  LDR.W           R8, [R5,#0x440]
35159E:  BIC.W           R0, R0, #0x80000000
3515A2:  STR.W           R0, [R5,#0x484]
3515A6:  MOVS            R0, #dword_20; this
3515A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3515AC:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
3515B0:  MOV             R6, R0
3515B2:  MOV.W           R0, #0x41000000
3515B6:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x25); int
3515BA:  STR             R0, [SP,#0xB8+var_B8]; float
3515BC:  MOV             R0, R6; this
3515BE:  MOVS            R2, #1; bool
3515C0:  MOVS            R3, #0; bool
3515C2:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
3515C6:  ADD.W           R0, R8, #4; this
3515CA:  MOV             R1, R6; CTask *
3515CC:  MOVS            R2, #4; int
3515CE:  MOVS            R3, #0; bool
3515D0:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
3515D4:  LDR             R0, [R5,#0x14]
3515D6:  ADD.W           R1, R0, #0x30 ; '0'
3515DA:  CMP             R0, #0
3515DC:  IT EQ
3515DE:  ADDEQ           R1, R5, #4
3515E0:  LDR             R0, [R1,#8]
3515E2:  VLDR            D16, [R1]
3515E6:  MOV             R1, R5; CVector *
3515E8:  STR             R0, [SP,#0xB8+var_60]
3515EA:  ADD             R0, SP, #0xB8+var_68; this
3515EC:  VSTR            D16, [SP,#0xB8+var_68]
3515F0:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
3515F4:  LDRB.W          R0, [R4,#0xE6]
3515F8:  LDR.W           R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x35160C)
3515FC:  CMP             R0, #0
3515FE:  ITTT NE
351600:  LDRNE           R0, [R5,#0x1C]
351602:  ORRNE.W         R0, R0, #0x40000
351606:  STRNE           R0, [R5,#0x1C]
351608:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
35160A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x351614)
35160E:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
351610:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
351612:  LDR             R0, [R0]; CPools::ms_pPedPool ...
351614:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
351616:  LDR             R0, [R0]; CPools::ms_pPedPool
351618:  ADDS            R2, #1
35161A:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
35161C:  MOVW            R2, #0x7F3B
351620:  LDRD.W          R1, R0, [R0]
351624:  MOVT            R2, #0xBED8
351628:  SUBS            R1, R5, R1
35162A:  ASRS            R1, R1, #2
35162C:  MULS            R1, R2
35162E:  LDR.W           R2, =(ScriptParams_ptr - 0x351636)
351632:  ADD             R2, PC; ScriptParams_ptr
351634:  LDR             R2, [R2]; ScriptParams
351636:  LDRB            R0, [R0,R1]
351638:  ORR.W           R0, R0, R1,LSL#8
35163C:  STR             R0, [R2]
35163E:  MOV             R0, R4; this
351640:  MOVS            R1, #1; __int16
351642:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
351646:  LDRB.W          R0, [R4,#0xE6]
35164A:  CMP             R0, #0
35164C:  BEQ.W           loc_351B2C
351650:  LDR.W           R0, =(ScriptParams_ptr - 0x35165C)
351654:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35165E)
351658:  ADD             R0, PC; ScriptParams_ptr
35165A:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35165C:  LDR             R2, [R0]; ScriptParams
35165E:  LDR             R0, [R1]; this
351660:  LDR             R1, [R2]; int
351662:  MOVS            R2, #2; unsigned __int8
351664:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
351668:  B               loc_351B2C
35166A:  ALIGN 4
35166C:  DCD ScriptParams_ptr - 0x350898
351670:  DCD ScriptParams_ptr - 0x3508B2
351674:  DCD ScriptParams_ptr - 0x3508D0
351678:  DCD ScriptParams_ptr - 0x3508E8
35167C:  DCD ScriptParams_ptr - 0x350916
351680:  DCD ScriptParams_ptr - 0x350930
351684:  DCD ScriptParams_ptr - 0x35094E
351688:  DCD ScriptParams_ptr - 0x350966
35168C:  DCD ScriptParams_ptr - 0x35099A
351690:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35099C
351694:  DCD ScriptParams_ptr - 0x3509E4
351698:  DCD ThePaths_ptr - 0x3509EA
35169C:  DCD ScriptParams_ptr - 0x350A34
3516A0:  DCD ScriptParams_ptr - 0x350A5A
3516A4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x350A62
3516A8:  DCD ScriptParams_ptr - 0x350AE2
3516AC:  DCD _ZN5CGame8currAreaE_ptr - 0x350AE4
3516B0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x350B0A
3516B4:  DCD ScriptParams_ptr - 0x350B0C
3516B8:  DCD ScriptParams_ptr - 0x350B40
3516BC:  DCD ScriptParams_ptr - 0x350B7A
3516C0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x350B8E
3516C4:  DCD ScriptParams_ptr - 0x350BB8
3516C8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x350BCC
3516CC:  MOV             R0, R4; jumptable 0035079E case 1286
3516CE:  MOVS            R1, #3; __int16
3516D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3516D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3516E2)
3516D8:  MOVS            R5, #0
3516DA:  LDR.W           R1, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x3516E4)
3516DE:  ADD             R0, PC; ScriptParams_ptr
3516E0:  ADD             R1, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
3516E2:  LDR             R0, [R0]; ScriptParams
3516E4:  LDR             R1, [R1]; CVehicleModelInfo::ms_compsToUse ...
3516E6:  LDRD.W          R2, R0, [R0,#(dword_81A90C - 0x81A908)]
3516EA:  STRB            R2, [R1]; CVehicleModelInfo::ms_compsToUse
3516EC:  STRB            R0, [R1,#(_ZN17CVehicleModelInfo13ms_compsToUseE+1 - 0x6869A0)]; CVehicleModelInfo::ms_compsToUse
3516EE:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
3516F0:  MOV             R0, R4; jumptable 0035079E case 1288
3516F2:  MOVS            R1, #1; __int16
3516F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3516F8:  LDR.W           R0, =(ScriptParams_ptr - 0x351700)
3516FC:  ADD             R0, PC; ScriptParams_ptr
3516FE:  LDR             R0, [R0]; ScriptParams
351700:  LDR             R1, [R0]
351702:  CMP             R1, #0
351704:  BLT.W           loc_3519DC
351708:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x351714)
35170C:  UXTB            R3, R1
35170E:  LSRS            R1, R1, #8
351710:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
351712:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
351714:  LDR             R0, [R0]; CPools::ms_pVehiclePool
351716:  LDR             R2, [R0,#4]
351718:  LDRB            R2, [R2,R1]
35171A:  CMP             R2, R3
35171C:  BNE.W           loc_3519DC
351720:  MOVW            R2, #0xA2C
351724:  LDR             R0, [R0]
351726:  MLA.W           R0, R1, R2, R0
35172A:  B               loc_3519DE
35172C:  MOV             R0, R4; jumptable 0035079E case 1289
35172E:  MOVS            R1, #4; __int16
351730:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351734:  LDR.W           R0, =(ScriptParams_ptr - 0x35173C)
351738:  ADD             R0, PC; ScriptParams_ptr
35173A:  LDR             R0, [R0]; ScriptParams
35173C:  VLDR            S0, [R0]
351740:  VLDR            S4, [R0,#8]
351744:  VLDR            S2, [R0,#4]
351748:  VLDR            S6, [R0,#0xC]
35174C:  VSUB.F32        S0, S0, S4
351750:  VSUB.F32        S2, S2, S6
351754:  VMUL.F32        S0, S0, S0
351758:  VMUL.F32        S2, S2, S2
35175C:  VADD.F32        S0, S0, S2
351760:  B               loc_3517AA
351762:  MOV             R0, R4; jumptable 0035079E case 1290
351764:  MOVS            R1, #6; __int16
351766:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35176A:  LDR.W           R0, =(ScriptParams_ptr - 0x351772)
35176E:  ADD             R0, PC; ScriptParams_ptr
351770:  LDR             R0, [R0]; ScriptParams
351772:  VLDR            S0, [R0]
351776:  VLDR            S6, [R0,#0xC]
35177A:  VLDR            S2, [R0,#4]
35177E:  VLDR            S8, [R0,#0x10]
351782:  VSUB.F32        S0, S0, S6
351786:  VLDR            S4, [R0,#8]
35178A:  VSUB.F32        S2, S2, S8
35178E:  VLDR            S10, [R0,#0x14]
351792:  VSUB.F32        S4, S4, S10
351796:  VMUL.F32        S0, S0, S0
35179A:  VMUL.F32        S2, S2, S2
35179E:  VMUL.F32        S4, S4, S4
3517A2:  VADD.F32        S0, S0, S2
3517A6:  VADD.F32        S0, S0, S4
3517AA:  VSQRT.F32       S0, S0
3517AE:  VSTR            S0, [R0]
3517B2:  B               loc_351804
3517B4:  MOV             R0, R4; jumptable 0035079E case 1294
3517B6:  MOVS            R1, #2; __int16
3517B8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3517BC:  LDR.W           R0, =(ScriptParams_ptr - 0x3517C4)
3517C0:  ADD             R0, PC; ScriptParams_ptr
3517C2:  LDR             R0, [R0]; ScriptParams
3517C4:  LDR             R1, [R0]
3517C6:  CMP             R1, #0
3517C8:  BLT.W           loc_3519E4
3517CC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3517D8)
3517D0:  UXTB            R3, R1
3517D2:  LSRS            R1, R1, #8
3517D4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3517D6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3517D8:  LDR             R0, [R0]; CPools::ms_pObjectPool
3517DA:  LDR             R2, [R0,#4]
3517DC:  LDRB            R2, [R2,R1]
3517DE:  CMP             R2, R3
3517E0:  BNE.W           loc_3519E4
3517E4:  MOV.W           R2, #0x1A4
3517E8:  LDR             R0, [R0]
3517EA:  MLA.W           R0, R1, R2, R0
3517EE:  B               loc_3519E6
3517F0:  LDR.W           R0, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x3517FC); jumptable 0035079E case 1295
3517F4:  LDR.W           R1, =(ScriptParams_ptr - 0x3517FE)
3517F8:  ADD             R0, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
3517FA:  ADD             R1, PC; ScriptParams_ptr
3517FC:  LDR             R0, [R0]; CWanted::MaximumWantedLevel ...
3517FE:  LDR             R1, [R1]; ScriptParams
351800:  LDR             R0, [R0]; CWanted::MaximumWantedLevel
351802:  STR             R0, [R1]
351804:  MOV             R0, R4
351806:  MOVS            R1, #1
351808:  B               loc_3518DC
35180A:  SUB.W           R5, R7, #-var_46; jumptable 0035079E case 1298
35180E:  MOV             R0, R4; this
351810:  MOVS            R2, #8; unsigned __int8
351812:  MOV             R1, R5; char *
351814:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
351818:  LDR             R0, =(TheText_ptr - 0x351820)
35181A:  MOV             R1, R5; CKeyGen *
35181C:  ADD             R0, PC; TheText_ptr
35181E:  LDR             R0, [R0]; TheText ; this
351820:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
351824:  MOV             R5, R0
351826:  LDR             R0, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x35182C)
351828:  ADD             R0, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
35182A:  LDR             R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
35182C:  LDRB            R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages
35182E:  CMP             R0, #0
351830:  ITT EQ
351832:  LDRBEQ.W        R0, [R4,#0xE8]
351836:  CMPEQ           R0, #0
351838:  BEQ.W           loc_351AE4
35183C:  SUB.W           R0, R7, #-var_46; this
351840:  MOVS            R4, #0
351842:  MOV             R1, R5; char *
351844:  MOVS            R2, #0; unsigned __int16 *
351846:  MOVS            R3, #1; bool
351848:  STRD.W          R4, R4, [SP,#0xB8+var_B8]; bool
35184C:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
351850:  LDR             R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x351856)
351852:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
351854:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
351856:  LDRB            R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
351858:  CMP             R0, #0
35185A:  BEQ.W           loc_351AF2
35185E:  MOV.W           R0, #0xFFFFFFFF
351862:  MOV             R1, R5; char *
351864:  STRD.W          R0, R0, [SP,#0xB8+var_B8]; int
351868:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
35186C:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; int
351870:  SUB.W           R0, R7, #-var_46; this
351874:  MOV.W           R3, #0xFFFFFFFF; int
351878:  STR             R4, [SP,#0xB8+var_A8]; int
35187A:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
35187E:  B               loc_351AF2
351880:  MOVS            R5, #0
351882:  LDR.W           R0, =(ScriptParams_ptr - 0x35188C)
351886:  ADD             R3, SP, #0xB8+var_68
351888:  ADD             R0, PC; ScriptParams_ptr
35188A:  LDR             R6, [R0]; ScriptParams
35188C:  ADDS            R2, R6, #4
35188E:  LDM             R2, {R0-R2}
351890:  STM             R3!, {R0-R2}
351892:  ADD             R0, SP, #0xB8+var_58; CMatrix *
351894:  ADD             R2, SP, #0xB8+var_68
351896:  LDR             R1, [R5,#0x14]; CVector *
351898:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
35189C:  LDR             R0, [R5,#0x14]
35189E:  VLDR            S0, [SP,#0xB8+var_58]
3518A2:  ADD.W           R1, R0, #0x30 ; '0'
3518A6:  CMP             R0, #0
3518A8:  VLDR            S2, [SP,#0xB8+var_58+4]
3518AC:  VLDR            S4, [SP,#0xB8+var_50]
3518B0:  IT EQ
3518B2:  ADDEQ           R1, R5, #4
3518B4:  VLDR            S6, [R1]
3518B8:  VLDR            S8, [R1,#4]
3518BC:  VLDR            S10, [R1,#8]
3518C0:  VADD.F32        S0, S0, S6
3518C4:  VADD.F32        S2, S2, S8
3518C8:  VADD.F32        S4, S4, S10
3518CC:  VSTR            S0, [R6]
3518D0:  VSTR            S2, [R6,#4]
3518D4:  VSTR            S4, [R6,#8]
3518D8:  MOV             R0, R4; this
3518DA:  MOVS            R1, #3; __int16
3518DC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3518E0:  B               loc_351B2C
3518E2:  MOVS            R0, #0; this
3518E4:  LDR.W           R1, =(ScriptParams_ptr - 0x3518F0)
3518E8:  VLDR            S0, =90.0
3518EC:  ADD             R1, PC; ScriptParams_ptr
3518EE:  LDR             R1, [R1]; ScriptParams
3518F0:  VLDR            S2, [R1,#4]
3518F4:  VADD.F32        S0, S2, S0
3518F8:  VLDR            S2, =3.1416
3518FC:  VMUL.F32        S0, S0, S2
351900:  VLDR            S2, =180.0
351904:  VDIV.F32        S0, S0, S2
351908:  VCMPE.F32       S0, #0.0
35190C:  VSTR            S0, [SP,#0xB8+var_74]
351910:  VMRS            APSR_nzcv, FPSCR
351914:  BGE             loc_35192C
351916:  VLDR            S2, =6.2832
35191A:  VADD.F32        S0, S0, S2
35191E:  VCMPE.F32       S0, #0.0
351922:  VMRS            APSR_nzcv, FPSCR
351926:  BLT             loc_35191A
351928:  VSTR            S0, [SP,#0xB8+var_74]
35192C:  VLDR            S2, =6.2832
351930:  VCMPE.F32       S0, S2
351934:  VMRS            APSR_nzcv, FPSCR
351938:  BLE             loc_351950
35193A:  VLDR            S4, =-6.2832
35193E:  VADD.F32        S0, S0, S4
351942:  VCMPE.F32       S0, S2
351946:  VMRS            APSR_nzcv, FPSCR
35194A:  BGT             loc_35193E
35194C:  VSTR            S0, [SP,#0xB8+var_74]
351950:  VMOV            R1, S0; float
351954:  BLX             j__ZN11CAutomobile18SetHeliOrientationEf; CAutomobile::SetHeliOrientation(float)
351958:  B               loc_351B2C
35195A:  MOVS            R0, #0; this
35195C:  BLX             j__ZN11CAutomobile20ClearHeliOrientationEv; CAutomobile::ClearHeliOrientation(void)
351960:  B               loc_351B2C
351962:  MOVS            R0, #0; this
351964:  LDR             R1, =(ScriptParams_ptr - 0x35196A)
351966:  ADD             R1, PC; ScriptParams_ptr
351968:  LDR             R3, [R1]; ScriptParams
35196A:  VLDR            S0, [R3,#0x10]
35196E:  VLDR            S2, [R3,#0x14]
351972:  ADDS            R3, #4
351974:  LDM             R3, {R1-R3}; float
351976:  VSTR            S0, [SP,#0xB8+var_B8]
35197A:  VSTR            S2, [SP,#0xB8+var_B4]
35197E:  BLX             j__ZN11CAutomobile20TellPlaneToGoToCoorsEfffff; CAutomobile::TellPlaneToGoToCoors(float,float,float,float,float)
351982:  B               loc_351B2C
351984:  MOVS            R0, #0; this
351986:  BLX             j__ZN11CAutomobile7PopBootEv; CAutomobile::PopBoot(void)
35198A:  B               loc_351B2C
35198C:  MOVS            R0, #0; int
35198E:  LDR             R1, =(ScriptParams_ptr - 0x351994)
351990:  ADD             R1, PC; ScriptParams_ptr
351992:  LDR             R1, [R1]; ScriptParams
351994:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
351996:  CMP             R2, #0
351998:  BLT             loc_351A12
35199A:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3519A4)
35199C:  UXTB            R6, R2
35199E:  LSRS            R2, R2, #8
3519A0:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3519A2:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3519A4:  LDR             R1, [R1]; CPools::ms_pObjectPool
3519A6:  LDR             R3, [R1,#4]
3519A8:  LDRB            R3, [R3,R2]
3519AA:  CMP             R3, R6
3519AC:  BNE             loc_351A12
3519AE:  MOV.W           R3, #0x1A4
3519B2:  LDR             R1, [R1]
3519B4:  MLA.W           R1, R2, R3, R1
3519B8:  B               loc_351A14
3519BA:  MOVS            R0, #0
3519BC:  LDR.W           R1, [R0,#0x5A0]
3519C0:  CMP             R1, #9
3519C2:  BNE             loc_351AA6
3519C4:  LDR             R1, =(ScriptParams_ptr - 0x3519CA)
3519C6:  ADD             R1, PC; ScriptParams_ptr
3519C8:  LDR             R1, [R1]; ScriptParams
3519CA:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
3519CC:  CMP             R1, #2
3519CE:  BEQ.W           loc_351B52
3519D2:  CMP             R1, #3
3519D4:  BNE.W           loc_351B5C
3519D8:  MOVS            R1, #1
3519DA:  B               loc_351B54
3519DC:  MOVS            R0, #0; this
3519DE:  BLX             j__ZN11CAutomobile13CloseAllDoorsEv; CAutomobile::CloseAllDoors(void)
3519E2:  B               loc_351B2C
3519E4:  MOVS            R0, #0
3519E6:  LDR             R1, =(ScriptParams_ptr - 0x3519EC)
3519E8:  ADD             R1, PC; ScriptParams_ptr
3519EA:  LDR             R1, [R1]; ScriptParams
3519EC:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
3519EE:  CMP             R2, #0
3519F0:  BLT             loc_351A48
3519F2:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3519FC)
3519F4:  UXTB            R6, R2
3519F6:  LSRS            R2, R2, #8
3519F8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3519FA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3519FC:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3519FE:  LDR             R3, [R1,#4]
351A00:  LDRB            R3, [R3,R2]
351A02:  CMP             R3, R6
351A04:  BNE             loc_351A48
351A06:  MOVW            R3, #0xA2C
351A0A:  LDR             R1, [R1]
351A0C:  MLA.W           R1, R2, R3, R1
351A10:  B               loc_351A4A
351A12:  MOVS            R1, #0; this
351A14:  LDR             R2, =(ScriptParams_ptr - 0x351A1E)
351A16:  VLDR            S0, =3.1416
351A1A:  ADD             R2, PC; ScriptParams_ptr
351A1C:  LDR             R6, [R2]; ScriptParams
351A1E:  ADD.W           R5, R6, #8
351A22:  VLDR            S2, [R6,#0x18]
351A26:  LDM             R5, {R2,R3,R5}; int
351A28:  VMUL.F32        S0, S2, S0
351A2C:  VLDR            S2, =180.0
351A30:  LDRH            R4, [R6,#(dword_81A91C - 0x81A908)]
351A32:  LDR             R6, [R6,#(dword_81A924 - 0x81A908)]
351A34:  STR             R6, [SP,#0xB8+var_AC]; int
351A36:  STRD.W          R5, R4, [SP,#0xB8+var_B8]; int
351A3A:  VDIV.F32        S0, S0, S2
351A3E:  VSTR            S0, [SP,#0xB8+var_B0]
351A42:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
351A46:  B               loc_351B2C
351A48:  MOVS            R1, #0
351A4A:  STR.W           R1, [R0,#0x12C]
351A4E:  B               loc_351B2C
351A50:  LDR             R1, =(ThePaths_ptr - 0x351A5C)
351A52:  ADD             R0, SP, #0xB8+var_58
351A54:  LDR             R2, [SP,#0xB8+var_6C]
351A56:  MOVS            R3, #0
351A58:  ADD             R1, PC; ThePaths_ptr
351A5A:  MOVS            R6, #0
351A5C:  LDR             R5, [R1]; ThePaths
351A5E:  MOV             R1, R5
351A60:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
351A64:  LDR             R0, =(ScriptParams_ptr - 0x351A6C)
351A66:  ADD             R3, SP, #0xB8+var_58
351A68:  ADD             R0, PC; ScriptParams_ptr
351A6A:  LDM             R3, {R1-R3}
351A6C:  LDR             R0, [R0]; ScriptParams
351A6E:  STM             R0!, {R1-R3}
351A70:  ADD             R0, SP, #0xB8+var_68
351A72:  SUB.W           R3, R7, #-var_46
351A76:  LDR             R2, [SP,#0xB8+var_70]
351A78:  MOV             R1, R5
351A7A:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
351A7E:  LDR             R0, [SP,#0xB8+var_60]
351A80:  STR             R0, [SP,#0xB8+var_50]
351A82:  LDRB.W          R0, [R7,#var_46]
351A86:  VLDR            D16, [SP,#0xB8+var_68]
351A8A:  CMP             R0, #0
351A8C:  VSTR            D16, [SP,#0xB8+var_58]
351A90:  BEQ             loc_351B00
351A92:  LDR             R0, =(ScriptParams_ptr - 0x351A9C)
351A94:  ADD             R3, SP, #0xB8+var_58
351A96:  MOVS            R5, #1
351A98:  ADD             R0, PC; ScriptParams_ptr
351A9A:  LDM             R3, {R1-R3}
351A9C:  LDR             R0, [R0]; ScriptParams
351A9E:  LDR             R6, [SP,#0xB8+var_74]
351AA0:  ADDS            R0, #0xC
351AA2:  STM             R0!, {R1-R3}
351AA4:  B               loc_351B14
351AA6:  LDR             R1, =(ScriptParams_ptr - 0x351AAE)
351AA8:  LDR             R2, [R0]
351AAA:  ADD             R1, PC; ScriptParams_ptr
351AAC:  LDR             R1, [R1]; ScriptParams
351AAE:  LDR.W           R3, [R2,#0xB4]
351AB2:  LDRB            R1, [R1,#(dword_81A90C - 0x81A908)]
351AB4:  B               loc_351B64
351AB6:  LDR             R0, =(ScriptParams_ptr - 0x351ABE)
351AB8:  MOVS            R5, #0
351ABA:  ADD             R0, PC; ScriptParams_ptr
351ABC:  LDR             R0, [R0]; ScriptParams
351ABE:  STRD.W          R6, R6, [R0]
351AC2:  LDR             R0, =(ScriptParams_ptr - 0x351ACA)
351AC4:  MOVS            R1, #3
351AC6:  ADD             R0, PC; ScriptParams_ptr
351AC8:  LDR             R0, [R0]; ScriptParams
351ACA:  STR             R6, [R0,#(dword_81A910 - 0x81A908)]
351ACC:  MOV             R0, R4
351ACE:  B               loc_351B20
351AD0:  MOVS            R1, #0; int
351AD2:  MOVS            R5, #0
351AD4:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
351AD8:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351ADA:  MOVS            R0, #0; this
351ADC:  MOVS            R5, #0
351ADE:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
351AE2:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351AE4:  LDR             R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x351AEA)
351AE6:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
351AE8:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress ...
351AEA:  LDRB            R0, [R0]; CTheScripts::bMiniGameInProgress
351AEC:  CMP             R0, #0
351AEE:  BEQ.W           loc_35183C
351AF2:  LDR             R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x351AFC)
351AF4:  MOVS            R1, #1
351AF6:  MOVS            R5, #0
351AF8:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
351AFA:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
351AFC:  STRB            R1, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
351AFE:  B               loc_351B2E; jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351B00:  LDR             R0, =(ScriptParams_ptr - 0x351B0C)
351B02:  VMOV.I32        Q8, #0
351B06:  MOVS            R5, #0
351B08:  ADD             R0, PC; ScriptParams_ptr
351B0A:  LDR             R0, [R0]; ScriptParams
351B0C:  STR             R6, [R0,#(dword_81A91C - 0x81A908)]
351B0E:  VST1.32         {D16-D17}, [R0]!
351B12:  STR             R6, [R0]
351B14:  LDR             R0, =(ScriptParams_ptr - 0x351B1A)
351B16:  ADD             R0, PC; ScriptParams_ptr
351B18:  LDR             R0, [R0]; ScriptParams
351B1A:  STR             R6, [R0,#(dword_81A920 - 0x81A908)]
351B1C:  MOV             R0, R4; this
351B1E:  MOVS            R1, #7; __int16
351B20:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
351B24:  MOV             R0, R4; this
351B26:  MOV             R1, R5; unsigned __int8
351B28:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
351B2C:  MOVS            R5, #0
351B2E:  LDR             R0, =(__stack_chk_guard_ptr - 0x351B36); jumptable 0035079E cases 1212,1214,1215,1223,1269,1287,1291,1299
351B30:  LDR             R1, [SP,#0xB8+var_3C]
351B32:  ADD             R0, PC; __stack_chk_guard_ptr
351B34:  LDR             R0, [R0]; __stack_chk_guard
351B36:  LDR             R0, [R0]
351B38:  SUBS            R0, R0, R1
351B3A:  ITTTT EQ
351B3C:  SXTBEQ          R0, R5
351B3E:  ADDEQ           SP, SP, #0x80
351B40:  VPOPEQ          {D8-D10}
351B44:  ADDEQ           SP, SP, #4
351B46:  ITT EQ
351B48:  POPEQ.W         {R8-R11}
351B4C:  POPEQ           {R4-R7,PC}
351B4E:  BLX             __stack_chk_fail
351B52:  MOVS            R1, #0
351B54:  LDR             R2, =(ScriptParams_ptr - 0x351B5A)
351B56:  ADD             R2, PC; ScriptParams_ptr
351B58:  LDR             R2, [R2]; ScriptParams
351B5A:  STR             R1, [R2,#(dword_81A90C - 0x81A908)]
351B5C:  LDR             R2, [R0]
351B5E:  UXTB            R1, R1
351B60:  LDR.W           R3, [R2,#0xB4]
351B64:  MOVS            R2, #1
351B66:  BLX             R3
351B68:  B               loc_351B2C
