; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1300To1399Ei
; Address            : 0x351D24 - 0x352DE0
; =========================================================

351D24:  PUSH            {R4-R7,LR}
351D26:  ADD             R7, SP, #0xC
351D28:  PUSH.W          {R8-R11}
351D2C:  SUB             SP, SP, #4
351D2E:  VPUSH           {D8-D10}
351D32:  SUB             SP, SP, #0x60; int
351D34:  MOV             R8, R0
351D36:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x351D3E)
351D3A:  ADD             R0, PC; __stack_chk_guard_ptr
351D3C:  LDR             R0, [R0]; __stack_chk_guard
351D3E:  LDR             R0, [R0]
351D40:  STR             R0, [SP,#0x98+var_3C]
351D42:  SUBW            R0, R1, #0x515; switch 97 cases
351D46:  CMP             R0, #0x60 ; '`'
351D48:  BHI.W           def_351D4E; jumptable 00351D4E default case, cases 1302,1311,1312,1319-1323,1325-1341,1346-1348,1350,1353,1363,1364,1368-1370,1372,1378,1383,1387,1391,1393,1395
351D4C:  MOVS            R6, #0
351D4E:  TBH.W           [PC,R0,LSL#1]; switch jump
351D52:  DCW 0x7ED; jump table for switch statement
351D54:  DCW 0xAE
351D56:  DCW 0x61
351D58:  DCW 0xB1
351D5A:  DCW 0x107
351D5C:  DCW 0x126
351D5E:  DCW 0x145
351D60:  DCW 0x164
351D62:  DCW 0x183
351D64:  DCW 0x1A2
351D66:  DCW 0xAE
351D68:  DCW 0xAE
351D6A:  DCW 0x7ED
351D6C:  DCW 0x7ED
351D6E:  DCW 0x7ED
351D70:  DCW 0x7ED
351D72:  DCW 0x7ED
351D74:  DCW 0x1AE
351D76:  DCW 0xAE
351D78:  DCW 0xAE
351D7A:  DCW 0xAE
351D7C:  DCW 0xAE
351D7E:  DCW 0xAE
351D80:  DCW 0x1CD
351D82:  DCW 0xAE
351D84:  DCW 0xAE
351D86:  DCW 0xAE
351D88:  DCW 0xAE
351D8A:  DCW 0xAE
351D8C:  DCW 0xAE
351D8E:  DCW 0xAE
351D90:  DCW 0xAE
351D92:  DCW 0xAE
351D94:  DCW 0xAE
351D96:  DCW 0xAE
351D98:  DCW 0xAE
351D9A:  DCW 0xAE
351D9C:  DCW 0xAE
351D9E:  DCW 0xAE
351DA0:  DCW 0xAE
351DA2:  DCW 0xAE
351DA4:  DCW 0x1EC
351DA6:  DCW 0x26F
351DA8:  DCW 0x7ED
351DAA:  DCW 0x292
351DAC:  DCW 0xAE
351DAE:  DCW 0xAE
351DB0:  DCW 0xAE
351DB2:  DCW 0x7ED
351DB4:  DCW 0xAE
351DB6:  DCW 0x2B0
351DB8:  DCW 0x7ED
351DBA:  DCW 0xAE
351DBC:  DCW 0x2CE
351DBE:  DCW 0x7ED
351DC0:  DCW 0x2ED
351DC2:  DCW 0x7ED
351DC4:  DCW 0x2FC
351DC6:  DCW 0x320
351DC8:  DCW 0x344
351DCA:  DCW 0x7ED
351DCC:  DCW 0x7ED
351DCE:  DCW 0xAE
351DD0:  DCW 0xAE
351DD2:  DCW 0x366
351DD4:  DCW 0x7ED
351DD6:  DCW 0x7ED
351DD8:  DCW 0xAE
351DDA:  DCW 0xAE
351DDC:  DCW 0xAE
351DDE:  DCW 0x7ED
351DE0:  DCW 0xAE
351DE2:  DCW 0x385
351DE4:  DCW 0x39F
351DE6:  DCW 0x3C0
351DE8:  DCW 0x3E4
351DEA:  DCW 0x403
351DEC:  DCW 0xAE
351DEE:  DCW 0x422
351DF0:  DCW 0x44A
351DF2:  DCW 0x46B
351DF4:  DCW 0x485
351DF6:  DCW 0xAE
351DF8:  DCW 0x49E
351DFA:  DCW 0x7ED
351DFC:  DCW 0x4BF
351DFE:  DCW 0xAE
351E00:  DCW 0x4C5
351E02:  DCW 0x4F2
351E04:  DCW 0x50D
351E06:  DCW 0xAE
351E08:  DCW 0x52E
351E0A:  DCW 0xAE
351E0C:  DCW 0x56B
351E0E:  DCW 0xAE
351E10:  DCW 0x582
351E12:  DCW 0x5A0
351E14:  MOV             R0, R8; jumptable 00351D4E case 1303
351E16:  MOVS            R1, #3; __int16
351E18:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351E1C:  LDR.W           R0, =(ScriptParams_ptr - 0x351E28)
351E20:  VLDR            S0, =-100.0
351E24:  ADD             R0, PC; ScriptParams_ptr
351E26:  LDR             R0, [R0]; ScriptParams
351E28:  VLDR            S20, [R0,#8]
351E2C:  VLDR            S16, [R0]
351E30:  VCMPE.F32       S20, S0
351E34:  VLDR            S18, [R0,#4]
351E38:  VMRS            APSR_nzcv, FPSCR
351E3C:  BGT             loc_351E56
351E3E:  VMOV            R0, S16; this
351E42:  VMOV            R1, S18; float
351E46:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
351E4A:  VMOV.F32        S0, #0.5
351E4E:  VMOV            S2, R0
351E52:  VADD.F32        S20, S2, S0
351E56:  ADD             R5, SP, #0x98+var_58
351E58:  MOV             R0, R8; this
351E5A:  MOVS            R2, #8; unsigned __int8
351E5C:  MOV             R1, R5; char *
351E5E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
351E62:  LDR.W           R0, =(TheText_ptr - 0x351E6C)
351E66:  MOV             R1, R5; CKeyGen *
351E68:  ADD             R0, PC; TheText_ptr
351E6A:  LDR             R0, [R0]; TheText ; this
351E6C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
351E70:  MOV             R0, R8; this
351E72:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
351E76:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
351E7A:  VMOV            R0, S16
351E7E:  LDR.W           R3, =(MI_PICKUP_PROPERTY_ptr - 0x351E90)
351E82:  VMOV            R1, S18
351E86:  MOVS            R6, #0
351E88:  VMOV            R2, S20
351E8C:  ADD             R3, PC; MI_PICKUP_PROPERTY_ptr
351E8E:  MOVS            R4, #0x11
351E90:  LDR             R3, [R3]; MI_PICKUP_PROPERTY
351E92:  LDRH            R3, [R3]
351E94:  STRD.W          R4, R6, [SP,#0x98+var_98]
351E98:  STRD.W          R6, R6, [SP,#0x98+var_90]
351E9C:  STR             R5, [SP,#0x98+var_88]
351E9E:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
351EA2:  LDR.W           R1, =(ScriptParams_ptr - 0x351EAA)
351EA6:  ADD             R1, PC; ScriptParams_ptr
351EA8:  LDR             R1, [R1]; ScriptParams
351EAA:  STR             R0, [R1]
351EAC:  B               loc_351F54
351EAE:  MOVS            R6, #0xFF; jumptable 00351D4E default case, cases 1302,1311,1312,1319-1323,1325-1341,1346-1348,1350,1353,1363,1364,1368-1370,1372,1378,1383,1387,1391,1393,1395
351EB0:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
351EB4:  MOV             R0, R8; jumptable 00351D4E case 1304
351EB6:  MOVS            R1, #4; __int16
351EB8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351EBC:  LDR.W           R0, =(ScriptParams_ptr - 0x351EC8)
351EC0:  VLDR            S0, =-100.0
351EC4:  ADD             R0, PC; ScriptParams_ptr
351EC6:  LDR             R0, [R0]; ScriptParams
351EC8:  VLDR            S20, [R0,#8]
351ECC:  VLDR            S18, [R0]
351ED0:  VCMPE.F32       S20, S0
351ED4:  VLDR            S16, [R0,#4]
351ED8:  VMRS            APSR_nzcv, FPSCR
351EDC:  BGT             loc_351EF6
351EDE:  VMOV            R0, S18; this
351EE2:  VMOV            R1, S16; float
351EE6:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
351EEA:  VMOV.F32        S0, #0.5
351EEE:  VMOV            S2, R0
351EF2:  VADD.F32        S20, S2, S0
351EF6:  ADD.W           R9, SP, #0x98+var_58
351EFA:  MOV             R0, R8; this
351EFC:  MOVS            R2, #8; unsigned __int8
351EFE:  MOV             R1, R9; char *
351F00:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
351F04:  LDR.W           R0, =(TheText_ptr - 0x351F0E)
351F08:  MOV             R1, R9; CKeyGen *
351F0A:  ADD             R0, PC; TheText_ptr
351F0C:  LDR             R0, [R0]; TheText ; this
351F0E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
351F12:  MOV             R0, R8; this
351F14:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
351F18:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
351F1C:  LDR.W           R0, =(MI_PICKUP_PROPERTY_FORSALE_ptr - 0x351F2E)
351F20:  VMOV            R2, S20
351F24:  LDR.W           R1, =(ScriptParams_ptr - 0x351F32)
351F28:  MOVS            R6, #0
351F2A:  ADD             R0, PC; MI_PICKUP_PROPERTY_FORSALE_ptr
351F2C:  MOVS            R5, #0x12
351F2E:  ADD             R1, PC; ScriptParams_ptr
351F30:  LDR             R0, [R0]; MI_PICKUP_PROPERTY_FORSALE
351F32:  LDR             R4, [R1]; ScriptParams
351F34:  VMOV            R1, S16
351F38:  LDRH            R3, [R0]
351F3A:  VMOV            R0, S18
351F3E:  LDR.W           R12, [R4,#(dword_81A914 - 0x81A908)]
351F42:  STRD.W          R5, R12, [SP,#0x98+var_98]
351F46:  STRD.W          R6, R6, [SP,#0x98+var_90]
351F4A:  STR.W           R9, [SP,#0x98+var_88]
351F4E:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
351F52:  STR             R0, [R4]
351F54:  MOV             R0, R8; this
351F56:  MOVS            R1, #1; __int16
351F58:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
351F5C:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
351F60:  MOV             R0, R8; jumptable 00351D4E case 1305
351F62:  MOVS            R1, #2; __int16
351F64:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351F68:  LDR.W           R0, =(ScriptParams_ptr - 0x351F70)
351F6C:  ADD             R0, PC; ScriptParams_ptr
351F6E:  LDR             R0, [R0]; ScriptParams
351F70:  LDR             R1, [R0]
351F72:  CMP             R1, #0
351F74:  BLT.W           loc_352BA2
351F78:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x351F84)
351F7C:  UXTB            R3, R1
351F7E:  LSRS            R1, R1, #8
351F80:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
351F82:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
351F84:  LDR             R0, [R0]; CPools::ms_pVehiclePool
351F86:  LDR             R2, [R0,#4]
351F88:  LDRB            R2, [R2,R1]
351F8A:  CMP             R2, R3
351F8C:  BNE.W           loc_352BA2
351F90:  MOVW            R2, #0xA2C
351F94:  LDR             R0, [R0]
351F96:  MLA.W           R4, R1, R2, R0
351F9A:  B.W             loc_352BA4
351F9E:  MOV             R0, R8; jumptable 00351D4E case 1306
351FA0:  MOVS            R1, #2; __int16
351FA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351FA6:  LDR.W           R0, =(ScriptParams_ptr - 0x351FB2)
351FAA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x351FB4)
351FAE:  ADD             R0, PC; ScriptParams_ptr
351FB0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
351FB2:  LDR             R0, [R0]; ScriptParams
351FB4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
351FB6:  LDR             R0, [R0]
351FB8:  LDR             R1, [R1]; CPools::ms_pPedPool
351FBA:  CMP             R0, #0
351FBC:  BLT.W           loc_3528D2
351FC0:  LDR             R2, [R1,#4]
351FC2:  UXTB            R3, R0
351FC4:  LSRS            R0, R0, #8
351FC6:  LDRB            R2, [R2,R0]
351FC8:  CMP             R2, R3
351FCA:  BNE.W           loc_3528D2
351FCE:  MOVW            R2, #0x7CC
351FD2:  LDR             R3, [R1]
351FD4:  MLA.W           R0, R0, R2, R3
351FD8:  B.W             loc_3528D4
351FDC:  MOV             R0, R8; jumptable 00351D4E case 1307
351FDE:  MOVS            R1, #2; __int16
351FE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
351FE4:  LDR.W           R0, =(ScriptParams_ptr - 0x351FEC)
351FE8:  ADD             R0, PC; ScriptParams_ptr
351FEA:  LDR             R0, [R0]; ScriptParams
351FEC:  LDR             R1, [R0]
351FEE:  CMP             R1, #0
351FF0:  BLT.W           loc_352BF0
351FF4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352000)
351FF8:  UXTB            R3, R1
351FFA:  LSRS            R1, R1, #8
351FFC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
351FFE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
352000:  LDR             R0, [R0]; CPools::ms_pPedPool
352002:  LDR             R2, [R0,#4]
352004:  LDRB            R2, [R2,R1]
352006:  CMP             R2, R3
352008:  BNE.W           loc_352BF0
35200C:  MOVW            R2, #0x7CC
352010:  LDR             R0, [R0]
352012:  MLA.W           R0, R1, R2, R0
352016:  B.W             loc_352BF2
35201A:  MOV             R0, R8; jumptable 00351D4E case 1308
35201C:  MOVS            R1, #2; __int16
35201E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352022:  LDR.W           R0, =(ScriptParams_ptr - 0x35202A)
352026:  ADD             R0, PC; ScriptParams_ptr
352028:  LDR             R0, [R0]; ScriptParams
35202A:  LDR             R1, [R0]
35202C:  CMP             R1, #0
35202E:  BLT.W           loc_352C1E
352032:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35203E)
352036:  UXTB            R3, R1
352038:  LSRS            R1, R1, #8
35203A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35203C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35203E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
352040:  LDR             R2, [R0,#4]
352042:  LDRB            R2, [R2,R1]
352044:  CMP             R2, R3
352046:  BNE.W           loc_352C1E
35204A:  MOVW            R2, #0xA2C
35204E:  LDR             R0, [R0]
352050:  MLA.W           R0, R1, R2, R0
352054:  B.W             loc_352C20
352058:  MOV             R0, R8; jumptable 00351D4E case 1309
35205A:  MOVS            R1, #2; __int16
35205C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352060:  LDR.W           R0, =(ScriptParams_ptr - 0x35206C)
352064:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35206E)
352068:  ADD             R0, PC; ScriptParams_ptr
35206A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35206C:  LDR             R0, [R0]; ScriptParams
35206E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352070:  LDR             R0, [R0]
352072:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352074:  CMP             R0, #0
352076:  BLT.W           loc_352C96
35207A:  LDR             R2, [R1,#4]
35207C:  UXTB            R3, R0
35207E:  LSRS            R0, R0, #8
352080:  LDRB            R2, [R2,R0]
352082:  CMP             R2, R3
352084:  BNE.W           loc_352C96
352088:  MOVW            R2, #0xA2C
35208C:  LDR             R3, [R1]
35208E:  MLA.W           R0, R0, R2, R3
352092:  B.W             loc_352C98
352096:  LDR.W           R0, =(AudioEngine_ptr - 0x35209E); jumptable 00351D4E case 1310
35209A:  ADD             R0, PC; AudioEngine_ptr
35209C:  LDR             R0, [R0]; AudioEngine ; this
35209E:  BLX             j__ZN12CAudioEngine24GetCurrentRadioStationIDEv; CAudioEngine::GetCurrentRadioStationID(void)
3520A2:  LDR.W           R1, =(ScriptParams_ptr - 0x3520AC)
3520A6:  SUBS            R0, #1
3520A8:  ADD             R1, PC; ScriptParams_ptr
3520AA:  B.W             loc_352D1E
3520AE:  MOV             R0, R8; jumptable 00351D4E case 1318
3520B0:  MOVS            R1, #2; __int16
3520B2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3520B6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3520C6)
3520BA:  MOVW            R3, #0x7CC
3520BE:  LDR.W           R0, =(ScriptParams_ptr - 0x3520C8)
3520C2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3520C4:  ADD             R0, PC; ScriptParams_ptr
3520C6:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3520C8:  LDR             R0, [R0]; ScriptParams
3520CA:  LDRD.W          R2, R0, [R0]
3520CE:  CMP             R0, #0
3520D0:  LDR             R1, [R1]; CPools::ms_pPedPool
3520D2:  MOV.W           R2, R2,LSR#8
3520D6:  LDR             R1, [R1]
3520D8:  MLA.W           R1, R2, R3, R1
3520DC:  LDR.W           R2, [R1,#0x488]
3520E0:  BIC.W           R3, R2, #0x800000
3520E4:  IT NE
3520E6:  ORRNE.W         R3, R2, #0x800000
3520EA:  B               loc_3526CA
3520EC:  MOV             R0, R8; jumptable 00351D4E case 1324
3520EE:  MOVS            R1, #2; __int16
3520F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3520F4:  LDR.W           R0, =(ScriptParams_ptr - 0x352106)
3520F8:  MOV.W           R3, #0x194
3520FC:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x352108)
352100:  MOVS            R6, #0
352102:  ADD             R0, PC; ScriptParams_ptr
352104:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
352106:  LDR             R0, [R0]; ScriptParams
352108:  LDR             R1, [R1]; CWorld::Players ...
35210A:  LDRD.W          R2, R0, [R0]; this
35210E:  TST.W           R0, #0xFF
352112:  MLA.W           R1, R2, R3, R1
352116:  STRB.W          R6, [R1,#0x45]
35211A:  STRB.W          R0, [R1,#0x44]
35211E:  BNE.W           loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352122:  BLX             j__ZN6CMBlur14ClearDrunkBlurEv; CMBlur::ClearDrunkBlur(void)
352126:  B.W             loc_352D2A
35212A:  MOV             R0, R8; jumptable 00351D4E case 1342
35212C:  MOVS            R1, #5; __int16
35212E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352132:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35213A)
352136:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352138:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35213A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35213C:  LDR             R1, [R0,#8]
35213E:  CMP             R1, #0
352140:  BEQ.W           loc_352D16
352144:  MOVW            R2, #0xA2C
352148:  SUBS            R4, R1, #1
35214A:  MUL.W           R6, R1, R2
35214E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352156)
352152:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352154:  LDR.W           R9, [R1]; CPools::ms_pVehiclePool ...
352158:  LDR.W           R1, =(ScriptParams_ptr - 0x352160)
35215C:  ADD             R1, PC; ScriptParams_ptr
35215E:  LDR             R1, [R1]; ScriptParams
352160:  STR             R1, [SP,#0x98+var_78]
352162:  LDR.W           R1, =(ScriptParams_ptr - 0x35216A)
352166:  ADD             R1, PC; ScriptParams_ptr
352168:  LDR.W           R11, [R1]; ScriptParams
35216C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352174)
352170:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352172:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352174:  STR             R1, [SP,#0x98+var_7C]
352176:  B               loc_352186
352178:  DCFS -100.0
35217C:  SUBS            R4, #1
35217E:  LDR.W           R0, [R9]; CPools::ms_pVehiclePool
352182:  SUBW            R6, R6, #0xA2C
352186:  LDR             R1, [R0,#4]
352188:  LDRSB           R1, [R1,R4]
35218A:  CMP             R1, #0
35218C:  BLT             loc_35221E
35218E:  LDR             R0, [R0]
352190:  ADD.W           R10, R0, R6
352194:  SUBW            R5, R10, #0xA2C
352198:  CMP             R5, #0
35219A:  BEQ             loc_35221E
35219C:  MOV             R0, R5; this
35219E:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3521A2:  CMP             R0, #1
3521A4:  BEQ             loc_3521B0
3521A6:  MOV             R0, R5; this
3521A8:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3521AC:  CMP             R0, #2
3521AE:  BNE             loc_35221E
3521B0:  MOV             R0, #0xFFFFF5FA
3521B8:  LDRSH.W         R1, [R10,R0]
3521BC:  LDR             R0, [SP,#0x98+var_78]
3521BE:  LDR             R0, [R0,#0x10]
3521C0:  CMP             R0, R1
3521C2:  BEQ             loc_3521CA
3521C4:  CMP.W           R0, #0xFFFFFFFF
3521C8:  BGT             loc_35221E
3521CA:  MOV             R0, R5; this
3521CC:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
3521D0:  CBZ             R0, loc_35221E
3521D2:  LDM.W           R11, {R1-R3}; float
3521D6:  MOV             R0, R5; this
3521D8:  VLDR            S0, [R11,#0xC]
3521DC:  VSTR            S0, [SP,#0x98+var_98]
3521E0:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffff; CPlaceable::IsWithinArea(float,float,float,float)
3521E4:  CBZ             R0, loc_35221E
3521E6:  LDR             R0, [SP,#0x98+var_7C]
3521E8:  MOV             R2, #0xBFE6D523
3521F0:  LDR             R0, [R0]
3521F2:  LDRD.W          R1, R0, [R0]
3521F6:  SUBS            R1, R5, R1
3521F8:  ASRS            R1, R1, #2
3521FA:  MULS            R1, R2
3521FC:  MOV             R2, #0xFFFFFA00
352204:  MOV             R3, R2
352206:  LDR.W           R2, [R10,R3]
35220A:  ORR.W           R2, R2, #0x20000
35220E:  LDRB            R0, [R0,R1]
352210:  STR.W           R2, [R10,R3]
352214:  ORR.W           R0, R0, R1,LSL#8
352218:  CBNZ            R4, loc_352228
35221A:  B.W             loc_352D1A
35221E:  MOV.W           R0, #0xFFFFFFFF
352222:  CMP             R4, #0
352224:  BEQ.W           loc_352D1A
352228:  ADDS            R1, R0, #1
35222A:  BEQ             loc_35217C
35222C:  B.W             loc_352D1A
352230:  MOV             R0, R8; jumptable 00351D4E case 1343
352232:  MOVS            R1, #2; __int16
352234:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352238:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35224A)
35223C:  MOVW            R3, #0xA2C
352240:  LDR.W           R0, =(ScriptParams_ptr - 0x35224C)
352244:  MOVS            R6, #0
352246:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352248:  ADD             R0, PC; ScriptParams_ptr
35224A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35224C:  LDR             R0, [R0]; ScriptParams
35224E:  LDRD.W          R2, R0, [R0]
352252:  CMP             R0, #0
352254:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352256:  MOV.W           R2, R2,LSR#8
35225A:  LDR             R1, [R1]
35225C:  MLA.W           R1, R2, R3, R1
352260:  LDR.W           R2, [R1,#0x42C]
352264:  ORR.W           R3, R2, #0x80000000
352268:  IT NE
35226A:  BICNE.W         R3, R2, #0x80000000
35226E:  STR.W           R3, [R1,#0x42C]
352272:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352276:  MOV             R0, R8; jumptable 00351D4E case 1345
352278:  MOVS            R1, #1; __int16
35227A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35227E:  LDR.W           R0, =(ScriptParams_ptr - 0x352286)
352282:  ADD             R0, PC; ScriptParams_ptr
352284:  LDR             R0, [R0]; ScriptParams
352286:  LDR             R1, [R0]
352288:  CMP             R1, #0
35228A:  BLT.W           loc_352904
35228E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35229A)
352292:  UXTB            R3, R1
352294:  LSRS            R1, R1, #8
352296:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352298:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35229A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35229C:  LDR             R2, [R0,#4]
35229E:  LDRB            R2, [R2,R1]
3522A0:  CMP             R2, R3
3522A2:  BNE.W           loc_352904
3522A6:  MOVW            R2, #0xA2C
3522AA:  LDR             R0, [R0]
3522AC:  MLA.W           R4, R1, R2, R0
3522B0:  B               loc_352906
3522B2:  MOV             R0, R8; jumptable 00351D4E case 1351
3522B4:  MOVS            R1, #2; __int16
3522B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3522BA:  LDR.W           R0, =(ScriptParams_ptr - 0x3522C2)
3522BE:  ADD             R0, PC; ScriptParams_ptr
3522C0:  LDR             R0, [R0]; ScriptParams
3522C2:  LDR             R1, [R0]
3522C4:  CMP             R1, #0
3522C6:  BLT.W           loc_3529F2
3522CA:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3522D6)
3522CE:  UXTB            R3, R1
3522D0:  LSRS            R1, R1, #8
3522D2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3522D4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3522D6:  LDR             R0, [R0]; CPools::ms_pPedPool
3522D8:  LDR             R2, [R0,#4]
3522DA:  LDRB            R2, [R2,R1]
3522DC:  CMP             R2, R3
3522DE:  BNE.W           loc_3529F2
3522E2:  MOVW            R2, #0x7CC
3522E6:  LDR             R0, [R0]
3522E8:  MLA.W           R0, R1, R2, R0
3522EC:  B               loc_3529F4
3522EE:  MOV             R0, R8; jumptable 00351D4E case 1354
3522F0:  MOVS            R1, #2; __int16
3522F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3522F6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352306)
3522FA:  MOVW            R3, #0x7CC
3522FE:  LDR.W           R0, =(ScriptParams_ptr - 0x352308)
352302:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
352304:  ADD             R0, PC; ScriptParams_ptr
352306:  LDR             R1, [R1]; CPools::ms_pPedPool ...
352308:  LDR             R0, [R0]; ScriptParams
35230A:  LDRD.W          R2, R0, [R0]
35230E:  CMP             R0, #0
352310:  LDR             R1, [R1]; CPools::ms_pPedPool
352312:  MOV.W           R2, R2,LSR#8
352316:  LDR             R1, [R1]
352318:  MLA.W           R1, R2, R3, R1
35231C:  LDR.W           R2, [R1,#0x488]
352320:  BIC.W           R3, R2, #0x4000000
352324:  IT NE
352326:  ORRNE.W         R3, R2, #0x4000000
35232A:  B               loc_3526CA
35232C:  ADD             R5, SP, #0x98+var_58; jumptable 00351D4E case 1356
35232E:  MOV             R0, R8; this
352330:  MOVS            R2, #8; unsigned __int8
352332:  MOV             R1, R5; char *
352334:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
352338:  LDR.W           R0, =(TheText_ptr - 0x352342)
35233C:  MOV             R1, R5; char *
35233E:  ADD             R0, PC; TheText_ptr
352340:  LDR             R0, [R0]; TheText ; this
352342:  BLX             j__ZN5CText15LoadMissionTextEPc; CText::LoadMissionText(char *)
352346:  B.W             loc_352D2A
35234A:  MOV             R0, R8; jumptable 00351D4E case 1358
35234C:  MOVS            R1, #1; __int16
35234E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352352:  LDR.W           R0, =(ScriptParams_ptr - 0x35235A)
352356:  ADD             R0, PC; ScriptParams_ptr
352358:  LDR             R0, [R0]; ScriptParams
35235A:  LDR             R1, [R0]
35235C:  CMP             R1, #0
35235E:  BLT.W           loc_352D2A
352362:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35236E)
352366:  UXTB            R3, R1
352368:  LSRS            R1, R1, #8
35236A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35236C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35236E:  LDR             R0, [R0]; CPools::ms_pPedPool
352370:  LDR             R2, [R0,#4]
352372:  LDRB            R2, [R2,R1]
352374:  CMP             R2, R3
352376:  BNE.W           loc_352D2A
35237A:  MOVW            R2, #0x7CC
35237E:  LDR             R0, [R0]
352380:  MLA.W           R0, R1, R2, R0
352384:  MOVS            R6, #0
352386:  CMP             R0, #0
352388:  IT NE
35238A:  STRNE.W         R6, [R0,#0x76C]
35238E:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352392:  MOV             R0, R8; jumptable 00351D4E case 1359
352394:  MOVS            R1, #1; __int16
352396:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35239A:  LDR.W           R0, =(ScriptParams_ptr - 0x3523A2)
35239E:  ADD             R0, PC; ScriptParams_ptr
3523A0:  LDR             R0, [R0]; ScriptParams
3523A2:  LDR             R1, [R0]
3523A4:  CMP             R1, #0
3523A6:  BLT.W           loc_352D2A
3523AA:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3523B6)
3523AE:  UXTB            R3, R1
3523B0:  LSRS            R1, R1, #8
3523B2:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3523B4:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3523B6:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3523B8:  LDR             R2, [R0,#4]
3523BA:  LDRB            R2, [R2,R1]
3523BC:  CMP             R2, R3
3523BE:  BNE.W           loc_352D2A
3523C2:  MOVW            R2, #0xA2C
3523C6:  LDR             R0, [R0]
3523C8:  MLA.W           R0, R1, R2, R0
3523CC:  MOVS            R6, #0
3523CE:  CMP             R0, #0
3523D0:  IT NE
3523D2:  STRNE.W         R6, [R0,#0x51C]
3523D6:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
3523DA:  MOV             R0, R8; jumptable 00351D4E case 1360
3523DC:  MOVS            R1, #2; __int16
3523DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3523E2:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3523F2)
3523E6:  MOV.W           R3, #0x1A4
3523EA:  LDR.W           R0, =(ScriptParams_ptr - 0x3523F4)
3523EE:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3523F0:  ADD             R0, PC; ScriptParams_ptr
3523F2:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3523F4:  LDR             R0, [R0]; ScriptParams
3523F6:  LDRD.W          R2, R0, [R0]
3523FA:  CMP             R0, #0
3523FC:  LDR             R1, [R1]; CPools::ms_pObjectPool
3523FE:  MOV.W           R2, R2,LSR#8
352402:  LDR             R1, [R1]
352404:  MLA.W           R1, R2, R3, R1
352408:  MOVW            R3, #0x2004
35240C:  LDR             R2, [R1,#0x44]
35240E:  ORR.W           R6, R2, R3
352412:  IT EQ
352414:  BICEQ.W         R6, R2, R3
352418:  STR             R6, [R1,#0x44]
35241A:  B.W             loc_352D2A
35241E:  MOV             R0, R8; jumptable 00351D4E case 1365
352420:  MOVS            R1, #2; __int16
352422:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352426:  LDR.W           R0, =(ScriptParams_ptr - 0x35242E)
35242A:  ADD             R0, PC; ScriptParams_ptr
35242C:  LDR             R0, [R0]; ScriptParams
35242E:  LDR             R1, [R0]
352430:  CMP             R1, #0
352432:  BLT.W           loc_352CBE
352436:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352442)
35243A:  UXTB            R3, R1
35243C:  LSRS            R1, R1, #8
35243E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
352440:  LDR             R0, [R0]; CPools::ms_pPedPool ...
352442:  LDR             R0, [R0]; CPools::ms_pPedPool
352444:  LDR             R2, [R0,#4]
352446:  LDRB            R2, [R2,R1]
352448:  CMP             R2, R3
35244A:  BNE.W           loc_352CBE
35244E:  MOVW            R2, #0x7CC
352452:  LDR             R0, [R0]
352454:  MLA.W           R0, R1, R2, R0
352458:  B.W             loc_352CC0
35245C:  MOV             R0, R8; jumptable 00351D4E case 1373
35245E:  MOVS            R1, #2; __int16
352460:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352464:  LDR.W           R0, =(ScriptParams_ptr - 0x352476)
352468:  MOV.W           R3, #0x194
35246C:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x352478)
352470:  MOVS            R6, #0
352472:  ADD             R0, PC; ScriptParams_ptr
352474:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
352476:  LDR             R0, [R0]; ScriptParams
352478:  LDR             R1, [R1]; CWorld::Players ...
35247A:  LDRD.W          R2, R0, [R0]
35247E:  CMP             R0, #0
352480:  IT NE
352482:  MOVNE           R0, #1
352484:  MLA.W           R1, R2, R3, R1
352488:  STRB.W          R0, [R1,#0x14E]
35248C:  B.W             loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352490:  MOV             R0, R8; jumptable 00351D4E case 1374
352492:  MOVS            R1, #2; __int16
352494:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352498:  LDR.W           R0, =(ScriptParams_ptr - 0x3524A8)
35249C:  MOV.W           R3, #0x194
3524A0:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3524AA)
3524A4:  ADD             R0, PC; ScriptParams_ptr
3524A6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3524A8:  LDR             R0, [R0]; ScriptParams
3524AA:  LDR             R1, [R1]; CWorld::Players ...
3524AC:  LDRD.W          R2, R0, [R0]
3524B0:  MLA.W           R6, R2, R3, R1
3524B4:  MULS            R2, R3
3524B6:  LDRB.W          R5, [R6,#0x14F]
3524BA:  ADD             R0, R5
3524BC:  UXTB            R3, R0
3524BE:  VMOV            S0, R3
3524C2:  VCVT.F32.U32    S0, S0
3524C6:  LDR             R1, [R1,R2]
3524C8:  STRB.W          R0, [R6,#0x14F]
3524CC:  ADDW            R0, R1, #0x544
3524D0:  B               loc_352512
3524D2:  MOV             R0, R8; jumptable 00351D4E case 1375
3524D4:  MOVS            R1, #2; __int16
3524D6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3524DA:  LDR.W           R0, =(ScriptParams_ptr - 0x3524EA)
3524DE:  MOV.W           R3, #0x194
3524E2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3524EC)
3524E6:  ADD             R0, PC; ScriptParams_ptr
3524E8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3524EA:  LDR             R0, [R0]; ScriptParams
3524EC:  LDR             R1, [R1]; CWorld::Players ...
3524EE:  LDRD.W          R2, R0, [R0]
3524F2:  MLA.W           R6, R2, R3, R1
3524F6:  MULS            R2, R3
3524F8:  LDRB.W          R5, [R6,#0x150]
3524FC:  ADD             R0, R5
3524FE:  UXTB            R3, R0
352500:  VMOV            S0, R3
352504:  VCVT.F32.U32    S0, S0
352508:  LDR             R1, [R1,R2]
35250A:  STRB.W          R0, [R6,#0x150]
35250E:  ADDW            R0, R1, #0x54C
352512:  VSTR            S0, [R0]
352516:  B.W             loc_352D2A
35251A:  MOV             R0, R8; jumptable 00351D4E case 1376
35251C:  MOVS            R1, #1; __int16
35251E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352522:  LDR.W           R0, =(ScriptParams_ptr - 0x35252C)
352526:  MOVS            R6, #0
352528:  ADD             R0, PC; ScriptParams_ptr
35252A:  LDR             R0, [R0]; ScriptParams
35252C:  LDR             R0, [R0]
35252E:  CMP             R0, #0
352530:  BLT.W           loc_352A28
352534:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352540)
352538:  UXTB            R3, R0
35253A:  LSRS            R0, R0, #8
35253C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35253E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352540:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352542:  LDR             R2, [R1,#4]
352544:  LDRB            R2, [R2,R0]
352546:  CMP             R2, R3
352548:  BNE.W           loc_352A28
35254C:  MOVW            R2, #0xA2C
352550:  LDR             R1, [R1]
352552:  MLA.W           R0, R0, R2, R1
352556:  B               loc_352A2A
352558:  MOV             R0, R8; jumptable 00351D4E case 1377
35255A:  MOVS            R1, #2; __int16
35255C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352560:  LDR.W           R0, =(ScriptParams_ptr - 0x35256A)
352564:  MOVS            R6, #0
352566:  ADD             R0, PC; ScriptParams_ptr
352568:  LDR             R0, [R0]; ScriptParams
35256A:  LDR             R0, [R0]
35256C:  CMP             R0, #0
35256E:  BLT.W           loc_352AB8
352572:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35257E)
352576:  UXTB            R3, R0
352578:  LSRS            R0, R0, #8
35257A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35257C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35257E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352580:  LDR             R2, [R1,#4]
352582:  LDRB            R2, [R2,R0]
352584:  CMP             R2, R3
352586:  BNE.W           loc_352AB8
35258A:  MOVW            R2, #0xA2C
35258E:  LDR             R1, [R1]
352590:  MLA.W           R0, R0, R2, R1
352594:  B               loc_352ABA
352596:  MOV             R0, R8; jumptable 00351D4E case 1379
352598:  MOVS            R1, #2; __int16
35259A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35259E:  LDR.W           R0, =(ScriptParams_ptr - 0x3525AA)
3525A2:  MOV.W           R3, #0x194
3525A6:  ADD             R0, PC; ScriptParams_ptr
3525A8:  LDR             R0, [R0]; ScriptParams
3525AA:  LDR             R2, [R0]
3525AC:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3525B8)
3525B0:  MUL.W           R1, R2, R3
3525B4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3525B6:  LDR             R6, [R0]; CWorld::Players ...
3525B8:  LDR             R0, [R6,R1]
3525BA:  LDRB.W          R1, [R0,#0x485]
3525BE:  LSLS            R1, R1, #0x1F
3525C0:  BEQ.W           loc_352D2A
3525C4:  LDR.W           R1, [R0,#0x614]
3525C8:  CMP             R1, #0
3525CA:  BEQ.W           loc_352D84
3525CE:  LDR.W           R2, =(ScriptParams_ptr - 0x3525DA)
3525D2:  LDR.W           R3, [R0,#0x620]
3525D6:  ADD             R2, PC; ScriptParams_ptr
3525D8:  LDR             R2, [R2]; ScriptParams
3525DA:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
3525DC:  CMP             R3, R2
3525DE:  IT LT
3525E0:  BLXLT           j__ZN4CPed7SetAmmoE11eWeaponTypej; CPed::SetAmmo(eWeaponType,uint)
3525E4:  B               loc_352D2A
3525E6:  MOV             R0, R8; jumptable 00351D4E case 1380
3525E8:  MOVS            R1, #1; __int16
3525EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3525EE:  LDR.W           R0, =(ScriptParams_ptr - 0x3525FE)
3525F2:  MOVW            R2, #0xA2C
3525F6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352600)
3525FA:  ADD             R0, PC; ScriptParams_ptr
3525FC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3525FE:  LDR             R0, [R0]; ScriptParams
352600:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352602:  LDR             R0, [R0]
352604:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352606:  LSRS            R0, R0, #8
352608:  LDR             R1, [R1]
35260A:  MLA.W           R0, R0, R2, R1
35260E:  LDRB.W          R1, [R0,#0x3BE]
352612:  SUBS            R1, #0x39 ; '9'
352614:  UXTB            R1, R1
352616:  CMP             R1, #2
352618:  BCC.W           loc_352D2A
35261C:  ADDW            R0, R0, #0x3BE
352620:  MOVS            R1, #0x3A ; ':'
352622:  MOVS            R6, #0
352624:  STRB            R1, [R0]
352626:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352628:  MOV             R0, R8; jumptable 00351D4E case 1381
35262A:  MOVS            R1, #4; __int16
35262C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352630:  LDR.W           R0, =(ScriptParams_ptr - 0x35263A)
352634:  MOVS            R6, #0
352636:  ADD             R0, PC; ScriptParams_ptr
352638:  LDR             R0, [R0]; ScriptParams
35263A:  LDRD.W          R3, R1, [R0]; int
35263E:  LDRD.W          R5, R2, [R0,#(dword_81A910 - 0x81A908)]; int
352642:  MOVS            R0, #0xBF800000
352648:  STMEA.W         SP, {R1,R5,R6}
35264C:  MOVS            R1, #0; int
35264E:  STRD.W          R6, R0, [SP,#0x98+var_8C]; int
352652:  MOVS            R0, #0; int
352654:  STR             R6, [SP,#0x98+var_84]; int
352656:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
35265A:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
35265C:  MOV             R0, R8; jumptable 00351D4E case 1382
35265E:  MOVS            R1, #2; __int16
352660:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352664:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x352676)
352668:  MOV.W           R3, #0x1A4
35266C:  LDR.W           R0, =(ScriptParams_ptr - 0x352678)
352670:  MOVS            R6, #0
352672:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
352674:  ADD             R0, PC; ScriptParams_ptr
352676:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
352678:  LDR             R0, [R0]; ScriptParams
35267A:  LDRD.W          R2, R0, [R0]
35267E:  LDR             R1, [R1]; CPools::ms_pObjectPool
352680:  LSRS            R2, R2, #8
352682:  LDR             R1, [R1]
352684:  MLA.W           R1, R2, R3, R1
352688:  STRB.W          R0, [R1,#0x33]
35268C:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
35268E:  MOV             R0, R8; jumptable 00351D4E case 1384
352690:  MOVS            R1, #2; __int16
352692:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352696:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3526A6)
35269A:  MOVW            R3, #0x7CC
35269E:  LDR.W           R0, =(ScriptParams_ptr - 0x3526A8)
3526A2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3526A4:  ADD             R0, PC; ScriptParams_ptr
3526A6:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3526A8:  LDR             R0, [R0]; ScriptParams
3526AA:  LDRD.W          R2, R0, [R0]
3526AE:  CMP             R0, #0
3526B0:  LDR             R1, [R1]; CPools::ms_pPedPool
3526B2:  MOV.W           R2, R2,LSR#8
3526B6:  LDR             R1, [R1]
3526B8:  MLA.W           R1, R2, R3, R1
3526BC:  LDR.W           R2, [R1,#0x488]
3526C0:  BIC.W           R3, R2, #0x10000000
3526C4:  IT NE
3526C6:  ORRNE.W         R3, R2, #0x10000000
3526CA:  STR.W           R3, [R1,#0x488]
3526CE:  B               loc_352D2A
3526D0:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr - 0x3526D8); jumptable 00351D4E case 1386
3526D4:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr
3526D6:  LDR             R0, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped ...
3526D8:  LDRB            R1, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped
3526DA:  B               loc_352CFE
3526DC:  MOV             R0, R8; jumptable 00351D4E case 1388
3526DE:  MOVS            R1, #1; __int16
3526E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3526E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3526F4)
3526E8:  MOVW            R2, #0x7CC
3526EC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3526F6)
3526F0:  ADD             R0, PC; ScriptParams_ptr
3526F2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3526F4:  LDR             R0, [R0]; ScriptParams
3526F6:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3526F8:  LDR             R0, [R0]
3526FA:  LDR             R1, [R1]; CPools::ms_pPedPool
3526FC:  LSRS            R0, R0, #8
3526FE:  LDR             R1, [R1]
352700:  MLA.W           R4, R0, R2, R1
352704:  LDRB.W          R0, [R4,#0x485]
352708:  LSLS            R0, R0, #0x1F
35270A:  BEQ.W           loc_352CFC
35270E:  LDR.W           R0, [R4,#0x590]; this
352712:  CMP             R0, #0
352714:  BEQ.W           loc_352CFC
352718:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
35271C:  MOVS            R1, #0
35271E:  CMP             R0, #0
352720:  BEQ.W           loc_352CFE
352724:  ADD.W           R0, R4, #0x590
352728:  LDR             R0, [R0]
35272A:  LDRH            R0, [R0,#0x26]
35272C:  CMP.W           R0, #0x1AE
352730:  IT NE
352732:  MOVNE           R1, #1
352734:  B               loc_352CFE
352736:  MOV             R0, R8; jumptable 00351D4E case 1389
352738:  MOVS            R1, #1; __int16
35273A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35273E:  LDR.W           R0, =(ScriptParams_ptr - 0x352746)
352742:  ADD             R0, PC; ScriptParams_ptr
352744:  LDR             R0, [R0]; ScriptParams
352746:  LDR             R1, [R0]
352748:  CMP             R1, #0
35274A:  BLT.W           loc_352CFC
35274E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35275A)
352752:  UXTB            R3, R1
352754:  LSRS            R1, R1, #8
352756:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
352758:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35275A:  LDR             R0, [R0]; CPools::ms_pPedPool
35275C:  LDR             R2, [R0,#4]
35275E:  LDRB            R2, [R2,R1]
352760:  CMP             R2, R3
352762:  BNE.W           loc_352CFC
352766:  MOVW            R2, #0x7CC
35276A:  B               loc_3527A0
35276C:  MOV             R0, R8; jumptable 00351D4E case 1390
35276E:  MOVS            R1, #1; __int16
352770:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352774:  LDR.W           R0, =(ScriptParams_ptr - 0x35277C)
352778:  ADD             R0, PC; ScriptParams_ptr
35277A:  LDR             R0, [R0]; ScriptParams
35277C:  LDR             R1, [R0]
35277E:  CMP             R1, #0
352780:  BLT.W           loc_352CFC
352784:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352790)
352788:  UXTB            R3, R1
35278A:  LSRS            R1, R1, #8
35278C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35278E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
352790:  LDR             R0, [R0]; CPools::ms_pVehiclePool
352792:  LDR             R2, [R0,#4]
352794:  LDRB            R2, [R2,R1]
352796:  CMP             R2, R3
352798:  BNE.W           loc_352CFC
35279C:  MOVW            R2, #0xA2C
3527A0:  LDR             R0, [R0]
3527A2:  MLA.W           R1, R1, R2, R0
3527A6:  CMP             R1, #0
3527A8:  IT NE
3527AA:  MOVNE           R1, #1
3527AC:  B               loc_352CFE
3527AE:  MOV             R0, R8; jumptable 00351D4E case 1392
3527B0:  MOVS            R1, #4; __int16
3527B2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3527B6:  LDR.W           R0, =(ScriptParams_ptr - 0x3527C2)
3527BA:  VLDR            S0, =-100.0
3527BE:  ADD             R0, PC; ScriptParams_ptr
3527C0:  LDR             R0, [R0]; ScriptParams
3527C2:  VLDR            S20, [R0,#8]
3527C6:  VLDR            S16, [R0]
3527CA:  VCMPE.F32       S20, S0
3527CE:  VLDR            S18, [R0,#4]
3527D2:  VMRS            APSR_nzcv, FPSCR
3527D6:  BGT             loc_3527E8
3527D8:  VMOV            R0, S16; this
3527DC:  VMOV            R1, S18; float
3527E0:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3527E4:  VMOV            S20, R0
3527E8:  MOV             R0, R8; this
3527EA:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3527EE:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
3527F2:  VMOV            R1, S16
3527F6:  ADD.W           R0, R8, #8
3527FA:  VMOV            R2, S18
3527FE:  MOVS            R6, #3
352800:  VMOV            R3, S20
352804:  MOVS            R5, #2
352806:  STRD.W          R5, R6, [SP,#0x98+var_98]
35280A:  STR             R0, [SP,#0x98+var_90]
35280C:  MOVS            R0, #5
35280E:  BLX             j__ZN6CRadar22SetShortRangeCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetShortRangeCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
352812:  MOV             R5, R0
352814:  LDR.W           R0, =(ScriptParams_ptr - 0x35281C)
352818:  ADD             R0, PC; ScriptParams_ptr
35281A:  LDR             R4, [R0]; ScriptParams
35281C:  MOV             R0, R5; this
35281E:  LDR             R1, [R4,#(dword_81A914 - 0x81A908)]; int
352820:  BLX             j__ZN6CRadar13SetBlipSpriteEii; CRadar::SetBlipSprite(int,int)
352824:  STR             R5, [R4]
352826:  B               loc_352D22
352828:  MOV             R0, R8; jumptable 00351D4E case 1394
35282A:  MOVS            R1, #1; __int16
35282C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
352830:  LDR.W           R0, =(ScriptParams_ptr - 0x352838)
352834:  ADD             R0, PC; ScriptParams_ptr
352836:  LDR             R0, [R0]; ScriptParams
352838:  LDR             R0, [R0]
35283A:  CMP             R0, #0
35283C:  BEQ.W           loc_352D50
352840:  LDR.W           R0, =(_ZN6CCheat17m_aCheatFunctionsE_ptr - 0x352848)
352844:  ADD             R0, PC; _ZN6CCheat17m_aCheatFunctionsE_ptr
352846:  LDR             R0, [R0]; CCheat::m_aCheatFunctions ...
352848:  LDR.W           R0, [R0,#(off_686310 - 0x686184)]
35284C:  CMP             R0, #0
35284E:  BEQ.W           loc_352D68
352852:  BLX             R0
352854:  B               loc_352D2A
352856:  MOV             R0, R8; jumptable 00351D4E case 1396
352858:  MOVS            R1, #2; __int16
35285A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35285E:  LDR.W           R0, =(ScriptParams_ptr - 0x352866)
352862:  ADD             R0, PC; ScriptParams_ptr
352864:  LDR             R0, [R0]; ScriptParams
352866:  LDR             R1, [R0]
352868:  CMP             R1, #0
35286A:  BLT.W           loc_352B40
35286E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35287A)
352872:  UXTB            R3, R1
352874:  LSRS            R1, R1, #8
352876:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352878:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35287A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35287C:  LDR             R2, [R0,#4]
35287E:  LDRB            R2, [R2,R1]
352880:  CMP             R2, R3
352882:  BNE.W           loc_352B40
352886:  MOVW            R2, #0xA2C
35288A:  LDR             R0, [R0]
35288C:  MLA.W           R0, R1, R2, R0
352890:  B               loc_352B42
352892:  MOV             R0, R8; jumptable 00351D4E case 1397
352894:  MOVS            R1, #2; __int16
352896:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35289A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3528AC)
35289E:  MOVW            R3, #0x7CC
3528A2:  LDR.W           R0, =(ScriptParams_ptr - 0x3528AE)
3528A6:  MOVS            R6, #0
3528A8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3528AA:  ADD             R0, PC; ScriptParams_ptr
3528AC:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3528AE:  LDR             R0, [R0]; ScriptParams
3528B0:  LDRD.W          R2, R0, [R0]
3528B4:  CMP             R0, #0
3528B6:  LDR             R1, [R1]; CPools::ms_pPedPool
3528B8:  MOV.W           R2, R2,LSR#8
3528BC:  LDR             R1, [R1]
3528BE:  MLA.W           R1, R2, R3, R1
3528C2:  LDR             R2, [R1,#0x44]
3528C4:  BIC.W           R3, R2, #0x2000
3528C8:  IT NE
3528CA:  ORRNE.W         R3, R2, #0x2000
3528CE:  STR             R3, [R1,#0x44]
3528D0:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
3528D2:  MOVS            R0, #0
3528D4:  LDR.W           R2, =(ScriptParams_ptr - 0x3528DC)
3528D8:  ADD             R2, PC; ScriptParams_ptr
3528DA:  LDR             R2, [R2]; ScriptParams
3528DC:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
3528DE:  CMP             R2, #0
3528E0:  BLT.W           loc_352B5C
3528E4:  LDR             R3, [R1,#4]
3528E6:  UXTB            R6, R2
3528E8:  LSRS            R2, R2, #8
3528EA:  LDRB            R3, [R3,R2]
3528EC:  CMP             R3, R6
3528EE:  BNE.W           loc_352B5C
3528F2:  MOVW            R3, #0x7CC
3528F6:  LDR             R1, [R1]
3528F8:  MLA.W           R2, R2, R3, R1
3528FC:  CMP             R0, #0
3528FE:  BNE.W           loc_352B64
352902:  B               loc_352CFC
352904:  MOVS            R4, #0
352906:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x352914)
35290A:  MOVS            R6, #0
35290C:  LDR.W           R1, [R4,#0x4E4]
352910:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
352912:  ADDS            R1, #0x96
352914:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
352916:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
352918:  CMP             R0, R1
35291A:  BLS.W           loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
35291E:  ADD.W           R8, SP, #0x98+var_58
352922:  MOVS            R1, #0x26 ; '&'
352924:  MOVW            R2, #0x1388
352928:  MOV             R0, R8
35292A:  BLX             j__ZN7CWeaponC2E11eWeaponTypei; CWeapon::CWeapon(eWeaponType,int)
35292E:  LDR.W           R0, =(_ZN11CAutomobile15vecHunterGunPosE_ptr - 0x352938)
352932:  ADD             R5, SP, #0x98+var_68
352934:  ADD             R0, PC; _ZN11CAutomobile15vecHunterGunPosE_ptr
352936:  MOV             R2, R5
352938:  LDR             R0, [R0]; CAutomobile::vecHunterGunPos ...
35293A:  VLDR            D16, [R0]
35293E:  LDR             R0, [R0,#(dword_A12E28 - 0xA12E20)]
352940:  STR             R0, [SP,#0x98+var_60]
352942:  ADD             R0, SP, #0x98+var_74
352944:  VSTR            D16, [SP,#0x98+var_68]
352948:  LDR             R1, [R4,#0x14]
35294A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
35294E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x35295E)
352952:  MOV             R1, R4; CEntity *
352954:  VLDR            S0, [R4,#0x48]
352958:  MOV             R2, R5; CVector *
35295A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
35295C:  VLDR            S2, [R4,#0x4C]
352960:  VLDR            S4, [R4,#0x50]
352964:  MOV             R3, R5; CVector *
352966:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
352968:  VLDR            S8, [SP,#0x98+var_70]
35296C:  VLDR            S10, [SP,#0x98+var_6C]
352970:  VLDR            S6, [R0]
352974:  MOVS            R0, #1
352976:  VMUL.F32        S2, S6, S2
35297A:  VMUL.F32        S4, S6, S4
35297E:  VMUL.F32        S0, S6, S0
352982:  VLDR            S6, [SP,#0x98+var_74]
352986:  VADD.F32        S2, S2, S8
35298A:  VADD.F32        S4, S4, S10
35298E:  VADD.F32        S0, S0, S6
352992:  VSTR            S0, [SP,#0x98+var_68]
352996:  VSTR            S2, [SP,#0x98+var_68+4]
35299A:  VSTR            S4, [SP,#0x98+var_60]
35299E:  STRD.W          R6, R6, [SP,#0x98+var_98]; CEntity *
3529A2:  STRD.W          R6, R6, [SP,#0x98+var_90]; CVector *
3529A6:  STR             R0, [SP,#0x98+var_88]; bool
3529A8:  MOV             R0, R8; this
3529AA:  BLX             j__ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb; CWeapon::FireInstantHit(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *,bool,bool)
3529AE:  MOVW            R0, #0xCCCD
3529B2:  ADD             R3, SP, #0x98+var_74; int
3529B4:  MOVT            R0, #0x3DCC
3529B8:  MOV             R1, R4; this
3529BA:  STRD.W          R6, R0, [SP,#0x98+var_74]
3529BE:  MOV             R0, #0x3CCCCCCD
3529C6:  MOV             R2, R5; int
3529C8:  STR             R0, [SP,#0x98+var_98]; float
3529CA:  MOV             R0, R8; int
3529CC:  BLX             j__ZN7CWeapon11AddGunshellEP7CEntityRK7CVectorRK9CVector2Df; CWeapon::AddGunshell(CEntity *,CVector const&,CVector2D const&,float)
3529D0:  LDR.W           R0, =(AudioEngine_ptr - 0x3529DE)
3529D4:  MOVS            R1, #0x95
3529D6:  MOVS            R2, #0x26 ; '&'
3529D8:  MOV             R3, R4
3529DA:  ADD             R0, PC; AudioEngine_ptr
3529DC:  LDR             R0, [R0]; AudioEngine
3529DE:  BLX             j__ZN12CAudioEngine17ReportWeaponEventEi11eWeaponTypeP9CPhysical; CAudioEngine::ReportWeaponEvent(int,eWeaponType,CPhysical *)
3529E2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3529EA)
3529E6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3529E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3529EA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3529EC:  STR.W           R0, [R4,#0x4E4]
3529F0:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
3529F2:  MOVS            R0, #0
3529F4:  LDR.W           R1, =(ScriptParams_ptr - 0x3529FC)
3529F8:  ADD             R1, PC; ScriptParams_ptr
3529FA:  LDR             R1, [R1]; ScriptParams
3529FC:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
3529FE:  CMP             R2, #0
352A00:  BLT.W           loc_352B8C
352A04:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352A10)
352A08:  UXTB            R6, R2
352A0A:  LSRS            R2, R2, #8
352A0C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352A0E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352A10:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352A12:  LDR             R3, [R1,#4]
352A14:  LDRB            R3, [R3,R2]
352A16:  CMP             R3, R6
352A18:  BNE.W           loc_352B8C
352A1C:  MOVW            R3, #0xA2C
352A20:  LDR             R1, [R1]
352A22:  MLA.W           R1, R2, R3, R1
352A26:  B               loc_352B8E
352A28:  MOVS            R0, #0; this
352A2A:  MOVS            R1, #(stderr+1); CVehicle *
352A2C:  MOV.W           R2, #0xFFFFFFFF; bool
352A30:  MOVS            R3, #0; int
352A32:  STRD.W          R6, R6, [SP,#0x98+var_98]; CPopulation *
352A36:  BLX             j__ZN11CPopulation11AddPedInCarEP8CVehiclebiibb; CPopulation::AddPedInCar(CVehicle *,bool,int,int,bool,bool)
352A3A:  MOVS            R1, #2; unsigned __int8
352A3C:  MOV             R5, R0
352A3E:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
352A42:  LDR.W           R0, [R5,#0x440]
352A46:  MOVS            R1, #0; CTask *
352A48:  MOVS            R2, #3; int
352A4A:  MOVS            R3, #0; bool
352A4C:  ADDS            R0, #4; this
352A4E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
352A52:  LDR.W           R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x352A5E)
352A56:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352A64)
352A5A:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
352A5C:  LDR.W           R2, [R5,#0x484]
352A60:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
352A62:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
352A64:  BIC.W           R2, R2, #0x80000000
352A68:  LDR             R0, [R0]; CPools::ms_pPedPool ...
352A6A:  STR.W           R2, [R5,#0x484]
352A6E:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
352A70:  LDR             R0, [R0]; CPools::ms_pPedPool
352A72:  ADDS            R2, #1
352A74:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
352A76:  LDRD.W          R1, R0, [R0]
352A7A:  MOV             R2, #0xBED87F3B
352A82:  SUBS            R1, R5, R1
352A84:  ASRS            R1, R1, #2
352A86:  MULS            R1, R2
352A88:  LDR.W           R2, =(ScriptParams_ptr - 0x352A90)
352A8C:  ADD             R2, PC; ScriptParams_ptr
352A8E:  LDR             R2, [R2]; ScriptParams
352A90:  LDRB            R0, [R0,R1]
352A92:  ORR.W           R0, R0, R1,LSL#8
352A96:  STR             R0, [R2]
352A98:  MOV             R0, R8; this
352A9A:  MOVS            R1, #1; __int16
352A9C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
352AA0:  LDRB.W          R0, [R8,#0xE6]
352AA4:  CMP             R0, #0
352AA6:  BEQ.W           loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352AAA:  LDR.W           R0, =(ScriptParams_ptr - 0x352AB6)
352AAE:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x352AB8)
352AB2:  ADD             R0, PC; ScriptParams_ptr
352AB4:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
352AB6:  B               loc_352B32
352AB8:  MOVS            R0, #0; this
352ABA:  LDR.W           R1, =(ScriptParams_ptr - 0x352AC6)
352ABE:  MOV.W           R2, #0xFFFFFFFF; bool
352AC2:  ADD             R1, PC; ScriptParams_ptr
352AC4:  LDR             R4, [R1]; ScriptParams
352AC6:  MOVS            R1, #0; CVehicle *
352AC8:  LDR             R3, [R4,#(dword_81A90C - 0x81A908)]; int
352ACA:  STRD.W          R6, R6, [SP,#0x98+var_98]; CPopulation *
352ACE:  BLX             j__ZN11CPopulation11AddPedInCarEP8CVehiclebiibb; CPopulation::AddPedInCar(CVehicle *,bool,int,int,bool,bool)
352AD2:  MOVS            R1, #2; unsigned __int8
352AD4:  MOV             R5, R0
352AD6:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
352ADA:  LDR.W           R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x352AE6)
352ADE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352AEC)
352AE2:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
352AE4:  LDR.W           R2, [R5,#0x484]
352AE8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
352AEA:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
352AEC:  BIC.W           R2, R2, #0x80000000
352AF0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
352AF2:  STR.W           R2, [R5,#0x484]
352AF6:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
352AF8:  LDR             R0, [R0]; CPools::ms_pPedPool
352AFA:  ADDS            R2, #1
352AFC:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
352AFE:  LDRD.W          R1, R0, [R0]
352B02:  MOV             R2, #0xBED87F3B
352B0A:  SUBS            R1, R5, R1
352B0C:  ASRS            R1, R1, #2
352B0E:  MULS            R1, R2
352B10:  LDRB            R0, [R0,R1]
352B12:  ORR.W           R0, R0, R1,LSL#8
352B16:  STR             R0, [R4]
352B18:  MOV             R0, R8; this
352B1A:  MOVS            R1, #1; __int16
352B1C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
352B20:  LDRB.W          R0, [R8,#0xE6]
352B24:  CMP             R0, #0
352B26:  BEQ.W           loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352B2A:  LDR             R0, =(ScriptParams_ptr - 0x352B32)
352B2C:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x352B34)
352B2E:  ADD             R0, PC; ScriptParams_ptr
352B30:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
352B32:  LDR             R2, [R0]; ScriptParams
352B34:  LDR             R0, [R1]; this
352B36:  LDR             R1, [R2]; int
352B38:  MOVS            R2, #2; unsigned __int8
352B3A:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
352B3E:  B               loc_352D2A
352B40:  MOVS            R0, #0
352B42:  LDR             R1, =(ScriptParams_ptr - 0x352B48)
352B44:  ADD             R1, PC; ScriptParams_ptr
352B46:  LDR             R2, [R1]; ScriptParams
352B48:  LDR             R1, [R0,#0x44]
352B4A:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
352B4C:  CMP             R2, #0
352B4E:  BEQ.W           loc_352D06
352B52:  MOVW            R2, #0x2004
352B56:  ORRS            R1, R2
352B58:  STR             R1, [R0,#0x44]
352B5A:  B               loc_352D2A
352B5C:  MOVS            R2, #0
352B5E:  CMP             R0, #0
352B60:  BEQ.W           loc_352CFC
352B64:  LDR.W           R0, [R0,#0x76C]
352B68:  MOVS            R1, #0
352B6A:  CMP             R0, #0
352B6C:  BEQ.W           loc_352CFE
352B70:  LDRB.W          R3, [R2,#0x485]
352B74:  CMP             R0, R2
352B76:  IT EQ
352B78:  MOVEQ           R1, #1
352B7A:  LSLS            R3, R3, #0x1F
352B7C:  BEQ.W           loc_352CFE
352B80:  LDR.W           R1, [R2,#0x590]
352B84:  MOVS            R3, #0
352B86:  B               loc_352C80
352B88:  DCFS -100.0
352B8C:  MOVS            R1, #0; CEntity *
352B8E:  LDRB.W          R2, [R0,#0x485]
352B92:  LSLS            R2, R2, #0x1F
352B94:  IT NE
352B96:  LDRNE.W         R0, [R0,#0x590]; this
352B9A:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
352B9E:  MOV             R1, R0
352BA0:  B               loc_352CFE
352BA2:  MOVS            R4, #0
352BA4:  LDR.W           R0, =(ScriptParams_ptr - 0x352BAC)
352BA8:  ADD             R0, PC; ScriptParams_ptr
352BAA:  LDR             R1, [R0]; ScriptParams
352BAC:  LDR             R0, [R4,#0x44]
352BAE:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
352BB0:  CMP             R1, #0
352BB2:  BEQ.W           loc_352D5E
352BB6:  MOVW            R1, #0x200C
352BBA:  ORRS            R0, R1
352BBC:  STR             R0, [R4,#0x44]
352BBE:  MOV             R0, R4; this
352BC0:  BLX             j__ZN9CPhysical11SkipPhysicsEv; CPhysical::SkipPhysics(void)
352BC4:  VMOV.I32        Q8, #0
352BC8:  ADD.W           R0, R4, #0x48 ; 'H'
352BCC:  MOVS            R6, #0
352BCE:  VST1.32         {D16-D17}, [R0]
352BD2:  STRD.W          R6, R6, [R4,#0x58]
352BD6:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352BD8:  DCD __stack_chk_guard_ptr - 0x351D3E
352BDC:  DCD ScriptParams_ptr - 0x351E28
352BE0:  DCD TheText_ptr - 0x351E6C
352BE4:  DCD MI_PICKUP_PROPERTY_ptr - 0x351E90
352BE8:  DCD ScriptParams_ptr - 0x351EAA
352BEC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35203E
352BF0:  MOVS            R0, #0
352BF2:  LDR             R1, =(ScriptParams_ptr - 0x352BF8)
352BF4:  ADD             R1, PC; ScriptParams_ptr
352BF6:  LDR             R1, [R1]; ScriptParams
352BF8:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
352BFA:  CMP             R2, #0
352BFC:  BLT             loc_352CCE
352BFE:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x352C08)
352C00:  UXTB            R6, R2
352C02:  LSRS            R2, R2, #8
352C04:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
352C06:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
352C08:  LDR             R1, [R1]; CPools::ms_pVehiclePool
352C0A:  LDR             R3, [R1,#4]
352C0C:  LDRB            R3, [R3,R2]
352C0E:  CMP             R3, R6
352C10:  BNE             loc_352CCE
352C12:  MOVW            R3, #0xA2C
352C16:  LDR             R1, [R1]
352C18:  MLA.W           R2, R2, R3, R1
352C1C:  B               loc_352CD0
352C1E:  MOVS            R0, #0
352C20:  LDR             R1, =(ScriptParams_ptr - 0x352C26)
352C22:  ADD             R1, PC; ScriptParams_ptr
352C24:  LDR             R1, [R1]; ScriptParams
352C26:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
352C28:  ADDS            R1, R2, #1
352C2A:  BEQ             loc_352C52
352C2C:  CMP             R2, #0
352C2E:  BLT             loc_352C52
352C30:  LDR             R3, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x352C3A)
352C32:  UXTB            R5, R2
352C34:  LSRS            R2, R2, #8
352C36:  ADD             R3, PC; _ZN6CPools11ms_pPedPoolE_ptr
352C38:  LDR             R3, [R3]; CPools::ms_pPedPool ...
352C3A:  LDR             R3, [R3]; CPools::ms_pPedPool
352C3C:  LDR             R6, [R3,#4]
352C3E:  LDRB            R6, [R6,R2]
352C40:  CMP             R6, R5
352C42:  BNE             loc_352C52
352C44:  MOVW            R6, #0x7CC
352C48:  LDR             R3, [R3]
352C4A:  MLA.W           R2, R2, R6, R3
352C4E:  CBNZ            R0, loc_352C58
352C50:  B               loc_352CFC
352C52:  MOVS            R2, #0
352C54:  CMP             R0, #0
352C56:  BEQ             loc_352CFC
352C58:  LDR.W           R0, [R0,#0x51C]
352C5C:  CMP             R0, #0
352C5E:  BEQ             loc_352CFC
352C60:  CMP             R1, #0
352C62:  BEQ.W           loc_352DC0
352C66:  LDRB.W          R6, [R2,#0x485]
352C6A:  CMP             R0, R2
352C6C:  MOV.W           R1, #0
352C70:  MOV.W           R3, #0
352C74:  IT EQ
352C76:  MOVEQ           R1, #1
352C78:  LSLS            R6, R6, #0x1F
352C7A:  BEQ             loc_352CFE
352C7C:  LDR.W           R1, [R2,#0x590]
352C80:  CMP             R0, R2
352C82:  MOV.W           R2, #0
352C86:  IT EQ
352C88:  MOVEQ           R2, #1
352C8A:  CMP             R0, R1
352C8C:  IT EQ
352C8E:  MOVEQ           R3, #1
352C90:  ORR.W           R1, R2, R3
352C94:  B               loc_352CFE
352C96:  MOVS            R0, #0
352C98:  LDR             R2, =(ScriptParams_ptr - 0x352C9E)
352C9A:  ADD             R2, PC; ScriptParams_ptr
352C9C:  LDR             R2, [R2]; ScriptParams
352C9E:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
352CA0:  CMP             R2, #0
352CA2:  BLT             loc_352CE8
352CA4:  LDR             R6, [R1,#4]
352CA6:  LSRS            R3, R2, #8
352CA8:  UXTB            R5, R2
352CAA:  LDRB            R6, [R6,R3]
352CAC:  CMP             R6, R5
352CAE:  BNE             loc_352CE8
352CB0:  MOVW            R6, #0xA2C
352CB4:  LDR             R1, [R1]
352CB6:  MLA.W           R3, R3, R6, R1
352CBA:  CBNZ            R0, loc_352CEC
352CBC:  B               loc_352CFC
352CBE:  MOVS            R0, #0
352CC0:  LDR             R1, =(ScriptParams_ptr - 0x352CC6)
352CC2:  ADD             R1, PC; ScriptParams_ptr
352CC4:  LDR             R1, [R1]; ScriptParams
352CC6:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
352CC8:  BLX             j__ZN4CPed11ClearWeaponE11eWeaponType; CPed::ClearWeapon(eWeaponType)
352CCC:  B               loc_352D2A
352CCE:  MOVS            R2, #0
352CD0:  MOVS            R1, #0
352CD2:  CBZ             R0, loc_352CFE
352CD4:  LDR.W           R0, [R0,#0x76C]
352CD8:  CMP             R0, R2
352CDA:  IT EQ
352CDC:  MOVEQ           R1, #1
352CDE:  CMP             R0, #0
352CE0:  IT NE
352CE2:  MOVNE           R0, #1
352CE4:  ANDS            R1, R0
352CE6:  B               loc_352CFE
352CE8:  MOVS            R3, #0
352CEA:  CBZ             R0, loc_352CFC
352CEC:  LDR.W           R0, [R0,#0x51C]
352CF0:  CBZ             R0, loc_352CFC
352CF2:  ADDS            R1, R2, #1
352CF4:  BEQ             loc_352DCE
352CF6:  MOVS            R1, #0
352CF8:  CMP             R0, R3
352CFA:  B               loc_352DDA
352CFC:  MOVS            R1, #0; unsigned __int8
352CFE:  MOV             R0, R8; this
352D00:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
352D04:  B               loc_352D2A
352D06:  MOVS            R6, #0
352D08:  MOVW            R2, #0x2004
352D0C:  STRB.W          R6, [R0,#0xBC]
352D10:  BICS            R1, R2
352D12:  STR             R1, [R0,#0x44]
352D14:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352D16:  MOV.W           R0, #0xFFFFFFFF
352D1A:  LDR             R1, =(ScriptParams_ptr - 0x352D20)
352D1C:  ADD             R1, PC; ScriptParams_ptr
352D1E:  LDR             R1, [R1]; ScriptParams
352D20:  STR             R0, [R1]
352D22:  MOV             R0, R8; this
352D24:  MOVS            R1, #1; __int16
352D26:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
352D2A:  MOVS            R6, #0
352D2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x352D34); jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352D2E:  LDR             R1, [SP,#0x98+var_3C]
352D30:  ADD             R0, PC; __stack_chk_guard_ptr
352D32:  LDR             R0, [R0]; __stack_chk_guard
352D34:  LDR             R0, [R0]
352D36:  SUBS            R0, R0, R1
352D38:  ITTTT EQ
352D3A:  SXTBEQ          R0, R6
352D3C:  ADDEQ           SP, SP, #0x60 ; '`'
352D3E:  VPOPEQ          {D8-D10}
352D42:  ADDEQ           SP, SP, #4
352D44:  ITT EQ
352D46:  POPEQ.W         {R8-R11}
352D4A:  POPEQ           {R4-R7,PC}
352D4C:  BLX             __stack_chk_fail
352D50:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x352D58)
352D52:  MOVS            R6, #0
352D54:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
352D56:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
352D58:  STRB.W          R6, [R0,#(byte_796857 - 0x7967F4)]
352D5C:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352D5E:  MOVW            R1, #0x200C
352D62:  BICS            R0, R1
352D64:  STR             R0, [R4,#0x44]
352D66:  B               loc_352D2A
352D68:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x352D70)
352D6A:  MOVS            R6, #0
352D6C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
352D6E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
352D70:  LDRB.W          R1, [R0,#(byte_796857 - 0x7967F4)]
352D74:  CMP             R1, #0
352D76:  MOV.W           R1, #0
352D7A:  IT EQ
352D7C:  MOVEQ           R1, #1
352D7E:  STRB.W          R1, [R0,#(byte_796857 - 0x7967F4)]
352D82:  B               loc_352D2C; jumptable 00351D4E cases 1301,1313-1317,1344,1349,1352,1355,1357,1361,1362,1366,1367,1371,1385
352D84:  LDR             R1, =(ScriptParams_ptr - 0x352D90)
352D86:  MLA.W           R4, R2, R3, R6
352D8A:  MOVS            R3, #1
352D8C:  ADD             R1, PC; ScriptParams_ptr
352D8E:  LDR             R1, [R1]; ScriptParams
352D90:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
352D92:  MOVS            R1, #0x1C
352D94:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
352D98:  LDR             R0, [R4]
352D9A:  LDR.W           R1, [R0,#0x710]
352D9E:  CMP             R1, #0x37 ; '7'
352DA0:  BNE             loc_352DB8
352DA2:  LDRSB.W         R1, [R0,#0x71C]
352DA6:  RSB.W           R1, R1, R1,LSL#3
352DAA:  ADD.W           R1, R0, R1,LSL#2
352DAE:  LDR.W           R1, [R1,#0x5A4]
352DB2:  STR.W           R1, [R0,#0x710]
352DB6:  LDR             R0, [R4]
352DB8:  MOVS            R1, #0x1C
352DBA:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
352DBE:  B               loc_352D2A
352DC0:  LDRB.W          R0, [R0,#0x3A]
352DC4:  MOVS            R1, #0
352DC6:  AND.W           R0, R0, #7
352DCA:  CMP             R0, #3
352DCC:  B               loc_352DDA
352DCE:  LDRB.W          R0, [R0,#0x3A]
352DD2:  MOVS            R1, #0
352DD4:  AND.W           R0, R0, #7
352DD8:  CMP             R0, #2
352DDA:  IT EQ
352DDC:  MOVEQ           R1, #1
352DDE:  B               loc_352CFE
