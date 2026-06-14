; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1100To1199Ei
; Address            : 0x34F254 - 0x3505FC
; =========================================================

34F254:  PUSH            {R4-R7,LR}
34F256:  ADD             R7, SP, #0xC
34F258:  PUSH.W          {R8-R10}
34F25C:  VPUSH           {D8-D10}
34F260:  SUB             SP, SP, #0x68; float
34F262:  MOV             R8, R0
34F264:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x34F26C)
34F268:  ADD             R0, PC; __stack_chk_guard_ptr
34F26A:  LDR             R0, [R0]; __stack_chk_guard
34F26C:  LDR             R0, [R0]
34F26E:  STR             R0, [SP,#0x98+var_34]
34F270:  SUBW            R0, R1, #0x44D; switch 99 cases
34F274:  CMP             R0, #0x62 ; 'b'
34F276:  BHI.W           def_34F27C; jumptable 0034F27C default case, cases 1102,1103,1106,1109,1110,1118,1119,1121,1122,1130,1131,1135,1144,1145,1147-1151,1155,1158,1159,1165,1166,1168,1170,1175-1179,1181,1184,1192,1194,1196
34F27A:  MOVS            R5, #0
34F27C:  TBH.W           [PC,R0,LSL#1]; switch jump
34F280:  DCW 0x9AD; jump table for switch statement
34F282:  DCW 0x68
34F284:  DCW 0x68
34F286:  DCW 0x9AD
34F288:  DCW 0x9AD
34F28A:  DCW 0x68
34F28C:  DCW 0x222
34F28E:  DCW 0x241
34F290:  DCW 0x68
34F292:  DCW 0x68
34F294:  DCW 0x254
34F296:  DCW 0x274
34F298:  DCW 0x294
34F29A:  DCW 0x315
34F29C:  DCW 0x398
34F29E:  DCW 0x6B
34F2A0:  DCW 0x9AD
34F2A2:  DCW 0x68
34F2A4:  DCW 0x68
34F2A6:  DCW 0x40C
34F2A8:  DCW 0x68
34F2AA:  DCW 0x68
34F2AC:  DCW 0x427
34F2AE:  DCW 0x74
34F2B0:  DCW 0x93
34F2B2:  DCW 0x455
34F2B4:  DCW 0xBB
34F2B6:  DCW 0x478
34F2B8:  DCW 0x9AD
34F2BA:  DCW 0x68
34F2BC:  DCW 0x68
34F2BE:  DCW 0x49D
34F2C0:  DCW 0xE0
34F2C2:  DCW 0x4C9
34F2C4:  DCW 0x68
34F2C6:  DCW 0x501
34F2C8:  DCW 0x63
34F2CA:  DCW 0x63
34F2CC:  DCW 0x63
34F2CE:  DCW 0x63
34F2D0:  DCW 0x63
34F2D2:  DCW 0x63
34F2D4:  DCW 0x520
34F2D6:  DCW 0x68
34F2D8:  DCW 0x68
34F2DA:  DCW 0xFF
34F2DC:  DCW 0x68
34F2DE:  DCW 0x68
34F2E0:  DCW 0x68
34F2E2:  DCW 0x68
34F2E4:  DCW 0x68
34F2E6:  DCW 0x543
34F2E8:  DCW 0x9AD
34F2EA:  DCW 0x9AD
34F2EC:  DCW 0x68
34F2EE:  DCW 0x11B
34F2F0:  DCW 0x561
34F2F2:  DCW 0x68
34F2F4:  DCW 0x68
34F2F6:  DCW 0x565
34F2F8:  DCW 0x579
34F2FA:  DCW 0x147
34F2FC:  DCW 0x597
34F2FE:  DCW 0x5B0
34F300:  DCW 0x68
34F302:  DCW 0x68
34F304:  DCW 0x607
34F306:  DCW 0x68
34F308:  DCW 0x625
34F30A:  DCW 0x68
34F30C:  DCW 0x9AD
34F30E:  DCW 0x15D
34F310:  DCW 0x193
34F312:  DCW 0x643
34F314:  DCW 0x68
34F316:  DCW 0x68
34F318:  DCW 0x68
34F31A:  DCW 0x68
34F31C:  DCW 0x68
34F31E:  DCW 0x9AD
34F320:  DCW 0x68
34F322:  DCW 0x9AD
34F324:  DCW 0x9AD
34F326:  DCW 0x68
34F328:  DCW 0x9AD
34F32A:  DCW 0x661; int
34F32C:  DCW 0x1CE
34F32E:  DCW 0x67F
34F330:  DCW 0x698
34F332:  DCW 0x1DC
34F334:  DCW 0x6B6
34F336:  DCW 0x68
34F338:  DCW 0x6D6
34F33A:  DCW 0x68
34F33C:  DCW 0x6F6
34F33E:  DCW 0x68
34F340:  DCW 0x716
34F342:  DCW 0x73A
34F344:  DCW 0x747
34F346:  MOV             R0, R8; jumptable 0034F27C cases 1137-1142
34F348:  BLX             j__ZN14CRunningScript23LocateCharObjectCommandEi; CRunningScript::LocateCharObjectCommand(int)
34F34C:  B.W             loc_3505D8
34F350:  MOVS            R5, #0xFF; jumptable 0034F27C default case, cases 1102,1103,1106,1109,1110,1118,1119,1121,1122,1130,1131,1135,1144,1145,1147-1151,1155,1158,1159,1165,1166,1168,1170,1175-1179,1181,1184,1192,1194,1196
34F352:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F356:  LDR.W           R0, =(_ZN11CTheScripts18FailCurrentMissionE_ptr - 0x34F362); jumptable 0034F27C case 1116
34F35A:  MOVS            R1, #2
34F35C:  MOVS            R5, #0
34F35E:  ADD             R0, PC; _ZN11CTheScripts18FailCurrentMissionE_ptr
34F360:  LDR             R0, [R0]; CTheScripts::FailCurrentMission ...
34F362:  STRB            R1, [R0]; CTheScripts::FailCurrentMission
34F364:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F368:  MOV             R0, R8; jumptable 0034F27C case 1124
34F36A:  MOVS            R1, #8; __int16
34F36C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F370:  LDR.W           R0, =(ScriptParams_ptr - 0x34F378)
34F374:  ADD             R0, PC; ScriptParams_ptr
34F376:  LDR             R0, [R0]; ScriptParams
34F378:  LDR             R1, [R0]
34F37A:  CMP             R1, #0
34F37C:  BLT.W           loc_350130
34F380:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F38C)
34F384:  UXTB            R3, R1
34F386:  LSRS            R1, R1, #8
34F388:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F38A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34F38C:  LDR             R0, [R0]; CPools::ms_pPedPool
34F38E:  LDR             R2, [R0,#4]
34F390:  LDRB            R2, [R2,R1]
34F392:  CMP             R2, R3
34F394:  BNE.W           loc_350130
34F398:  MOVW            R2, #0x7CC
34F39C:  LDR             R0, [R0]
34F39E:  MLA.W           R0, R1, R2, R0
34F3A2:  B.W             loc_350132
34F3A6:  MOV             R0, R8; jumptable 0034F27C case 1125
34F3A8:  MOVS            R1, #1; __int16
34F3AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F3AE:  LDR.W           R0, =(ScriptParams_ptr - 0x34F3B6)
34F3B2:  ADD             R0, PC; ScriptParams_ptr
34F3B4:  LDR             R0, [R0]; ScriptParams
34F3B6:  LDR             R1, [R0]
34F3B8:  CMP             R1, #0
34F3BA:  BLT.W           loc_3505D8
34F3BE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F3CA)
34F3C2:  UXTB            R3, R1
34F3C4:  LSRS            R1, R1, #8
34F3C6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F3C8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34F3CA:  LDR             R0, [R0]; CPools::ms_pPedPool
34F3CC:  LDR             R2, [R0,#4]
34F3CE:  LDRB            R2, [R2,R1]
34F3D0:  CMP             R2, R3
34F3D2:  BNE.W           loc_3505D8
34F3D6:  MOVW            R2, #0x7CC
34F3DA:  LDR             R0, [R0]
34F3DC:  MLA.W           R0, R1, R2, R0; this
34F3E0:  CMP             R0, #0
34F3E2:  BEQ.W           loc_3505D8
34F3E6:  LDR.W           R1, [R0,#0x100]
34F3EA:  CMP             R1, #0
34F3EC:  IT NE
34F3EE:  BLXNE           j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
34F3F2:  B.W             loc_3505D8
34F3F6:  MOV             R0, R8; jumptable 0034F27C case 1127
34F3F8:  MOVS            R1, #1; __int16
34F3FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F3FE:  LDR.W           R0, =(ScriptParams_ptr - 0x34F406)
34F402:  ADD             R0, PC; ScriptParams_ptr
34F404:  LDR             R0, [R0]; ScriptParams
34F406:  LDR             R1, [R0]
34F408:  CMP             R1, #0
34F40A:  BLT.W           loc_3505D8
34F40E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F41A)
34F412:  UXTB            R3, R1
34F414:  LSRS            R1, R1, #8
34F416:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F418:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34F41A:  LDR             R0, [R0]; CPools::ms_pPedPool
34F41C:  LDR             R2, [R0,#4]
34F41E:  LDRB            R2, [R2,R1]
34F420:  CMP             R2, R3
34F422:  BNE.W           loc_3505D8
34F426:  MOVW            R2, #0x7CC
34F42A:  LDR             R0, [R0]
34F42C:  MLA.W           R0, R1, R2, R0
34F430:  MOVS            R5, #0
34F432:  CMP             R0, #0
34F434:  ITT NE
34F436:  MOVNE           R1, #0xFF
34F438:  STRBNE.W        R1, [R0,#0x768]
34F43C:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F440:  MOV             R0, R8; jumptable 0034F27C case 1133
34F442:  MOVS            R1, #1; __int16
34F444:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F448:  LDR.W           R0, =(ScriptParams_ptr - 0x34F450)
34F44C:  ADD             R0, PC; ScriptParams_ptr
34F44E:  LDR             R0, [R0]; ScriptParams
34F450:  LDR             R1, [R0]; CPed *
34F452:  CMP             R1, #0
34F454:  BLT.W           loc_3501CC
34F458:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F464)
34F45C:  UXTB            R3, R1
34F45E:  LSRS            R1, R1, #8
34F460:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F462:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34F464:  LDR             R0, [R0]; CPools::ms_pPedPool
34F466:  LDR             R2, [R0,#4]
34F468:  LDRB            R2, [R2,R1]
34F46A:  CMP             R2, R3
34F46C:  BNE.W           loc_3501CC
34F470:  MOVW            R2, #0x7CC
34F474:  LDR             R0, [R0]
34F476:  MLA.W           R5, R1, R2, R0
34F47A:  B.W             loc_3501CE
34F47E:  MOV             R0, R8; jumptable 0034F27C case 1146
34F480:  MOVS            R1, #1; __int16
34F482:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F486:  LDR.W           R0, =(ScriptParams_ptr - 0x34F496)
34F48A:  MOVW            R2, #0x7CC
34F48E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F498)
34F492:  ADD             R0, PC; ScriptParams_ptr
34F494:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F496:  LDR             R0, [R0]; ScriptParams
34F498:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34F49A:  LDR             R0, [R0]
34F49C:  LDR             R1, [R1]; CPools::ms_pPedPool
34F49E:  LSRS            R0, R0, #8
34F4A0:  LDR             R1, [R1]
34F4A2:  MLA.W           R0, R0, R2, R1
34F4A6:  LDRB.W          R1, [R0,#0x485]
34F4AA:  LSLS            R1, R1, #0x1F
34F4AC:  BNE.W           loc_350444
34F4B0:  MOVS            R5, #0
34F4B2:  B.W             loc_350456
34F4B6:  MOV             R0, R8; jumptable 0034F27C case 1156
34F4B8:  MOVS            R1, #1; __int16
34F4BA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F4BE:  LDR.W           R0, =(ScriptParams_ptr - 0x34F4CE)
34F4C2:  MOV.W           R2, #0x194
34F4C6:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34F4D0)
34F4CA:  ADD             R0, PC; ScriptParams_ptr
34F4CC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34F4CE:  LDR             R0, [R0]; ScriptParams
34F4D0:  LDR             R1, [R1]; CWorld::Players ...
34F4D2:  LDR             R0, [R0]
34F4D4:  MLA.W           R0, R0, R2, R1
34F4D8:  LDR.W           R0, [R0,#0xB0]
34F4DC:  CMP             R0, #0
34F4DE:  BEQ.W           loc_3504AE
34F4E2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34F4EA)
34F4E6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34F4E8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34F4EA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34F4EC:  LDRD.W          R2, R1, [R1]
34F4F0:  SUBS            R0, R0, R2
34F4F2:  MOV             R2, #0xBFE6D523
34F4FA:  ASRS            R0, R0, #2
34F4FC:  MULS            R0, R2
34F4FE:  LDRB            R1, [R1,R0]
34F500:  ORR.W           R0, R1, R0,LSL#8
34F504:  LDR.W           R1, =(ScriptParams_ptr - 0x34F50C)
34F508:  ADD             R1, PC; ScriptParams_ptr
34F50A:  B.W             loc_35052A
34F50E:  MOV             R0, R8; jumptable 0034F27C case 1162
34F510:  MOVS            R1, #1; __int16
34F512:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F516:  LDR.W           R0, =(ScriptParams_ptr - 0x34F524)
34F51A:  MOVS            R5, #0
34F51C:  LDR.W           R1, =(_ZN8CVehicle24bDisableRemoteDetonationE_ptr - 0x34F526)
34F520:  ADD             R0, PC; ScriptParams_ptr
34F522:  ADD             R1, PC; _ZN8CVehicle24bDisableRemoteDetonationE_ptr
34F524:  LDR             R0, [R0]; ScriptParams
34F526:  LDR             R1, [R1]; CVehicle::bDisableRemoteDetonation ...
34F528:  LDR             R0, [R0]
34F52A:  CMP             R0, #0
34F52C:  MOV.W           R0, #0
34F530:  IT EQ
34F532:  MOVEQ           R0, #1
34F534:  STRB            R0, [R1]; CVehicle::bDisableRemoteDetonation
34F536:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F53A:  MOV             R0, R8; jumptable 0034F27C case 1172
34F53C:  MOVS            R1, #1; __int16
34F53E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F542:  LDR.W           R0, =(ScriptParams_ptr - 0x34F54A)
34F546:  ADD             R0, PC; ScriptParams_ptr
34F548:  LDR             R6, [R0]; ScriptParams
34F54A:  LDR             R0, [R6]; this
34F54C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
34F550:  ADD.W           R9, SP, #0x98+var_68
34F554:  MOVS            R5, #0
34F556:  MOV             R4, R0
34F558:  STRD.W          R5, R5, [SP,#0x98+var_68]
34F55C:  MOV             R1, R9
34F55E:  BLX             j__ZN4CPad15GetLeftAnalogueEP9CVector2D; CPad::GetLeftAnalogue(CVector2D *)
34F562:  VLDR            S0, [SP,#0x98+var_68]
34F566:  MOV             R0, R4
34F568:  VLDR            S2, [SP,#0x98+var_64]
34F56C:  MOV             R1, R9
34F56E:  VCVT.S32.F32    S0, S0
34F572:  VCVT.S32.F32    S2, S2
34F576:  VSTR            S0, [R6]
34F57A:  VSTR            S2, [R6,#4]
34F57E:  BLX             j__ZN4CPad16GetRightAnalogueEP9CVector2D; CPad::GetRightAnalogue(CVector2D *)
34F582:  VLDR            S0, [SP,#0x98+var_68]
34F586:  MOV             R0, R8; this
34F588:  VLDR            S2, [SP,#0x98+var_64]
34F58C:  MOVS            R1, #4; __int16
34F58E:  VCVT.S32.F32    S0, S0
34F592:  VCVT.S32.F32    S2, S2
34F596:  VSTR            S0, [R6,#8]
34F59A:  VSTR            S2, [R6,#0xC]
34F59E:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34F5A2:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F5A6:  MOV             R0, R8; jumptable 0034F27C case 1173
34F5A8:  MOVS            R1, #1; __int16
34F5AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F5AE:  LDR.W           R0, =(ScriptParams_ptr - 0x34F5BE)
34F5B2:  MOVW            R2, #0xA2C
34F5B6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34F5C0)
34F5BA:  ADD             R0, PC; ScriptParams_ptr
34F5BC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34F5BE:  LDR             R0, [R0]; ScriptParams
34F5C0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34F5C2:  LDR             R0, [R0]
34F5C4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34F5C6:  LSRS            R0, R0, #8
34F5C8:  LDR             R1, [R1]
34F5CA:  MLA.W           R4, R0, R2, R1
34F5CE:  LDR.W           R5, [R4,#0x494]
34F5D2:  LDR.W           R1, [R4,#0x5A0]
34F5D6:  CMP             R5, #0
34F5D8:  MOV             R0, R5
34F5DA:  IT NE
34F5DC:  MOVNE           R0, #1
34F5DE:  CBNZ            R1, loc_34F5FA
34F5E0:  ADDW            R0, R4, #0x5B4; this
34F5E4:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
34F5E8:  MOVS            R1, #0
34F5EA:  CMP             R0, #0xE0
34F5EC:  IT HI
34F5EE:  MOVHI           R1, #1
34F5F0:  CMP             R5, #0
34F5F2:  IT NE
34F5F4:  MOVNE           R5, #1
34F5F6:  ORR.W           R0, R5, R1
34F5FA:  ADDW            R1, R4, #0x4CC
34F5FE:  VLDR            S0, =250.0
34F602:  MOVS            R5, #0
34F604:  VLDR            S2, [R1]
34F608:  MOVS            R1, #0
34F60A:  VCMPE.F32       S2, S0
34F60E:  VMRS            APSR_nzcv, FPSCR
34F612:  IT LT
34F614:  MOVLT           R1, #1
34F616:  ORRS            R1, R0
34F618:  B.W             loc_34FFA8
34F61C:  MOV             R0, R8; jumptable 0034F27C case 1187
34F61E:  MOVS            R1, #2; unsigned __int8
34F620:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
34F624:  MOV             R4, R0
34F626:  MOV             R0, R8; this
34F628:  MOVS            R1, #1; __int16
34F62A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F62E:  LDR.W           R0, =(ScriptParams_ptr - 0x34F636)
34F632:  ADD             R0, PC; ScriptParams_ptr
34F634:  B.W             loc_34FF96
34F638:  MOV             R0, R8; jumptable 0034F27C case 1190
34F63A:  MOVS            R1, #5; __int16
34F63C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F640:  LDR.W           R0, =(ScriptParams_ptr - 0x34F64C)
34F644:  VLDR            S0, =-100.0
34F648:  ADD             R0, PC; ScriptParams_ptr
34F64A:  LDR             R0, [R0]; ScriptParams
34F64C:  LDRD.W          R9, R10, [R0]
34F650:  VLDR            S16, [R0,#8]
34F654:  VCMPE.F32       S16, S0
34F658:  STRD.W          R10, R9, [SP,#0x98+var_7C]
34F65C:  VMRS            APSR_nzcv, FPSCR
34F660:  VSTR            S16, [SP,#0x98+var_80]
34F664:  BGT             loc_34F67E
34F666:  MOV             R0, R9; this
34F668:  MOV             R1, R10; float
34F66A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34F66E:  VMOV.F32        S0, #0.5
34F672:  VMOV            S2, R0
34F676:  VADD.F32        S16, S2, S0
34F67A:  VSTR            S16, [SP,#0x98+var_80]
34F67E:  MOV             R0, R8; this
34F680:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
34F684:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
34F688:  VMOV            R2, S16
34F68C:  LDR.W           R0, =(ScriptParams_ptr - 0x34F69A)
34F690:  LDR.W           R1, =(MI_PICKUP_REVENUE_ptr - 0x34F69C)
34F694:  MOVS            R5, #0
34F696:  ADD             R0, PC; ScriptParams_ptr
34F698:  ADD             R1, PC; MI_PICKUP_REVENUE_ptr
34F69A:  LDR             R4, [R0]; ScriptParams
34F69C:  LDR             R0, [R1]; MI_PICKUP_REVENUE
34F69E:  LDRD.W          R1, R6, [R4,#(dword_81A914 - 0x81A908)]
34F6A2:  LDRH            R3, [R0]
34F6A4:  MOVS            R0, #0x10
34F6A6:  STMEA.W         SP, {R0,R1,R6}
34F6AA:  MOV             R0, R9
34F6AC:  MOV             R1, R10
34F6AE:  STRD.W          R5, R5, [SP,#0x98+var_8C]
34F6B2:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
34F6B6:  STR             R0, [R4]
34F6B8:  MOV             R0, R8; this
34F6BA:  MOVS            R1, #1; __int16
34F6BC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34F6C0:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F6C4:  MOV             R0, R8; jumptable 0034F27C case 1107
34F6C6:  MOVS            R1, #4; __int16
34F6C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F6CC:  LDR.W           R0, =(ScriptParams_ptr - 0x34F6D4)
34F6D0:  ADD             R0, PC; ScriptParams_ptr
34F6D2:  LDR             R0, [R0]; ScriptParams
34F6D4:  LDR             R1, [R0]; CEntity *
34F6D6:  CMP             R1, #0
34F6D8:  BLT.W           loc_350240
34F6DC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34F6E8)
34F6E0:  UXTB            R3, R1
34F6E2:  LSRS            R1, R1, #8
34F6E4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34F6E6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34F6E8:  LDR             R0, [R0]; CPools::ms_pObjectPool
34F6EA:  LDR             R2, [R0,#4]
34F6EC:  LDRB            R2, [R2,R1]
34F6EE:  CMP             R2, R3
34F6F0:  BNE.W           loc_350240
34F6F4:  MOV.W           R2, #0x1A4
34F6F8:  LDR             R0, [R0]
34F6FA:  MLA.W           R4, R1, R2, R0
34F6FE:  B.W             loc_350242
34F702:  LDR.W           R0, =(TheCamera_ptr - 0x34F70E); jumptable 0034F27C case 1108
34F706:  LDR.W           R1, =(ScriptParams_ptr - 0x34F710)
34F70A:  ADD             R0, PC; TheCamera_ptr
34F70C:  ADD             R1, PC; ScriptParams_ptr
34F70E:  LDR             R0, [R0]; TheCamera
34F710:  LDR             R1, [R1]; ScriptParams
34F712:  LDR.W           R3, [R0,#(dword_9526B0 - 0x951FA8)]
34F716:  LDR.W           R2, [R0,#(dword_9526AC - 0x951FA8)]
34F71A:  LDR.W           R0, [R0,#(dword_9526B4 - 0x951FA8)]
34F71E:  STRD.W          R2, R3, [R1]
34F722:  STR             R0, [R1,#(dword_81A910 - 0x81A908)]
34F724:  B.W             loc_35043E
34F728:  MOV             R0, R8; jumptable 0034F27C case 1111
34F72A:  MOVS            R1, #2; __int16
34F72C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F730:  LDR.W           R0, =(ScriptParams_ptr - 0x34F738)
34F734:  ADD             R0, PC; ScriptParams_ptr
34F736:  LDR             R0, [R0]; ScriptParams
34F738:  LDRD.W          R5, R1, [R0]
34F73C:  CMP             R1, #0
34F73E:  BLT.W           loc_3502D0
34F742:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34F74E)
34F746:  UXTB            R3, R1
34F748:  LSRS            R1, R1, #8
34F74A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34F74C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34F74E:  LDR             R0, [R0]; CPools::ms_pPedPool
34F750:  LDR             R2, [R0,#4]
34F752:  LDRB            R2, [R2,R1]
34F754:  CMP             R2, R3
34F756:  BNE.W           loc_3502D0
34F75A:  MOVW            R2, #0x7CC
34F75E:  LDR             R0, [R0]
34F760:  MLA.W           R9, R1, R2, R0
34F764:  B.W             loc_3502D4
34F768:  MOV             R0, R8; jumptable 0034F27C case 1112
34F76A:  MOVS            R1, #2; __int16
34F76C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F770:  LDR.W           R0, =(ScriptParams_ptr - 0x34F778)
34F774:  ADD             R0, PC; ScriptParams_ptr
34F776:  LDR             R1, [R0]; ScriptParams
34F778:  LDRD.W          R0, R2, [R1]
34F77C:  CMP             R2, #0
34F77E:  BLT.W           loc_350308
34F782:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34F78E)
34F786:  UXTB            R6, R2
34F788:  LSRS            R2, R2, #8
34F78A:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34F78C:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
34F78E:  LDR             R1, [R1]; CPools::ms_pObjectPool
34F790:  LDR             R3, [R1,#4]
34F792:  LDRB            R3, [R3,R2]
34F794:  CMP             R3, R6
34F796:  BNE.W           loc_350308
34F79A:  MOV.W           R3, #0x1A4
34F79E:  LDR             R1, [R1]
34F7A0:  MLA.W           R2, R2, R3, R1
34F7A4:  B.W             loc_35030A
34F7A8:  ADD             R1, SP, #0x98+var_68; jumptable 0034F27C case 1113
34F7AA:  MOV             R0, R8; this
34F7AC:  MOVS            R2, #8; unsigned __int8
34F7AE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34F7B2:  LDRB.W          R0, [SP,#0x98+var_68]
34F7B6:  SUB.W           R1, R0, #0x41 ; 'A'
34F7BA:  UXTB            R1, R1
34F7BC:  CMP             R1, #0x19
34F7BE:  ITT LS
34F7C0:  ADDLS           R0, #0x20 ; ' '
34F7C2:  STRBLS.W        R0, [SP,#0x98+var_68]
34F7C6:  LDRB.W          R0, [SP,#0x98+var_68+1]
34F7CA:  SUB.W           R1, R0, #0x41 ; 'A'
34F7CE:  UXTB            R1, R1
34F7D0:  CMP             R1, #0x1A
34F7D2:  ITT CC
34F7D4:  ADDCC           R0, #0x20 ; ' '
34F7D6:  STRBCC.W        R0, [SP,#0x98+var_68+1]
34F7DA:  LDRB.W          R0, [SP,#0x98+var_68+2]
34F7DE:  SUB.W           R1, R0, #0x41 ; 'A'
34F7E2:  UXTB            R1, R1
34F7E4:  CMP             R1, #0x19
34F7E6:  ITT LS
34F7E8:  ADDLS           R0, #0x20 ; ' '
34F7EA:  STRBLS.W        R0, [SP,#0x98+var_68+2]
34F7EE:  LDRB.W          R0, [SP,#0x98+var_68+3]
34F7F2:  SUB.W           R1, R0, #0x41 ; 'A'
34F7F6:  UXTB            R1, R1
34F7F8:  CMP             R1, #0x19
34F7FA:  ITT LS
34F7FC:  ADDLS           R0, #0x20 ; ' '
34F7FE:  STRBLS.W        R0, [SP,#0x98+var_68+3]
34F802:  LDRB.W          R0, [SP,#0x98+var_64]
34F806:  SUB.W           R1, R0, #0x41 ; 'A'
34F80A:  UXTB            R1, R1
34F80C:  CMP             R1, #0x19
34F80E:  ITT LS
34F810:  ADDLS           R0, #0x20 ; ' '
34F812:  STRBLS.W        R0, [SP,#0x98+var_64]
34F816:  LDRB.W          R0, [SP,#0x98+var_64+1]
34F81A:  SUB.W           R1, R0, #0x41 ; 'A'
34F81E:  UXTB            R1, R1
34F820:  CMP             R1, #0x19
34F822:  ITT LS
34F824:  ADDLS           R0, #0x20 ; ' '
34F826:  STRBLS.W        R0, [SP,#0x98+var_64+1]
34F82A:  LDRB.W          R0, [SP,#0x98+var_64+2]
34F82E:  SUB.W           R1, R0, #0x41 ; 'A'
34F832:  UXTB            R1, R1
34F834:  CMP             R1, #0x19
34F836:  ITT LS
34F838:  ADDLS           R0, #0x20 ; ' '
34F83A:  STRBLS.W        R0, [SP,#0x98+var_64+2]
34F83E:  LDRB.W          R0, [SP,#0x98+var_64+3]
34F842:  SUB.W           R1, R0, #0x41 ; 'A'
34F846:  UXTB            R1, R1
34F848:  CMP             R1, #0x19
34F84A:  ITT LS
34F84C:  ADDLS           R0, #0x20 ; ' '
34F84E:  STRBLS.W        R0, [SP,#0x98+var_64+3]
34F852:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x34F85A)
34F856:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
34F858:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
34F85A:  LDR             R6, [R0]; CTheScripts::pActiveScripts
34F85C:  CMP             R6, #0
34F85E:  BEQ.W           loc_3505D8
34F862:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x34F870)
34F866:  ADD.W           R10, SP, #0x98+var_68
34F86A:  MOVS            R5, #0
34F86C:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
34F86E:  LDR.W           R8, [R0]; CTheScripts::pActiveScripts ...
34F872:  LDR.W           R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x34F87A)
34F876:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
34F878:  LDR.W           R9, [R0]; CTheScripts::pIdleScripts ...
34F87C:  MOV             R0, R6
34F87E:  MOV             R1, R10; char *
34F880:  LDR.W           R4, [R0],#8; char *
34F884:  BLX             strcmp
34F888:  CBNZ            R0, loc_34F8A0
34F88A:  MOV             R0, R6; this
34F88C:  MOV             R1, R8; CRunningScript **
34F88E:  BLX             j__ZN14CRunningScript20RemoveScriptFromListEPPS_; CRunningScript::RemoveScriptFromList(CRunningScript**)
34F892:  MOV             R0, R6; this
34F894:  MOV             R1, R9; CRunningScript **
34F896:  BLX             j__ZN14CRunningScript15AddScriptToListEPPS_; CRunningScript::AddScriptToList(CRunningScript**)
34F89A:  MOV             R0, R6; this
34F89C:  BLX             j__ZN14CRunningScript18ShutdownThisScriptEv; CRunningScript::ShutdownThisScript(void)
34F8A0:  CMP             R4, #0
34F8A2:  MOV             R6, R4
34F8A4:  BNE             loc_34F87C
34F8A6:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34F8AA:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x34F8B2); jumptable 0034F27C case 1114
34F8AE:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
34F8B0:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34F8B2:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
34F8B4:  CMP             R0, #0x5F ; '_'
34F8B6:  BHI.W           loc_3505D8
34F8BA:  MOV             R0, R8; this
34F8BC:  MOVS            R1, #2; __int16
34F8BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F8C2:  SUB.W           R9, R7, #-var_72
34F8C6:  MOV             R0, R8; this
34F8C8:  MOVS            R2, #8; unsigned __int8
34F8CA:  MOV             R1, R9; char *
34F8CC:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34F8D0:  LDR.W           R0, =(TheText_ptr - 0x34F8DA)
34F8D4:  MOV             R1, R9; CKeyGen *
34F8D6:  ADD             R0, PC; TheText_ptr
34F8D8:  LDR             R0, [R0]; TheText ; this
34F8DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
34F8DE:  LDR.W           R0, =(ScriptParams_ptr - 0x34F8EA)
34F8E2:  ADD             R2, SP, #0x98+var_7C; float *
34F8E4:  ADD             R3, SP, #0x98+var_80; float *
34F8E6:  ADD             R0, PC; ScriptParams_ptr
34F8E8:  LDR             R4, [R0]; ScriptParams
34F8EA:  LDRD.W          R0, R1, [R4]
34F8EE:  STR             R0, [SP,#0x98+var_68]
34F8F0:  MOV.W           R0, #0x3F800000
34F8F4:  STR             R1, [SP,#0x98+var_78]
34F8F6:  ADD             R1, SP, #0x98+var_78; float *
34F8F8:  STRD.W          R0, R0, [SP,#0x98+var_80]
34F8FC:  ADD             R0, SP, #0x98+var_68; float *
34F8FE:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
34F902:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x34F90E)
34F906:  VLDR            S2, =640.0
34F90A:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
34F90C:  LDR             R6, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34F90E:  LDR.W           R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x34F918)
34F912:  LDRH            R1, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34F914:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
34F916:  LDR             R5, [R0]; CTheScripts::IntroTextLines ...
34F918:  ADD.W           R0, R1, R1,LSL#4
34F91C:  LDR.W           R1, =(RsGlobal_ptr - 0x34F924)
34F920:  ADD             R1, PC; RsGlobal_ptr
34F922:  ADD.W           R0, R5, R0,LSL#2
34F926:  LDR             R1, [R1]; RsGlobal
34F928:  VLDR            S0, [R1,#4]
34F92C:  VCVT.F32.S32    S0, S0
34F930:  VDIV.F32        S0, S0, S2
34F934:  VLDR            S2, [SP,#0x98+var_68]
34F938:  VDIV.F32        S0, S2, S0
34F93C:  VSTR            S0, [R0,#0x2C]
34F940:  VLDR            S0, [R1,#8]
34F944:  MOVS            R1, #1; __int16
34F946:  VLDR            S2, =448.0
34F94A:  VCVT.F32.S32    S0, S0
34F94E:  VDIV.F32        S0, S0, S2
34F952:  VLDR            S2, [SP,#0x98+var_78]
34F956:  VDIV.F32        S0, S2, S0
34F95A:  VSTR            S0, [R0,#0x30]
34F95E:  MOV             R0, R8; this
34F960:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F964:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34F966:  MOV             R1, R9; char *
34F968:  MOVS            R2, #8; size_t
34F96A:  ADD.W           R0, R0, R0,LSL#4
34F96E:  ADD.W           R0, R5, R0,LSL#2
34F972:  ADDS            R0, #0x34 ; '4'; char *
34F974:  BLX             strncpy
34F978:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34F97A:  MOV.W           R3, #0xFFFFFFFF
34F97E:  LDR             R1, [R4]
34F980:  ADD.W           R2, R0, R0,LSL#4
34F984:  ADD.W           R2, R5, R2,LSL#2
34F988:  STRD.W          R1, R3, [R2,#0x3C]
34F98C:  B               loc_34FA90
34F98E:  ALIGN 0x10
34F990:  DCFS 250.0
34F994:  DCFS -100.0
34F998:  DCFS 640.0
34F99C:  DCFS 448.0
34F9A0:  DCFS 100.0
34F9A4:  DCFS 3.1416
34F9A8:  DCFS 180.0
34F9AC:  DCD __stack_chk_guard_ptr - 0x34F26C
34F9B0:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x34F9B8); jumptable 0034F27C case 1115
34F9B4:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
34F9B6:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34F9B8:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
34F9BA:  CMP             R0, #0x5F ; '_'
34F9BC:  BHI.W           loc_3505D8
34F9C0:  MOV             R0, R8; this
34F9C2:  MOVS            R1, #2; __int16
34F9C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34F9C8:  SUB.W           R9, R7, #-var_72
34F9CC:  MOV             R0, R8; this
34F9CE:  MOVS            R2, #8; unsigned __int8
34F9D0:  MOV             R1, R9; char *
34F9D2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34F9D6:  LDR.W           R0, =(TheText_ptr - 0x34F9E0)
34F9DA:  MOV             R1, R9; CKeyGen *
34F9DC:  ADD             R0, PC; TheText_ptr
34F9DE:  LDR             R0, [R0]; TheText ; this
34F9E0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
34F9E4:  LDR.W           R0, =(ScriptParams_ptr - 0x34F9F0)
34F9E8:  ADD             R2, SP, #0x98+var_7C; float *
34F9EA:  ADD             R3, SP, #0x98+var_80; float *
34F9EC:  ADD             R0, PC; ScriptParams_ptr
34F9EE:  LDR             R4, [R0]; ScriptParams
34F9F0:  LDRD.W          R0, R1, [R4]
34F9F4:  STR             R0, [SP,#0x98+var_68]
34F9F6:  MOV.W           R0, #0x3F800000
34F9FA:  STR             R1, [SP,#0x98+var_78]
34F9FC:  ADD             R1, SP, #0x98+var_78; float *
34F9FE:  STRD.W          R0, R0, [SP,#0x98+var_80]
34FA02:  ADD             R0, SP, #0x98+var_68; float *
34FA04:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
34FA08:  LDR.W           R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x34FA14)
34FA0C:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x34FA1A)
34FA10:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
34FA12:  VLDR            S2, =640.0
34FA16:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
34FA18:  LDR             R5, [R1]; CTheScripts::IntroTextLines ...
34FA1A:  LDR.W           R1, =(RsGlobal_ptr - 0x34FA24)
34FA1E:  LDR             R6, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34FA20:  ADD             R1, PC; RsGlobal_ptr
34FA22:  LDR             R1, [R1]; RsGlobal
34FA24:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34FA26:  VLDR            S0, [R1,#4]
34FA2A:  ADD.W           R0, R0, R0,LSL#4
34FA2E:  VCVT.F32.S32    S0, S0
34FA32:  ADD.W           R0, R5, R0,LSL#2
34FA36:  VDIV.F32        S0, S0, S2
34FA3A:  VLDR            S2, [SP,#0x98+var_68]
34FA3E:  VDIV.F32        S0, S2, S0
34FA42:  VSTR            S0, [R0,#0x2C]
34FA46:  VLDR            S0, [R1,#8]
34FA4A:  MOVS            R1, #2; __int16
34FA4C:  VLDR            S2, =448.0
34FA50:  VCVT.F32.S32    S0, S0
34FA54:  VDIV.F32        S0, S0, S2
34FA58:  VLDR            S2, [SP,#0x98+var_78]
34FA5C:  VDIV.F32        S0, S2, S0
34FA60:  VSTR            S0, [R0,#0x30]
34FA64:  MOV             R0, R8; this
34FA66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FA6A:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34FA6C:  MOV             R1, R9; char *
34FA6E:  MOVS            R2, #8; size_t
34FA70:  ADD.W           R0, R0, R0,LSL#4
34FA74:  ADD.W           R0, R5, R0,LSL#2
34FA78:  ADDS            R0, #0x34 ; '4'; char *
34FA7A:  BLX             strncpy
34FA7E:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34FA80:  LDRD.W          R1, R2, [R4]
34FA84:  ADD.W           R3, R0, R0,LSL#4
34FA88:  ADD.W           R3, R5, R3,LSL#2
34FA8C:  STRD.W          R1, R2, [R3,#0x3C]
34FA90:  ADDS            R0, #1
34FA92:  STRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
34FA94:  B.W             loc_3505D8
34FA98:  MOV             R0, R8; jumptable 0034F27C case 1120
34FA9A:  MOVS            R1, #2; __int16
34FA9C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FAA0:  LDR.W           R0, =(ScriptParams_ptr - 0x34FAAC)
34FAA4:  VLDR            S0, =100.0
34FAA8:  ADD             R0, PC; ScriptParams_ptr
34FAAA:  LDR.W           R6, =(TheCamera_ptr - 0x34FAB4)
34FAAE:  LDR             R0, [R0]; ScriptParams
34FAB0:  ADD             R6, PC; TheCamera_ptr
34FAB2:  VLDR            S2, [R0]
34FAB6:  LDR             R3, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
34FAB8:  VSUB.F32        S0, S0, S2
34FABC:  LDR             R0, [R6]; TheCamera ; this
34FABE:  VMOV            R1, S2; float
34FAC2:  VMOV            R2, S0; float
34FAC6:  BLX             j__ZN7CCamera35SetParametersForScriptInterpolationEffj; CCamera::SetParametersForScriptInterpolation(float,float,uint)
34FACA:  B.W             loc_3505D8
34FACE:  LDR.W           R0, =(TheCamera_ptr - 0x34FADA); jumptable 0034F27C case 1123
34FAD2:  LDR.W           R1, =(ScriptParams_ptr - 0x34FADC)
34FAD6:  ADD             R0, PC; TheCamera_ptr
34FAD8:  ADD             R1, PC; ScriptParams_ptr
34FADA:  LDR             R0, [R0]; TheCamera
34FADC:  ADDW            R6, R0, #0x6FC
34FAE0:  ADDW            R2, R0, #0x70C
34FAE4:  ADDW            R3, R0, #0x704
34FAE8:  ADD.W           R5, R0, #0x700
34FAEC:  VLDR            S2, [R6]
34FAF0:  ADD.W           R6, R0, #0x6F8
34FAF4:  ADD.W           R0, R0, #0x708
34FAF8:  VLDR            S0, [R5]
34FAFC:  VLDR            S10, [R2]
34FB00:  VLDR            S8, [R0]
34FB04:  VLDR            S4, [R6]
34FB08:  VADD.F32        S0, S10, S0
34FB0C:  VLDR            S6, [R3]
34FB10:  VADD.F32        S2, S8, S2
34FB14:  LDR             R0, [R1]; ScriptParams
34FB16:  VADD.F32        S4, S6, S4
34FB1A:  VSTR            S4, [R0]
34FB1E:  VSTR            S2, [R0,#4]
34FB22:  VSTR            S0, [R0,#8]
34FB26:  B.W             loc_35043E
34FB2A:  MOV             R0, R8; jumptable 0034F27C case 1126
34FB2C:  MOVS            R1, #2; __int16
34FB2E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FB32:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FB44)
34FB36:  MOVW            R3, #0xA2C
34FB3A:  LDR.W           R0, =(ScriptParams_ptr - 0x34FB46)
34FB3E:  MOVS            R5, #0
34FB40:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FB42:  ADD             R0, PC; ScriptParams_ptr
34FB44:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34FB46:  LDR             R0, [R0]; ScriptParams
34FB48:  LDRD.W          R2, R0, [R0]
34FB4C:  CMP             R0, #0
34FB4E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34FB50:  MOV.W           R2, R2,LSR#8
34FB54:  LDR             R1, [R1]
34FB56:  MLA.W           R1, R2, R3, R1
34FB5A:  LDRH.W          R2, [R1,#0x3DF]
34FB5E:  BIC.W           R3, R2, #8
34FB62:  IT NE
34FB64:  ORRNE.W         R3, R2, #8
34FB68:  STRH.W          R3, [R1,#0x3DF]
34FB6C:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34FB70:  MOV             R0, R8; jumptable 0034F27C case 1128
34FB72:  MOVS            R1, #1; __int16
34FB74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FB78:  LDR.W           R0, =(ScriptParams_ptr - 0x34FB80)
34FB7C:  ADD             R0, PC; ScriptParams_ptr
34FB7E:  LDR             R0, [R0]; ScriptParams
34FB80:  LDR             R1, [R0]
34FB82:  CMP             R1, #0
34FB84:  BLT.W           loc_3505D8
34FB88:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FB94)
34FB8C:  UXTB            R3, R1
34FB8E:  LSRS            R1, R1, #8
34FB90:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FB92:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34FB94:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34FB96:  LDR             R2, [R0,#4]
34FB98:  LDRB            R2, [R2,R1]
34FB9A:  CMP             R2, R3
34FB9C:  BNE.W           loc_3505D8
34FBA0:  MOVW            R2, #0xA2C
34FBA4:  LDR             R0, [R0]
34FBA6:  MLA.W           R0, R1, R2, R0
34FBAA:  MOVS            R5, #0
34FBAC:  CMP             R0, #0
34FBAE:  ITT NE
34FBB0:  MOVNE           R1, #0xFF
34FBB2:  STRBNE.W        R1, [R0,#0x518]
34FBB6:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34FBBA:  MOV             R0, R8; jumptable 0034F27C case 1132
34FBBC:  MOVS            R1, #1; __int16
34FBBE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FBC2:  LDR.W           R0, =(ScriptParams_ptr - 0x34FBD2)
34FBC6:  MOVW            R2, #0xA2C
34FBCA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FBD4)
34FBCE:  ADD             R0, PC; ScriptParams_ptr
34FBD0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FBD2:  LDR             R0, [R0]; ScriptParams
34FBD4:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34FBD6:  LDR             R0, [R0]
34FBD8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34FBDA:  LSRS            R0, R0, #8
34FBDC:  LDR             R1, [R1]
34FBDE:  MLA.W           R0, R0, R2, R1
34FBE2:  LDR.W           R0, [R0,#0x464]
34FBE6:  CMP             R0, #0
34FBE8:  BEQ.W           loc_3504C0
34FBEC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FBF4)
34FBF0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FBF2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34FBF4:  LDR             R1, [R1]; CPools::ms_pPedPool
34FBF6:  LDRD.W          R2, R1, [R1]
34FBFA:  SUBS            R0, R0, R2
34FBFC:  MOV             R2, #0xBED87F3B
34FC04:  ASRS            R0, R0, #2
34FC06:  MULS            R0, R2
34FC08:  LDRB            R1, [R1,R0]
34FC0A:  ORR.W           R0, R1, R0,LSL#8
34FC0E:  B.W             loc_3504C4
34FC12:  MOV             R0, R8; jumptable 0034F27C case 1134
34FC14:  MOVS            R1, #6; __int16
34FC16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FC1A:  LDR.W           R0, =(ScriptParams_ptr - 0x34FC26)
34FC1E:  VLDR            S2, =-100.0
34FC22:  ADD             R0, PC; ScriptParams_ptr
34FC24:  LDR             R0, [R0]; ScriptParams
34FC26:  LDRD.W          R4, R5, [R0,#(dword_81A90C - 0x81A908)]
34FC2A:  VLDR            S0, [R0,#0xC]
34FC2E:  VCMPE.F32       S0, S2
34FC32:  STRD.W          R5, R4, [SP,#0x98+var_7C]
34FC36:  VMRS            APSR_nzcv, FPSCR
34FC3A:  VSTR            S0, [SP,#0x98+var_80]
34FC3E:  BGT             loc_34FC4E
34FC40:  MOV             R0, R4; this
34FC42:  MOV             R1, R5; float
34FC44:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34FC48:  VMOV            S0, R0
34FC4C:  STR             R0, [SP,#0x98+var_80]
34FC4E:  LDR.W           R0, =(ScriptParams_ptr - 0x34FC60)
34FC52:  VMOV            R2, S0; float
34FC56:  VLDR            S2, =3.1416
34FC5A:  MOV             R1, R5; float
34FC5C:  ADD             R0, PC; ScriptParams_ptr
34FC5E:  LDR             R0, [R0]; ScriptParams
34FC60:  VLDR            S4, [R0,#0x10]
34FC64:  LDRH            R0, [R0,#(dword_81A91C - 0x81A908)]
34FC66:  VMUL.F32        S2, S4, S2
34FC6A:  VLDR            S4, =180.0
34FC6E:  STR             R0, [SP,#0x98+var_98]; CModelInfo *
34FC70:  MOV             R0, R4; this
34FC72:  VDIV.F32        S2, S2, S4
34FC76:  VMOV            R3, S2; float
34FC7A:  BLX             j__ZN7CRemote29GivePlayerRemoteControlledCarEfffft; CRemote::GivePlayerRemoteControlledCar(float,float,float,float,ushort)
34FC7E:  B.W             loc_3505D8
34FC82:  MOV             R0, R8; jumptable 0034F27C case 1136
34FC84:  MOVS            R1, #1; __int16
34FC86:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FC8A:  LDR.W           R0, =(ScriptParams_ptr - 0x34FC9A)
34FC8E:  MOVW            R3, #0x7CC
34FC92:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FC9C)
34FC96:  ADD             R0, PC; ScriptParams_ptr
34FC98:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FC9A:  LDR             R0, [R0]; ScriptParams
34FC9C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34FC9E:  LDR             R2, [R0]
34FCA0:  LDR             R1, [R1]; CPools::ms_pPedPool
34FCA2:  LSRS            R2, R2, #8
34FCA4:  LDR             R1, [R1]
34FCA6:  MLA.W           R1, R2, R3, R1
34FCAA:  LDRSB.W         R2, [R1,#0x71C]
34FCAE:  RSB.W           R2, R2, R2,LSL#3
34FCB2:  ADD.W           R1, R1, R2,LSL#2
34FCB6:  LDR.W           R1, [R1,#0x5A4]
34FCBA:  STR             R1, [R0]
34FCBC:  B.W             loc_35052E
34FCC0:  MOV             R0, R8; jumptable 0034F27C case 1143
34FCC2:  MOVS            R1, #3; __int16
34FCC4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FCC8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FCD8)
34FCCC:  MOVW            R5, #0xA2C
34FCD0:  LDR.W           R0, =(ScriptParams_ptr - 0x34FCDE)
34FCD4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FCD6:  LDR.W           R6, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x34FCE2)
34FCDA:  ADD             R0, PC; ScriptParams_ptr
34FCDC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34FCDE:  ADD             R6, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
34FCE0:  LDR             R0, [R0]; ScriptParams
34FCE2:  LDRD.W          R2, R3, [R0]
34FCE6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34FCE8:  LSRS            R2, R2, #8
34FCEA:  LDR             R1, [R1]
34FCEC:  MLA.W           R1, R2, R5, R1
34FCF0:  LDR             R2, [R6]; CTimer::m_snTimeInMilliseconds ...
34FCF2:  MOVS            R5, #0
34FCF4:  STRB.W          R3, [R1,#0x3BF]
34FCF8:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
34FCFA:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
34FCFC:  ADD             R0, R2
34FCFE:  STR.W           R0, [R1,#0x3C0]
34FD02:  B.W             loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34FD06:  MOV             R0, R8; jumptable 0034F27C case 1152
34FD08:  MOVS            R1, #2; __int16
34FD0A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FD0E:  LDR.W           R0, =(ScriptParams_ptr - 0x34FD16)
34FD12:  ADD             R0, PC; ScriptParams_ptr
34FD14:  LDR             R0, [R0]; ScriptParams
34FD16:  LDR             R1, [R0]
34FD18:  CMP             R1, #0
34FD1A:  BLT.W           loc_35033C
34FD1E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FD2A)
34FD22:  UXTB            R3, R1
34FD24:  LSRS            R1, R1, #8
34FD26:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FD28:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34FD2A:  LDR             R0, [R0]; CPools::ms_pPedPool
34FD2C:  LDR             R2, [R0,#4]
34FD2E:  LDRB            R2, [R2,R1]
34FD30:  CMP             R2, R3
34FD32:  BNE.W           loc_35033C
34FD36:  MOVW            R2, #0x7CC
34FD3A:  LDR             R0, [R0]
34FD3C:  MLA.W           R9, R1, R2, R0
34FD40:  B               loc_350340
34FD42:  MOV             R0, R8; jumptable 0034F27C case 1157
34FD44:  MOVS            R1, #1
34FD46:  B.W             loc_3505D4
34FD4A:  MOV             R0, R8; jumptable 0034F27C case 1160
34FD4C:  MOVS            R1, #1; __int16
34FD4E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FD52:  LDR.W           R0, =(ScriptParams_ptr - 0x34FD5E)
34FD56:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x34FD60)
34FD5A:  ADD             R0, PC; ScriptParams_ptr
34FD5C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
34FD5E:  LDR             R0, [R0]; ScriptParams
34FD60:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
34FD62:  LDR             R0, [R0]
34FD64:  LDR.W           R1, [R1,R0,LSL#2]
34FD68:  CMP             R1, #0
34FD6A:  IT NE
34FD6C:  MOVNE           R1, #1
34FD6E:  B.W             loc_3505D2
34FD72:  MOV             R0, R8; jumptable 0034F27C case 1161
34FD74:  MOVS            R1, #2; __int16
34FD76:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FD7A:  LDR.W           R0, =(ScriptParams_ptr - 0x34FD82)
34FD7E:  ADD             R0, PC; ScriptParams_ptr
34FD80:  LDR             R0, [R0]; ScriptParams
34FD82:  LDR             R1, [R0]
34FD84:  CMP             R1, #0
34FD86:  BLT.W           loc_350374
34FD8A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FD96)
34FD8E:  UXTB            R3, R1
34FD90:  LSRS            R1, R1, #8
34FD92:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FD94:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34FD96:  LDR             R0, [R0]; CPools::ms_pPedPool
34FD98:  LDR             R2, [R0,#4]
34FD9A:  LDRB            R2, [R2,R1]
34FD9C:  CMP             R2, R3
34FD9E:  BNE.W           loc_350374
34FDA2:  MOVW            R2, #0x7CC
34FDA6:  LDR             R0, [R0]
34FDA8:  MLA.W           R0, R1, R2, R0
34FDAC:  B               loc_350376
34FDAE:  MOV             R0, R8; jumptable 0034F27C case 1163
34FDB0:  MOVS            R1, #2; __int16
34FDB2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FDB6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FDC8)
34FDBA:  MOVW            R3, #0xA2C
34FDBE:  LDR.W           R0, =(ScriptParams_ptr - 0x34FDCA)
34FDC2:  MOVS            R5, #0
34FDC4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FDC6:  ADD             R0, PC; ScriptParams_ptr
34FDC8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34FDCA:  LDR             R0, [R0]; ScriptParams
34FDCC:  LDRD.W          R2, R0, [R0]
34FDD0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34FDD2:  LSRS            R2, R2, #8
34FDD4:  LDR             R1, [R1]
34FDD6:  MLA.W           R1, R2, R3, R1
34FDDA:  STRH.W          R0, [R1,#0x462]
34FDDE:  B               loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34FDE0:  MOV             R0, R8; jumptable 0034F27C case 1164
34FDE2:  MOVS            R1, #3; __int16
34FDE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FDE8:  LDR.W           R0, =(ScriptParams_ptr - 0x34FDFC)
34FDEC:  VMOV.F32        S6, #0.125
34FDF0:  LDR.W           R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x34FDFE)
34FDF4:  VMOV.F32        S8, #0.5
34FDF8:  ADD             R0, PC; ScriptParams_ptr
34FDFA:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
34FDFC:  LDR             R0, [R0]; ScriptParams
34FDFE:  LDR             R1, [R1]; CPickups::aPickUps ...
34FE00:  LDRD.W          R2, R3, [R0]
34FE04:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
34FE06:  VMOV            S2, R3
34FE0A:  STR             R2, [SP,#0x98+var_78]
34FE0C:  STRD.W          R0, R3, [SP,#0x98+var_80]
34FE10:  VMOV            S4, R2
34FE14:  VMOV            S0, R0
34FE18:  ADD.W           R0, R1, #0x10
34FE1C:  MOVS            R1, #0
34FE1E:  LDRB            R2, [R0,#0xC]
34FE20:  CBZ             R2, loc_34FE82
34FE22:  LDRSH.W         R2, [R0]
34FE26:  LDRSH.W         R3, [R0,#2]
34FE2A:  LDRSH.W         R6, [R0,#4]
34FE2E:  VMOV            S12, R2
34FE32:  VMOV            S10, R3
34FE36:  VMOV            S14, R6
34FE3A:  VCVT.F32.S32    S10, S10
34FE3E:  VCVT.F32.S32    S12, S12
34FE42:  VCVT.F32.S32    S14, S14
34FE46:  VMUL.F32        S10, S10, S6
34FE4A:  VMUL.F32        S12, S12, S6
34FE4E:  VMUL.F32        S14, S14, S6
34FE52:  VSUB.F32        S10, S10, S2
34FE56:  VSUB.F32        S12, S12, S4
34FE5A:  VSUB.F32        S14, S14, S0
34FE5E:  VMUL.F32        S10, S10, S10
34FE62:  VMUL.F32        S12, S12, S12
34FE66:  VMUL.F32        S14, S14, S14
34FE6A:  VADD.F32        S10, S12, S10
34FE6E:  VADD.F32        S10, S10, S14
34FE72:  VSQRT.F32       S10, S10
34FE76:  VCMPE.F32       S10, S8
34FE7A:  VMRS            APSR_nzcv, FPSCR
34FE7E:  BLT.W           loc_3503BE
34FE82:  ADDS            R1, #1
34FE84:  ADDS            R0, #0x20 ; ' '
34FE86:  CMP.W           R1, #0x26C
34FE8A:  BCC             loc_34FE1E
34FE8C:  B               loc_350338
34FE8E:  MOV             R0, R8; jumptable 0034F27C case 1167
34FE90:  MOVS            R1, #1; __int16
34FE92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FE96:  LDR.W           R0, =(ScriptParams_ptr - 0x34FE9E)
34FE9A:  ADD             R0, PC; ScriptParams_ptr
34FE9C:  LDR             R0, [R0]; ScriptParams
34FE9E:  LDR             R1, [R0]
34FEA0:  CMP             R1, #0
34FEA2:  BLT.W           loc_350394
34FEA6:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FEB2)
34FEAA:  UXTB            R3, R1
34FEAC:  LSRS            R1, R1, #8
34FEAE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FEB0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34FEB2:  LDR             R0, [R0]; CPools::ms_pPedPool
34FEB4:  LDR             R2, [R0,#4]
34FEB6:  LDRB            R2, [R2,R1]
34FEB8:  CMP             R2, R3
34FEBA:  BNE.W           loc_350394
34FEBE:  MOVW            R2, #0x7CC
34FEC2:  LDR             R0, [R0]
34FEC4:  MLA.W           R0, R1, R2, R0
34FEC8:  B               loc_350396
34FECA:  MOV             R0, R8; jumptable 0034F27C case 1169
34FECC:  MOVS            R1, #2; __int16
34FECE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FED2:  LDR.W           R0, =(ScriptParams_ptr - 0x34FEDA)
34FED6:  ADD             R0, PC; ScriptParams_ptr
34FED8:  LDR             R0, [R0]; ScriptParams
34FEDA:  LDR             R1, [R0]
34FEDC:  CMP             R1, #0
34FEDE:  BLT.W           loc_35039C
34FEE2:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FEEE)
34FEE6:  UXTB            R3, R1
34FEE8:  LSRS            R1, R1, #8
34FEEA:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FEEC:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34FEEE:  LDR             R0, [R0]; CPools::ms_pPedPool
34FEF0:  LDR             R2, [R0,#4]
34FEF2:  LDRB            R2, [R2,R1]
34FEF4:  CMP             R2, R3
34FEF6:  BNE.W           loc_35039C
34FEFA:  MOVW            R2, #0x7CC
34FEFE:  LDR             R0, [R0]
34FF00:  MLA.W           R0, R1, R2, R0
34FF04:  B               loc_35039E
34FF06:  MOV             R0, R8; jumptable 0034F27C case 1174
34FF08:  MOVS            R1, #2; __int16
34FF0A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FF0E:  LDR.W           R0, =(ScriptParams_ptr - 0x34FF16)
34FF12:  ADD             R0, PC; ScriptParams_ptr
34FF14:  LDR             R0, [R0]; ScriptParams
34FF16:  LDR             R1, [R0]
34FF18:  CMP             R1, #0
34FF1A:  BLT.W           loc_3503C2
34FF1E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FF2A)
34FF22:  UXTB            R3, R1
34FF24:  LSRS            R1, R1, #8
34FF26:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FF28:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34FF2A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34FF2C:  LDR             R2, [R0,#4]
34FF2E:  LDRB            R2, [R2,R1]
34FF30:  CMP             R2, R3
34FF32:  BNE.W           loc_3503C2
34FF36:  MOVW            R2, #0xA2C
34FF3A:  LDR             R0, [R0]
34FF3C:  MLA.W           R0, R1, R2, R0
34FF40:  B               loc_3503C4
34FF42:  MOV             R0, R8; jumptable 0034F27C case 1186
34FF44:  MOVS            R1, #6; __int16
34FF46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FF4A:  LDR.W           R0, =(ScriptParams_ptr - 0x34FF52)
34FF4E:  ADD             R0, PC; ScriptParams_ptr
34FF50:  LDR             R0, [R0]; ScriptParams
34FF52:  LDR             R1, [R0]
34FF54:  CMP             R1, #0
34FF56:  BLT.W           loc_3503F2
34FF5A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34FF66)
34FF5E:  UXTB            R3, R1
34FF60:  LSRS            R1, R1, #8
34FF62:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34FF64:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34FF66:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34FF68:  LDR             R2, [R0,#4]
34FF6A:  LDRB            R2, [R2,R1]
34FF6C:  CMP             R2, R3
34FF6E:  BNE.W           loc_3503F2
34FF72:  MOVW            R2, #0xA2C
34FF76:  LDR             R0, [R0]
34FF78:  MLA.W           R0, R1, R2, R0
34FF7C:  B               loc_3503F4
34FF7E:  MOV             R0, R8; jumptable 0034F27C case 1188
34FF80:  MOVS            R1, #1; unsigned __int8
34FF82:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
34FF86:  MOV             R4, R0
34FF88:  MOV             R0, R8; this
34FF8A:  MOVS            R1, #1; __int16
34FF8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FF90:  LDR.W           R0, =(ScriptParams_ptr - 0x34FF98)
34FF94:  ADD             R0, PC; ScriptParams_ptr
34FF96:  LDR             R0, [R0]; ScriptParams
34FF98:  MOVS            R5, #0
34FF9A:  LDR             R1, [R4]
34FF9C:  LDR             R0, [R0]
34FF9E:  CMP             R1, R0
34FFA0:  MOV.W           R1, #0
34FFA4:  IT EQ
34FFA6:  MOVEQ           R1, #1; unsigned __int8
34FFA8:  MOV             R0, R8; this
34FFAA:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34FFAE:  B               loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
34FFB0:  MOV             R0, R8; jumptable 0034F27C case 1189
34FFB2:  MOVS            R1, #1; __int16
34FFB4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FFB8:  LDR.W           R0, =(ScriptParams_ptr - 0x34FFC0)
34FFBC:  ADD             R0, PC; ScriptParams_ptr
34FFBE:  LDR             R0, [R0]; ScriptParams
34FFC0:  LDR             R1, [R0]
34FFC2:  CMP             R1, #0
34FFC4:  BLT.W           loc_350424
34FFC8:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34FFD4)
34FFCC:  UXTB            R3, R1
34FFCE:  LSRS            R1, R1, #8
34FFD0:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34FFD2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34FFD4:  LDR             R0, [R0]; CPools::ms_pPedPool
34FFD6:  LDR             R2, [R0,#4]
34FFD8:  LDRB            R2, [R2,R1]
34FFDA:  CMP             R2, R3
34FFDC:  BNE.W           loc_350424
34FFE0:  MOVW            R2, #0x7CC
34FFE4:  LDR             R0, [R0]
34FFE6:  MLA.W           R0, R1, R2, R0
34FFEA:  B               loc_350426
34FFEC:  MOV             R0, R8; jumptable 0034F27C case 1191
34FFEE:  MOVS            R1, #1; __int16
34FFF0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34FFF4:  LDR.W           R0, =(ScriptParams_ptr - 0x350006)
34FFF8:  MOVW            R2, #0x7CC
34FFFC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350008)
350000:  MOVS            R5, #0
350002:  ADD             R0, PC; ScriptParams_ptr
350004:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350006:  LDR             R0, [R0]; ScriptParams
350008:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35000A:  LDR             R0, [R0]
35000C:  LDR             R1, [R1]; CPools::ms_pPedPool
35000E:  LSRS            R0, R0, #8
350010:  LDR             R1, [R1]
350012:  MLA.W           R0, R0, R2, R1
350016:  LDRB.W          R1, [R0,#0x485]
35001A:  LSLS            R1, R1, #0x1F
35001C:  BEQ.W           loc_350456
350020:  LDR.W           R0, [R0,#0x590]; this
350024:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
350028:  CMP             R0, #4
35002A:  B               loc_350452
35002C:  MOV             R0, R8; jumptable 0034F27C case 1193
35002E:  MOVS            R1, #1; __int16
350030:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350034:  LDR.W           R0, =(ScriptParams_ptr - 0x350046)
350038:  MOVW            R2, #0x7CC
35003C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350048)
350040:  MOVS            R5, #0
350042:  ADD             R0, PC; ScriptParams_ptr
350044:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350046:  LDR             R0, [R0]; ScriptParams
350048:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35004A:  LDR             R0, [R0]
35004C:  LDR             R1, [R1]; CPools::ms_pPedPool
35004E:  LSRS            R0, R0, #8
350050:  LDR             R1, [R1]
350052:  MLA.W           R0, R0, R2, R1
350056:  LDRB.W          R1, [R0,#0x485]
35005A:  LSLS            R1, R1, #0x1F
35005C:  BEQ.W           loc_350456
350060:  LDR.W           R0, [R0,#0x590]; this
350064:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
350068:  CMP             R0, #3
35006A:  B               loc_350452
35006C:  MOV             R0, R8; jumptable 0034F27C case 1195
35006E:  MOVS            R1, #1; __int16
350070:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350074:  LDR.W           R0, =(ScriptParams_ptr - 0x350086)
350078:  MOVW            R2, #0x7CC
35007C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x350088)
350080:  MOVS            R5, #0
350082:  ADD             R0, PC; ScriptParams_ptr
350084:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
350086:  LDR             R0, [R0]; ScriptParams
350088:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35008A:  LDR             R0, [R0]
35008C:  LDR             R1, [R1]; CPools::ms_pPedPool
35008E:  LSRS            R0, R0, #8
350090:  LDR             R1, [R1]
350092:  MLA.W           R0, R0, R2, R1
350096:  LDRB.W          R1, [R0,#0x485]
35009A:  LSLS            R1, R1, #0x1F
35009C:  BEQ.W           loc_350456
3500A0:  LDR.W           R0, [R0,#0x590]; this
3500A4:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3500A8:  CMP             R0, #5
3500AA:  B               loc_350452
3500AC:  MOV             R0, R8; jumptable 0034F27C case 1197
3500AE:  MOVS            R1, #1; __int16
3500B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3500B4:  LDR.W           R0, =(ScriptParams_ptr - 0x3500BC)
3500B8:  ADD             R0, PC; ScriptParams_ptr
3500BA:  LDR             R0, [R0]; ScriptParams
3500BC:  LDR             R1, [R0]
3500BE:  CMP             R1, #0
3500C0:  BLT.W           loc_350338
3500C4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3500D0)
3500C8:  UXTB            R3, R1
3500CA:  LSRS            R1, R1, #8
3500CC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3500CE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3500D0:  LDR             R0, [R0]; CPools::ms_pPedPool
3500D2:  LDR             R2, [R0,#4]
3500D4:  LDRB            R2, [R2,R1]
3500D6:  CMP             R2, R3
3500D8:  BNE.W           loc_350338
3500DC:  MOVW            R2, #0x7CC
3500E0:  LDR             R0, [R0]
3500E2:  MLA.W           R0, R1, R2, R0
3500E6:  CMP             R0, #0
3500E8:  BEQ.W           loc_350338
3500EC:  LDR             R0, [R0,#0x44]
3500EE:  UBFX.W          R1, R0, #8, #1
3500F2:  B               loc_3505D2
3500F4:  MOV             R0, R8; jumptable 0034F27C case 1198
3500F6:  MOVS            R1, #2; unsigned __int8
3500F8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
3500FC:  MOV             R4, R0
3500FE:  MOV             R0, R8; this
350100:  MOVS            R1, #1; __int16
350102:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350106:  LDR.W           R0, =(ScriptParams_ptr - 0x35010E)
35010A:  ADD             R0, PC; ScriptParams_ptr
35010C:  B               loc_350126
35010E:  MOV             R0, R8; jumptable 0034F27C case 1199
350110:  MOVS            R1, #1; unsigned __int8
350112:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
350116:  MOV             R4, R0
350118:  MOV             R0, R8; this
35011A:  MOVS            R1, #1; __int16
35011C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
350120:  LDR.W           R0, =(ScriptParams_ptr - 0x350128)
350124:  ADD             R0, PC; ScriptParams_ptr
350126:  LDR             R0, [R0]; ScriptParams
350128:  MOVS            R5, #0
35012A:  LDR             R0, [R0]
35012C:  STR             R0, [R4]
35012E:  B               loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
350130:  MOVS            R0, #0; int
350132:  LDR.W           R1, =(ScriptParams_ptr - 0x35013A)
350136:  ADD             R1, PC; ScriptParams_ptr
350138:  LDR             R1, [R1]; ScriptParams
35013A:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
35013C:  CMP             R2, #0
35013E:  BLT             loc_3501FC
350140:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35014C)
350144:  UXTB            R6, R2
350146:  LSRS            R2, R2, #8
350148:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35014A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35014C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35014E:  LDR             R3, [R1,#4]
350150:  LDRB            R3, [R3,R2]
350152:  CMP             R3, R6
350154:  BNE             loc_3501FC
350156:  MOVW            R3, #0xA2C
35015A:  LDR             R1, [R1]
35015C:  MLA.W           R1, R2, R3, R1
350160:  B               loc_3501FE
350162:  ALIGN 4
350164:  DCD _ZN11CTheScripts18FailCurrentMissionE_ptr - 0x34F362
350168:  DCD ScriptParams_ptr - 0x34F378
35016C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34F38C
350170:  DCD ScriptParams_ptr - 0x34F3B6
350174:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34F3CA
350178:  DCD ScriptParams_ptr - 0x34F406
35017C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34F41A
350180:  DCD ScriptParams_ptr - 0x34F450
350184:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34F464
350188:  DCD ScriptParams_ptr - 0x34F496
35018C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34F498
350190:  DCD ScriptParams_ptr - 0x34F4CE
350194:  DCD _ZN6CWorld7PlayersE_ptr - 0x34F4D0
350198:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x34F4EA
35019C:  DCD ScriptParams_ptr - 0x34F50C
3501A0:  DCD ScriptParams_ptr - 0x34F524
3501A4:  DCD _ZN8CVehicle24bDisableRemoteDetonationE_ptr - 0x34F526
3501A8:  DCD ScriptParams_ptr - 0x34F54A
3501AC:  DCD ScriptParams_ptr - 0x34F5BE
3501B0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x34F5C0
3501B4:  DCD ScriptParams_ptr - 0x34F636
3501B8:  DCD ScriptParams_ptr - 0x34F64C
3501BC:  DCFS 3.1416
3501C0:  DCFS 180.0
3501C4:  DCD ScriptParams_ptr - 0x34F69A
3501C8:  DCD MI_PICKUP_REVENUE_ptr - 0x34F69C
3501CC:  MOVS            R5, #0
3501CE:  MOV             R0, R5; this
3501D0:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
3501D4:  CMP             R0, #0
3501D6:  BEQ.W           loc_3504B8
3501DA:  ADD.W           R4, R0, #8
3501DE:  MOV             R1, R5; CPed *
3501E0:  MOV             R0, R4; this
3501E2:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
3501E6:  CMP             R0, #1
3501E8:  BNE.W           loc_350524
3501EC:  MOV             R0, R4; this
3501EE:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
3501F2:  LDR.W           R1, =(ScriptParams_ptr - 0x3501FC)
3501F6:  UXTB            R0, R0
3501F8:  ADD             R1, PC; ScriptParams_ptr
3501FA:  B               loc_35052A
3501FC:  MOVS            R1, #0; this
3501FE:  LDR.W           R2, =(ScriptParams_ptr - 0x35020A)
350202:  VLDR            S0, =3.1416
350206:  ADD             R2, PC; ScriptParams_ptr
350208:  LDR             R6, [R2]; ScriptParams
35020A:  VLDR            S4, [R6,#0x18]
35020E:  VLDR            S2, [R6,#0x10]
350212:  VMUL.F32        S0, S4, S0
350216:  VLDR            S4, =180.0
35021A:  LDRD.W          R2, R3, [R6,#(dword_81A910 - 0x81A908)]; int
35021E:  LDRH            R5, [R6,#(dword_81A91C - 0x81A908)]
350220:  LDR             R6, [R6,#(dword_81A924 - 0x81A908)]
350222:  STRD.W          R3, R2, [SP,#0x98+var_7C]
350226:  STR             R6, [SP,#0x98+var_8C]; int
350228:  STR             R5, [SP,#0x98+var_94]; int
35022A:  VDIV.F32        S0, S0, S4
35022E:  VSTR            S2, [SP,#0x98+var_98]
350232:  VSTR            S2, [SP,#0x98+var_80]
350236:  VSTR            S0, [SP,#0x98+var_90]
35023A:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
35023E:  B               loc_3505D8
350240:  MOVS            R4, #0
350242:  MOV             R0, R4; this
350244:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
350248:  LDR.W           R0, =(ScriptParams_ptr - 0x350254)
35024C:  VLDR            S2, =3.1416
350250:  ADD             R0, PC; ScriptParams_ptr
350252:  VLDR            S4, =180.0
350256:  LDR             R0, [R0]; ScriptParams
350258:  VLDR            S0, [R0,#0xC]
35025C:  LDR             R0, [R4,#0x14]; this
35025E:  VMUL.F32        S0, S0, S2
350262:  CMP             R0, #0
350264:  VDIV.F32        S0, S0, S4
350268:  BEQ.W           loc_3504CA
35026C:  LDR.W           R1, =(ScriptParams_ptr - 0x35027C)
350270:  VMOV            R3, S0; float
350274:  VLDR            S16, [R0,#0x30]
350278:  ADD             R1, PC; ScriptParams_ptr
35027A:  VLDR            S18, [R0,#0x34]
35027E:  VLDR            S20, [R0,#0x38]
350282:  LDR             R1, [R1]; ScriptParams
350284:  VLDR            S6, [R1,#4]
350288:  VLDR            S8, [R1,#8]
35028C:  VMUL.F32        S6, S6, S2
350290:  VMUL.F32        S2, S8, S2
350294:  VDIV.F32        S6, S6, S4
350298:  VDIV.F32        S2, S2, S4
35029C:  VMOV            R1, S6; x
3502A0:  VMOV            R2, S2; float
3502A4:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
3502A8:  LDR             R0, [R4,#0x14]
3502AA:  VLDR            S0, [R0,#0x30]
3502AE:  VLDR            S2, [R0,#0x34]
3502B2:  VLDR            S4, [R0,#0x38]
3502B6:  VADD.F32        S0, S16, S0
3502BA:  VADD.F32        S2, S18, S2
3502BE:  VADD.F32        S4, S20, S4
3502C2:  VSTR            S0, [R0,#0x30]
3502C6:  VSTR            S2, [R0,#0x34]
3502CA:  VSTR            S4, [R0,#0x38]
3502CE:  B               loc_3504CE
3502D0:  MOV.W           R9, #0
3502D4:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3502E4)
3502D8:  MOV.W           R10, #0x194
3502DC:  MUL.W           R1, R5, R10
3502E0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3502E2:  LDR             R4, [R0]; CWorld::Players ...
3502E4:  LDR             R0, [R4,R1]
3502E6:  LDR.W           R0, [R0,#0x720]; this
3502EA:  CMP             R0, #0
3502EC:  BEQ.W           loc_3504E2
3502F0:  LDRB.W          R1, [R0,#0x3A]
3502F4:  MOVS            R6, #0
3502F6:  AND.W           R1, R1, #7
3502FA:  CMP             R1, #3
3502FC:  BNE.W           loc_3504E4
350300:  CMP             R0, R9
350302:  IT EQ
350304:  MOVEQ           R6, #1
350306:  B               loc_3504E4
350308:  MOVS            R2, #0
35030A:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x350318)
35030E:  MOV.W           R3, #0x194
350312:  MULS            R0, R3
350314:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
350316:  LDR             R1, [R1]; CWorld::Players ...
350318:  LDR             R0, [R1,R0]
35031A:  LDR.W           R0, [R0,#0x720]
35031E:  CBZ             R0, loc_350338
350320:  LDRB.W          R1, [R0,#0x3A]
350324:  AND.W           R3, R1, #7
350328:  MOVS            R1, #0
35032A:  CMP             R3, #4
35032C:  BNE.W           loc_3505D2
350330:  CMP             R0, R2
350332:  IT EQ
350334:  MOVEQ           R1, #1
350336:  B               loc_3505D2
350338:  MOVS            R1, #0
35033A:  B               loc_3505D2
35033C:  MOV.W           R9, #0
350340:  LDR.W           R0, [R9,#0x440]
350344:  MOVS            R5, #0
350346:  MOVS            R6, #1
350348:  ADD.W           R10, R0, #0x130
35034C:  LDR.W           R4, [R10,R5,LSL#2]
350350:  CBZ             R4, loc_350366
350352:  MOV             R0, R4; this
350354:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
350358:  CBNZ            R0, loc_350366
35035A:  MOV             R0, R9; this
35035C:  MOV             R1, R4; CPed *
35035E:  MOVS            R2, #(stderr+1); CPed *
350360:  BLX             j__ZN20CPedGeometryAnalyser15CanPedTargetPedER4CPedS1_b; CPedGeometryAnalyser::CanPedTargetPed(CPed &,CPed &,bool)
350364:  CBNZ            R0, loc_35036E
350366:  ADDS            R5, #1
350368:  CMP             R5, #0x10
35036A:  BCC             loc_35034C
35036C:  MOVS            R6, #0
35036E:  MOV             R0, R8
350370:  MOV             R1, R6
350372:  B               loc_3505D4
350374:  MOVS            R0, #0; this
350376:  LDR             R1, =(ScriptParams_ptr - 0x35037C)
350378:  ADD             R1, PC; ScriptParams_ptr
35037A:  LDR             R1, [R1]; ScriptParams
35037C:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35037E:  CMP             R1, #0
350380:  BEQ.W           loc_35051A
350384:  MOVS            R5, #0
350386:  CMP             R0, #0
350388:  BEQ.W           loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
35038C:  MOVS            R1, #0; __int16
35038E:  BLX             j__ZN4CPed16DisablePedSpeechEs; CPed::DisablePedSpeech(short)
350392:  B               loc_3505DA; jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
350394:  MOVS            R0, #0; this
350396:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
35039A:  B               loc_3505D8
35039C:  MOVS            R0, #0
35039E:  LDR             R1, =(ScriptParams_ptr - 0x3503A8)
3503A0:  LDR.W           R3, [R0,#0x5A4]
3503A4:  ADD             R1, PC; ScriptParams_ptr
3503A6:  LDR             R1, [R1]; ScriptParams
3503A8:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
3503AA:  CMP             R3, R2
3503AC:  ITTTT NE
3503AE:  LDRNE.W         R1, [R0,#0x5C0]
3503B2:  CMPNE           R1, R2
3503B4:  LDRNE.W         R1, [R0,#0x5DC]
3503B8:  CMPNE           R1, R2
3503BA:  BNE.W           loc_350562
3503BE:  MOVS            R1, #1
3503C0:  B               loc_3505D2
3503C2:  MOVS            R0, #0
3503C4:  LDR             R1, =(ScriptParams_ptr - 0x3503CE)
3503C6:  LDR.W           R2, [R0,#0x5A0]
3503CA:  ADD             R1, PC; ScriptParams_ptr
3503CC:  CMP             R2, #9
3503CE:  LDR             R1, [R1]; ScriptParams
3503D0:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; int
3503D2:  BNE             loc_35045C
3503D4:  CMP             R1, #4
3503D6:  BNE.W           loc_350538
3503DA:  LDRB.W          R1, [R0,#0x670]
3503DE:  LDRB.W          R0, [R0,#0x671]
3503E2:  CMP             R1, #1
3503E4:  IT NE
3503E6:  MOVNE           R1, #0
3503E8:  CMP             R0, #1
3503EA:  IT NE
3503EC:  MOVNE           R0, #0
3503EE:  ORRS            R1, R0
3503F0:  B               loc_3505D2
3503F2:  MOVS            R0, #0; this
3503F4:  LDR             R1, =(ScriptParams_ptr - 0x3503FA)
3503F6:  ADD             R1, PC; ScriptParams_ptr
3503F8:  LDR             R2, [R1]; ScriptParams
3503FA:  VLDR            S0, [R2,#0xC]
3503FE:  VLDR            S2, [R2,#0x10]
350402:  VMOV            R3, S0; float
350406:  VLDR            S4, [R2,#0x14]
35040A:  LDRD.W          R1, R2, [R2,#(dword_81A90C - 0x81A908)]; float
35040E:  STRD.W          R2, R1, [SP,#0x98+var_7C]
350412:  VSTR            S2, [SP,#0x98+var_98]
350416:  VSTR            S0, [SP,#0x98+var_80]
35041A:  VSTR            S4, [SP,#0x98+var_94]
35041E:  BLX             j__ZN11CAutomobile19TellHeliToGoToCoorsEfffff; CAutomobile::TellHeliToGoToCoors(float,float,float,float,float)
350422:  B               loc_3505D8
350424:  MOVS            R0, #0; this
350426:  ADD             R1, SP, #0x98+var_78; float *
350428:  ADD             R2, SP, #0x98+var_7C; float *
35042A:  ADD             R3, SP, #0x98+var_80; float *
35042C:  BLX             j__ZN4CPed24CreateDeadPedPickupCoorsEPfS0_S0_; CPed::CreateDeadPedPickupCoors(float *,float *,float *)
350430:  LDR             R0, =(ScriptParams_ptr - 0x350438)
350432:  LDR             R1, [SP,#0x98+var_78]
350434:  ADD             R0, PC; ScriptParams_ptr
350436:  LDRD.W          R3, R2, [SP,#0x98+var_80]
35043A:  LDR             R0, [R0]; ScriptParams
35043C:  STM             R0!, {R1-R3}
35043E:  MOV             R0, R8
350440:  MOVS            R1, #3
350442:  B               loc_350532
350444:  LDR.W           R0, [R0,#0x590]; this
350448:  MOVS            R5, #0
35044A:  CBZ             R0, loc_350456
35044C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
350450:  CMP             R0, #2
350452:  IT EQ
350454:  MOVEQ           R5, #1
350456:  MOV             R0, R8
350458:  MOV             R1, R5
35045A:  B               loc_3505D4
35045C:  ADDW            R5, R0, #0x5B4
350460:  CMP             R1, #4
350462:  BNE             loc_350544
350464:  MOV             R0, R5; this
350466:  MOVS            R1, #0; int
350468:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
35046C:  MOV             R4, R0
35046E:  CMP             R4, #1
350470:  MOV             R0, R5; this
350472:  MOV.W           R1, #1; int
350476:  IT NE
350478:  MOVNE           R4, #0
35047A:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
35047E:  CMP             R0, #1
350480:  MOV.W           R1, #2; int
350484:  IT NE
350486:  MOVNE           R0, #0
350488:  ORRS            R4, R0
35048A:  MOV             R0, R5; this
35048C:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
350490:  CMP             R0, #1
350492:  MOV.W           R1, #3; int
350496:  IT NE
350498:  MOVNE           R0, #0
35049A:  ORRS            R4, R0
35049C:  MOV             R0, R5; this
35049E:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
3504A2:  CMP             R0, #1
3504A4:  IT NE
3504A6:  MOVNE           R0, #0
3504A8:  ORR.W           R1, R0, R4
3504AC:  B               loc_3505D2
3504AE:  LDR             R1, =(ScriptParams_ptr - 0x3504B8)
3504B0:  MOV.W           R0, #0xFFFFFFFF
3504B4:  ADD             R1, PC; ScriptParams_ptr
3504B6:  B               loc_35052A
3504B8:  LDR             R1, =(ScriptParams_ptr - 0x3504C0)
3504BA:  MOVS            R0, #0
3504BC:  ADD             R1, PC; ScriptParams_ptr
3504BE:  B               loc_35052A
3504C0:  MOV.W           R0, #0xFFFFFFFF
3504C4:  LDR             R1, =(ScriptParams_ptr - 0x3504CA)
3504C6:  ADD             R1, PC; ScriptParams_ptr
3504C8:  B               loc_35052A
3504CA:  VSTR            S0, [R4,#0x10]
3504CE:  LDR             R0, [R4,#0x18]
3504D0:  CMP             R0, #0
3504D2:  BEQ             loc_350554
3504D4:  LDR             R1, [R0,#4]
3504D6:  LDR             R0, [R4,#0x14]
3504D8:  ADDS            R1, #0x10
3504DA:  CBZ             R0, loc_35054E
3504DC:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3504E0:  B               loc_350554
3504E2:  MOVS            R6, #0
3504E4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3504E8:  CMP             R0, #2
3504EA:  BNE             loc_350516
3504EC:  MLA.W           R4, R5, R10, R4
3504F0:  LDR             R0, [R4]; this
3504F2:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
3504F6:  MOVS            R1, #0; bool
3504F8:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
3504FC:  CMP             R0, #1
3504FE:  BNE             loc_350516
350500:  LDR             R0, [R4]
350502:  MOV             R1, R6
350504:  LDR.W           R0, [R0,#0x7A4]
350508:  CMP             R0, R9
35050A:  IT EQ
35050C:  MOVEQ           R1, #1
35050E:  CMP             R0, #0
350510:  IT EQ
350512:  MOVEQ           R1, R6
350514:  B               loc_3505D2
350516:  MOV             R1, R6
350518:  B               loc_3505D2
35051A:  CMP             R0, #0
35051C:  IT NE
35051E:  BLXNE           j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
350522:  B               loc_3505D8
350524:  LDR             R1, =(ScriptParams_ptr - 0x35052C)
350526:  MOVS            R0, #0
350528:  ADD             R1, PC; ScriptParams_ptr
35052A:  LDR             R1, [R1]; ScriptParams
35052C:  STR             R0, [R1]
35052E:  MOV             R0, R8; this
350530:  MOVS            R1, #1; __int16
350532:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
350536:  B               loc_3505D8
350538:  CMP             R1, #2
35053A:  BEQ             loc_3505BC
35053C:  CMP             R1, #3
35053E:  BNE             loc_3505C6
350540:  MOVS            R1, #1
350542:  B               loc_3505BE
350544:  MOV             R0, R5; this
350546:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
35054A:  MOV             R1, R0
35054C:  B               loc_3505CC
35054E:  ADDS            R0, R4, #4
350550:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
350554:  MOV             R0, R4; this
350556:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
35055A:  MOV             R0, R4; this
35055C:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
350560:  B               loc_3505D8
350562:  LDR.W           R1, [R0,#0x5F8]
350566:  CMP             R1, R2
350568:  BEQ.W           loc_3503BE
35056C:  LDR.W           R1, [R0,#0x614]
350570:  CMP             R1, R2
350572:  ITT NE
350574:  LDRNE.W         R1, [R0,#0x630]
350578:  CMPNE           R1, R2
35057A:  BEQ.W           loc_3503BE
35057E:  LDR.W           R1, [R0,#0x64C]
350582:  CMP             R1, R2
350584:  ITT NE
350586:  LDRNE.W         R1, [R0,#0x668]
35058A:  CMPNE           R1, R2
35058C:  BEQ.W           loc_3503BE
350590:  LDR.W           R1, [R0,#0x684]
350594:  CMP             R1, R2
350596:  ITT NE
350598:  LDRNE.W         R1, [R0,#0x6A0]
35059C:  CMPNE           R1, R2
35059E:  BEQ.W           loc_3503BE
3505A2:  LDR.W           R1, [R0,#0x6BC]
3505A6:  CMP             R1, R2
3505A8:  ITT NE
3505AA:  LDRNE.W         R1, [R0,#0x6D8]
3505AE:  CMPNE           R1, R2
3505B0:  BEQ.W           loc_3503BE
3505B4:  LDR.W           R0, [R0,#0x6F4]
3505B8:  MOVS            R1, #0
3505BA:  B               loc_350330
3505BC:  MOVS            R1, #0
3505BE:  LDR             R2, =(ScriptParams_ptr - 0x3505C4)
3505C0:  ADD             R2, PC; ScriptParams_ptr
3505C2:  LDR             R2, [R2]; ScriptParams
3505C4:  STR             R1, [R2,#(dword_81A90C - 0x81A908)]
3505C6:  ADD             R0, R1
3505C8:  LDRB.W          R1, [R0,#0x670]
3505CC:  CMP             R1, #1
3505CE:  IT NE
3505D0:  MOVNE           R1, #0; unsigned __int8
3505D2:  MOV             R0, R8; this
3505D4:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3505D8:  MOVS            R5, #0
3505DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x3505E2); jumptable 0034F27C cases 1101,1104,1105,1117,1129,1153,1154,1171,1180,1182,1183,1185
3505DC:  LDR             R1, [SP,#0x98+var_34]
3505DE:  ADD             R0, PC; __stack_chk_guard_ptr
3505E0:  LDR             R0, [R0]; __stack_chk_guard
3505E2:  LDR             R0, [R0]
3505E4:  SUBS            R0, R0, R1
3505E6:  ITTTT EQ
3505E8:  SXTBEQ          R0, R5
3505EA:  ADDEQ           SP, SP, #0x68 ; 'h'
3505EC:  VPOPEQ          {D8-D10}
3505F0:  POPEQ.W         {R8-R10}
3505F4:  IT EQ
3505F6:  POPEQ           {R4-R7,PC}
3505F8:  BLX             __stack_chk_fail
