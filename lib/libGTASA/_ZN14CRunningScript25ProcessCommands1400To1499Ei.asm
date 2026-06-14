; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1400To1499Ei
; Address            : 0x352F90 - 0x355252
; =========================================================

352F90:  PUSH            {R4-R7,LR}
352F92:  ADD             R7, SP, #0xC
352F94:  PUSH.W          {R8-R11}
352F98:  SUB             SP, SP, #4
352F9A:  VPUSH           {D8-D9}
352F9E:  SUB.W           SP, SP, #0x330; float
352FA2:  MOV             R11, R0
352FA4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x352FAC)
352FA8:  ADD             R0, PC; __stack_chk_guard_ptr
352FAA:  LDR             R0, [R0]; __stack_chk_guard
352FAC:  LDR             R0, [R0]
352FAE:  STR             R0, [SP,#0x360+var_34]
352FB0:  SUBW            R0, R1, #0x57B; switch 97 cases
352FB4:  CMP             R0, #0x60 ; '`'
352FB6:  BHI.W           def_352FC4; jumptable 00352FC4 default case, cases 1404,1408,1412,1414,1417,1419,1423,1424,1427,1432,1433,1451,1452,1455,1460
352FBA:  MOVW            R5, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
352FBE:  MOVS            R4, #0
352FC0:  MOVT            R5, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
352FC4:  TBH.W           [PC,R0,LSL#1]; switch jump
352FC8:  DCW 0x1132; jump table for switch statement
352FCA:  DCW 0x75
352FCC:  DCW 0x1132
352FCE:  DCW 0x61
352FD0:  DCW 0x1132
352FD2:  DCW 0x75
352FD4:  DCW 0x78
352FD6:  DCW 0x8E
352FD8:  DCW 0x9C
352FDA:  DCW 0x75
352FDC:  DCW 0x1132
352FDE:  DCW 0x75
352FE0:  DCW 0xD1
352FE2:  DCW 0xF0
352FE4:  DCW 0x75
352FE6:  DCW 0x10F
352FE8:  DCW 0x75
352FEA:  DCW 0x163
352FEC:  DCW 0x1132
352FEE:  DCW 0x1132
352FF0:  DCW 0x75
352FF2:  DCW 0x75
352FF4:  DCW 0x1132
352FF6:  DCW 0x1132
352FF8:  DCW 0x75
352FFA:  DCW 0x16C
352FFC:  DCW 0x186
352FFE:  DCW 0x1A3
353000:  DCW 0x1AE
353002:  DCW 0x75
353004:  DCW 0x75
353006:  DCW 0x1A7
353008:  DCW 0x1132
35300A:  DCW 0x1C7
35300C:  DCW 0x1E1
35300E:  DCW 0x379
353010:  DCW 0x38B
353012:  DCW 0x3B3
353014:  DCW 0x3BA
353016:  DCW 0x3D9
353018:  DCW 0x3F8
35301A:  DCW 0x416
35301C:  DCW 0x452
35301E:  DCW 0x4C6
353020:  DCW 0x4E5
353022:  DCW 0x51A
353024:  DCW 0x548
353026:  DCW 0x54B
353028:  DCW 0x75
35302A:  DCW 0x75
35302C:  DCW 0x55D
35302E:  DCW 0x560
353030:  DCW 0x75
353032:  DCW 0x57C
353034:  DCW 0x1132
353036:  DCW 0x1132
353038:  DCW 0x1132
35303A:  DCW 0x75
35303C:  DCW 0x1132
35303E:  DCW 0x684
353040:  DCW 0x1132
353042:  DCW 0x1132
353044:  DCW 0x68C
353046:  DCW 0x6AB
353048:  DCW 0x6C7
35304A:  DCW 0x6E2
35304C:  DCW 0x701
35304E:  DCW 0x719
353050:  DCW 0x73E
353052:  DCW 0x751
353054:  DCW 0x762
353056:  DCW 0x94A
353058:  DCW 0x970
35305A:  DCW 0x996
35305C:  DCW 0x9A8
35305E:  DCW 0x1132
353060:  DCW 0x9C2
353062:  DCW 0x9E8
353064:  DCW 0xA0E
353066:  DCW 0xA20
353068:  DCW 0xA57
35306A:  DCW 0x1132
35306C:  DCW 0xA85
35306E:  DCW 0x1132
353070:  DCW 0xAA6
353072:  DCW 0x1132
353074:  DCW 0xAC8
353076:  DCW 0xAE7
353078:  DCW 0xB0A
35307A:  DCW 0xB3C
35307C:  DCW 0x1132
35307E:  DCW 0xB69
353080:  DCW 0xB71
353082:  DCW 0xB94
353084:  DCW 0xBCB
353086:  DCW 0xBF1
353088:  DCW 0xC12
35308A:  MOV             R0, R11; jumptable 00352FC4 case 1406
35308C:  MOVS            R1, #1; __int16
35308E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353092:  LDR.W           R0, =(ScriptParams_ptr - 0x3530A0)
353096:  MOVS            R4, #0
353098:  LDR.W           R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x3530A2)
35309C:  ADD             R0, PC; ScriptParams_ptr
35309E:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
3530A0:  LDR             R0, [R0]; ScriptParams
3530A2:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
3530A4:  LDR             R0, [R0]
3530A6:  CMP             R0, #0
3530A8:  IT NE
3530AA:  MOVNE           R0, #1
3530AC:  STRB            R0, [R1]; CTheScripts::bPlayerIsOffTheMap
3530AE:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3530B2:  MOVS            R4, #0xFF; jumptable 00352FC4 default case, cases 1404,1408,1412,1414,1417,1419,1423,1424,1427,1432,1433,1451,1452,1455,1460
3530B4:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3530B8:  MOV             R0, R11; jumptable 00352FC4 case 1409
3530BA:  MOVS            R1, #1; __int16
3530BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3530C0:  LDR.W           R0, =(ScriptParams_ptr - 0x3530CE)
3530C4:  MOVS            R4, #0
3530C6:  LDR.W           R1, =(_ZN4CHud23bScriptDontDisplayRadarE_ptr - 0x3530D0)
3530CA:  ADD             R0, PC; ScriptParams_ptr
3530CC:  ADD             R1, PC; _ZN4CHud23bScriptDontDisplayRadarE_ptr
3530CE:  LDR             R0, [R0]; ScriptParams
3530D0:  LDR             R1, [R1]; CHud::bScriptDontDisplayRadar ...
3530D2:  LDR             R0, [R0]
3530D4:  CMP             R0, #0
3530D6:  MOV.W           R0, #0
3530DA:  IT EQ
3530DC:  MOVEQ           R0, #1
3530DE:  STRB            R0, [R1]; CHud::bScriptDontDisplayRadar
3530E0:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3530E4:  MOV             R0, R11; jumptable 00352FC4 case 1410
3530E6:  MOVS            R1, #2; __int16
3530E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3530EC:  LDR.W           R0, =(ScriptParams_ptr - 0x3530F4)
3530F0:  ADD             R0, PC; ScriptParams_ptr
3530F2:  LDR             R1, [R0]; ScriptParams
3530F4:  LDRD.W          R0, R1, [R1]; int
3530F8:  BLX             j__ZN6CStats20RegisterBestPositionEii; CStats::RegisterBestPosition(int,int)
3530FC:  B.W             loc_35522A
353100:  MOV             R0, R11; jumptable 00352FC4 case 1411
353102:  MOVS            R1, #1; __int16
353104:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353108:  LDR.W           R0, =(ScriptParams_ptr - 0x353116)
35310C:  SUB.W           R5, R7, #-var_3E
353110:  MOVS            R2, #8; unsigned __int8
353112:  ADD             R0, PC; ScriptParams_ptr
353114:  MOV             R1, R5; char *
353116:  LDR             R0, [R0]; ScriptParams
353118:  LDR             R6, [R0]
35311A:  MOV             R0, R11; this
35311C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
353120:  ADD             R0, SP, #0x360+var_B0; char *
353122:  MOVS            R4, #0
353124:  MOV             R1, R5; char *
353126:  STRD.W          R4, R4, [SP,#0x360+var_B0]
35312A:  BLX             strcpy
35312E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x35313A)
353132:  MOV.W           R1, #0x194
353136:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
353138:  LDR             R0, [R0]; CWorld::Players ...
35313A:  MLA.W           R1, R6, R1, R0
35313E:  ADD             R0, SP, #0x360+var_320; this
353140:  BLX             j__ZN11CPlayerInfo6GetPosEv; CPlayerInfo::GetPos(void)
353144:  VLDR            D16, [SP,#0x360+var_320]
353148:  LDR             R0, [SP,#0x360+var_318]
35314A:  STR             R0, [SP,#0x360+var_50]
35314C:  MOVS            R0, #2
35314E:  VSTR            D16, [SP,#0x360+var_58]
353152:  LDRD.W          R2, R3, [SP,#0x360+var_B0]
353156:  STR             R0, [SP,#0x360+var_360]
353158:  ADD             R0, SP, #0x360+var_58
35315A:  BLX             j__ZN9CTheZones35DoesPointLieWithinZoneWithGivenNameEPK7CVectory9eZoneType; CTheZones::DoesPointLieWithinZoneWithGivenName(CVector const*,ulong long,eZoneType)
35315E:  MOV             R1, R0
353160:  CMP             R1, #0
353162:  IT NE
353164:  MOVNE           R1, #1
353166:  B.W             loc_353AB6
35316A:  MOV             R0, R11; jumptable 00352FC4 case 1415
35316C:  MOVS            R1, #2; __int16
35316E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353172:  LDR.W           R0, =(ScriptParams_ptr - 0x35317A)
353176:  ADD             R0, PC; ScriptParams_ptr
353178:  LDR             R0, [R0]; ScriptParams
35317A:  LDR             R1, [R0]
35317C:  CMP             R1, #0
35317E:  BLT.W           loc_354850
353182:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35318E)
353186:  UXTB            R3, R1
353188:  LSRS            R1, R1, #8
35318A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35318C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35318E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
353190:  LDR             R2, [R0,#4]
353192:  LDRB            R2, [R2,R1]
353194:  CMP             R2, R3
353196:  BNE.W           loc_354850
35319A:  MOVW            R2, #0xA2C
35319E:  LDR             R0, [R0]
3531A0:  MLA.W           R5, R1, R2, R0
3531A4:  B.W             loc_354852
3531A8:  MOV             R0, R11; jumptable 00352FC4 case 1416
3531AA:  MOVS            R1, #2; __int16
3531AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3531B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3531B8)
3531B4:  ADD             R0, PC; ScriptParams_ptr
3531B6:  LDR             R0, [R0]; ScriptParams
3531B8:  LDR             R1, [R0]; CEntity *
3531BA:  CMP             R1, #0
3531BC:  BLT.W           loc_354D1E
3531C0:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3531CC)
3531C4:  UXTB            R3, R1
3531C6:  LSRS            R1, R1, #8
3531C8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3531CA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3531CC:  LDR             R0, [R0]; CPools::ms_pPedPool
3531CE:  LDR             R2, [R0,#4]
3531D0:  LDRB            R2, [R2,R1]
3531D2:  CMP             R2, R3
3531D4:  BNE.W           loc_354D1E
3531D8:  MOVW            R2, #0x7CC
3531DC:  LDR             R0, [R0]
3531DE:  MLA.W           R5, R1, R2, R0
3531E2:  B.W             loc_354D20
3531E6:  MOV             R0, R11; jumptable 00352FC4 case 1418
3531E8:  MOVS            R1, #6; __int16
3531EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3531EE:  LDR.W           R0, =(ScriptParams_ptr - 0x3531FA)
3531F2:  ADD.W           R8, SP, #0x360+var_58
3531F6:  ADD             R0, PC; ScriptParams_ptr
3531F8:  LDR             R0, [R0]; ScriptParams
3531FA:  LDRD.W          R6, R5, [R0]
3531FE:  LDR.W           R9, [R0,#(dword_81A910 - 0x81A908)]
353202:  VMOV            S8, R5
353206:  VLDR            S4, [R0,#0x10]
35320A:  VLDR            S2, [R0,#0xC]
35320E:  VMOV            S10, R6
353212:  VLDR            S6, [R0,#0x14]
353216:  VMOV            S0, R9
35321A:  VSUB.F32        S4, S4, S8
35321E:  MOV             R0, R8; this
353220:  VSUB.F32        S2, S2, S10
353224:  STRD.W          R6, R5, [SP,#0x360+var_320]
353228:  VSUB.F32        S0, S6, S0
35322C:  STR.W           R9, [SP,#0x360+var_318]
353230:  VSTR            S4, [SP,#0x360+var_58+4]
353234:  VSTR            S2, [SP,#0x360+var_58]
353238:  VSTR            S0, [SP,#0x360+var_50]
35323C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
353240:  MOVW            R0, #0xCCCD
353244:  MOVS            R2, #0
353246:  MOVS            R4, #0
353248:  MOVT            R0, #0x3F4C
35324C:  MOV.W           R1, #0x3F800000
353250:  MOVT            R2, #0x40A0
353254:  STRD.W          R4, R4, [SP,#0x360+var_340]
353258:  MOV             R3, R9
35325A:  STRD.W          R4, R4, [SP,#0x360+var_360]
35325E:  STRD.W          R4, R2, [SP,#0x360+var_358]
353262:  MOV             R2, R5
353264:  STRD.W          R1, R0, [SP,#0x360+var_350]
353268:  MOVS            R0, #0
35326A:  MOV             R1, R6
35326C:  STRD.W          R4, R4, [SP,#0x360+var_348]
353270:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
353274:  LDR.W           R0, =(g_fx_ptr - 0x353282)
353278:  MOVS            R1, #1
35327A:  ADD             R2, SP, #0x360+var_320; CVector *
35327C:  STR             R1, [SP,#0x360+var_360]; bool
35327E:  ADD             R0, PC; g_fx_ptr
353280:  MOVS            R1, #0; CEntity *
353282:  MOV             R3, R8; CVector *
353284:  LDR             R0, [R0]; g_fx ; this
353286:  BLX             j__ZN4Fx_c14TriggerGunshotEP7CEntityR7CVectorS3_b; Fx_c::TriggerGunshot(CEntity *,CVector &,CVector &,bool)
35328A:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
35328E:  LDR.W           R0, =(ScriptParams_ptr - 0x353296); jumptable 00352FC4 case 1420
353292:  ADD             R0, PC; ScriptParams_ptr ; this
353294:  LDR             R4, [R0]; ScriptParams
353296:  BLX             j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
35329A:  STR             R0, [R4]
35329C:  B.W             loc_354E9A
3532A0:  MOV             R0, R11; jumptable 00352FC4 case 1428
3532A2:  MOVS            R1, #2; __int16
3532A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3532A8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3532B4)
3532AC:  LDR.W           R0, =(ScriptParams_ptr - 0x3532B6)
3532B0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3532B2:  ADD             R0, PC; ScriptParams_ptr
3532B4:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
3532B6:  LDR             R0, [R0]; ScriptParams
3532B8:  LDRD.W          R3, R1, [R0]
3532BC:  LDR             R0, [R2]; CPools::ms_pVehiclePool
3532BE:  LSRS            R2, R3, #8
3532C0:  MOVW            R3, #0xA2C
3532C4:  LDR             R0, [R0]
3532C6:  MLA.W           R0, R2, R3, R0
3532CA:  LDR             R0, [R0,#0x18]
3532CC:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
3532D0:  B.W             loc_35522A
3532D4:  MOVS            R0, #(dword_90+3); jumptable 00352FC4 case 1429
3532D6:  MOV.W           R1, #0x3F800000; unsigned __int16
3532DA:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3532DE:  MOVS            R0, #dword_B0; this
3532E0:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3532E4:  MOV             R1, R0; unsigned __int16
3532E6:  MOVS            R0, #(dword_B0+1); this
3532E8:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3532EC:  MOVS            R0, #0xB0
3532EE:  MOVS            R1, #0
3532F0:  MOVS            R4, #0
3532F2:  NOP
3532F4:  NOP
3532F6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x353302)
3532FA:  LDR.W           R1, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x353304)
3532FE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
353300:  ADD             R1, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
353302:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
353304:  LDR             R1, [R1]; CTheScripts::LastMissionPassedTime ...
353306:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
353308:  STR             R0, [R1]; CTheScripts::LastMissionPassedTime
35330A:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
35330E:  MOV             R0, R11; jumptable 00352FC4 case 1430
353310:  MOVS            R1, #1; __int16
353312:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353316:  MOV             R0, R11; jumptable 00352FC4 case 1434
353318:  MOVS            R1, #0; unsigned __int8
35331A:  MOVS            R4, #0
35331C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
353320:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
353324:  MOV             R0, R11; jumptable 00352FC4 case 1431
353326:  MOVS            R1, #1; __int16
353328:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35332C:  LDR.W           R0, =(ScriptParams_ptr - 0x35333C)
353330:  MOVW            R2, #0x7CC
353334:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35333E)
353338:  ADD             R0, PC; ScriptParams_ptr
35333A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35333C:  LDR             R0, [R0]; ScriptParams
35333E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
353340:  LDR             R0, [R0]
353342:  LDR             R1, [R1]; CPools::ms_pPedPool
353344:  LSRS            R0, R0, #8
353346:  LDR             R1, [R1]
353348:  MLA.W           R0, R0, R2, R1
35334C:  LDR.W           R0, [R0,#0x484]
353350:  UBFX.W          R1, R0, #0x1A, #1
353354:  B               loc_3537EA
353356:  MOV             R0, R11; jumptable 00352FC4 case 1436
353358:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
35335C:  MOV             R5, R0
35335E:  MOV             R0, R11; this
353360:  MOVS            R1, #1; __int16
353362:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353366:  LDR.W           R0, =(ScriptParams_ptr - 0x35336E)
35336A:  ADD             R0, PC; ScriptParams_ptr
35336C:  LDR             R0, [R0]; ScriptParams
35336E:  LDR             R0, [R0]
353370:  CMP             R0, #0
353372:  BEQ.W           loc_354E4E
353376:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x353382)
35337A:  MOV             R1, R5; unsigned int
35337C:  MOVS            R2, #1; unsigned __int8
35337E:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
353380:  LDR             R0, [R0]; this
353382:  BLX             j__ZN14COnscreenTimer33SetCounterFlashWhenFirstDisplayedEjh; COnscreenTimer::SetCounterFlashWhenFirstDisplayed(uint,uchar)
353386:  B.W             loc_35522A
35338A:  MOV             R0, R11; jumptable 00352FC4 case 1437
35338C:  MOVS            R1, #1; __int16
35338E:  MOV.W           R8, #1
353392:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353396:  LDR.W           R0, =(_ZN11CTheScripts9CardStackE_ptr - 0x3533A2)
35339A:  MOV.W           R1, #0x270
35339E:  ADD             R0, PC; _ZN11CTheScripts9CardStackE_ptr
3533A0:  LDR             R0, [R0]; CTheScripts::CardStack ...
3533A2:  BLX             j___aeabi_memclr8_1
3533A6:  ADR.W           R1, unk_353F40
3533AA:  ADD             R5, SP, #0x360+var_320
3533AC:  VLD1.64         {D0-D1}, [R1@128]
3533B0:  ADR.W           R1, loc_353F50
3533B4:  ADR.W           R0, asc_353F60; "\b\t\n\v"
3533B8:  ADR.W           R2, loc_353F70
3533BC:  VLD1.64         {D2-D3}, [R1@128]
3533C0:  ADD.W           R1, R5, #0x20 ; ' '
3533C4:  VST1.16         {D2-D3}, [R1]
3533C8:  ADR.W           R1, loc_353F80
3533CC:  VLD1.64         {D2-D3}, [R1@128]
3533D0:  ADD.W           R1, R5, #0x30 ; '0'
3533D4:  VST1.16         {D2-D3}, [R1]
3533D8:  ADR.W           R1, a0123456789Abcd; " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDE"...
3533DC:  VLD1.64         {D2-D3}, [R1@128]
3533E0:  ADD.W           R1, R5, #0x40 ; '@'
3533E4:  VST1.16         {D2-D3}, [R1]
3533E8:  ADR.W           R1, (a0123456789Abcd+0x10); "()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN"...
3533EC:  VLD1.64         {D2-D3}, [R1@128]
3533F0:  ADD.W           R1, R5, #0x50 ; 'P'
3533F4:  VST1.16         {D2-D3}, [R1]
3533F8:  ADR.W           R1, (a0123456789Abcd+0x20); "0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUV"...
3533FC:  VLD1.64         {D2-D3}, [R1@128]
353400:  ADD.W           R1, R5, #0x60 ; '`'
353404:  VST1.16         {D2-D3}, [R1]
353408:  ADR.W           R1, (a0123456789Abcd+0x30); "89:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]"...
35340C:  VLD1.64         {D2-D3}, [R1@128]
353410:  ADD.W           R1, R5, #0x70 ; 'p'
353414:  VST1.16         {D2-D3}, [R1]
353418:  ADR.W           R1, (a0123456789Abcd+0x40); "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcde"...
35341C:  VLD1.64         {D2-D3}, [R1@128]
353420:  ADD.W           R1, R5, #0x80
353424:  VST1.16         {D2-D3}, [R1]
353428:  ADR.W           R1, (a0123456789Abcd+0x50); "HIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklm"...
35342C:  VLD1.64         {D2-D3}, [R1@128]
353430:  ADD.W           R1, R5, #0x90
353434:  VST1.16         {D2-D3}, [R1]
353438:  ADR.W           R1, (a0123456789Abcd+0x60); "PQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstu"...
35343C:  VLD1.64         {D2-D3}, [R1@128]
353440:  ADD.W           R1, R5, #0xA0
353444:  VST1.16         {D2-D3}, [R1]
353448:  ADR.W           R1, (a0123456789Abcd+0x70); "XYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}"...
35344C:  VLD1.64         {D2-D3}, [R1@128]
353450:  ADD.W           R1, R5, #0xB0
353454:  VST1.16         {D2-D3}, [R1]
353458:  ADR.W           R1, (a0123456789Abcd+0x80); "`abcdefghijklmnopqrstuvwxyz{|}~"
35345C:  VLD1.64         {D2-D3}, [R1@128]
353460:  ADD.W           R1, R5, #0xC0
353464:  VST1.16         {D2-D3}, [R1]
353468:  ADR.W           R1, (a0123456789Abcd+0x90); "hijklmnopqrstuvwxyz{|}~"
35346C:  VLD1.64         {D2-D3}, [R1@128]
353470:  ADD.W           R1, R5, #0xD0
353474:  VST1.16         {D2-D3}, [R1]
353478:  ADR.W           R1, (a0123456789Abcd+0xA0); "pqrstuvwxyz{|}~"
35347C:  VLD1.64         {D2-D3}, [R1@128]
353480:  ADD.W           R1, R5, #0xE0
353484:  VST1.16         {D2-D3}, [R1]
353488:  ADR.W           R1, (a0123456789Abcd+0xB0); "xyz{|}~"
35348C:  VLD1.64         {D2-D3}, [R1@128]
353490:  ADD.W           R1, R5, #0xF0
353494:  VST1.16         {D2-D3}, [R1]
353498:  ADR.W           R1, loc_354050
35349C:  VLD1.64         {D2-D3}, [R1@128]
3534A0:  ADD.W           R1, R5, #0x100
3534A4:  VST1.16         {D2-D3}, [R1]
3534A8:  ADR.W           R1, loc_354060
3534AC:  VLD1.64         {D2-D3}, [R1@128]
3534B0:  ADD.W           R1, R5, #0x110
3534B4:  VST1.16         {D2-D3}, [R1]
3534B8:  ADR.W           R1, loc_354070
3534BC:  VLD1.64         {D2-D3}, [R1@128]
3534C0:  ADD.W           R1, R5, #0x120
3534C4:  VST1.16         {D2-D3}, [R1]
3534C8:  ADR.W           R1, loc_354080
3534CC:  VLD1.64         {D2-D3}, [R1@128]
3534D0:  MOV             R1, R5
3534D2:  VLD1.64         {D30-D31}, [R0@128]
3534D6:  ADR.W           R0, loc_354090
3534DA:  VST1.16         {D0-D1}, [R1]!
3534DE:  VST1.16         {D30-D31}, [R1]
3534E2:  ADR.W           R1, loc_3540A0
3534E6:  VLD1.64         {D30-D31}, [R1@128]
3534EA:  ADD.W           R1, R5, #0x140
3534EE:  VST1.16         {D30-D31}, [R1]
3534F2:  ADR.W           R1, loc_3540B0
3534F6:  VLD1.64         {D30-D31}, [R1@128]
3534FA:  ADD.W           R1, R5, #0x130
3534FE:  VST1.16         {D30-D31}, [R1]
353502:  ADR.W           R1, loc_3540C0
353506:  VLD1.64         {D30-D31}, [R1@128]
35350A:  ADD.W           R1, R5, #0x150
35350E:  VST1.16         {D30-D31}, [R1]
353512:  ADR.W           R1, loc_3540D0
353516:  VLD1.64         {D30-D31}, [R1@128]
35351A:  ADD.W           R1, R5, #0x160
35351E:  VST1.16         {D30-D31}, [R1]
353522:  ADR.W           R1, loc_3540E0
353526:  VLD1.64         {D30-D31}, [R1@128]
35352A:  ADD.W           R1, R5, #0x170
35352E:  VST1.16         {D30-D31}, [R1]
353532:  ADR.W           R1, loc_3540F0
353536:  VLD1.64         {D30-D31}, [R1@128]
35353A:  ADD.W           R1, R5, #0x180
35353E:  VST1.16         {D30-D31}, [R1]
353542:  ADR.W           R1, loc_354100
353546:  VLD1.64         {D30-D31}, [R1@128]
35354A:  ADD.W           R1, R5, #0x190
35354E:  VST1.16         {D30-D31}, [R1]
353552:  ADR.W           R1, loc_354110
353556:  VLD1.64         {D30-D31}, [R1@128]
35355A:  ADD.W           R1, R5, #0x1A0
35355E:  VST1.16         {D30-D31}, [R1]
353562:  ADR.W           R1, loc_354120
353566:  VLD1.64         {D30-D31}, [R1@128]
35356A:  ADD.W           R1, R5, #0x1B0
35356E:  VST1.16         {D30-D31}, [R1]
353572:  ADR.W           R1, loc_354130
353576:  VLD1.64         {D16-D17}, [R0@128]
35357A:  ADR.W           R0, loc_354140
35357E:  VLD1.64         {D30-D31}, [R1@128]
353582:  ADD.W           R1, R5, #0x1C0
353586:  VLD1.64         {D18-D19}, [R0@128]
35358A:  ADR.W           R0, loc_354150
35358E:  VST1.16         {D16-D17}, [R1]
353592:  ADD.W           R1, R5, #0x1D0
353596:  VLD1.64         {D20-D21}, [R0@128]
35359A:  ADR.W           R0, loc_354160
35359E:  VST1.16         {D18-D19}, [R1]
3535A2:  ADD.W           R1, R5, #0x1E0
3535A6:  VLD1.64         {D22-D23}, [R0@128]
3535AA:  ADR.W           R0, loc_354170
3535AE:  VST1.16         {D20-D21}, [R1]
3535B2:  ADD.W           R1, R5, #0x1F0
3535B6:  VLD1.64         {D24-D25}, [R0@128]
3535BA:  ADR.W           R0, loc_354180
3535BE:  VST1.16         {D22-D23}, [R1]
3535C2:  ADD.W           R1, R5, #0x200
3535C6:  VLD1.64         {D26-D27}, [R0@128]
3535CA:  ADR.W           R0, loc_354190
3535CE:  VST1.16         {D24-D25}, [R1]
3535D2:  ADD.W           R1, R5, #0x210
3535D6:  VLD1.64         {D28-D29}, [R0@128]
3535DA:  LDR.W           R0, =(ScriptParams_ptr - 0x3535EA)
3535DE:  VST1.16         {D26-D27}, [R1]
3535E2:  ADD.W           R1, R5, #0x220
3535E6:  ADD             R0, PC; ScriptParams_ptr
3535E8:  VST1.16         {D28-D29}, [R1]
3535EC:  ADD.W           R1, R5, #0x230
3535F0:  LDR             R0, [R0]; ScriptParams
3535F2:  VST1.16         {D2-D3}, [R1]
3535F6:  ADD.W           R1, R5, #0x240
3535FA:  VLD1.64         {D0-D1}, [R2@128]
3535FE:  VST1.16         {D0-D1}, [R1]
353602:  ADD.W           R1, R5, #0x250
353606:  LDR             R0, [R0]
353608:  VST1.16         {D30-D31}, [R1]
35360C:  MOVS            R1, #0x34 ; '4'
35360E:  MUL.W           R6, R0, R1
353612:  ADR.W           R1, loc_3541B0
353616:  VLD1.64         {D16-D17}, [R1@128]
35361A:  ADD.W           R1, R5, #0x260
35361E:  VLDR            S16, =0.000015259
353622:  VST1.16         {D16-D17}, [R1]
353626:  LDR.W           R1, =(_ZN11CTheScripts9CardStackE_ptr - 0x35362E)
35362A:  ADD             R1, PC; _ZN11CTheScripts9CardStackE_ptr
35362C:  LDR.W           R9, [R1]; CTheScripts::CardStack ...
353630:  LDR.W           R1, =(ScriptParams_ptr - 0x353638)
353634:  ADD             R1, PC; ScriptParams_ptr
353636:  LDR.W           R10, [R1]; ScriptParams
35363A:  CMP             R0, #1
35363C:  BLT             loc_3536A0
35363E:  MOVS            R4, #0
353640:  BLX             rand
353644:  UXTH            R0, R0
353646:  VMOV            S0, R0
35364A:  SXTH            R0, R6
35364C:  VMOV            S2, R0
353650:  VCVT.F32.S32    S0, S0
353654:  VCVT.F32.S32    S2, S2
353658:  VMUL.F32        S0, S0, S16
35365C:  VMUL.F32        S0, S0, S2
353660:  VCVT.S32.F32    S0, S0
353664:  VMOV            R1, S0
353668:  LSLS            R2, R1, #0x10
35366A:  SXTH            R1, R1
35366C:  ASRS            R2, R2, #0xF
35366E:  CMP             R1, R0
353670:  LDRSH           R2, [R5,R2]
353672:  STRH.W          R8, [R9,R2,LSL#1]
353676:  BGE             loc_353694
353678:  CMP.W           R1, #0x136
35367C:  ADD.W           R2, R1, #1
353680:  ITTE LE
353682:  ADDLE.W         R3, R5, R1,LSL#1
353686:  LDRHLE          R3, [R3,#2]
353688:  MOVGT           R3, #0
35368A:  CMP             R0, R2
35368C:  STRH.W          R3, [R5,R1,LSL#1]
353690:  MOV             R1, R2
353692:  BNE             loc_353678
353694:  LDR.W           R0, [R10]
353698:  ADDS            R4, #1
35369A:  SUBS            R6, #1
35369C:  CMP             R4, R0
35369E:  BLT             loc_353640
3536A0:  ADD.W           R8, R8, #1
3536A4:  CMP.W           R8, #0x35 ; '5'
3536A8:  BNE             loc_35363A
3536AA:  LDR.W           R0, =(_ZN11CTheScripts17CardStackPositionE_ptr - 0x3536B4)
3536AE:  MOVS            R4, #0
3536B0:  ADD             R0, PC; _ZN11CTheScripts17CardStackPositionE_ptr
3536B2:  LDR             R0, [R0]; CTheScripts::CardStackPosition ...
3536B4:  STRH            R4, [R0]; CTheScripts::CardStackPosition
3536B6:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3536BA:  LDR.W           R0, =(_ZN11CTheScripts17CardStackPositionE_ptr - 0x3536C6); jumptable 00352FC4 case 1438
3536BE:  LDR.W           R1, =(_ZN11CTheScripts9CardStackE_ptr - 0x3536C8)
3536C2:  ADD             R0, PC; _ZN11CTheScripts17CardStackPositionE_ptr
3536C4:  ADD             R1, PC; _ZN11CTheScripts9CardStackE_ptr
3536C6:  LDR             R0, [R0]; CTheScripts::CardStackPosition ...
3536C8:  LDR             R2, [R1]; CTheScripts::CardStack ...
3536CA:  LDRSH.W         R1, [R0]; CTheScripts::CardStackPosition
3536CE:  LDRH.W          R0, [R2,R1,LSL#1]
3536D2:  CMP             R0, #0
3536D4:  BEQ.W           loc_354E62
3536D8:  UXTH            R1, R1
3536DA:  B.W             loc_354E78
3536DE:  MOV             R0, R11; jumptable 00352FC4 case 1439
3536E0:  MOVS            R1, #1; __int16
3536E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3536E6:  LDR.W           R0, =(ScriptParams_ptr - 0x3536F6)
3536EA:  MOV.W           R3, #0x1A4
3536EE:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3536FC)
3536F2:  ADD             R0, PC; ScriptParams_ptr
3536F4:  VLDR            S0, =50.0
3536F8:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3536FA:  LDR             R0, [R0]; ScriptParams
3536FC:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3536FE:  LDR             R2, [R0]
353700:  LDR             R1, [R1]; CPools::ms_pObjectPool
353702:  LSRS            R2, R2, #8
353704:  LDR             R1, [R1]
353706:  MLA.W           R1, R2, R3, R1
35370A:  VLDR            S2, [R1,#0x48]
35370E:  VMUL.F32        S2, S2, S0
353712:  VSTR            S2, [R0]
353716:  VLDR            S2, [R1,#0x4C]
35371A:  VMUL.F32        S2, S2, S0
35371E:  VSTR            S2, [R0,#4]
353722:  VLDR            S2, [R1,#0x50]
353726:  VMUL.F32        S0, S2, S0
35372A:  B.W             loc_3549EE
35372E:  LDR.W           R0, =(TheCamera_ptr - 0x353736); jumptable 00352FC4 case 1440
353732:  ADD             R0, PC; TheCamera_ptr
353734:  LDR             R0, [R0]; TheCamera
353736:  LDRB.W          R1, [R0,#(byte_951FFC - 0x951FA8)]
35373A:  B               loc_3537EA
35373C:  MOV             R0, R11; jumptable 00352FC4 case 1441
35373E:  MOVS            R1, #4; __int16
353740:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353744:  LDR.W           R0, =(ScriptParams_ptr - 0x35374C)
353748:  ADD             R0, PC; ScriptParams_ptr
35374A:  LDR             R0, [R0]; ScriptParams
35374C:  LDR             R1, [R0]
35374E:  CMP             R1, #0
353750:  BLT.W           loc_35485C
353754:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x353760)
353758:  UXTB            R3, R1
35375A:  LSRS            R1, R1, #8
35375C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35375E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
353760:  LDR             R0, [R0]; CPools::ms_pObjectPool
353762:  LDR             R2, [R0,#4]
353764:  LDRB            R2, [R2,R1]
353766:  CMP             R2, R3
353768:  BNE.W           loc_35485C
35376C:  MOV.W           R2, #0x1A4
353770:  LDR             R0, [R0]
353772:  MLA.W           R4, R1, R2, R0
353776:  B.W             loc_35485E
35377A:  MOV             R0, R11; jumptable 00352FC4 case 1442
35377C:  MOVS            R1, #4; __int16
35377E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353782:  LDR.W           R0, =(ScriptParams_ptr - 0x35378A)
353786:  ADD             R0, PC; ScriptParams_ptr
353788:  LDR             R0, [R0]; ScriptParams
35378A:  LDR             R1, [R0]
35378C:  CMP             R1, #0
35378E:  BLT.W           loc_35490C
353792:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35379E)
353796:  UXTB            R3, R1
353798:  LSRS            R1, R1, #8
35379A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35379C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
35379E:  LDR             R0, [R0]; CPools::ms_pObjectPool
3537A0:  LDR             R2, [R0,#4]
3537A2:  LDRB            R2, [R2,R1]
3537A4:  CMP             R2, R3
3537A6:  BNE.W           loc_35490C
3537AA:  MOV.W           R2, #0x1A4
3537AE:  LDR             R0, [R0]
3537B0:  MLA.W           R4, R1, R2, R0
3537B4:  B.W             loc_35490E
3537B8:  MOV             R0, R11; jumptable 00352FC4 case 1443
3537BA:  MOVS            R1, #1; __int16
3537BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3537C0:  LDR.W           R0, =(ScriptParams_ptr - 0x3537D0)
3537C4:  MOV.W           R2, #0x1A4
3537C8:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3537D2)
3537CC:  ADD             R0, PC; ScriptParams_ptr
3537CE:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3537D0:  LDR             R0, [R0]; ScriptParams
3537D2:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3537D4:  LDR             R0, [R0]
3537D6:  LDR             R1, [R1]; CPools::ms_pObjectPool
3537D8:  LSRS            R0, R0, #8
3537DA:  LDR             R1, [R1]
3537DC:  MLA.W           R0, R0, R2, R1
3537E0:  LDR             R0, [R0,#0x1C]
3537E2:  ANDS.W          R1, R0, #0x40004
3537E6:  IT NE
3537E8:  MOVNE           R1, #1; unsigned __int8
3537EA:  MOV             R0, R11; this
3537EC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3537F0:  B.W             loc_35522A
3537F4:  MOV             R0, R11; jumptable 00352FC4 case 1444
3537F6:  MOVS            R1, #4; __int16
3537F8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3537FC:  LDR.W           R0, =(ScriptParams_ptr - 0x353804)
353800:  ADD             R0, PC; ScriptParams_ptr
353802:  LDR             R4, [R0]; ScriptParams
353804:  VLDR            S0, [R4]
353808:  VLDR            S2, [R4,#4]
35380C:  VLDR            S4, [R4,#8]
353810:  VMUL.F32        S14, S0, S0
353814:  VLDR            S6, [R4,#0xC]
353818:  VMUL.F32        S12, S2, S2
35381C:  VMUL.F32        S10, S4, S4
353820:  VMUL.F32        S8, S6, S6
353824:  VMUL.F32        S2, S2, S6
353828:  VMUL.F32        S0, S0, S4
35382C:  VADD.F32        S8, S10, S8
353830:  VADD.F32        S10, S14, S12
353834:  VADD.F32        S0, S0, S2
353838:  VSQRT.F32       S8, S8
35383C:  VSQRT.F32       S10, S10
353840:  VMUL.F32        S2, S10, S8
353844:  VDIV.F32        S0, S0, S2
353848:  VMOV            R0, S0; x
35384C:  BLX             acosf
353850:  VLDR            S0, =180.0
353854:  VMOV            S2, R0
353858:  VMUL.F32        S0, S2, S0
35385C:  VLDR            S2, =3.1416
353860:  VDIV.F32        S0, S0, S2
353864:  VSTR            S0, [R4]
353868:  B.W             loc_354E9A
35386C:  MOV             R0, R11; jumptable 00352FC4 case 1445
35386E:  MOVS            R1, #8; __int16
353870:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353874:  LDR.W           R0, =(ScriptParams_ptr - 0x353884)
353878:  VMOV.F64        D17, #0.5
35387C:  MOVS            R1, #0
35387E:  MOVS            R4, #0
353880:  ADD             R0, PC; ScriptParams_ptr
353882:  LDR             R0, [R0]; ScriptParams
353884:  VLDR            S6, [R0,#0xC]
353888:  VLDR            S14, [R0,#0x1C]
35388C:  VCVT.F64.F32    D18, S6
353890:  VCVT.F64.F32    D16, S14
353894:  VMUL.F64        D16, D16, D17
353898:  VMUL.F64        D18, D18, D17
35389C:  VLDR            S2, [R0,#4]
3538A0:  VLDR            S10, [R0,#0x14]
3538A4:  VCVT.F64.F32    D22, S2
3538A8:  VCVT.F64.F32    D21, S10
3538AC:  VSUB.F64        D25, D22, D18
3538B0:  VADD.F64        D24, D16, D21
3538B4:  VLDR            S4, [R0,#8]
3538B8:  VLDR            S12, [R0,#0x18]
3538BC:  VCVT.F64.F32    D20, S4
3538C0:  VCVT.F64.F32    D19, S12
3538C4:  VLDR            S0, [R0]
3538C8:  VMUL.F64        D19, D19, D17
3538CC:  VMUL.F64        D17, D20, D17
3538D0:  VCVT.F64.F32    D20, S0
3538D4:  VCVT.F32.F64    S0, D24
3538D8:  VCVT.F32.F64    S2, D25
3538DC:  VCMPE.F32       S2, S0
3538E0:  VLDR            S8, [R0,#0x10]
3538E4:  VMRS            APSR_nzcv, FPSCR
3538E8:  MOV.W           R0, #0
3538EC:  VADD.F64        D18, D18, D22
3538F0:  VSUB.F64        D16, D21, D16
3538F4:  VCVT.F32.F64    S4, D16
3538F8:  IT LE
3538FA:  MOVLE           R0, #1
3538FC:  VCVT.F32.F64    S6, D18
353900:  VCVT.F64.F32    D23, S8
353904:  VCMPE.F32       S6, S4
353908:  VMRS            APSR_nzcv, FPSCR
35390C:  VSUB.F64        D21, D23, D19
353910:  VADD.F64        D22, D17, D20
353914:  VCVT.F32.F64    S8, D21
353918:  IT GE
35391A:  MOVGE           R1, #1
35391C:  ANDS            R0, R1
35391E:  MOVS            R1, #0
353920:  VCVT.F32.F64    S10, D22
353924:  VCMPE.F32       S10, S8
353928:  VMRS            APSR_nzcv, FPSCR
35392C:  VADD.F64        D19, D19, D23
353930:  VSUB.F64        D17, D20, D17
353934:  VCVT.F32.F64    S12, D19
353938:  IT GE
35393A:  MOVGE           R1, #1
35393C:  ANDS            R0, R1
35393E:  MOVS            R1, #0
353940:  VCVT.F32.F64    S14, D17
353944:  VCMPE.F32       S14, S12
353948:  VMRS            APSR_nzcv, FPSCR
35394C:  IT LE
35394E:  MOVLE           R1, #1
353950:  ANDS            R1, R0
353952:  B               loc_353AB6
353954:  MOV             R0, R11; jumptable 00352FC4 case 1446
353956:  MOVS            R1, #1; __int16
353958:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35395C:  LDR.W           R0, =(ScriptParams_ptr - 0x353964)
353960:  ADD             R0, PC; ScriptParams_ptr
353962:  LDR             R0, [R0]; ScriptParams
353964:  LDR             R1, [R0]
353966:  CMP             R1, #0
353968:  BLT.W           loc_35499E
35396C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x353978)
353970:  UXTB            R3, R1
353972:  LSRS            R1, R1, #8
353974:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
353976:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
353978:  LDR             R0, [R0]; CPools::ms_pObjectPool
35397A:  LDR             R2, [R0,#4]
35397C:  LDRB            R2, [R2,R1]
35397E:  CMP             R2, R3
353980:  BNE.W           loc_35499E
353984:  MOV.W           R2, #0x1A4
353988:  LDR             R0, [R0]
35398A:  MLA.W           R0, R1, R2, R0
35398E:  B.W             loc_3549A0
353992:  MOV             R0, R11; jumptable 00352FC4 case 1447
353994:  MOVS            R1, #4; __int16
353996:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35399A:  LDR.W           R0, =(ScriptParams_ptr - 0x3539A2)
35399E:  ADD             R0, PC; ScriptParams_ptr
3539A0:  LDR             R0, [R0]; ScriptParams
3539A2:  LDR             R1, [R0]
3539A4:  CMP             R1, #0
3539A6:  BLT.W           loc_354A14
3539AA:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3539B6)
3539AE:  UXTB            R3, R1
3539B0:  LSRS            R1, R1, #8
3539B2:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3539B4:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3539B6:  LDR             R0, [R0]; CPools::ms_pObjectPool
3539B8:  LDR             R2, [R0,#4]
3539BA:  LDRB            R2, [R2,R1]
3539BC:  CMP             R2, R3
3539BE:  BNE.W           loc_354A14
3539C2:  MOV.W           R2, #0x1A4
3539C6:  LDR             R0, [R0]
3539C8:  MLA.W           R6, R1, R2, R0
3539CC:  B.W             loc_354A16
3539D0:  DCFS 0.000015259
3539D4:  DCFS 50.0
3539D8:  DCFS 180.0
3539DC:  DCFS 3.1416
3539E0:  DCFS 0.000001
3539E4:  ALIGN 8
3539E8:  DCFD -0.01
3539F0:  DCFD 0.01
3539F8:  DCD __stack_chk_guard_ptr - 0x352FAC
3539FC:  MOV             R0, R11; jumptable 00352FC4 case 1448
3539FE:  MOVS            R1, #1; __int16
353A00:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353A04:  LDR.W           R0, =(ScriptParams_ptr - 0x353A14)
353A08:  MOV.W           R3, #0x1A4
353A0C:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x353A16)
353A10:  ADD             R0, PC; ScriptParams_ptr
353A12:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
353A14:  LDR             R0, [R0]; ScriptParams
353A16:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
353A18:  LDR             R2, [R0]
353A1A:  LDR             R1, [R1]; CPools::ms_pObjectPool
353A1C:  LSRS            R2, R2, #8
353A1E:  LDR             R1, [R1]
353A20:  MLA.W           R1, R2, R3, R1
353A24:  VLDR            S0, [R1,#0x48]
353A28:  VLDR            S2, [R1,#0x4C]
353A2C:  VMUL.F32        S0, S0, S0
353A30:  VLDR            S4, [R1,#0x50]
353A34:  VMUL.F32        S2, S2, S2
353A38:  VMUL.F32        S4, S4, S4
353A3C:  VADD.F32        S0, S0, S2
353A40:  VLDR            S2, =50.0
353A44:  VADD.F32        S0, S0, S4
353A48:  VSQRT.F32       S0, S0
353A4C:  VMUL.F32        S0, S0, S2
353A50:  VSTR            S0, [R0]
353A54:  B.W             loc_354E9A
353A58:  MOV             R0, R11; jumptable 00352FC4 case 1449
353A5A:  MOVS            R1, #2
353A5C:  B               loc_353A62
353A5E:  MOV             R0, R11; jumptable 00352FC4 case 1450
353A60:  MOVS            R1, #1; unsigned __int8
353A62:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
353A66:  ADD             R6, SP, #0x360+var_48
353A68:  MOV             R5, R0
353A6A:  MOV             R0, R11; this
353A6C:  MOVS            R2, #8; unsigned __int8
353A6E:  MOV             R1, R6; char *
353A70:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
353A74:  MOV             R0, R5; char *
353A76:  MOV             R1, R6; char *
353A78:  MOVS            R2, #8; size_t
353A7A:  BLX             strncpy
353A7E:  B.W             loc_35522A
353A82:  MOV             R0, R11; jumptable 00352FC4 case 1453
353A84:  MOVS            R1, #2
353A86:  B               loc_353A8C
353A88:  MOV             R0, R11; jumptable 00352FC4 case 1454
353A8A:  MOVS            R1, #1; unsigned __int8
353A8C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
353A90:  ADD             R6, SP, #0x360+var_48
353A92:  MOV             R5, R0
353A94:  MOV             R0, R11; this
353A96:  MOVS            R2, #8; unsigned __int8
353A98:  MOV             R1, R6; char *
353A9A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
353A9E:  MOV             R0, R5; char *
353AA0:  MOV             R1, R6; char *
353AA2:  MOVS            R2, #8; size_t
353AA4:  BLX             strncmp
353AA8:  CMP             R0, #0
353AAA:  MOV.W           R1, #0
353AAE:  MOV.W           R4, #0
353AB2:  IT EQ
353AB4:  MOVEQ           R1, #1; unsigned __int8
353AB6:  MOV             R0, R11; this
353AB8:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
353ABC:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
353AC0:  MOV             R0, R11; jumptable 00352FC4 case 1456
353AC2:  MOVS            R1, #8; __int16
353AC4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353AC8:  LDR.W           R0, =(ScriptParams_ptr - 0x353ADC)
353ACC:  MOVW            R4, #0x2400
353AD0:  VLDR            S8, =0.000001
353AD4:  MOVT            R4, #0xC974
353AD8:  ADD             R0, PC; ScriptParams_ptr
353ADA:  LDR             R0, [R0]; ScriptParams
353ADC:  VLDR            S14, [R0,#0x10]
353AE0:  VLDR            S2, [R0,#0x18]
353AE4:  VLDR            S16, [R0]
353AE8:  VSUB.F32        S6, S14, S2
353AEC:  VLDR            S0, [R0,#8]
353AF0:  VLDR            S4, [R0,#4]
353AF4:  VSUB.F32        S3, S16, S0
353AF8:  VLDR            S12, [R0,#0xC]
353AFC:  VLDR            S10, [R0,#0x14]
353B00:  VLDR            S5, [R0,#0x1C]
353B04:  VSUB.F32        S7, S4, S12
353B08:  VSUB.F32        S9, S10, S5
353B0C:  VCMP.F32        S6, #0.0
353B10:  VMRS            APSR_nzcv, FPSCR
353B14:  VCMP.F32        S3, #0.0
353B18:  VMOV.F32        S11, S3
353B1C:  IT EQ
353B1E:  VMOVEQ.F32      S6, S8
353B22:  VMRS            APSR_nzcv, FPSCR
353B26:  VDIV.F32        S6, S9, S6
353B2A:  IT EQ
353B2C:  VMOVEQ.F32      S11, S8
353B30:  VDIV.F32        S9, S7, S11
353B34:  VSUB.F32        S8, S6, S9
353B38:  VCMP.F32        S8, #0.0
353B3C:  VMRS            APSR_nzcv, FPSCR
353B40:  BEQ.W           loc_354834
353B44:  VMUL.F32        S11, S14, S6
353B48:  VLDR            D16, =-0.01
353B4C:  VMUL.F32        S13, S16, S9
353B50:  VCMP.F32        S3, #0.0
353B54:  VMRS            APSR_nzcv, FPSCR
353B58:  VMIN.F32        D9, D8, D0
353B5C:  VCMP.F32        S7, #0.0
353B60:  VSUB.F32        S11, S10, S11
353B64:  VSUB.F32        S13, S4, S13
353B68:  VCVT.F64.F32    D17, S18
353B6C:  VMUL.F32        S9, S9, S11
353B70:  VMUL.F32        S6, S13, S6
353B74:  VSUB.F32        S11, S13, S11
353B78:  VADD.F64        D17, D17, D16
353B7C:  VSUB.F32        S9, S6, S9
353B80:  VDIV.F32        S6, S11, S8
353B84:  IT EQ
353B86:  VMOVEQ.F32      S6, S16
353B8A:  VMRS            APSR_nzcv, FPSCR
353B8E:  VDIV.F32        S8, S9, S8
353B92:  IT EQ
353B94:  VMOVEQ.F32      S8, S4
353B98:  VCVT.F32.F64    S9, D17
353B9C:  VCMPE.F32       S6, S9
353BA0:  VMRS            APSR_nzcv, FPSCR
353BA4:  BLT.W           loc_354834
353BA8:  VCMPE.F32       S10, S5
353BAC:  VLDR            D17, =0.01
353BB0:  VMRS            APSR_nzcv, FPSCR
353BB4:  VMOV.F32        S7, S5
353BB8:  VCMPE.F32       S14, S2
353BBC:  VMOV.F32        S3, S14
353BC0:  IT GT
353BC2:  VMOVGT.F32      S7, S10
353BC6:  VMRS            APSR_nzcv, FPSCR
353BCA:  VCMPE.F32       S16, S0
353BCE:  VCVT.F64.F32    D18, S7
353BD2:  VADD.F64        D18, D18, D17
353BD6:  IT GT
353BD8:  VMOVGT.F32      S3, S2
353BDC:  VMRS            APSR_nzcv, FPSCR
353BE0:  VCMPE.F32       S10, S5
353BE4:  IT GT
353BE6:  VMOVGT.F32      S0, S16
353BEA:  VMRS            APSR_nzcv, FPSCR
353BEE:  VCMPE.F32       S4, S12
353BF2:  IT GT
353BF4:  VMOVGT.F32      S10, S5
353BF8:  VMRS            APSR_nzcv, FPSCR
353BFC:  VMOV.F32        S5, S12
353C00:  VCMPE.F32       S14, S2
353C04:  IT GT
353C06:  VMOVGT.F32      S5, S4
353C0A:  VMRS            APSR_nzcv, FPSCR
353C0E:  VCMPE.F32       S4, S12
353C12:  IT GT
353C14:  VMOVGT.F32      S2, S14
353C18:  VMRS            APSR_nzcv, FPSCR
353C1C:  IT GT
353C1E:  VMOVGT.F32      S4, S12
353C22:  VCVT.F32.F64    S12, D18
353C26:  VCMPE.F32       S8, S12
353C2A:  VMRS            APSR_nzcv, FPSCR
353C2E:  BGT.W           loc_354834
353C32:  VCVT.F64.F32    D18, S10
353C36:  VADD.F64        D18, D18, D16
353C3A:  VCVT.F32.F64    S10, D18
353C3E:  VCMPE.F32       S8, S10
353C42:  VMRS            APSR_nzcv, FPSCR
353C46:  BLT.W           loc_354834
353C4A:  VCVT.F64.F32    D18, S5
353C4E:  VADD.F64        D18, D18, D17
353C52:  VCVT.F32.F64    S10, D18
353C56:  VCMPE.F32       S8, S10
353C5A:  VMRS            APSR_nzcv, FPSCR
353C5E:  BGT.W           loc_354834
353C62:  VCVT.F64.F32    D18, S4
353C66:  VADD.F64        D18, D18, D16
353C6A:  VCVT.F32.F64    S4, D18
353C6E:  VCMPE.F32       S8, S4
353C72:  VMRS            APSR_nzcv, FPSCR
353C76:  BLT.W           loc_354834
353C7A:  VCVT.F64.F32    D18, S2
353C7E:  VADD.F64        D18, D18, D17
353C82:  VCVT.F32.F64    S2, D18
353C86:  VCMPE.F32       S6, S2
353C8A:  VMRS            APSR_nzcv, FPSCR
353C8E:  ITTTT LE
353C90:  VCVTLE.F64.F32  D18, S0
353C94:  VADDLE.F64      D17, D18, D17
353C98:  VCVTLE.F32.F64  S0, D17
353C9C:  VCMPELE.F32     S6, S0
353CA0:  IT LE
353CA2:  VMRSLE          APSR_nzcv, FPSCR
353CA6:  BGT.W           loc_354834
353CAA:  VCVT.F64.F32    D17, S3
353CAE:  VADD.F64        D16, D17, D16
353CB2:  VCVT.F32.F64    S0, D16
353CB6:  VCMPE.F32       S6, S0
353CBA:  VMRS            APSR_nzcv, FPSCR
353CBE:  BLT.W           loc_354834
353CC2:  VMOV            R5, S6
353CC6:  MOVS            R1, #1
353CC8:  VMOV            R4, S8
353CCC:  B.W             loc_354838
353CD0:  LDR.W           R0, [R11,#0x14]; jumptable 00352FC4 case 1462
353CD4:  MOVS            R4, #0
353CD6:  ADDS            R0, #0x80
353CD8:  STR.W           R0, [R11,#0x14]
353CDC:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
353CE0:  MOV             R0, R11; jumptable 00352FC4 case 1465
353CE2:  MOVS            R1, #2; __int16
353CE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353CE8:  LDR.W           R0, =(ScriptParams_ptr - 0x353CF0)
353CEC:  ADD             R0, PC; ScriptParams_ptr
353CEE:  LDR             R0, [R0]; ScriptParams
353CF0:  LDRD.W          R8, R5, [R0]
353CF4:  MOVS            R0, #off_18; this
353CF6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353CFA:  MOV             R6, R0
353CFC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
353D00:  LDR.W           R0, =(_ZTV16CTaskSimplePause_ptr - 0x353D0E)
353D04:  MOVS            R4, #0
353D06:  STRH            R4, [R6,#0x10]
353D08:  MOV             R1, R8
353D0A:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
353D0C:  STR             R5, [R6,#0x14]
353D0E:  STRD.W          R4, R4, [R6,#8]
353D12:  MOV             R2, R6
353D14:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
353D16:  MOVW            R3, #0x5B9
353D1A:  B.W             loc_35512C
353D1E:  MOV             R0, R11; jumptable 00352FC4 case 1466
353D20:  MOVS            R1, #2; __int16
353D22:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353D26:  LDR.W           R0, =(ScriptParams_ptr - 0x353D2E)
353D2A:  ADD             R0, PC; ScriptParams_ptr
353D2C:  LDR             R0, [R0]; ScriptParams
353D2E:  LDRD.W          R8, R6, [R0]
353D32:  ADDS            R0, R6, #1
353D34:  BEQ.W           loc_354EA4
353D38:  MOVS            R0, #dword_20; this
353D3A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353D3E:  MOV             R9, R0
353D40:  ADDS            R0, R6, #2
353D42:  BNE.W           loc_355174
353D46:  MOV.W           R0, #0x41000000
353D4A:  MOV             R1, R5
353D4C:  STR             R0, [SP,#0x360+var_360]
353D4E:  MOV             R0, R9
353D50:  MOVS            R2, #1
353D52:  B.W             loc_355180
353D56:  MOV             R0, R11; jumptable 00352FC4 case 1467
353D58:  MOVS            R1, #3; __int16
353D5A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353D5E:  LDR.W           R0, =(ScriptParams_ptr - 0x353D66)
353D62:  ADD             R0, PC; ScriptParams_ptr
353D64:  LDR             R0, [R0]; ScriptParams
353D66:  LDRD.W          R8, R6, [R0]
353D6A:  LDR.W           R9, [R0,#(dword_81A910 - 0x81A908)]
353D6E:  MOVS            R0, #off_18; this
353D70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353D74:  MOV             R1, R6; int
353D76:  MOV             R2, R9; int
353D78:  MOV             R5, R0
353D7A:  BLX             j__ZN24CTaskComplexFallAndGetUpC2Eii; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int,int)
353D7E:  MOV             R0, R11
353D80:  MOV             R1, R8
353D82:  MOV             R2, R5
353D84:  MOVW            R3, #0x5BB
353D88:  B.W             loc_355226
353D8C:  MOV             R0, R11; jumptable 00352FC4 case 1468
353D8E:  MOVS            R1, #2; __int16
353D90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353D94:  LDR.W           R0, =(ScriptParams_ptr - 0x353D9C)
353D98:  ADD             R0, PC; ScriptParams_ptr
353D9A:  LDR             R0, [R0]; ScriptParams
353D9C:  LDRD.W          R8, R5, [R0]
353DA0:  MOVS            R0, #dword_14; this
353DA2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353DA6:  MOVS            R1, #0; int
353DA8:  MOV             R6, R0
353DAA:  MOVS            R4, #0
353DAC:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
353DB0:  CMP             R5, #0
353DB2:  MOV             R0, R11; this
353DB4:  IT NE
353DB6:  MOVNE           R5, #1
353DB8:  MOV             R1, R8; int
353DBA:  MOV             R2, R6; CTask *
353DBC:  MOVW            R3, #0x5BC; int
353DC0:  STRB            R5, [R6,#0x10]
353DC2:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
353DC6:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
353DCA:  MOV             R0, R11; jumptable 00352FC4 case 1469
353DCC:  MOVS            R1, #2; __int16
353DCE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353DD2:  LDR.W           R0, =(ScriptParams_ptr - 0x353DDA)
353DD6:  ADD             R0, PC; ScriptParams_ptr
353DD8:  LDR             R0, [R0]; ScriptParams
353DDA:  LDRD.W          R8, R6, [R0]
353DDE:  MOVS            R0, #dword_1C; this
353DE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353DE4:  MOV             R1, R6; int
353DE6:  MOV             R5, R0
353DE8:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
353DEC:  MOV             R0, R11
353DEE:  MOV             R1, R8
353DF0:  MOV             R2, R5
353DF2:  MOVW            R3, #0x5BD
353DF6:  B.W             loc_355226
353DFA:  MOV             R0, R11; jumptable 00352FC4 case 1470
353DFC:  MOVS            R1, #1; __int16
353DFE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353E02:  LDR.W           R0, =(ScriptParams_ptr - 0x353E0A)
353E06:  ADD             R0, PC; ScriptParams_ptr
353E08:  LDR             R0, [R0]; ScriptParams
353E0A:  LDR             R5, [R0]
353E0C:  MOVS            R0, #word_28; this
353E0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353E12:  MOV             R6, R0
353E14:  MOVS            R4, #0
353E16:  MOV.W           R0, #0x40800000
353E1A:  MOVS            R1, #0; int
353E1C:  STRD.W          R0, R4, [SP,#0x360+var_360]; float
353E20:  MOV             R0, R6; int
353E22:  MOVS            R2, #0; int
353E24:  MOVS            R3, #0xF; int
353E26:  STRD.W          R4, R4, [SP,#0x360+var_358]; int
353E2A:  STRD.W          R4, R4, [SP,#0x360+var_350]; int
353E2E:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
353E32:  MOV             R0, R11; this
353E34:  MOV             R1, R5; int
353E36:  MOV             R2, R6; CTask *
353E38:  MOVW            R3, #0x5BE; int
353E3C:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
353E40:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
353E44:  MOV             R0, R11; jumptable 00352FC4 case 1471
353E46:  MOVS            R1, #3; __int16
353E48:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353E4C:  LDR.W           R0, =(ScriptParams_ptr - 0x353E54)
353E50:  ADD             R0, PC; ScriptParams_ptr
353E52:  LDR             R1, [R0]; ScriptParams
353E54:  LDM.W           R1, {R0,R2,R5}
353E58:  ADDS            R1, R5, #1
353E5A:  BEQ.W           loc_354F0E
353E5E:  ADDS            R1, R5, #2
353E60:  IT EQ
353E62:  MOVEQ.W         R5, #0xFFFFFFFF
353E66:  B.W             loc_354F12
353E6A:  MOV             R0, R11; jumptable 00352FC4 case 1472
353E6C:  MOVS            R1, #3; __int16
353E6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353E72:  LDR             R0, =(ScriptParams_ptr - 0x353E78)
353E74:  ADD             R0, PC; ScriptParams_ptr
353E76:  LDR             R1, [R0]; ScriptParams
353E78:  LDR             R0, [R1]
353E7A:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
353E7C:  ADDS            R2, R1, #1
353E7E:  BEQ.W           loc_354FC4
353E82:  ADDS            R2, R1, #2
353E84:  IT NE
353E86:  MOVNE           R5, R1
353E88:  B.W             loc_354FC8
353E8C:  MOV             R0, R11; jumptable 00352FC4 case 1473
353E8E:  MOVS            R1, #2; __int16
353E90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
353E94:  LDR             R0, =(ScriptParams_ptr - 0x353E9A)
353E96:  ADD             R0, PC; ScriptParams_ptr
353E98:  LDR             R0, [R0]; ScriptParams
353E9A:  LDRD.W          R5, R6, [R0]
353E9E:  MOVS            R0, #dword_1C; this
353EA0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
353EA4:  MOV             R4, R0
353EA6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
353EAA:  LDR             R0, =(_ZTV14CTaskSimpleSay_ptr - 0x353EB2)
353EAC:  STR             R6, [R4,#8]
353EAE:  ADD             R0, PC; _ZTV14CTaskSimpleSay_ptr
353EB0:  LDR             R0, [R0]; `vtable for'CTaskSimpleSay ...
353EB2:  ADDS            R0, #8
353EB4:  STR             R0, [R4]
353EB6:  MOV.W           R0, #0xFFFFFFFF
353EBA:  STR             R0, [R4,#0xC]
353EBC:  MOVS            R0, #0
353EBE:  STRH            R0, [R4,#0x18]
353EC0:  STRD.W          R0, R0, [R4,#0x10]
353EC4:  ADDS            R0, R5, #1
353EC6:  BEQ.W           loc_354EBE
353ECA:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x353ED6)
353ECC:  LSRS            R1, R5, #8
353ECE:  MOVW            R2, #0x7CC
353ED2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
353ED4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
353ED6:  LDR             R0, [R0]; CPools::ms_pPedPool
353ED8:  LDR             R0, [R0]
353EDA:  MLA.W           R0, R1, R2, R0
353EDE:  MOV             R1, R4
353EE0:  MOVS            R2, #2
353EE2:  B               loc_35429A
353EE4:  DCD ScriptParams_ptr - 0x3530A0
353EE8:  DCD _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x3530A2
353EEC:  DCD ScriptParams_ptr - 0x3530CE
353EF0:  DCD _ZN4CHud23bScriptDontDisplayRadarE_ptr - 0x3530D0
353EF4:  DCD ScriptParams_ptr - 0x3530F4
353EF8:  DCD ScriptParams_ptr - 0x353116
353EFC:  DCD _ZN6CWorld7PlayersE_ptr - 0x35313A
353F00:  DCD ScriptParams_ptr - 0x35317A
353F04:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35318E
353F08:  DCD ScriptParams_ptr - 0x3531B8
353F0C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3531CC
353F10:  DCD ScriptParams_ptr - 0x3531FA
353F14:  DCD g_fx_ptr - 0x353282
353F18:  DCD ScriptParams_ptr - 0x353296
353F1C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3532B4
353F20:  DCD ScriptParams_ptr - 0x3532B6
353F24:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x353302
353F28:  DCD _ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x353304
353F2C:  DCD ScriptParams_ptr - 0x35333C
353F30:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35333E
353F34:  DCD ScriptParams_ptr - 0x35336E
353F38:  DCD _ZN12CUserDisplay10OnscnTimerE_ptr - 0x353382
353F3C:  DCD _ZN11CTheScripts9CardStackE_ptr - 0x3533A2
353F41:  DCB 0
353F42:  MOVS            R1, R0
353F44:  MOVS            R2, R0
353F46:  MOVS            R3, R0
353F48:  MOVS            R4, R0
353F4A:  MOVS            R5, R0
353F4C:  MOVS            R6, R0
353F4E:  MOVS            R7, R0
353F50:  MOVS            R0, R2
353F52:  MOVS            R1, R2
353F54:  MOVS            R2, R2
353F56:  MOVS            R3, R2
353F58:  MOVS            R4, R2
353F5A:  MOVS            R5, R2
353F5C:  MOVS            R6, R2
353F5E:  MOVS            R7, R2
353F60:  text "UTF-16LE", 8,9,0xA,0xB
353F68:  MOVS            R4, R1
353F6A:  MOVS            R5, R1
353F6C:  MOVS            R6, R1
353F6E:  MOVS            R7, R1
353F70:  LSLS            R0, R4, #4
353F72:  LSLS            R1, R4, #4
353F74:  LSLS            R2, R4, #4
353F76:  LSLS            R3, R4, #4
353F78:  LSLS            R4, R4, #4
353F7A:  LSLS            R5, R4, #4
353F7C:  LSLS            R6, R4, #4
353F7E:  LSLS            R7, R4, #4
353F80:  MOVS            R0, R3
353F82:  MOVS            R1, R3
353F84:  MOVS            R2, R3
353F86:  MOVS            R3, R3
353F88:  MOVS            R4, R3
353F8A:  MOVS            R5, R3
353F8C:  MOVS            R6, R3
353F8E:  MOVS            R7, R3
353F90:  text "UTF-16LE", " !",0x22,"#",0x24,"%&"
35404E:  LSLS            R7, R7, #1
354050:  LSLS            R0, R0, #2
354052:  LSLS            R1, R0, #2
354054:  LSLS            R2, R0, #2
354056:  LSLS            R3, R0, #2
354058:  LSLS            R4, R0, #2
35405A:  LSLS            R5, R0, #2
35405C:  LSLS            R6, R0, #2
35405E:  LSLS            R7, R0, #2
354060:  LSLS            R0, R1, #2
354062:  LSLS            R1, R1, #2
354064:  LSLS            R2, R1, #2
354066:  LSLS            R3, R1, #2
354068:  LSLS            R4, R1, #2
35406A:  LSLS            R5, R1, #2
35406C:  LSLS            R6, R1, #2
35406E:  LSLS            R7, R1, #2
354070:  LSLS            R0, R2, #2
354072:  LSLS            R1, R2, #2
354074:  LSLS            R2, R2, #2
354076:  LSLS            R3, R2, #2
354078:  LSLS            R4, R2, #2
35407A:  LSLS            R5, R2, #2
35407C:  LSLS            R6, R2, #2
35407E:  LSLS            R7, R2, #2
354080:  LSLS            R0, R3, #4
354082:  LSLS            R1, R3, #4
354084:  LSLS            R2, R3, #4
354086:  LSLS            R3, R3, #4
354088:  LSLS            R4, R3, #4
35408A:  LSLS            R5, R3, #4
35408C:  LSLS            R6, R3, #4
35408E:  LSLS            R7, R3, #4
354090:  LSLS            R0, R4, #3
354092:  LSLS            R1, R4, #3
354094:  LSLS            R2, R4, #3
354096:  LSLS            R3, R4, #3
354098:  LSLS            R4, R4, #3
35409A:  LSLS            R5, R4, #3
35409C:  LSLS            R6, R4, #3
35409E:  LSLS            R7, R4, #3
3540A0:  LSLS            R0, R4, #2
3540A2:  LSLS            R1, R4, #2
3540A4:  LSLS            R2, R4, #2
3540A6:  LSLS            R3, R4, #2
3540A8:  LSLS            R4, R4, #2
3540AA:  LSLS            R5, R4, #2
3540AC:  LSLS            R6, R4, #2
3540AE:  LSLS            R7, R4, #2
3540B0:  LSLS            R0, R3, #2
3540B2:  LSLS            R1, R3, #2
3540B4:  LSLS            R2, R3, #2
3540B6:  LSLS            R3, R3, #2
3540B8:  LSLS            R4, R3, #2
3540BA:  LSLS            R5, R3, #2
3540BC:  LSLS            R6, R3, #2
3540BE:  LSLS            R7, R3, #2
3540C0:  LSLS            R0, R5, #2
3540C2:  LSLS            R1, R5, #2
3540C4:  LSLS            R2, R5, #2
3540C6:  LSLS            R3, R5, #2
3540C8:  LSLS            R4, R5, #2
3540CA:  LSLS            R5, R5, #2
3540CC:  LSLS            R6, R5, #2
3540CE:  LSLS            R7, R5, #2
3540D0:  LSLS            R0, R6, #2
3540D2:  LSLS            R1, R6, #2
3540D4:  LSLS            R2, R6, #2
3540D6:  LSLS            R3, R6, #2
3540D8:  LSLS            R4, R6, #2
3540DA:  LSLS            R5, R6, #2
3540DC:  LSLS            R6, R6, #2
3540DE:  LSLS            R7, R6, #2
3540E0:  LSLS            R0, R7, #2
3540E2:  LSLS            R1, R7, #2
3540E4:  LSLS            R2, R7, #2
3540E6:  LSLS            R3, R7, #2
3540E8:  LSLS            R4, R7, #2
3540EA:  LSLS            R5, R7, #2
3540EC:  LSLS            R6, R7, #2
3540EE:  LSLS            R7, R7, #2
3540F0:  LSLS            R0, R0, #3
3540F2:  LSLS            R1, R0, #3
3540F4:  LSLS            R2, R0, #3
3540F6:  LSLS            R3, R0, #3
3540F8:  LSLS            R4, R0, #3
3540FA:  LSLS            R5, R0, #3
3540FC:  LSLS            R6, R0, #3
3540FE:  LSLS            R7, R0, #3
354100:  LSLS            R0, R1, #3
354102:  LSLS            R1, R1, #3
354104:  LSLS            R2, R1, #3
354106:  LSLS            R3, R1, #3
354108:  LSLS            R4, R1, #3
35410A:  LSLS            R5, R1, #3
35410C:  LSLS            R6, R1, #3
35410E:  LSLS            R7, R1, #3
354110:  LSLS            R0, R2, #3
354112:  LSLS            R1, R2, #3
354114:  LSLS            R2, R2, #3
354116:  LSLS            R3, R2, #3
354118:  LSLS            R4, R2, #3
35411A:  LSLS            R5, R2, #3
35411C:  LSLS            R6, R2, #3
35411E:  LSLS            R7, R2, #3
354120:  LSLS            R0, R3, #3
354122:  LSLS            R1, R3, #3
354124:  LSLS            R2, R3, #3
354126:  LSLS            R3, R3, #3
354128:  LSLS            R4, R3, #3
35412A:  LSLS            R5, R3, #3
35412C:  LSLS            R6, R3, #3
35412E:  LSLS            R7, R3, #3
354130:  LSLS            R0, R5, #4
354132:  LSLS            R1, R5, #4
354134:  LSLS            R2, R5, #4
354136:  LSLS            R3, R5, #4
354138:  LSLS            R4, R5, #4
35413A:  LSLS            R5, R5, #4
35413C:  LSLS            R6, R5, #4
35413E:  LSLS            R7, R5, #4
354140:  LSLS            R0, R5, #3
354142:  LSLS            R1, R5, #3
354144:  LSLS            R2, R5, #3
354146:  LSLS            R3, R5, #3
354148:  LSLS            R4, R5, #3
35414A:  LSLS            R5, R5, #3
35414C:  LSLS            R6, R5, #3
35414E:  LSLS            R7, R5, #3
354150:  LSLS            R0, R6, #3
354152:  LSLS            R1, R6, #3
354154:  LSLS            R2, R6, #3
354156:  LSLS            R3, R6, #3
354158:  LSLS            R4, R6, #3
35415A:  LSLS            R5, R6, #3
35415C:  LSLS            R6, R6, #3
35415E:  LSLS            R7, R6, #3
354160:  LSLS            R0, R7, #3
354162:  LSLS            R1, R7, #3
354164:  LSLS            R2, R7, #3
354166:  LSLS            R3, R7, #3
354168:  LSLS            R4, R7, #3
35416A:  LSLS            R5, R7, #3
35416C:  LSLS            R6, R7, #3
35416E:  LSLS            R7, R7, #3
354170:  LSLS            R0, R0, #4
354172:  LSLS            R1, R0, #4
354174:  LSLS            R2, R0, #4
354176:  LSLS            R3, R0, #4
354178:  LSLS            R4, R0, #4
35417A:  LSLS            R5, R0, #4
35417C:  LSLS            R6, R0, #4
35417E:  LSLS            R7, R0, #4
354180:  LSLS            R0, R1, #4
354182:  LSLS            R1, R1, #4
354184:  LSLS            R2, R1, #4
354186:  LSLS            R3, R1, #4
354188:  LSLS            R4, R1, #4
35418A:  LSLS            R5, R1, #4
35418C:  LSLS            R6, R1, #4
35418E:  LSLS            R7, R1, #4
354190:  LSLS            R0, R2, #4
354192:  LSLS            R1, R2, #4
354194:  LSLS            R2, R2, #4
354196:  LSLS            R3, R2, #4
354198:  LSLS            R4, R2, #4
35419A:  LSLS            R5, R2, #4
35419C:  LSLS            R6, R2, #4
35419E:  LSLS            R7, R2, #4
3541A0:  DCD ScriptParams_ptr - 0x3535EA
3541A4:  ALIGN 0x10
3541B0:  LSLS            R0, R6, #4
3541B2:  LSLS            R1, R6, #4
3541B4:  LSLS            R2, R6, #4
3541B6:  LSLS            R3, R6, #4
3541B8:  LSLS            R4, R6, #4
3541BA:  LSLS            R5, R6, #4
3541BC:  LSLS            R6, R6, #4
3541BE:  LSLS            R7, R6, #4
3541C0:  DCD _ZN11CTheScripts9CardStackE_ptr - 0x35362E
3541C4:  DCD ScriptParams_ptr - 0x353638
3541C8:  DCD _ZN11CTheScripts17CardStackPositionE_ptr - 0x3536B4
3541CC:  DCD _ZN11CTheScripts17CardStackPositionE_ptr - 0x3536C6
3541D0:  DCD _ZN11CTheScripts9CardStackE_ptr - 0x3536C8
3541D4:  DCD ScriptParams_ptr - 0x3536F6
3541D8:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3536FC
3541DC:  DCD TheCamera_ptr - 0x353736
3541E0:  DCD ScriptParams_ptr - 0x35374C
3541E4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x353760
3541E8:  DCD ScriptParams_ptr - 0x35378A
3541EC:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x35379E
3541F0:  DCD ScriptParams_ptr - 0x3537D0
3541F4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3537D2
3541F8:  DCD ScriptParams_ptr - 0x353804
3541FC:  DCD ScriptParams_ptr - 0x353884
354200:  DCD ScriptParams_ptr - 0x353964
354204:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x353978
354208:  DCD ScriptParams_ptr - 0x3539A2
35420C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3539B6
354210:  DCD ScriptParams_ptr - 0x353A14
354214:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x353A16
354218:  DCD ScriptParams_ptr - 0x353ADC
35421C:  DCD ScriptParams_ptr - 0x353CF0
354220:  DCD _ZTV16CTaskSimplePause_ptr - 0x353D0E
354224:  DCD ScriptParams_ptr - 0x353D2E
354228:  DCD ScriptParams_ptr - 0x353D66
35422C:  DCD ScriptParams_ptr - 0x353D9C
354230:  DCD ScriptParams_ptr - 0x353DDA
354234:  DCD ScriptParams_ptr - 0x353E0A
354238:  DCD ScriptParams_ptr - 0x353E54
35423C:  DCD ScriptParams_ptr - 0x353E78
354240:  DCD ScriptParams_ptr - 0x353E9A
354244:  DCD _ZTV14CTaskSimpleSay_ptr - 0x353EB2
354248:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x353ED6
35424C:  DCD ScriptParams_ptr - 0x35426C
354250:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35428E
354254:  DCD ScriptParams_ptr - 0x3542B8
354258:  DCD aCower - 0x3542D0
35425C:  MOV             R0, R11; jumptable 00352FC4 case 1474
35425E:  MOVS            R1, #1; __int16
354260:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354264:  LDR.W           R0, =(ScriptParams_ptr - 0x35426C)
354268:  ADD             R0, PC; ScriptParams_ptr
35426A:  LDR             R0, [R0]; ScriptParams
35426C:  LDR             R5, [R0]
35426E:  MOVS            R0, #word_10; this
354270:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354274:  MOV             R4, R0
354276:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
35427A:  ADDS            R0, R5, #1
35427C:  BEQ.W           loc_354EDE
354280:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35428E)
354284:  LSRS            R1, R5, #8
354286:  MOVW            R2, #0x7CC
35428A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35428C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35428E:  LDR             R0, [R0]; CPools::ms_pPedPool
354290:  LDR             R0, [R0]
354292:  MLA.W           R0, R1, R2, R0
354296:  MOV             R1, R4; CTask *
354298:  MOVS            R2, #4; int
35429A:  LDR.W           R0, [R0,#0x440]
35429E:  ADDS            R0, #4; this
3542A0:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
3542A4:  B.W             loc_35522A
3542A8:  MOV             R0, R11; jumptable 00352FC4 case 1475
3542AA:  MOVS            R1, #1; __int16
3542AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3542B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3542B8)
3542B4:  ADD             R0, PC; ScriptParams_ptr
3542B6:  LDR             R0, [R0]; ScriptParams
3542B8:  LDR             R5, [R0]
3542BA:  MOVS            R0, #dword_20; this
3542BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3542C0:  MOV             R6, R0
3542C2:  LDR.W           R0, =(aCower - 0x3542D0); "Cower"
3542C6:  MOV.W           R1, #0x19C
3542CA:  MOVS            R4, #0
3542CC:  ADD             R0, PC; "Cower"
3542CE:  MOVS            R2, #0x8F
3542D0:  MOV.W           R3, #0x40800000
3542D4:  STRD.W          R1, R0, [SP,#0x360+var_360]
3542D8:  MOV             R0, R6
3542DA:  MOVS            R1, #0
3542DC:  STR             R4, [SP,#0x360+var_358]
3542DE:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
3542E2:  LDR.W           R0, =(_ZTV16CTaskSimpleCower_ptr - 0x3542F2)
3542E6:  MOV             R1, R5
3542E8:  MOV             R2, R6
3542EA:  MOVW            R3, #0x5C3
3542EE:  ADD             R0, PC; _ZTV16CTaskSimpleCower_ptr
3542F0:  B.W             loc_35512A
3542F4:  MOV             R0, R11; jumptable 00352FC4 case 1476
3542F6:  MOVS            R1, #2; __int16
3542F8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3542FC:  LDR.W           R0, =(ScriptParams_ptr - 0x354304)
354300:  ADD             R0, PC; ScriptParams_ptr
354302:  LDR             R0, [R0]; ScriptParams
354304:  LDRD.W          R8, R0, [R0]
354308:  ADDS            R1, R0, #1; unsigned int
35430A:  BEQ.W           loc_3550A8
35430E:  ADDS            R1, R0, #2
354310:  IT NE
354312:  MOVNE           R5, R0
354314:  B.W             loc_3550AC
354318:  MOV             R0, R11; jumptable 00352FC4 case 1477
35431A:  MOVS            R1, #2; __int16
35431C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354320:  LDR.W           R0, =(ScriptParams_ptr - 0x35432C)
354324:  MOVW            R8, #0xFFFF
354328:  ADD             R0, PC; ScriptParams_ptr
35432A:  LDR             R0, [R0]; ScriptParams
35432C:  LDRD.W          R5, R4, [R0]
354330:  ADDS            R0, R4, #2
354332:  MOV.W           R0, #word_28; this
354336:  BNE.W           loc_354E20
35433A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35433E:  MOV             R6, R0
354340:  SXTH.W          R3, R8
354344:  MOVS            R1, #0
354346:  MOVS            R2, #0
354348:  B.W             loc_3551C4
35434C:  MOV             R0, R11; jumptable 00352FC4 case 1479
35434E:  MOVS            R1, #1; __int16
354350:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354354:  LDR.W           R0, =(ScriptParams_ptr - 0x35435C)
354358:  ADD             R0, PC; ScriptParams_ptr
35435A:  LDR             R0, [R0]; ScriptParams
35435C:  LDR             R5, [R0]
35435E:  MOVS            R0, #dword_20; this
354360:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354364:  MOV             R6, R0
354366:  LDR.W           R0, =(aUseatm - 0x354374); "UseAtm"
35436A:  MOV.W           R1, #0x1A4
35436E:  MOVS            R4, #0
354370:  ADD             R0, PC; "UseAtm"
354372:  MOVS            R2, #0x97
354374:  MOV.W           R3, #0x40800000
354378:  STRD.W          R1, R0, [SP,#0x360+var_360]
35437C:  MOV             R0, R6
35437E:  MOVS            R1, #0
354380:  STR             R4, [SP,#0x360+var_358]
354382:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
354386:  LDR.W           R0, =(_ZTV17CTaskSimpleUseAtm_ptr - 0x354396)
35438A:  MOV             R1, R5
35438C:  MOV             R2, R6
35438E:  MOVW            R3, #0x5C7
354392:  ADD             R0, PC; _ZTV17CTaskSimpleUseAtm_ptr
354394:  B.W             loc_35512A
354398:  MOV             R0, R11; jumptable 00352FC4 case 1480
35439A:  MOVS            R1, #1; __int16
35439C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3543A0:  LDR.W           R0, =(ScriptParams_ptr - 0x3543A8)
3543A4:  ADD             R0, PC; ScriptParams_ptr
3543A6:  LDR             R0, [R0]; ScriptParams
3543A8:  LDR             R5, [R0]
3543AA:  MOVS            R0, #dword_20; this
3543AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3543B0:  MOV             R6, R0
3543B2:  LDR.W           R0, =(aScratchhead - 0x3543C0); "ScratchHead"
3543B6:  MOVW            R1, #0x1A5
3543BA:  MOVS            R4, #0
3543BC:  ADD             R0, PC; "ScratchHead"
3543BE:  MOVS            R2, #0x87
3543C0:  MOV.W           R3, #0x40800000
3543C4:  STRD.W          R1, R0, [SP,#0x360+var_360]
3543C8:  MOV             R0, R6
3543CA:  MOVS            R1, #0
3543CC:  STR             R4, [SP,#0x360+var_358]
3543CE:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
3543D2:  LDR.W           R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x3543E2)
3543D6:  MOV             R1, R5
3543D8:  MOV             R2, R6
3543DA:  MOV.W           R3, #0x5C8
3543DE:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
3543E0:  B.W             loc_35512A
3543E4:  MOV             R0, R11; jumptable 00352FC4 case 1481
3543E6:  MOVS            R1, #2; __int16
3543E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3543EC:  LDR.W           R0, =(ScriptParams_ptr - 0x3543F4)
3543F0:  ADD             R0, PC; ScriptParams_ptr
3543F2:  LDR             R0, [R0]; ScriptParams
3543F4:  LDRD.W          R8, R0, [R0]
3543F8:  ADDS            R1, R0, #1; unsigned int
3543FA:  BEQ.W           loc_3550EA
3543FE:  ADDS            R1, R0, #2
354400:  IT NE
354402:  MOVNE           R5, R0
354404:  B.W             loc_3550EE
354408:  MOV             R0, R11; jumptable 00352FC4 case 1482
35440A:  MOVS            R1, #4; __int16
35440C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354410:  LDR.W           R0, =(ScriptParams_ptr - 0x354418)
354414:  ADD             R0, PC; ScriptParams_ptr
354416:  LDR             R1, [R0]; ScriptParams
354418:  LDRD.W          R8, R0, [R1]
35441C:  CMP             R0, #0
35441E:  LDRD.W          R5, R1, [R1,#(dword_81A910 - 0x81A908)]; CVehicle *
354422:  BLT.W           loc_354D82
354426:  LDR.W           R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x354432)
35442A:  UXTB            R6, R0
35442C:  LSRS            R0, R0, #8
35442E:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
354430:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
354432:  LDR             R2, [R2]; CPools::ms_pVehiclePool
354434:  LDR             R3, [R2,#4]
354436:  LDRB            R3, [R3,R0]
354438:  CMP             R3, R6
35443A:  BNE.W           loc_354D82
35443E:  MOVW            R3, #0xA2C
354442:  LDR             R2, [R2]
354444:  MLA.W           R9, R0, R3, R2
354448:  ADDS            R0, R1, #1
35444A:  BNE.W           loc_354D8C
35444E:  MOV.W           R10, #0
354452:  ADDS            R0, R5, #2
354454:  BEQ.W           loc_354D9A
354458:  MOVS            R0, #word_2C; this
35445A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35445E:  MOV             R6, R0
354460:  ADDS            R0, R5, #1
354462:  BEQ.W           loc_3551D4
354466:  MOVS            R0, #1
354468:  MOV             R1, R9
35446A:  STR             R0, [SP,#0x360+var_360]
35446C:  MOV             R0, R6
35446E:  MOV             R2, R10
354470:  MOV             R3, R5
354472:  B.W             loc_3551E6
354476:  MOV             R0, R11; jumptable 00352FC4 case 1483
354478:  MOVS            R1, #3; __int16
35447A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35447E:  LDR.W           R0, =(ScriptParams_ptr - 0x354486)
354482:  ADD             R0, PC; ScriptParams_ptr
354484:  LDR             R1, [R0]; ScriptParams ; unsigned int
354486:  LDRD.W          R8, R0, [R1]
35448A:  CMP             R0, #0
35448C:  LDR             R6, [R1,#(dword_81A910 - 0x81A908)]
35448E:  BLT.W           loc_354BB2
354492:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35449E)
354496:  UXTB            R3, R0
354498:  LSRS            R0, R0, #8
35449A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35449C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35449E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3544A0:  LDR             R2, [R1,#4]
3544A2:  LDRB            R2, [R2,R0]
3544A4:  CMP             R2, R3
3544A6:  BNE.W           loc_354BB2
3544AA:  MOVW            R2, #0xA2C
3544AE:  LDR             R1, [R1]; unsigned int
3544B0:  MLA.W           R9, R0, R2, R1
3544B4:  ADDS            R0, R6, #2
3544B6:  BEQ.W           loc_354BBC
3544BA:  MOVS            R0, #dword_24; this
3544BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3544C0:  MOV             R5, R0
3544C2:  ADDS            R0, R6, #1
3544C4:  BEQ.W           loc_355192
3544C8:  MOV             R0, R5
3544CA:  MOV             R1, R9
3544CC:  MOV             R2, R6
3544CE:  B.W             loc_35519E
3544D2:  MOV             R0, R11; jumptable 00352FC4 case 1485
3544D4:  MOVS            R1, #2; __int16
3544D6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3544DA:  LDR.W           R0, =(ScriptParams_ptr - 0x3544E4)
3544DE:  MOVS            R4, #0
3544E0:  ADD             R0, PC; ScriptParams_ptr
3544E2:  LDR             R0, [R0]; ScriptParams
3544E4:  LDRD.W          R8, R0, [R0]
3544E8:  CMP             R0, #0
3544EA:  BLT.W           loc_354DB2
3544EE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3544FA)
3544F2:  UXTB            R3, R0
3544F4:  LSRS            R0, R0, #8
3544F6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3544F8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3544FA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3544FC:  LDR             R2, [R1,#4]
3544FE:  LDRB            R2, [R2,R0]
354500:  CMP             R2, R3
354502:  BNE.W           loc_354DB2
354506:  MOVW            R2, #0xA2C
35450A:  LDR             R1, [R1]
35450C:  MLA.W           R6, R0, R2, R1
354510:  B.W             loc_354DB4
354514:  MOV             R0, R11; jumptable 00352FC4 case 1487
354516:  MOVS            R1, #5; __int16
354518:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35451C:  LDR.W           R0, =(ScriptParams_ptr - 0x354526)
354520:  MOVS            R4, #0
354522:  ADD             R0, PC; ScriptParams_ptr
354524:  LDR             R0, [R0]; ScriptParams
354526:  LDRD.W          R6, R0, [R0]
35452A:  CMP             R0, #0
35452C:  STR             R6, [SP,#0x360+var_334]
35452E:  BLT.W           loc_354DDE
354532:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35453E)
354536:  UXTB            R3, R0
354538:  LSRS            R0, R0, #8
35453A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35453C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35453E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
354540:  LDR             R2, [R1,#4]
354542:  LDRB            R2, [R2,R0]
354544:  CMP             R2, R3
354546:  BNE.W           loc_354DDE
35454A:  MOVW            R2, #0xA2C
35454E:  LDR             R1, [R1]
354550:  MLA.W           R9, R0, R2, R1
354554:  B.W             loc_354DE2
354558:  MOV             R0, R11; jumptable 00352FC4 case 1489
35455A:  MOVS            R1, #9; __int16
35455C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354560:  LDR.W           R0, =(ScriptParams_ptr - 0x354568)
354564:  ADD             R0, PC; ScriptParams_ptr
354566:  LDR             R0, [R0]; ScriptParams
354568:  LDRD.W          R8, R0, [R0]
35456C:  CMP             R0, #0
35456E:  BLT.W           loc_354BCC
354572:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35457E)
354576:  UXTB            R3, R0
354578:  LSRS            R0, R0, #8
35457A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35457C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35457E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
354580:  LDR             R2, [R1,#4]
354582:  LDRB            R2, [R2,R0]
354584:  CMP             R2, R3
354586:  BNE.W           loc_354BCC
35458A:  MOVW            R2, #0xA2C
35458E:  LDR             R1, [R1]
354590:  MLA.W           R9, R0, R2, R1
354594:  B               loc_354BD0
354596:  MOV             R0, R11; jumptable 00352FC4 case 1490
354598:  MOVS            R1, #4; __int16
35459A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35459E:  LDR.W           R0, =(ScriptParams_ptr - 0x3545A6)
3545A2:  ADD             R0, PC; ScriptParams_ptr
3545A4:  LDR             R0, [R0]; ScriptParams
3545A6:  LDR.W           R9, [R0,#(dword_81A914 - 0x81A908)]
3545AA:  VLDR            S16, [R0,#8]
3545AE:  LDRD.W          R8, R0, [R0]
3545B2:  CMP             R0, #0
3545B4:  BLT.W           loc_354C2E
3545B8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3545C4)
3545BC:  UXTB            R3, R0
3545BE:  LSRS            R0, R0, #8
3545C0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3545C2:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3545C4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3545C6:  LDR             R2, [R1,#4]
3545C8:  LDRB            R2, [R2,R0]
3545CA:  CMP             R2, R3
3545CC:  BNE.W           loc_354C2E
3545D0:  MOVW            R2, #0xA2C
3545D4:  LDR             R1, [R1]
3545D6:  MLA.W           R5, R0, R2, R1
3545DA:  B               loc_354C30
3545DC:  MOV             R0, R11; jumptable 00352FC4 case 1491
3545DE:  MOVS            R1, #6; __int16
3545E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3545E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3545F0)
3545E8:  LDR.W           R1, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x3545F2)
3545EC:  ADD             R0, PC; ScriptParams_ptr
3545EE:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
3545F0:  LDR             R0, [R0]; ScriptParams
3545F2:  LDRD.W          R8, R2, [R0]
3545F6:  LDRD.W          R3, R6, [R0,#(dword_81A910 - 0x81A908)]
3545FA:  LDRD.W          R5, R4, [R0,#(dword_81A918 - 0x81A908)]
3545FE:  LDR             R0, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
354600:  LDR.W           R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x354608)
354604:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
354606:  VLDR            S18, [R0]
35460A:  ADD             R0, SP, #0x360+var_320
35460C:  LDR             R1, [R1]; unsigned int
35460E:  STM             R0!, {R2,R3,R6}
354610:  ADDS            R0, R4, #2
354612:  VLDR            S16, [R1]
354616:  BNE.W           loc_354E34
35461A:  MOVS            R0, #word_28; this
35461C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354620:  VMOV            R3, S18; float
354624:  MOV             R6, R0
354626:  MOVS            R0, #1
354628:  MOVS            R1, #0
35462A:  ADD             R2, SP, #0x360+var_320; CVector *
35462C:  STRD.W          R1, R0, [SP,#0x360+var_35C]; bool
354630:  MOV             R0, R6; this
354632:  MOV             R1, R5; int
354634:  VSTR            S16, [SP,#0x360+var_360]
354638:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
35463C:  B.W             loc_35521C
354640:  MOV             R0, R11; jumptable 00352FC4 case 1492
354642:  MOVS            R1, #2; __int16
354644:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354648:  LDR.W           R0, =(ScriptParams_ptr - 0x354654)
35464C:  VLDR            S0, =3.1416
354650:  ADD             R0, PC; ScriptParams_ptr
354652:  LDR             R0, [R0]; ScriptParams
354654:  VLDR            S2, [R0,#4]
354658:  LDR             R5, [R0]
35465A:  MOVS            R0, #off_18; this
35465C:  VMUL.F32        S0, S2, S0
354660:  VLDR            S2, =180.0
354664:  VDIV.F32        S16, S0, S2
354668:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35466C:  VMOV            R1, S16; float
354670:  LDR.W           R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x35467E)
354674:  MOV             R6, R0
354676:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x354680)
35467A:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
35467C:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
35467E:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
354680:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
354682:  LDR             R3, [R3]; float
354684:  LDR             R2, [R0]; float
354686:  MOV             R0, R6; this
354688:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
35468C:  MOV             R0, R11
35468E:  MOV             R1, R5
354690:  MOV             R2, R6
354692:  MOVW            R3, #0x5D4
354696:  B.W             loc_355226
35469A:  LDR.W           R0, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x3546A4); jumptable 00352FC4 case 1494
35469E:  MOVS            R4, #0
3546A0:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
3546A2:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_pointRoute ...
3546A4:  STR             R4, [R0]; CTaskComplexFollowPointRoute::ms_pointRoute
3546A6:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3546AA:  MOV             R0, R11; jumptable 00352FC4 case 1495
3546AC:  MOVS            R1, #3; __int16
3546AE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3546B2:  LDR.W           R0, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x3546BA)
3546B6:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
3546B8:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_pointRoute ...
3546BA:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_pointRoute
3546BC:  CMP             R0, #7
3546BE:  BGT.W           loc_35522A
3546C2:  LDR.W           R1, =(ScriptParams_ptr - 0x3546D4)
3546C6:  ADD.W           R3, R0, R0,LSL#1
3546CA:  LDR.W           R2, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x3546D8)
3546CE:  ADDS            R0, #1
3546D0:  ADD             R1, PC; ScriptParams_ptr
3546D2:  MOVS            R4, #0
3546D4:  ADD             R2, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
3546D6:  LDR             R1, [R1]; ScriptParams
3546D8:  LDR             R2, [R2]; CTaskComplexFollowPointRoute::ms_pointRoute ...
3546DA:  LDRD.W          R6, R5, [R1]
3546DE:  ADD.W           R3, R2, R3,LSL#2
3546E2:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
3546E4:  STRD.W          R6, R5, [R3,#4]
3546E8:  STR             R1, [R3,#0xC]
3546EA:  STR             R0, [R2]; CTaskComplexFollowPointRoute::ms_pointRoute
3546EC:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3546F0:  MOV             R0, R11; jumptable 00352FC4 case 1496
3546F2:  MOVS            R1, #3; __int16
3546F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3546F8:  LDR.W           R0, =(ScriptParams_ptr - 0x354700)
3546FC:  ADD             R0, PC; ScriptParams_ptr
3546FE:  LDR             R0, [R0]; ScriptParams
354700:  LDRD.W          R8, R6, [R0]
354704:  LDR.W           R9, [R0,#(dword_81A910 - 0x81A908)]
354708:  MOVS            R0, #off_3C; this
35470A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35470E:  LDR.W           R1, =(_ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr - 0x35471E)
354712:  MOV             R5, R0
354714:  LDR.W           R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x354724)
354718:  MOVS            R3, #1
35471A:  ADD             R1, PC; _ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr
35471C:  LDR.W           R2, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x354728)
354720:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
354722:  MOVS            R4, #0
354724:  ADD             R2, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
354726:  LDR             R1, [R1]; CTaskComplexFollowPointRoute::ms_fSlowDownDistance ...
354728:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
35472A:  LDR             R2, [R2]; CPointRoute *
35472C:  VLDR            S2, [R1]
354730:  MOV             R1, R6; int
354732:  VLDR            S0, [R0]
354736:  MOV             R0, R5; this
354738:  STRD.W          R4, R3, [SP,#0x360+var_358]; bool
35473C:  STR             R3, [SP,#0x360+var_350]; bool
35473E:  MOV             R3, R9; int
354740:  VSTR            S0, [SP,#0x360+var_360]
354744:  VSTR            S2, [SP,#0x360+var_35C]
354748:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
35474C:  MOV             R0, R11; this
35474E:  MOV             R1, R8; int
354750:  MOV             R2, R5; CTask *
354752:  MOV.W           R3, #0x5D8; int
354756:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35475A:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
35475E:  MOV             R0, R11; jumptable 00352FC4 case 1497
354760:  MOVS            R1, #4; __int16
354762:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
354766:  LDR.W           R0, =(ScriptParams_ptr - 0x35476E)
35476A:  ADD             R0, PC; ScriptParams_ptr
35476C:  LDR             R1, [R0]; ScriptParams ; unsigned int
35476E:  LDRD.W          R8, R0, [R1]
354772:  CMP             R0, #0
354774:  LDRD.W          R4, R9, [R1,#(dword_81A910 - 0x81A908)]
354778:  BLT.W           loc_354C50
35477C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x354788)
354780:  UXTB            R3, R0
354782:  LSRS            R0, R0, #8
354784:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
354786:  LDR             R1, [R1]; CPools::ms_pPedPool ...
354788:  LDR             R1, [R1]; CPools::ms_pPedPool
35478A:  LDR             R2, [R1,#4]
35478C:  LDRB            R2, [R2,R0]
35478E:  CMP             R2, R3
354790:  BNE.W           loc_354C50
354794:  MOVW            R2, #0x7CC
354798:  LDR             R1, [R1]
35479A:  MLA.W           R6, R0, R2, R1
35479E:  ADDS            R0, R4, #2
3547A0:  BNE.W           loc_354C58
3547A4:  MOV.W           R4, #0xFFFFFFFF
3547A8:  B               loc_354C60
3547AA:  MOV             R0, R11; jumptable 00352FC4 case 1498
3547AC:  MOVS            R1, #6; __int16
3547AE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3547B2:  LDR.W           R0, =(ScriptParams_ptr - 0x3547BA)
3547B6:  ADD             R0, PC; ScriptParams_ptr
3547B8:  LDR             R0, [R0]; ScriptParams
3547BA:  ADD.W           R6, R0, #8
3547BE:  LDRD.W          R8, R1, [R0]; unsigned int
3547C2:  LDM             R6, {R2,R3,R6}
3547C4:  LDR             R4, [R0,#(dword_81A91C - 0x81A908)]
3547C6:  ADD             R0, SP, #0x360+var_320
3547C8:  STM             R0!, {R1-R3}
3547CA:  MOVS            R0, #off_3C; this
3547CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3547D0:  ADD             R1, SP, #0x360+var_320; CVector *
3547D2:  MOVS            R2, #1; bool
3547D4:  MOV             R3, R6; float
3547D6:  MOV             R5, R0
3547D8:  STR             R4, [SP,#0x360+var_360]; int
3547DA:  BLX             j__ZN21CTaskComplexFleePointC2ERK7CVectorbfi; CTaskComplexFleePoint::CTaskComplexFleePoint(CVector const&,bool,float,int)
3547DE:  MOV             R0, R11
3547E0:  MOV             R1, R8
3547E2:  MOV             R2, R5
3547E4:  MOVW            R3, #0x5DA
3547E8:  B.W             loc_355226
3547EC:  MOV             R0, R11; jumptable 00352FC4 case 1499
3547EE:  MOVS            R1, #4; __int16
3547F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3547F4:  LDR.W           R0, =(ScriptParams_ptr - 0x3547FC)
3547F8:  ADD             R0, PC; ScriptParams_ptr
3547FA:  LDR             R0, [R0]; ScriptParams
3547FC:  VLDR            S0, [R0,#8]
354800:  VCVT.F32.S32    S16, S0
354804:  LDR             R4, [R0,#(dword_81A914 - 0x81A908)]
354806:  LDRD.W          R8, R0, [R0]
35480A:  CMP             R0, #0
35480C:  BLT.W           loc_354CDC
354810:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35481C)
354814:  UXTB            R3, R0
354816:  LSRS            R0, R0, #8
354818:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35481A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35481C:  LDR             R1, [R1]; CPools::ms_pPedPool
35481E:  LDR             R2, [R1,#4]
354820:  LDRB            R2, [R2,R0]
354822:  CMP             R2, R3
354824:  BNE.W           loc_354CDC
354828:  MOVW            R2, #0x7CC
35482C:  LDR             R1, [R1]
35482E:  MLA.W           R6, R0, R2, R1
354832:  B               loc_354CDE
354834:  MOVS            R1, #0; unsigned __int8
354836:  MOV             R5, R4
354838:  MOV             R0, R11; this
35483A:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
35483E:  LDR.W           R0, =(ScriptParams_ptr - 0x354848)
354842:  MOVS            R1, #2
354844:  ADD             R0, PC; ScriptParams_ptr
354846:  LDR             R0, [R0]; ScriptParams
354848:  STRD.W          R5, R4, [R0]
35484C:  MOV             R0, R11
35484E:  B               loc_354E9E
354850:  MOVS            R5, #0
354852:  LDR.W           R0, =(ScriptParams_ptr - 0x35485C)
354856:  LDR             R2, [R5,#0x44]
354858:  ADD             R0, PC; ScriptParams_ptr
35485A:  B               loc_354D28
35485C:  MOVS            R4, #0
35485E:  LDR.W           R0, =(ScriptParams_ptr - 0x35486C)
354862:  ADD             R2, SP, #0x360+var_A8
354864:  VLDR            S0, =50.0
354868:  ADD             R0, PC; ScriptParams_ptr
35486A:  VLDR            D16, [R4,#0x54]
35486E:  LDR             R0, [R0]; ScriptParams
354870:  VLDR            S2, [R0,#4]
354874:  VLDR            S4, [R0,#8]
354878:  VLDR            S6, [R0,#0xC]
35487C:  VDIV.F32        S2, S2, S0
354880:  LDR             R0, [R4,#0x5C]
354882:  VDIV.F32        S4, S4, S0
354886:  VDIV.F32        S0, S6, S0
35488A:  VSTR            D16, [SP,#0x360+var_68]
35488E:  STR             R0, [SP,#0x360+var_60]
354890:  ADD             R0, SP, #0x360+var_320; CMatrix *
354892:  VSTR            S2, [SP,#0x360+var_A8]
354896:  VSTR            S4, [SP,#0x360+var_A8+4]
35489A:  VSTR            S0, [SP,#0x360+var_A0]
35489E:  LDR             R1, [R4,#0x14]; CVector *
3548A0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3548A4:  VLDR            D16, [SP,#0x360+var_320]
3548A8:  ADD.W           R5, R4, #0x54 ; 'T'
3548AC:  LDR             R0, [SP,#0x360+var_318]
3548AE:  STR             R0, [SP,#0x360+var_A0]
3548B0:  VSTR            D16, [SP,#0x360+var_A8]
3548B4:  VLDR            S0, [SP,#0x360+var_68]
3548B8:  VLDR            S6, [SP,#0x360+var_A8]
3548BC:  VLDR            S2, [SP,#0x360+var_68+4]
3548C0:  VLDR            S8, [SP,#0x360+var_A8+4]
3548C4:  VADD.F32        S0, S6, S0
3548C8:  VLDR            S4, [SP,#0x360+var_60]
3548CC:  VLDR            S10, [SP,#0x360+var_A0]
3548D0:  VADD.F32        S2, S8, S2
3548D4:  VADD.F32        S4, S10, S4
3548D8:  VSTR            S0, [SP,#0x360+var_68]
3548DC:  VSTR            S2, [SP,#0x360+var_68+4]
3548E0:  VSTR            S4, [SP,#0x360+var_60]
3548E4:  LDRB            R0, [R4,#0x1C]
3548E6:  LSLS            R0, R0, #0x1D
3548E8:  BPL             loc_3548FA
3548EA:  LDR             R0, [R4]
3548EC:  MOVS            R1, #0
3548EE:  LDR             R2, [R0,#0x14]
3548F0:  MOV             R0, R4
3548F2:  BLX             R2
3548F4:  MOV             R0, R4; this
3548F6:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
3548FA:  VLDR            D16, [SP,#0x360+var_68]
3548FE:  MOVS            R4, #0
354900:  LDR             R0, [SP,#0x360+var_60]
354902:  STR             R0, [R5,#8]
354904:  VSTR            D16, [R5]
354908:  B.W             loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
35490C:  MOVS            R4, #0
35490E:  LDR.W           R0, =(ScriptParams_ptr - 0x35491C)
354912:  ADD             R2, SP, #0x360+var_A8
354914:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x35491E)
354918:  ADD             R0, PC; ScriptParams_ptr
35491A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
35491C:  LDR             R0, [R0]; ScriptParams
35491E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
354920:  VLDR            S0, [R0,#4]
354924:  VLDR            S6, [R1]
354928:  VLDR            S2, [R0,#8]
35492C:  VLDR            S4, [R0,#0xC]
354930:  VMUL.F32        S0, S0, S6
354934:  VMUL.F32        S2, S2, S6
354938:  ADD             R0, SP, #0x360+var_320; CMatrix *
35493A:  VMUL.F32        S4, S4, S6
35493E:  VSTR            S0, [SP,#0x360+var_A8]
354942:  VSTR            S2, [SP,#0x360+var_A8+4]
354946:  VSTR            S4, [SP,#0x360+var_A0]
35494A:  LDR             R1, [R4,#0x14]; CVector *
35494C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
354950:  VLDR            D16, [SP,#0x360+var_320]
354954:  LDR             R0, [SP,#0x360+var_318]
354956:  STR             R0, [SP,#0x360+var_A0]
354958:  VSTR            D16, [SP,#0x360+var_A8]
35495C:  LDRB            R0, [R4,#0x1C]
35495E:  LSLS            R0, R0, #0x1D
354960:  BPL             loc_354972
354962:  LDR             R0, [R4]
354964:  MOVS            R1, #0
354966:  LDR             R2, [R0,#0x14]
354968:  MOV             R0, R4
35496A:  BLX             R2
35496C:  MOV             R0, R4; this
35496E:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
354972:  VLDR            S0, [SP,#0x360+var_A8]
354976:  VLDR            S6, =50.0
35497A:  VLDR            S2, [SP,#0x360+var_A8+4]
35497E:  VLDR            S4, [SP,#0x360+var_A0]
354982:  VDIV.F32        S0, S0, S6
354986:  VDIV.F32        S4, S4, S6
35498A:  VDIV.F32        S2, S2, S6
35498E:  VSTR            S0, [R4,#0x54]
354992:  VSTR            S2, [R4,#0x58]
354996:  VSTR            S4, [R4,#0x5C]
35499A:  B.W             loc_35522A
35499E:  MOVS            R0, #0
3549A0:  VLDR            D16, [R0,#0x54]
3549A4:  LDR             R1, [R0,#0x5C]
3549A6:  STR             R1, [SP,#0x360+var_60]
3549A8:  ADD             R1, SP, #0x360+var_68; CMatrix *
3549AA:  VSTR            D16, [SP,#0x360+var_68]
3549AE:  LDR             R2, [R0,#0x14]
3549B0:  ADD             R0, SP, #0x360+var_320; CVector *
3549B2:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
3549B6:  VLDR            D16, [SP,#0x360+var_320]
3549BA:  LDR             R0, [SP,#0x360+var_318]
3549BC:  STR             R0, [SP,#0x360+var_60]
3549BE:  VSTR            D16, [SP,#0x360+var_68]
3549C2:  VLDR            S0, =50.0
3549C6:  VLDR            S2, [SP,#0x360+var_68]
3549CA:  VLDR            S4, [SP,#0x360+var_68+4]
3549CE:  LDR.W           R0, =(ScriptParams_ptr - 0x3549E2)
3549D2:  VMUL.F32        S2, S2, S0
3549D6:  VMUL.F32        S4, S4, S0
3549DA:  VLDR            S6, [SP,#0x360+var_60]
3549DE:  ADD             R0, PC; ScriptParams_ptr
3549E0:  VMUL.F32        S0, S6, S0
3549E4:  LDR             R0, [R0]; ScriptParams
3549E6:  VSTR            S2, [R0]
3549EA:  VSTR            S4, [R0,#4]
3549EE:  VSTR            S0, [R0,#8]
3549F2:  MOV             R0, R11
3549F4:  MOVS            R1, #3
3549F6:  B               loc_354E9E
3549F8:  DCFS 3.1416
3549FC:  DCFS 180.0
354A00:  DCFS 50.0
354A04:  DCFS 0.02
354A08:  DCFS -100.0
354A0C:  DCD _ZTV16CTaskSimpleCower_ptr - 0x3542F2
354A10:  DCD ScriptParams_ptr - 0x3543A8
354A14:  MOVS            R6, #0
354A16:  LDR.W           R0, =(ScriptParams_ptr - 0x354A24)
354A1A:  MOV             R5, R6
354A1C:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x354A26)
354A20:  ADD             R0, PC; ScriptParams_ptr
354A22:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
354A24:  LDR             R0, [R0]; ScriptParams
354A26:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
354A28:  VLDR            S0, [R0,#4]
354A2C:  VLDR            S6, [R1]
354A30:  VLDR            S2, [R0,#8]
354A34:  VLDR            S4, [R0,#0xC]
354A38:  VMUL.F32        S0, S6, S0
354A3C:  VMUL.F32        S2, S6, S2
354A40:  VMUL.F32        S4, S6, S4
354A44:  VLDR            S6, =0.02
354A48:  VMUL.F32        S0, S0, S6
354A4C:  VMUL.F32        S2, S2, S6
354A50:  VMUL.F32        S4, S4, S6
354A54:  VSTR            S0, [SP,#0x360+var_58]
354A58:  VSTR            S2, [SP,#0x360+var_58+4]
354A5C:  VSTR            S4, [SP,#0x360+var_50]
354A60:  LDRB.W          R0, [R5,#0x1C]!
354A64:  TST.W           R0, #4
354A68:  BNE.W           loc_35522A
354A6C:  LDR             R0, [R6,#0x50]
354A6E:  VLDR            D16, [R6,#0x48]
354A72:  STR             R0, [SP,#0x360+var_328]
354A74:  ADD             R0, SP, #0x360+var_330; this
354A76:  VSTR            D16, [SP,#0x360+var_330]
354A7A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
354A7E:  VMOV.F32        S0, #1.0
354A82:  VLDR            D16, [SP,#0x360+var_330]
354A86:  LDR             R0, [SP,#0x360+var_328]
354A88:  MOVS            R4, #0
354A8A:  STR             R0, [SP,#0x360+var_90]
354A8C:  VSTR            D16, [SP,#0x360+var_98]
354A90:  VLDR            S2, [SP,#0x360+var_90]
354A94:  VCMP.F32        S2, S0
354A98:  VMRS            APSR_nzcv, FPSCR
354A9C:  BEQ.W           loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
354AA0:  ADD.W           R8, SP, #0x360+var_88
354AA4:  MOV.W           R0, #0x3F800000
354AA8:  STRD.W          R4, R4, [SP,#0x360+var_88]
354AAC:  ADD             R1, SP, #0x360+var_330; CVector *
354AAE:  STR             R0, [SP,#0x360+var_80]
354AB0:  ADD             R0, SP, #0x360+var_320; CVector *
354AB2:  MOV             R2, R8
354AB4:  ADD.W           R9, R6, #0x48 ; 'H'
354AB8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
354ABC:  ADD             R4, SP, #0x360+var_78
354ABE:  LDR             R0, [SP,#0x360+var_318]
354AC0:  VLDR            D16, [SP,#0x360+var_320]
354AC4:  STR             R0, [SP,#0x360+var_70]
354AC6:  MOV             R0, R4; this
354AC8:  VSTR            D16, [SP,#0x360+var_78]
354ACC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
354AD0:  ADD             R0, SP, #0x360+var_320; CVector *
354AD2:  ADD             R2, SP, #0x360+var_98
354AD4:  MOV             R1, R4; CVector *
354AD6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
354ADA:  LDR             R0, [SP,#0x360+var_318]
354ADC:  VLDR            D16, [SP,#0x360+var_320]
354AE0:  STR             R0, [SP,#0x360+var_80]
354AE2:  MOV             R0, R8; this
354AE4:  VSTR            D16, [SP,#0x360+var_88]
354AE8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
354AEC:  VLDR            S0, [SP,#0x360+var_70]
354AF0:  VLDR            S2, [SP,#0x360+var_58]
354AF4:  VLDR            S6, [SP,#0x360+var_78]
354AF8:  VLDR            S8, [SP,#0x360+var_78+4]
354AFC:  VMUL.F32        S0, S2, S0
354B00:  VMUL.F32        S6, S2, S6
354B04:  VLDR            D16, [R9]
354B08:  VMUL.F32        S2, S2, S8
354B0C:  LDR.W           R0, [R9,#8]
354B10:  STR             R0, [SP,#0x360+var_328]
354B12:  VSTR            D16, [SP,#0x360+var_330]
354B16:  VLDR            S8, [SP,#0x360+var_328]
354B1A:  VLDR            S1, [SP,#0x360+var_330]
354B1E:  VLDR            S3, [SP,#0x360+var_330+4]
354B22:  VADD.F32        S0, S0, S8
354B26:  VLDR            S4, [SP,#0x360+var_58+4]
354B2A:  VADD.F32        S6, S6, S1
354B2E:  VLDR            S10, [SP,#0x360+var_90]
354B32:  VADD.F32        S2, S2, S3
354B36:  VLDR            S12, [SP,#0x360+var_98]
354B3A:  VLDR            S14, [SP,#0x360+var_98+4]
354B3E:  VMUL.F32        S10, S4, S10
354B42:  VMUL.F32        S8, S4, S12
354B46:  VLDR            S12, [SP,#0x360+var_80]
354B4A:  VMUL.F32        S4, S4, S14
354B4E:  VLDR            S14, [SP,#0x360+var_50]
354B52:  VLDR            S1, [SP,#0x360+var_88]
354B56:  VLDR            S3, [SP,#0x360+var_88+4]
354B5A:  VMUL.F32        S12, S14, S12
354B5E:  VADD.F32        S0, S10, S0
354B62:  VADD.F32        S6, S8, S6
354B66:  VMUL.F32        S10, S14, S1
354B6A:  VADD.F32        S2, S4, S2
354B6E:  VMUL.F32        S8, S14, S3
354B72:  VADD.F32        S0, S12, S0
354B76:  VADD.F32        S4, S10, S6
354B7A:  VADD.F32        S2, S8, S2
354B7E:  VSTR            S0, [SP,#0x360+var_328]
354B82:  VSTR            S4, [SP,#0x360+var_330]
354B86:  VSTR            S2, [SP,#0x360+var_330+4]
354B8A:  LDRB            R0, [R5]
354B8C:  LSLS            R0, R0, #0x1D
354B8E:  BPL             loc_354BA0
354B90:  LDR             R0, [R6]
354B92:  MOVS            R1, #0
354B94:  LDR             R2, [R0,#0x14]
354B96:  MOV             R0, R6
354B98:  BLX             R2
354B9A:  MOV             R0, R6; this
354B9C:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
354BA0:  VLDR            D16, [SP,#0x360+var_330]
354BA4:  MOVS            R4, #0
354BA6:  LDR             R0, [SP,#0x360+var_328]
354BA8:  STR.W           R0, [R9,#8]
354BAC:  VSTR            D16, [R9]
354BB0:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
354BB2:  MOV.W           R9, #0
354BB6:  ADDS            R0, R6, #2
354BB8:  BNE.W           loc_3544BA
354BBC:  MOVS            R0, #dword_24; this
354BBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354BC2:  MOV             R5, R0
354BC4:  MOV             R1, R9
354BC6:  MOV.W           R2, #0xFFFFFFFF
354BCA:  B               loc_35519E
354BCC:  MOV.W           R9, #0
354BD0:  LDR.W           R0, =(ScriptParams_ptr - 0x354BDC)
354BD4:  VLDR            S2, =-100.0
354BD8:  ADD             R0, PC; ScriptParams_ptr
354BDA:  LDR             R0, [R0]; ScriptParams
354BDC:  VLDR            S0, [R0,#0x10]
354BE0:  VLDR            S16, [R0,#8]
354BE4:  VCMPE.F32       S0, S2
354BE8:  VLDR            S18, [R0,#0xC]
354BEC:  VMRS            APSR_nzcv, FPSCR
354BF0:  BGT             loc_354C02
354BF2:  VMOV            R0, S16; this
354BF6:  VMOV            R1, S18; float
354BFA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
354BFE:  VMOV            S0, R0
354C02:  LDR.W           R0, =(ScriptParams_ptr - 0x354C0A)
354C06:  ADD             R0, PC; ScriptParams_ptr
354C08:  LDR             R0, [R0]; ScriptParams
354C0A:  LDRD.W          R10, R6, [R0,#(dword_81A920 - 0x81A908)]
354C0E:  CMP             R6, #0
354C10:  VSTR            S18, [SP,#0x360+var_320+4]
354C14:  VSTR            S16, [SP,#0x360+var_320]
354C18:  VLDR            S16, [R0,#0x14]
354C1C:  VSTR            S0, [SP,#0x360+var_318]
354C20:  BEQ.W           loc_355138
354C24:  CMP             R6, #1
354C26:  IT EQ
354C28:  MOVWEQ          R6, #0x19F
354C2C:  B               loc_35513C
354C2E:  MOVS            R5, #0
354C30:  MOVS            R0, #dword_24; this
354C32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354C36:  VMOV            R3, S16; float
354C3A:  MOV             R1, R5; CVehicle *
354C3C:  MOV             R2, R9; int
354C3E:  MOV             R6, R0
354C40:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
354C44:  MOV             R0, R11
354C46:  MOV             R1, R8
354C48:  MOV             R2, R6
354C4A:  MOVW            R3, #0x5D2
354C4E:  B               loc_355226
354C50:  MOVS            R6, #0
354C52:  ADDS            R0, R4, #2
354C54:  BEQ.W           loc_3547A4
354C58:  ADDS            R0, R4, #1
354C5A:  IT EQ
354C5C:  MOVWEQ          R4, #0xC350
354C60:  MOVS            R0, #dword_4C; this
354C62:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354C66:  MOV             R5, R0
354C68:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
354C6C:  LDR.W           R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x354C7E)
354C70:  MOV.W           R2, #0x3E8
354C74:  LDR.W           R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x354C82)
354C78:  MOVS            R3, #0
354C7A:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
354C7C:  STR             R4, [R5,#0x10]
354C7E:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
354C80:  STRD.W          R2, R9, [R5,#0x14]
354C84:  MOV.W           R2, #0x40000000
354C88:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
354C8A:  STR             R2, [R5,#0x1C]
354C8C:  CMP             R6, #0
354C8E:  STRD.W          R3, R2, [R5,#0x20]
354C92:  MOV.W           R2, #6
354C96:  STRH            R3, [R5,#0x30]
354C98:  ADD.W           R0, R0, #8
354C9C:  STRH            R3, [R5,#0x3C]
354C9E:  STRD.W          R3, R3, [R5,#0x28]
354CA2:  STRD.W          R3, R3, [R5,#0x34]
354CA6:  STR             R2, [R5,#0x44]
354CA8:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
354CAA:  LDRB.W          R2, [R5,#0x48]
354CAE:  STR             R0, [R5]
354CB0:  ADD.W           R0, R1, #8
354CB4:  STR             R0, [R5,#0x40]
354CB6:  AND.W           R0, R2, #0xF0
354CBA:  MOV             R1, R5
354CBC:  ORR.W           R0, R0, #3
354CC0:  STRB.W          R0, [R5,#0x48]
354CC4:  STR.W           R6, [R1,#0xC]!; CEntity **
354CC8:  ITT NE
354CCA:  MOVNE           R0, R6; this
354CCC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
354CD0:  MOV             R0, R11
354CD2:  MOV             R1, R8
354CD4:  MOV             R2, R5
354CD6:  MOVW            R3, #0x5D9
354CDA:  B               loc_355226
354CDC:  MOVS            R6, #0
354CDE:  MOVS            R0, #off_3C; this
354CE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354CE4:  VMOV            R3, S16; float
354CE8:  LDR.W           R1, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x354CF6)
354CEC:  MOV             R5, R0
354CEE:  LDR.W           R0, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x354CFA)
354CF2:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
354CF4:  MOVS            R2, #1; bool
354CF6:  ADD             R0, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
354CF8:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
354CFA:  LDR             R0, [R0]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
354CFC:  VLDR            S0, [R0]
354D00:  LDR             R0, [R1]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
354D02:  MOV             R1, R6; CEntity *
354D04:  STRD.W          R4, R0, [SP,#0x360+var_360]; int
354D08:  MOV             R0, R5; this
354D0A:  VSTR            S0, [SP,#0x360+var_358]
354D0E:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
354D12:  MOV             R0, R11
354D14:  MOV             R1, R8
354D16:  MOV             R2, R5
354D18:  MOVW            R3, #0x5DB
354D1C:  B               loc_355226
354D1E:  MOVS            R5, #0
354D20:  LDR.W           R0, =(ScriptParams_ptr - 0x354D2A)
354D24:  LDR             R2, [R5,#0x44]
354D26:  ADD             R0, PC; ScriptParams_ptr
354D28:  LDR             R0, [R0]; ScriptParams
354D2A:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
354D2C:  CBZ             R0, loc_354D54
354D2E:  BIC.W           R0, R2, #0x4000
354D32:  STR             R0, [R5,#0x44]
354D34:  LDRB.W          R0, [R11,#0xE6]
354D38:  CMP             R0, #0
354D3A:  BEQ.W           loc_35522A
354D3E:  MOV             R0, R5; this
354D40:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
354D44:  LDR             R0, [R5,#0x1C]
354D46:  ORR.W           R0, R0, #0x40000
354D4A:  STR             R0, [R5,#0x1C]
354D4C:  MOV             R0, R5; this
354D4E:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
354D52:  B               loc_35522A
354D54:  MOV             R0, R5
354D56:  ORR.W           R2, R2, #0x4000
354D5A:  LDR.W           R1, [R0,#0x1C]!
354D5E:  TST.W           R1, #0x40000
354D62:  STR             R2, [R0,#0x28]
354D64:  BEQ.W           loc_35522A
354D68:  LDR             R2, [R0,#4]
354D6A:  TST.W           R1, #4
354D6E:  BIC.W           R3, R1, #0x40000
354D72:  STRD.W          R3, R2, [R0]
354D76:  BNE.W           loc_35522A
354D7A:  MOV             R0, R5; this
354D7C:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
354D80:  B               loc_35522A
354D82:  MOV.W           R9, #0
354D86:  ADDS            R0, R1, #1
354D88:  BEQ.W           loc_35444E
354D8C:  MOV             R0, R9; this
354D8E:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
354D92:  MOV             R10, R0
354D94:  ADDS            R0, R5, #2
354D96:  BNE.W           loc_354458
354D9A:  MOVS            R0, #word_2C; this
354D9C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354DA0:  MOV             R6, R0
354DA2:  MOVS            R0, #1
354DA4:  STR             R0, [SP,#0x360+var_360]
354DA6:  MOV             R0, R6
354DA8:  MOV             R1, R9
354DAA:  MOV             R2, R10
354DAC:  MOV.W           R3, #0xFFFFFFFF
354DB0:  B               loc_3551E6
354DB2:  MOVS            R6, #0
354DB4:  MOVS            R0, #dword_34; this
354DB6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354DBA:  MOV             R5, R0
354DBC:  MOVS            R0, #1
354DBE:  STRD.W          R0, R4, [SP,#0x360+var_360]; bool
354DC2:  MOV             R0, R5; this
354DC4:  MOV             R1, R6; CVehicle *
354DC6:  MOVS            R2, #0; int
354DC8:  MOVS            R3, #0; int
354DCA:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
354DCE:  MOV             R0, R11; this
354DD0:  MOV             R1, R8; int
354DD2:  MOV             R2, R5; CTask *
354DD4:  MOVW            R3, #0x5CD; int
354DD8:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
354DDC:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
354DDE:  MOV.W           R9, #0
354DE2:  LDR.W           R0, =(ScriptParams_ptr - 0x354DEA)
354DE6:  ADD             R0, PC; ScriptParams_ptr
354DE8:  LDR             R0, [R0]; ScriptParams
354DEA:  LDRD.W          R10, R6, [R0,#(dword_81A910 - 0x81A908)]
354DEE:  LDR.W           R8, [R0,#(dword_81A918 - 0x81A908)]
354DF2:  MOVS            R0, #word_28; this
354DF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354DF8:  ADD             R2, SP, #0x360+var_320; CVector *
354DFA:  MOV             R1, R9; CVehicle *
354DFC:  MOVS            R3, #0; int
354DFE:  STRD.W          R10, R6, [SP,#0x360+var_320]
354E02:  STR.W           R8, [SP,#0x360+var_318]
354E06:  MOV             R5, R0
354E08:  STRD.W          R4, R4, [SP,#0x360+var_360]; int
354E0C:  BLX             j__ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib; CTaskComplexLeaveCarAndFlee::CTaskComplexLeaveCarAndFlee(CVehicle *,CVector const&,int,int,bool)
354E10:  LDR             R1, [SP,#0x360+var_334]; int
354E12:  MOV             R0, R11; this
354E14:  MOV             R2, R5; CTask *
354E16:  MOVW            R3, #0x5CF; int
354E1A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
354E1E:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
354E20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354E24:  MOV             R6, R0
354E26:  ADDS            R0, R4, #1
354E28:  BEQ.W           loc_3551B4
354E2C:  UXTH            R2, R4
354E2E:  SXTH.W          R3, R8
354E32:  B               loc_3551C0
354E34:  MOVS            R0, #dword_38; this
354E36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354E3A:  VMOV            R3, S18; float
354E3E:  MOV             R6, R0
354E40:  ADDS            R0, R4, #1
354E42:  BEQ.W           loc_355204
354E46:  STR             R4, [SP,#0x360+var_35C]
354E48:  VSTR            S16, [SP,#0x360+var_360]
354E4C:  B               loc_355212
354E4E:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x354E5C)
354E52:  MOV             R1, R5; unsigned int
354E54:  MOVS            R2, #0; unsigned __int8
354E56:  MOVS            R4, #0
354E58:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
354E5A:  LDR             R0, [R0]; this
354E5C:  BLX             j__ZN14COnscreenTimer33SetCounterFlashWhenFirstDisplayedEjh; COnscreenTimer::SetCounterFlashWhenFirstDisplayed(uint,uchar)
354E60:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
354E62:  LDR.W           R0, =(_ZN11CTheScripts9CardStackE_ptr - 0x354E6E)
354E66:  LDR.W           R1, =(_ZN11CTheScripts17CardStackPositionE_ptr - 0x354E70)
354E6A:  ADD             R0, PC; _ZN11CTheScripts9CardStackE_ptr
354E6C:  ADD             R1, PC; _ZN11CTheScripts17CardStackPositionE_ptr
354E6E:  LDR             R0, [R0]; CTheScripts::CardStack ...
354E70:  LDR             R2, [R1]; CTheScripts::CardStackPosition ...
354E72:  MOVS            R1, #0
354E74:  LDRH            R0, [R0]; CTheScripts::CardStack
354E76:  STRH            R1, [R2]; CTheScripts::CardStackPosition
354E78:  LDR.W           R2, =(_ZN11CTheScripts17CardStackPositionE_ptr - 0x354E88)
354E7C:  ADDS            R1, #1
354E7E:  LDR.W           R3, =(ScriptParams_ptr - 0x354E8C)
354E82:  SXTH            R0, R0
354E84:  ADD             R2, PC; _ZN11CTheScripts17CardStackPositionE_ptr
354E86:  UXTH            R6, R1
354E88:  ADD             R3, PC; ScriptParams_ptr
354E8A:  CMP.W           R6, #0x138
354E8E:  LDR             R2, [R2]; CTheScripts::CardStackPosition ...
354E90:  IT EQ
354E92:  MOVEQ           R1, #0
354E94:  LDR             R3, [R3]; ScriptParams
354E96:  STRH            R1, [R2]; CTheScripts::CardStackPosition
354E98:  STR             R0, [R3]
354E9A:  MOV             R0, R11; this
354E9C:  MOVS            R1, #1; __int16
354E9E:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
354EA2:  B               loc_35522A
354EA4:  MOVS            R0, #dword_20; this
354EA6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354EAA:  MOV             R9, R0
354EAC:  LDR.W           R0, =(_ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr - 0x354EB8)
354EB0:  MOV.W           R1, #0x41000000
354EB4:  ADD             R0, PC; _ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr
354EB6:  STR             R1, [SP,#0x360+var_360]
354EB8:  LDR             R0, [R0]; CTaskSimpleStandStill::ms_iStandStillTime ...
354EBA:  LDR             R1, [R0]; CTaskSimpleStandStill::ms_iStandStillTime
354EBC:  B               loc_35517C
354EBE:  MOVS            R0, #dword_14; this
354EC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354EC4:  MOVS            R1, #1; bool
354EC6:  MOVS            R2, #2; int
354EC8:  MOV             R3, R4; CTask *
354ECA:  MOV             R5, R0
354ECC:  BLX             j__ZN35CTaskSimpleAffectSecondaryBehaviourC2EbiP5CTask; CTaskSimpleAffectSecondaryBehaviour::CTaskSimpleAffectSecondaryBehaviour(bool,int,CTask *)
354ED0:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x354EDC)
354ED4:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x354EDE)
354ED8:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
354EDA:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
354EDC:  B               loc_354EFC
354EDE:  MOVS            R0, #dword_14; this
354EE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354EE4:  MOVS            R1, #1; bool
354EE6:  MOVS            R2, #4; int
354EE8:  MOV             R3, R4; CTask *
354EEA:  MOV             R5, R0
354EEC:  BLX             j__ZN35CTaskSimpleAffectSecondaryBehaviourC2EbiP5CTask; CTaskSimpleAffectSecondaryBehaviour::CTaskSimpleAffectSecondaryBehaviour(bool,int,CTask *)
354EF0:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x354EFC)
354EF4:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x354EFE)
354EF8:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
354EFA:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
354EFC:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
354EFE:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
354F00:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
354F02:  ADD.W           R0, R1, R0,LSL#6; this
354F06:  MOV             R1, R5; CTask *
354F08:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
354F0C:  B               loc_35522A
354F0E:  MOVW            R5, #0x4E20
354F12:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x354F1C)
354F16:  CMP             R2, #0
354F18:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
354F1A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
354F1C:  LDR             R1, [R1]; unsigned int
354F1E:  BLT             loc_354F78
354F20:  LDR             R3, [R1,#4]
354F22:  UXTB            R6, R2
354F24:  LSRS            R2, R2, #8
354F26:  LDRB            R3, [R3,R2]
354F28:  CMP             R3, R6
354F2A:  BNE             loc_354F78
354F2C:  MOVW            R3, #0x7CC
354F30:  LDR             R6, [R1]
354F32:  MLA.W           R8, R2, R3, R6
354F36:  ADDS            R2, R0, #1
354F38:  BNE             loc_354F80
354F3A:  MOVS            R0, #word_30; this
354F3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354F40:  MOV             R6, R0
354F42:  MOVS            R4, #0
354F44:  MOVS            R0, #3
354F46:  MOV.W           R1, #0x3E8
354F4A:  MOV.W           R2, #0x3E800000
354F4E:  MOVS            R3, #1
354F50:  STRD.W          R4, R4, [SP,#0x360+var_360]; int
354F54:  STRD.W          R4, R3, [SP,#0x360+var_358]; int
354F58:  MOVS            R3, #5; int
354F5A:  STRD.W          R2, R1, [SP,#0x360+var_350]; float
354F5E:  MOV             R1, R8; int
354F60:  STR             R0, [SP,#0x360+var_348]; int
354F62:  MOV             R0, R6; int
354F64:  MOV             R2, R5; int
354F66:  BLX             j__ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii; CTaskSimpleTriggerLookAt::CTaskSimpleTriggerLookAt(CEntity *,int,int,RwV3d,uchar,float,int,int)
354F6A:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x354F76)
354F6E:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x354F78)
354F72:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
354F74:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
354F76:  B               loc_355030
354F78:  MOV.W           R8, #0
354F7C:  ADDS            R2, R0, #1
354F7E:  BEQ             loc_354F3A
354F80:  MOVS            R4, #0
354F82:  CMP             R0, #0
354F84:  BLT             loc_354F9E
354F86:  LDR             R2, [R1,#4]
354F88:  UXTB            R3, R0
354F8A:  LSRS            R0, R0, #8
354F8C:  LDRB            R2, [R2,R0]
354F8E:  CMP             R2, R3
354F90:  BNE             loc_354F9E
354F92:  MOVW            R2, #0x7CC
354F96:  LDR             R1, [R1]
354F98:  MLA.W           R2, R0, R2, R1
354F9C:  B               loc_354FA0
354F9E:  MOVS            R2, #0
354FA0:  LDR.W           R12, =(g_ikChainMan_ptr - 0x354FB2)
354FA4:  MOVS            R1, #5
354FA6:  STRD.W          R5, R1, [SP,#0x360+var_360]
354FAA:  ADR.W           R1, aCommandTaskLoo; "COMMAND_TASK_LOOK_AT_CHAR"
354FAE:  ADD             R12, PC; g_ikChainMan_ptr
354FB0:  MOV.W           LR, #1
354FB4:  MOVS            R3, #6
354FB6:  MOV.W           R6, #0x1F4
354FBA:  MOV.W           R0, #0x3E800000
354FBE:  STRD.W          R4, R4, [SP,#0x360+var_358]
354FC2:  B               loc_355094
354FC4:  MOVW            R5, #0x4E20
354FC8:  LDR             R1, =(ScriptParams_ptr - 0x354FCE)
354FCA:  ADD             R1, PC; ScriptParams_ptr
354FCC:  LDR             R1, [R1]; ScriptParams
354FCE:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
354FD0:  CMP             R2, #0
354FD2:  BLT             loc_355042
354FD4:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x354FDE)
354FD6:  UXTB            R6, R2
354FD8:  LSRS            R2, R2, #8
354FDA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
354FDC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
354FDE:  LDR             R1, [R1]; CPools::ms_pVehiclePool
354FE0:  LDR             R3, [R1,#4]
354FE2:  LDRB            R3, [R3,R2]
354FE4:  CMP             R3, R6
354FE6:  BNE             loc_355042
354FE8:  MOVW            R3, #0xA2C
354FEC:  LDR             R1, [R1]
354FEE:  MLA.W           R8, R2, R3, R1
354FF2:  ADDS            R1, R0, #1; unsigned int
354FF4:  BNE             loc_35504A
354FF6:  MOVS            R0, #word_30; this
354FF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
354FFC:  MOV             R6, R0
354FFE:  MOVS            R4, #0
355000:  MOVS            R0, #3
355002:  MOV.W           R1, #0x3E8
355006:  MOV.W           R2, #0x3E800000
35500A:  MOVS            R3, #1
35500C:  STRD.W          R4, R4, [SP,#0x360+var_360]; int
355010:  STRD.W          R4, R3, [SP,#0x360+var_358]; int
355014:  MOV.W           R3, #0xFFFFFFFF; int
355018:  STRD.W          R2, R1, [SP,#0x360+var_350]; float
35501C:  MOV             R1, R8; int
35501E:  STR             R0, [SP,#0x360+var_348]; int
355020:  MOV             R0, R6; int
355022:  MOV             R2, R5; int
355024:  BLX             j__ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii; CTaskSimpleTriggerLookAt::CTaskSimpleTriggerLookAt(CEntity *,int,int,RwV3d,uchar,float,int,int)
355028:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x355030)
35502A:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x355032)
35502C:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
35502E:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
355030:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
355032:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
355034:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
355036:  ADD.W           R0, R1, R0,LSL#6; this
35503A:  MOV             R1, R6; CTask *
35503C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
355040:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
355042:  MOV.W           R8, #0
355046:  ADDS            R1, R0, #1
355048:  BEQ             loc_354FF6
35504A:  MOVS            R4, #0
35504C:  CMP             R0, #0
35504E:  BLT             loc_355070
355050:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35505A)
355052:  UXTB            R3, R0
355054:  LSRS            R0, R0, #8
355056:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
355058:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35505A:  LDR             R1, [R1]; CPools::ms_pPedPool
35505C:  LDR             R2, [R1,#4]
35505E:  LDRB            R2, [R2,R0]
355060:  CMP             R2, R3
355062:  BNE             loc_355070
355064:  MOVW            R2, #0x7CC
355068:  LDR             R1, [R1]
35506A:  MLA.W           R2, R0, R2, R1
35506E:  B               loc_355072
355070:  MOVS            R2, #0; CPed *
355072:  LDR.W           R12, =(g_ikChainMan_ptr - 0x355090)
355076:  MOV.W           R1, #0xFFFFFFFF
35507A:  MOV.W           LR, #1
35507E:  MOVS            R3, #6
355080:  MOV.W           R6, #0x1F4
355084:  MOV.W           R0, #0x3E800000
355088:  STRD.W          R5, R1, [SP,#0x360+var_360]; int
35508C:  ADD             R12, PC; g_ikChainMan_ptr
35508E:  STRD.W          R4, R4, [SP,#0x360+var_358]; int
355092:  ADR             R1, aCommandTaskLoo_0; "COMMAND_TASK_LOOK_AT_VEHICLE"
355094:  STRD.W          R0, R6, [SP,#0x360+var_350]; float
355098:  STRD.W          R3, LR, [SP,#0x360+var_348]; int
35509C:  LDR.W           R0, [R12]; g_ikChainMan ; int
3550A0:  MOV             R3, R8; int
3550A2:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
3550A6:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
3550A8:  MOVW            R5, #0x4E20
3550AC:  MOVS            R0, #dword_34; this
3550AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3550B2:  MOV             R6, R0
3550B4:  LDR             R0, =(aHandsup - 0x3550C0); "HandsUp"
3550B6:  MOVS            R2, #0
3550B8:  MOVW            R1, #0x19D
3550BC:  ADD             R0, PC; "HandsUp"
3550BE:  MOVT            R2, #0xC080
3550C2:  STRD.W          R2, R5, [SP,#0x360+var_360]; float
3550C6:  MOVS            R4, #0
3550C8:  STRD.W          R1, R0, [SP,#0x360+var_358]; int
3550CC:  MOV             R0, R6; int
3550CE:  MOVS            R1, #0; int
3550D0:  MOVS            R2, #0x8E; int
3550D2:  MOV.W           R3, #0x40800000; int
3550D6:  STR             R4, [SP,#0x360+var_350]; int
3550D8:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
3550DC:  LDR             R0, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x3550EA)
3550DE:  MOV             R1, R8
3550E0:  MOV             R2, R6
3550E2:  MOVW            R3, #0x5C4
3550E6:  ADD             R0, PC; _ZTV18CTaskSimpleHandsUp_ptr
3550E8:  B               loc_35512A
3550EA:  MOVW            R5, #0x4E20
3550EE:  MOVS            R0, #dword_34; this
3550F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3550F4:  MOV             R6, R0
3550F6:  LDR             R0, =(aLookabout - 0x355102); "LookAbout"
3550F8:  MOVS            R2, #0
3550FA:  MOV.W           R1, #0x1A6
3550FE:  ADD             R0, PC; "LookAbout"
355100:  MOVT            R2, #0xC080
355104:  STRD.W          R2, R5, [SP,#0x360+var_360]; float
355108:  MOVS            R4, #0
35510A:  STRD.W          R1, R0, [SP,#0x360+var_358]; int
35510E:  MOV             R0, R6; int
355110:  MOVS            R1, #0; int
355112:  MOVS            R2, #9; int
355114:  MOV.W           R3, #0x40800000; int
355118:  STR             R4, [SP,#0x360+var_350]; int
35511A:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
35511E:  LDR             R0, =(_ZTV20CTaskSimpleLookAbout_ptr - 0x35512C)
355120:  MOV             R1, R8; int
355122:  MOV             R2, R6; CTask *
355124:  MOVW            R3, #0x5C9; int
355128:  ADD             R0, PC; _ZTV20CTaskSimpleLookAbout_ptr
35512A:  LDR             R0, [R0]; `vtable for'CTaskSimpleCower
35512C:  ADDS            R0, #8
35512E:  STR             R0, [R6]
355130:  MOV             R0, R11; this
355132:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
355136:  B               loc_35522C; jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
355138:  MOV.W           R6, #0xFFFFFFFF
35513C:  LDR             R0, =(ScriptParams_ptr - 0x355142)
35513E:  ADD             R0, PC; ScriptParams_ptr
355140:  LDR             R0, [R0]; ScriptParams
355142:  LDR             R4, [R0,#(dword_81A928 - 0x81A908)]
355144:  MOVS            R0, #off_3C; this
355146:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35514A:  VMOV            R3, S16; float
35514E:  MOV             R5, R0
355150:  MOVS            R0, #0
355152:  ADD             R2, SP, #0x360+var_320; CVector *
355154:  MOVT            R0, #0xBF80
355158:  STRD.W          R10, R6, [SP,#0x360+var_360]; int
35515C:  STRD.W          R0, R4, [SP,#0x360+var_358]; float
355160:  MOV             R0, R5; this
355162:  MOV             R1, R9; CVehicle *
355164:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
355168:  MOV             R0, R11
35516A:  MOV             R1, R8
35516C:  MOV             R2, R5
35516E:  MOVW            R3, #0x5D1
355172:  B               loc_355226
355174:  MOV.W           R0, #0x41000000
355178:  MOV             R1, R6; int
35517A:  STR             R0, [SP,#0x360+var_360]; float
35517C:  MOV             R0, R9; this
35517E:  MOVS            R2, #0; bool
355180:  MOVS            R3, #0; bool
355182:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
355186:  MOV             R0, R11
355188:  MOV             R1, R8
35518A:  MOV             R2, R9
35518C:  MOVW            R3, #0x5BA
355190:  B               loc_355226
355192:  LDR             R0, =(_ZN33CTaskComplexEnterCarAsDriverTimed8ms_iTimeE_ptr - 0x35519A)
355194:  MOV             R1, R9; CVehicle *
355196:  ADD             R0, PC; _ZN33CTaskComplexEnterCarAsDriverTimed8ms_iTimeE_ptr
355198:  LDR             R0, [R0]; CTaskComplexEnterCarAsDriverTimed::ms_iTime ...
35519A:  LDR             R2, [R0]; int
35519C:  MOV             R0, R5; this
35519E:  BLX             j__ZN33CTaskComplexEnterCarAsDriverTimedC2EP8CVehiclei; CTaskComplexEnterCarAsDriverTimed::CTaskComplexEnterCarAsDriverTimed(CVehicle *,int)
3551A2:  LDR             R0, =(_ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr - 0x3551AE)
3551A4:  MOV             R2, R5
3551A6:  MOVW            R3, #0x5CB
3551AA:  ADD             R0, PC; _ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr
3551AC:  LDR             R0, [R0]; CPedIntelligence::ms_iDesiredMoveState ...
3551AE:  LDR             R1, [R0]; CPedIntelligence::ms_iDesiredMoveState
3551B0:  STR             R1, [R5,#0x14]
3551B2:  B               loc_3551FA
3551B4:  LDR             R0, =(_ZN15CTaskSimpleDuck16ms_nLengthOfDuckE_ptr - 0x3551BE)
3551B6:  SXTH.W          R3, R8; __int16
3551BA:  ADD             R0, PC; _ZN15CTaskSimpleDuck16ms_nLengthOfDuckE_ptr
3551BC:  LDR             R0, [R0]; CTaskSimpleDuck::ms_nLengthOfDuck ...
3551BE:  LDRH            R2, [R0]; unsigned __int16
3551C0:  MOV             R0, R6; this
3551C2:  MOVS            R1, #0; unsigned __int8
3551C4:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
3551C8:  MOV             R0, R11
3551CA:  MOV             R1, R5
3551CC:  MOV             R2, R6
3551CE:  MOVW            R3, #0x5C5
3551D2:  B               loc_355226
3551D4:  LDR             R0, =(_ZN36CTaskComplexEnterCarAsPassengerTimed8ms_iTimeE_ptr - 0x3551E0)
3551D6:  MOVS            R1, #1
3551D8:  STR             R1, [SP,#0x360+var_360]; bool
3551DA:  MOV             R1, R9; CVehicle *
3551DC:  ADD             R0, PC; _ZN36CTaskComplexEnterCarAsPassengerTimed8ms_iTimeE_ptr
3551DE:  MOV             R2, R10; int
3551E0:  LDR             R0, [R0]; CTaskComplexEnterCarAsPassengerTimed::ms_iTime ...
3551E2:  LDR             R3, [R0]; int
3551E4:  MOV             R0, R6; this
3551E6:  BLX             j__ZN36CTaskComplexEnterCarAsPassengerTimedC2EP8CVehicleiib; CTaskComplexEnterCarAsPassengerTimed::CTaskComplexEnterCarAsPassengerTimed(CVehicle *,int,int,bool)
3551EA:  LDR             R0, =(_ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr - 0x3551F6)
3551EC:  MOV             R2, R6
3551EE:  MOVW            R3, #0x5CA
3551F2:  ADD             R0, PC; _ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr
3551F4:  LDR             R0, [R0]; CPedIntelligence::ms_iDesiredMoveState ...
3551F6:  LDR             R1, [R0]; CPedIntelligence::ms_iDesiredMoveState
3551F8:  STR             R1, [R6,#0x1C]
3551FA:  MOVS            R1, #6
3551FC:  STR             R1, [R0]; CPedIntelligence::ms_iDesiredMoveState
3551FE:  MOV             R0, R11
355200:  MOV             R1, R8
355202:  B               loc_355226
355204:  LDR             R0, =(_ZN39CTaskComplexGoToPointAndStandStillTimed8ms_iTimeE_ptr - 0x35520E)
355206:  VSTR            S16, [SP,#0x360+var_360]
35520A:  ADD             R0, PC; _ZN39CTaskComplexGoToPointAndStandStillTimed8ms_iTimeE_ptr
35520C:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStillTimed::ms_iTime ...
35520E:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStillTimed::ms_iTime
355210:  STR             R0, [SP,#0x360+var_35C]; int
355212:  ADD             R2, SP, #0x360+var_320; CVector *
355214:  MOV             R0, R6; this
355216:  MOV             R1, R5; int
355218:  BLX             j__ZN39CTaskComplexGoToPointAndStandStillTimedC2EiRK7CVectorffi; CTaskComplexGoToPointAndStandStillTimed::CTaskComplexGoToPointAndStandStillTimed(int,CVector const&,float,float,int)
35521C:  MOV             R0, R11; this
35521E:  MOV             R1, R8; int
355220:  MOV             R2, R6; CTask *
355222:  MOVW            R3, #0x5D3; int
355226:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35522A:  MOVS            R4, #0
35522C:  LDR             R0, =(__stack_chk_guard_ptr - 0x355234); jumptable 00352FC4 cases 1403,1405,1407,1413,1421,1422,1425,1426,1435,1457-1459,1461,1463,1464,1478,1484,1486,1488,1493
35522E:  LDR             R1, [SP,#0x360+var_34]
355230:  ADD             R0, PC; __stack_chk_guard_ptr
355232:  LDR             R0, [R0]; __stack_chk_guard
355234:  LDR             R0, [R0]
355236:  SUBS            R0, R0, R1
355238:  ITTTT EQ
35523A:  SXTBEQ          R0, R4
35523C:  ADDEQ.W         SP, SP, #0x330
355240:  VPOPEQ          {D8-D9}
355244:  ADDEQ           SP, SP, #4
355246:  ITT EQ
355248:  POPEQ.W         {R8-R11}
35524C:  POPEQ           {R4-R7,PC}
35524E:  BLX             __stack_chk_fail
