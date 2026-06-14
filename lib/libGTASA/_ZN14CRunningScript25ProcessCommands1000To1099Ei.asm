; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1000To1099Ei
; Address            : 0x34E2C4 - 0x34F07E
; =========================================================

34E2C4:  PUSH            {R4-R7,LR}
34E2C6:  ADD             R7, SP, #0xC
34E2C8:  PUSH.W          {R8-R11}
34E2CC:  SUB             SP, SP, #4
34E2CE:  VPUSH           {D8}
34E2D2:  SUB             SP, SP, #0x48; float
34E2D4:  MOV             R4, R0
34E2D6:  SUB.W           R0, R1, #0x3E8; switch 100 cases
34E2DA:  CMP             R0, #0x63 ; 'c'
34E2DC:  BHI.W           def_34E2E2; jumptable 0034E2E2 default case, cases 1001,1004,1009,1010,1014-1020,1023,1025-1030,1032,1034,1038-1043,1045,1049,1051,1052,1055-1058,1062,1063,1065,1066,1079-1083,1085,1090-1092,1095,1098
34E2E0:  MOVS            R5, #0
34E2E2:  TBH.W           [PC,R0,LSL#1]; switch jump
34E2E6:  DCW 0x6C4; jump table for switch statement
34E2E8:  DCW 0x68
34E2EA:  DCW 0x6C4
34E2EC:  DCW 0x64
34E2EE:  DCW 0x68
34E2F0:  DCW 0x6B
34E2F2:  DCW 0x8E
34E2F4:  DCW 0xA2
34E2F6:  DCW 0xCF
34E2F8:  DCW 0x68
34E2FA:  DCW 0x68
34E2FC:  DCW 0xE3
34E2FE:  DCW 0x101
34E300:  DCW 0x112
34E302:  DCW 0x68
34E304:  DCW 0x68
34E306:  DCW 0x68
34E308:  DCW 0x68
34E30A:  DCW 0x68
34E30C:  DCW 0x68
34E30E:  DCW 0x68
34E310:  DCW 0x131
34E312:  DCW 0x141
34E314:  DCW 0x68
34E316:  DCW 0x161
34E318:  DCW 0x68
34E31A:  DCW 0x68
34E31C:  DCW 0x68
34E31E:  DCW 0x68
34E320:  DCW 0x68
34E322:  DCW 0x68
34E324:  DCW 0x17F
34E326:  DCW 0x68
34E328:  DCW 0x6C4
34E32A:  DCW 0x68
34E32C:  DCW 0x6C4
34E32E:  DCW 0x1A1
34E330:  DCW 0x1A5
34E332:  DCW 0x68
34E334:  DCW 0x68
34E336:  DCW 0x68
34E338:  DCW 0x68
34E33A:  DCW 0x68
34E33C:  DCW 0x68
34E33E:  DCW 0x1B9
34E340:  DCW 0x68
34E342:  DCW 0x6C4
34E344:  DCW 0x1D3
34E346:  DCW 0x2B3
34E348:  DCW 0x68
34E34A:  DCW 0x2D3
34E34C:  DCW 0x68
34E34E:  DCW 0x68
34E350:  DCW 0x2F2
34E352:  DCW 0x302
34E354:  DCW 0x68
34E356:  DCW 0x68
34E358:  DCW 0x68
34E35A:  DCW 0x68
34E35C:  DCW 0x31F
34E35E:  DCW 0x33D
34E360:  DCW 0x345
34E362:  DCW 0x68
34E364:  DCW 0x68
34E366:  DCW 0x356
34E368:  DCW 0x68
34E36A:  DCW 0x68
34E36C:  DCW 0x378
34E36E:  DCW 0x3A7
34E370:  DCW 0x3BA
34E372:  DCW 0x3CF
34E374:  DCW 0x6C4
34E376:  DCW 0x3DC
34E378:  DCW 0x3FE
34E37A:  DCW 0x421
34E37C:  DCW 0x44D
34E37E:  DCW 0x46C
34E380:  DCW 0x46F
34E382:  DCW 0x472
34E384:  DCW 0x68
34E386:  DCW 0x68
34E388:  DCW 0x68
34E38A:  DCW 0x68
34E38C:  DCW 0x68
34E38E:  DCW 0x47A
34E390:  DCW 0x68
34E392:  DCW 0x6C4
34E394:  DCW 0x6C4
34E396:  DCW 0x6C4
34E398:  DCW 0x48F
34E39A:  DCW 0x68
34E39C:  DCW 0x68
34E39E:  DCW 0x68
34E3A0:  DCW 0x4A7
34E3A2:  DCW 0x4B8
34E3A4:  DCW 0x68
34E3A6:  DCW 0x4D9
34E3A8:  DCW 0x4F7
34E3AA:  DCW 0x68
34E3AC:  DCW 0x513
34E3AE:  BLX             j__ZN9CMessages22ClearSmallMessagesOnlyEv; jumptable 0034E2E2 case 1003
34E3B2:  B.W             loc_34F06C
34E3B6:  MOVS            R5, #0xFF; jumptable 0034E2E2 default case, cases 1001,1004,1009,1010,1014-1020,1023,1025-1030,1032,1034,1038-1043,1045,1049,1051,1052,1055-1058,1062,1063,1065,1066,1079-1083,1085,1090-1092,1095,1098
34E3B8:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E3BC:  MOV             R0, R4; jumptable 0034E2E2 case 1005
34E3BE:  MOVS            R1, #2; __int16
34E3C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E3C4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E3D6)
34E3C8:  MOVW            R3, #0xA2C
34E3CC:  LDR.W           R0, =(ScriptParams_ptr - 0x34E3D8)
34E3D0:  MOVS            R5, #0
34E3D2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E3D4:  ADD             R0, PC; ScriptParams_ptr
34E3D6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34E3D8:  LDR             R0, [R0]; ScriptParams
34E3DA:  LDRD.W          R2, R0, [R0]
34E3DE:  CMP             R0, #0
34E3E0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34E3E2:  MOV.W           R2, R2,LSR#8
34E3E6:  LDR             R1, [R1]
34E3E8:  MLA.W           R1, R2, R3, R1
34E3EC:  LDRB.W          R2, [R1,#0x87C]
34E3F0:  AND.W           R3, R2, #0xF7
34E3F4:  IT NE
34E3F6:  ORRNE.W         R3, R2, #8
34E3FA:  STRB.W          R3, [R1,#0x87C]
34E3FE:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E402:  MOV             R0, R4; jumptable 0034E2E2 case 1006
34E404:  MOVS            R1, #1; __int16
34E406:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E40A:  LDR.W           R0, =(ScriptParams_ptr - 0x34E41A)
34E40E:  MOV.W           R2, #0x194
34E412:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34E41C)
34E416:  ADD             R0, PC; ScriptParams_ptr
34E418:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34E41A:  LDR             R0, [R0]; ScriptParams
34E41C:  LDR             R1, [R1]; CWorld::Players ...
34E41E:  LDR             R0, [R0]
34E420:  MULS            R0, R2
34E422:  LDR             R0, [R1,R0]; this
34E424:  BLX             j__ZN10CPlayerPed21CanPlayerStartMissionEv; CPlayerPed::CanPlayerStartMission(void)
34E428:  B               loc_34E62C
34E42A:  MOV             R0, R4; jumptable 0034E2E2 case 1007
34E42C:  MOVS            R1, #1; __int16
34E42E:  MOV.W           R8, #1
34E432:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E436:  LDR.W           R0, =(ScriptParams_ptr - 0x34E446)
34E43A:  MOV.W           R6, #0x194
34E43E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34E448)
34E442:  ADD             R0, PC; ScriptParams_ptr
34E444:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr ; int
34E446:  LDR             R0, [R0]; ScriptParams
34E448:  LDR             R5, [R1]; CWorld::Players ...
34E44A:  LDR             R4, [R0]
34E44C:  MOV             R0, R4; this
34E44E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
34E452:  MLA.W           R1, R4, R6, R5
34E456:  LDRH.W          R2, [R0,#0x110]
34E45A:  ORR.W           R2, R2, #0x80
34E45E:  STRH.W          R2, [R0,#0x110]
34E462:  MOV             R2, #0x461C4000; float
34E46A:  MOV             R0, R1; this
34E46C:  MOVS            R1, #1; bool
34E46E:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
34E472:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x34E47C)
34E476:  MOVS            R5, #0
34E478:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
34E47A:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
34E47C:  STRB.W          R8, [R0]; CCutsceneMgr::ms_cutsceneProcessing
34E480:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E484:  MOV             R0, R4; jumptable 0034E2E2 case 1008
34E486:  MOVS            R1, #1; __int16
34E488:  MOVS            R5, #1
34E48A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E48E:  LDR.W           R0, =(ScriptParams_ptr - 0x34E49A)
34E492:  LDR.W           R1, =(_ZN11CTheScripts15UseTextCommandsE_ptr - 0x34E49C)
34E496:  ADD             R0, PC; ScriptParams_ptr
34E498:  ADD             R1, PC; _ZN11CTheScripts15UseTextCommandsE_ptr
34E49A:  LDR             R0, [R0]; ScriptParams
34E49C:  LDR             R1, [R1]; CTheScripts::UseTextCommands ...
34E49E:  LDR             R0, [R0]
34E4A0:  CMP             R0, #0
34E4A2:  IT NE
34E4A4:  MOVNE           R5, #2
34E4A6:  STRB            R5, [R1]; CTheScripts::UseTextCommands
34E4A8:  B.W             loc_34F06C
34E4AC:  MOV             R0, R4; jumptable 0034E2E2 case 1011
34E4AE:  MOVS            R1, #1; __int16
34E4B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E4B4:  LDR.W           R0, =(ScriptParams_ptr - 0x34E4C4)
34E4B8:  MOVW            R3, #0xA2C
34E4BC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E4C6)
34E4C0:  ADD             R0, PC; ScriptParams_ptr
34E4C2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E4C4:  LDR             R0, [R0]; ScriptParams
34E4C6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34E4C8:  LDR             R2, [R0]
34E4CA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34E4CC:  LSRS            R2, R2, #8
34E4CE:  LDR             R1, [R1]
34E4D0:  MLA.W           R1, R2, R3, R1
34E4D4:  LDRB.W          R2, [R1,#0x438]
34E4D8:  STR             R2, [R0]
34E4DA:  LDRB.W          R1, [R1,#0x439]
34E4DE:  STR             R1, [R0,#(dword_81A90C - 0x81A908)]
34E4E0:  MOV             R0, R4
34E4E2:  MOVS            R1, #2
34E4E4:  B.W             loc_34F068
34E4E8:  MOV             R0, R4; jumptable 0034E2E2 case 1012
34E4EA:  MOVS            R1, #1; __int16
34E4EC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E4F0:  LDR.W           R0, =(ScriptParams_ptr - 0x34E4F8)
34E4F4:  ADD             R0, PC; ScriptParams_ptr
34E4F6:  LDR             R0, [R0]; ScriptParams
34E4F8:  LDR             R0, [R0]
34E4FA:  CMP             R0, #0
34E4FC:  BEQ.W           loc_34EF84
34E500:  MOVS            R0, #(stderr+1); this
34E502:  BLX             j__ZN6CWorld22SetAllCarsCanBeDamagedEb; CWorld::SetAllCarsCanBeDamaged(bool)
34E506:  B.W             loc_34F06C
34E50A:  MOV             R0, R4; jumptable 0034E2E2 case 1013
34E50C:  MOVS            R1, #2; __int16
34E50E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E512:  LDR.W           R0, =(ScriptParams_ptr - 0x34E51A)
34E516:  ADD             R0, PC; ScriptParams_ptr
34E518:  LDR             R0, [R0]; ScriptParams
34E51A:  LDR             R1, [R0]
34E51C:  CMP             R1, #0
34E51E:  BLT.W           loc_34ED66
34E522:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E52E)
34E526:  UXTB            R3, R1
34E528:  LSRS            R1, R1, #8
34E52A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E52C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34E52E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34E530:  LDR             R2, [R0,#4]
34E532:  LDRB            R2, [R2,R1]
34E534:  CMP             R2, R3
34E536:  BNE.W           loc_34ED66
34E53A:  MOVW            R2, #0xA2C
34E53E:  LDR             R0, [R0]
34E540:  MLA.W           R4, R1, R2, R0
34E544:  B.W             loc_34ED68
34E548:  MOV             R0, R4; jumptable 0034E2E2 case 1021
34E54A:  MOVS            R1, #2; __int16
34E54C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E550:  LDR.W           R0, =(ScriptParams_ptr - 0x34E558)
34E554:  ADD             R0, PC; ScriptParams_ptr
34E556:  LDR             R4, [R0]; ScriptParams
34E558:  LDR             R0, [R4]; this
34E55A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
34E55E:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]; int
34E560:  BLX             j__ZN4CPad18SetDrunkInputDelayEi; CPad::SetDrunkInputDelay(int)
34E564:  B.W             loc_34F06C
34E568:  MOV             R0, R4; jumptable 0034E2E2 case 1022
34E56A:  MOVS            R1, #2; __int16
34E56C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E570:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34E582)
34E574:  MOVW            R3, #0x7CC
34E578:  LDR.W           R0, =(ScriptParams_ptr - 0x34E584)
34E57C:  MOVS            R5, #0
34E57E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34E580:  ADD             R0, PC; ScriptParams_ptr
34E582:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34E584:  LDR             R0, [R0]; ScriptParams
34E586:  LDRD.W          R2, R0, [R0]
34E58A:  LDR             R1, [R1]; CPools::ms_pPedPool
34E58C:  LSRS            R2, R2, #8
34E58E:  LDR             R1, [R1]
34E590:  MLA.W           R1, R2, R3, R1
34E594:  LDR.W           R2, [R1,#0x488]
34E598:  STRH.W          R0, [R1,#0x75E]
34E59C:  ORR.W           R0, R2, #0x20000
34E5A0:  STR.W           R0, [R1,#0x488]
34E5A4:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E5A8:  MOV             R0, R4; jumptable 0034E2E2 case 1024
34E5AA:  MOVS            R1, #4; __int16
34E5AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E5B0:  LDR.W           R0, =(ScriptParams_ptr - 0x34E5B8)
34E5B4:  ADD             R0, PC; ScriptParams_ptr
34E5B6:  LDR             R0, [R0]; ScriptParams
34E5B8:  LDR             R1, [R0]
34E5BA:  CMP             R1, #0
34E5BC:  BLT.W           loc_34ED82
34E5C0:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34E5CC)
34E5C4:  UXTB            R3, R1
34E5C6:  LSRS            R1, R1, #8
34E5C8:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34E5CA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34E5CC:  LDR             R0, [R0]; CPools::ms_pObjectPool
34E5CE:  LDR             R2, [R0,#4]
34E5D0:  LDRB            R2, [R2,R1]
34E5D2:  CMP             R2, R3
34E5D4:  BNE.W           loc_34ED82
34E5D8:  MOV.W           R2, #0x1A4
34E5DC:  LDR             R0, [R0]
34E5DE:  MLA.W           R5, R1, R2, R0
34E5E2:  B               loc_34ED84
34E5E4:  MOV             R0, R4; jumptable 0034E2E2 case 1031
34E5E6:  MOVS            R1, #4; __int16
34E5E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E5EC:  LDR.W           R0, =(ScriptParams_ptr - 0x34E5F4)
34E5F0:  ADD             R0, PC; ScriptParams_ptr
34E5F2:  LDR             R0, [R0]; ScriptParams
34E5F4:  LDR             R1, [R0]
34E5F6:  CMP             R1, #0
34E5F8:  BLT.W           loc_34EFA6
34E5FC:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E608)
34E600:  UXTB            R3, R1
34E602:  LSRS            R1, R1, #8
34E604:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E606:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34E608:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34E60A:  LDR             R2, [R0,#4]
34E60C:  LDRB            R2, [R2,R1]
34E60E:  CMP             R2, R3
34E610:  BNE.W           loc_34F00C
34E614:  MOVW            R2, #0xA2C
34E618:  LDR             R0, [R0]
34E61A:  MLA.W           R5, R1, R2, R0
34E61E:  LDR.W           R0, =(ScriptParams_ptr - 0x34E626)
34E622:  ADD             R0, PC; ScriptParams_ptr
34E624:  B.W             loc_34F012
34E628:  BLX             j__ZN13CLocalisation10GermanGameEv; jumptable 0034E2E2 case 1036
34E62C:  MOV             R1, R0
34E62E:  B               loc_34EC4E
34E630:  MOV             R0, R4; jumptable 0034E2E2 case 1037
34E632:  MOVS            R1, #1; __int16
34E634:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E638:  LDR.W           R0, =(ScriptParams_ptr - 0x34E644)
34E63C:  LDR.W           R1, =(AudioEngine_ptr - 0x34E646)
34E640:  ADD             R0, PC; ScriptParams_ptr
34E642:  ADD             R1, PC; AudioEngine_ptr
34E644:  LDR             R0, [R0]; ScriptParams
34E646:  LDR             R2, [R0]
34E648:  LDR             R0, [R1]; AudioEngine ; this
34E64A:  ADD.W           R1, R2, #0xFF
34E64E:  UXTB            R1, R1; unsigned __int8
34E650:  BLX             j__ZN12CAudioEngine17ClearMissionAudioEh; CAudioEngine::ClearMissionAudio(uchar)
34E654:  B.W             loc_34F06C
34E658:  MOV             R0, R4; jumptable 0034E2E2 case 1044
34E65A:  MOVS            R1, #2; __int16
34E65C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E660:  LDR.W           R0, =(ScriptParams_ptr - 0x34E672)
34E664:  MOV.W           R3, #0x194
34E668:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34E674)
34E66C:  MOVS            R5, #0
34E66E:  ADD             R0, PC; ScriptParams_ptr
34E670:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34E672:  LDR             R0, [R0]; ScriptParams
34E674:  LDR             R1, [R1]; CWorld::Players ...
34E676:  LDRD.W          R2, R0, [R0]
34E67A:  CMP             R0, #0
34E67C:  IT NE
34E67E:  MOVNE           R0, #1
34E680:  MLA.W           R1, R2, R3, R1
34E684:  STRB.W          R0, [R1,#0x152]
34E688:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E68C:  MOV             R0, R4; jumptable 0034E2E2 case 1047
34E68E:  MOVS            R1, #1; __int16
34E690:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E694:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr - 0x34E69C)
34E698:  ADD             R0, PC; _ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr
34E69A:  LDR             R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts ...
34E69C:  LDRSH.W         R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts
34E6A0:  CMP             R0, #1
34E6A2:  BLT             loc_34E6C8
34E6A4:  LDR.W           R0, =(ScriptParams_ptr - 0x34E6B0)
34E6A8:  MOVW            R1, #0xFFFD
34E6AC:  ADD             R0, PC; ScriptParams_ptr
34E6AE:  LDR             R0, [R0]; ScriptParams
34E6B0:  LDR             R0, [R0]
34E6B2:  CMP             R0, R1
34E6B4:  BLT.W           loc_34F06C
34E6B8:  LDR.W           R1, =(ScriptParams_ptr - 0x34E6C6)
34E6BC:  MOVW            R2, #0xFFFF
34E6C0:  SUBS            R0, R2, R0; this
34E6C2:  ADD             R1, PC; ScriptParams_ptr
34E6C4:  LDR             R1, [R1]; ScriptParams
34E6C6:  STR             R0, [R1]
34E6C8:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
34E6CC:  LDR.W           R0, =(ScriptParams_ptr - 0x34E6D8)
34E6D0:  LDR.W           R1, =(_ZN11CTheScripts16MultiScriptArrayE_ptr - 0x34E6DA)
34E6D4:  ADD             R0, PC; ScriptParams_ptr
34E6D6:  ADD             R1, PC; _ZN11CTheScripts16MultiScriptArrayE_ptr
34E6D8:  LDR             R0, [R0]; ScriptParams
34E6DA:  LDR             R1, [R1]; char *
34E6DC:  LDR             R0, [R0]
34E6DE:  LDR.W           R0, [R1,R0,LSL#2]
34E6E2:  STR             R0, [SP,#0x70+var_64]
34E6E4:  ADR.W           R0, dword_34F188; this
34E6E8:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
34E6EC:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x34E6FC)
34E6F0:  MOV             R9, #0x10D88
34E6F8:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
34E6FA:  LDR             R0, [R0]; CGame::bMissionPackGame ...
34E6FC:  LDRB            R0, [R0]; CGame::bMissionPackGame
34E6FE:  CMP             R0, #0
34E700:  BEQ             loc_34E7C4
34E702:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x34E716)
34E706:  ADR.W           R10, aMpackMpackDScr_0; "MPACK//MPACK%d//SCR.SCM"
34E70A:  LDR.W           R1, =(gString_ptr - 0x34E718)
34E70E:  ADR.W           R5, aRb_7; "rb"
34E712:  ADD             R0, PC; FrontEndMenuManager_ptr
34E714:  ADD             R1, PC; gString_ptr
34E716:  LDR             R6, [R0]; FrontEndMenuManager
34E718:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x34E726)
34E71C:  LDR             R4, [R1]; gString
34E71E:  MOVW            R1, #:lower16:stru_41EA8.st_size
34E722:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
34E724:  MOVT            R1, #:upper16:stru_41EA8.st_size
34E728:  LDR.W           R11, [R0]; CGame::bMissionPackGame ...
34E72C:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34E734)
34E730:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34E732:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34E734:  ADD             R0, R1
34E736:  STR             R0, [SP,#0x70+var_68]
34E738:  MOV             R0, R6; this
34E73A:  BLX             j__ZN12CMenuManager25CheckMissionPackValidMenuEv; CMenuManager::CheckMissionPackValidMenu(void)
34E73E:  CMP             R0, #0
34E740:  BEQ             loc_34E7C4
34E742:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
34E746:  LDRB.W          R2, [R11]; CGame::bMissionPackGame
34E74A:  MOV             R0, R4
34E74C:  MOV             R1, R10
34E74E:  BL              sub_5E6BC0
34E752:  MOV             R0, R4; this
34E754:  MOV             R1, R5; char *
34E756:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
34E75A:  MOV             R8, R0
34E75C:  CMP.W           R8, #0
34E760:  BEQ             loc_34E738
34E762:  LDR             R1, [SP,#0x70+var_64]; unsigned int
34E764:  MOV             R0, R8; this
34E766:  MOVS            R2, #0; int
34E768:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
34E76C:  LDR             R1, [SP,#0x70+var_68]; unsigned int
34E76E:  MOV             R0, R8; this
34E770:  MOV             R2, R9; char *
34E772:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
34E776:  MOV             R9, R0
34E778:  MOV             R0, R8; this
34E77A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
34E77E:  CMP.W           R9, #1
34E782:  MOV             R9, #0x10D88
34E78A:  BLT             loc_34E738
34E78C:  BLX             j__ZN11CTheScripts39WipeLocalVariableMemoryForMissionScriptEv; CTheScripts::WipeLocalVariableMemoryForMissionScript(void)
34E790:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34E7A0)
34E794:  MOV             R1, #stru_41EA8.st_size; unsigned __int8 *
34E79C:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34E79E:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34E7A0:  ADDS            R4, R0, R1
34E7A2:  MOV             R0, R4; this
34E7A4:  BLX             j__ZN11CTheScripts14StartNewScriptEPh; CTheScripts::StartNewScript(uchar *)
34E7A8:  LDR.W           R1, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x34E7B6)
34E7AC:  MOVS            R2, #1
34E7AE:  STRB.W          R2, [R0,#0xE6]
34E7B2:  ADD             R1, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
34E7B4:  STRB.W          R2, [R0,#0xFC]
34E7B8:  STR             R4, [R0,#0x10]
34E7BA:  MOVS            R0, #0; this
34E7BC:  LDR             R1, [R1]; bool
34E7BE:  STRB            R2, [R1]; CTheScripts::bAlreadyRunningAMissionScript
34E7C0:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
34E7C4:  LDR.W           R0, =(byte_61CD7E - 0x34E7CC)
34E7C8:  ADD             R0, PC; byte_61CD7E ; this
34E7CA:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
34E7CE:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x34E7D6)
34E7D2:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
34E7D4:  LDR             R0, [R0]; CGame::bMissionPackGame ...
34E7D6:  LDRB            R0, [R0]; CGame::bMissionPackGame
34E7D8:  CBNZ            R0, loc_34E838
34E7DA:  LDR.W           R0, =(aDataScriptMain - 0x34E7E6); "data\\script\\mainV1.scm"
34E7DE:  ADR.W           R1, aRb_7; "rb"
34E7E2:  ADD             R0, PC; "data\\script\\mainV1.scm"
34E7E4:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
34E7E8:  LDR             R1, [SP,#0x70+var_64]; unsigned int
34E7EA:  MOVS            R2, #0; int
34E7EC:  MOV             R4, R0
34E7EE:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
34E7F2:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34E7FC)
34E7F6:  MOV             R2, R9; char *
34E7F8:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34E7FA:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34E7FC:  ADD.W           R0, R0, #0x41000
34E800:  ADD.W           R5, R0, #0xEB0
34E804:  MOV             R0, R4; this
34E806:  MOV             R1, R5; unsigned int
34E808:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
34E80C:  MOV             R0, R4; this
34E80E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
34E812:  BLX             j__ZN11CTheScripts39WipeLocalVariableMemoryForMissionScriptEv; CTheScripts::WipeLocalVariableMemoryForMissionScript(void)
34E816:  MOV             R0, R5; this
34E818:  BLX             j__ZN11CTheScripts14StartNewScriptEPh; CTheScripts::StartNewScript(uchar *)
34E81C:  LDR.W           R1, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x34E82A)
34E820:  MOVS            R2, #1
34E822:  STRB.W          R2, [R0,#0xE6]
34E826:  ADD             R1, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
34E828:  STRB.W          R2, [R0,#0xFC]
34E82C:  STR             R5, [R0,#0x10]
34E82E:  MOVS            R0, #0; this
34E830:  LDR             R1, [R1]; bool
34E832:  STRB            R2, [R1]; CTheScripts::bAlreadyRunningAMissionScript
34E834:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
34E838:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
34E83C:  LDR.W           R0, =(missionReplaySetting_ptr - 0x34E846)
34E840:  MOVS            R5, #0
34E842:  ADD             R0, PC; missionReplaySetting_ptr
34E844:  LDR             R0, [R0]; missionReplaySetting
34E846:  STR             R5, [R0]
34E848:  B.W             loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E84C:  MOV             R0, R4; jumptable 0034E2E2 case 1048
34E84E:  MOVS            R1, #2; __int16
34E850:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E854:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34E866)
34E858:  MOV.W           R3, #0x1A4
34E85C:  LDR.W           R0, =(ScriptParams_ptr - 0x34E868)
34E860:  MOVS            R5, #0
34E862:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34E864:  ADD             R0, PC; ScriptParams_ptr
34E866:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
34E868:  LDR             R0, [R0]; ScriptParams
34E86A:  LDRD.W          R2, R0, [R0]
34E86E:  CMP             R0, #0
34E870:  LDR             R1, [R1]; CPools::ms_pObjectPool
34E872:  MOV.W           R2, R2,LSR#8
34E876:  LDR             R1, [R1]
34E878:  MLA.W           R1, R2, R3, R1
34E87C:  LDR             R2, [R1,#0x1C]
34E87E:  BIC.W           R3, R2, #0x4000
34E882:  IT NE
34E884:  ORRNE.W         R3, R2, #0x4000
34E888:  STR             R3, [R1,#0x1C]
34E88A:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E88C:  MOV             R0, R4; jumptable 0034E2E2 case 1050
34E88E:  MOVS            R1, #2; __int16
34E890:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E894:  LDR.W           R0, =(ScriptParams_ptr - 0x34E89E)
34E898:  MOVS            R1, #0
34E89A:  ADD             R0, PC; ScriptParams_ptr
34E89C:  LDR             R0, [R0]; ScriptParams
34E89E:  LDR             R0, [R0]
34E8A0:  CMP             R0, #0
34E8A2:  BLT.W           loc_34ED8C
34E8A6:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34E8B2)
34E8AA:  UXTB            R6, R0
34E8AC:  LSRS            R0, R0, #8
34E8AE:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
34E8B0:  LDR             R2, [R2]; CPools::ms_pPedPool ...
34E8B2:  LDR             R2, [R2]; CPools::ms_pPedPool
34E8B4:  LDR             R3, [R2,#4]
34E8B6:  LDRB            R3, [R3,R0]
34E8B8:  CMP             R3, R6
34E8BA:  BNE.W           loc_34ED8C
34E8BE:  MOVW            R3, #0x7CC
34E8C2:  LDR             R2, [R2]
34E8C4:  MLA.W           R0, R0, R3, R2
34E8C8:  B               loc_34ED8E
34E8CA:  MOV             R0, R4; jumptable 0034E2E2 case 1053
34E8CC:  MOVS            R1, #1; __int16
34E8CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E8D2:  LDR.W           R0, =(ScriptParams_ptr - 0x34E8DE)
34E8D6:  LDR.W           R2, =(TheCamera_ptr - 0x34E8E0)
34E8DA:  ADD             R0, PC; ScriptParams_ptr
34E8DC:  ADD             R2, PC; TheCamera_ptr
34E8DE:  LDR             R0, [R0]; ScriptParams
34E8E0:  LDR             R1, [R0]; float
34E8E2:  LDR             R0, [R2]; TheCamera ; this
34E8E4:  BLX             j__ZN7CCamera17SetNearClipScriptEf; CCamera::SetNearClipScript(float)
34E8E8:  B               loc_34F06C
34E8EA:  MOV             R0, R4; jumptable 0034E2E2 case 1054
34E8EC:  MOVS            R1, #1; __int16
34E8EE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E8F2:  LDR.W           R0, =(ScriptParams_ptr - 0x34E8FA)
34E8F6:  ADD             R0, PC; ScriptParams_ptr
34E8F8:  LDR             R0, [R0]; ScriptParams
34E8FA:  LDR             R0, [R0]
34E8FC:  ADDS            R1, R0, #1
34E8FE:  BEQ.W           loc_34F06C
34E902:  CMP             R0, #0xB
34E904:  BNE             loc_34E912
34E906:  LDR.W           R0, =(ScriptParams_ptr - 0x34E90E)
34E90A:  ADD             R0, PC; ScriptParams_ptr
34E90C:  LDR             R1, [R0]; ScriptParams
34E90E:  MOVS            R0, #0xC
34E910:  STR             R0, [R1]
34E912:  LDR.W           R1, =(AudioEngine_ptr - 0x34E91C)
34E916:  ADDS            R2, R0, #1
34E918:  ADD             R1, PC; AudioEngine_ptr
34E91A:  LDR             R0, [R1]; AudioEngine ; this
34E91C:  SXTB            R1, R2; signed __int8
34E91E:  BLX             j__ZN12CAudioEngine11RetuneRadioEa; CAudioEngine::RetuneRadio(signed char)
34E922:  B               loc_34F06C
34E924:  MOV             R0, R4; jumptable 0034E2E2 case 1059
34E926:  MOVS            R1, #2; __int16
34E928:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E92C:  LDR.W           R0, =(ScriptParams_ptr - 0x34E934)
34E930:  ADD             R0, PC; ScriptParams_ptr
34E932:  LDR             R0, [R0]; ScriptParams
34E934:  LDR             R1, [R0]
34E936:  CMP             R1, #0
34E938:  BLT.W           loc_34EEA6
34E93C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E948)
34E940:  UXTB            R3, R1
34E942:  LSRS            R1, R1, #8
34E944:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E946:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34E948:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34E94A:  LDR             R2, [R0,#4]
34E94C:  LDRB            R2, [R2,R1]
34E94E:  CMP             R2, R3
34E950:  BNE.W           loc_34EEA6
34E954:  MOVW            R2, #0xA2C
34E958:  LDR             R0, [R0]
34E95A:  MLA.W           R0, R1, R2, R0
34E95E:  B               loc_34EEA8
34E960:  BLX             j__ZN13CLocalisation6MetricEv; jumptable 0034E2E2 case 1060
34E964:  CMP             R0, #0
34E966:  BEQ.W           loc_34EFAE
34E96A:  MOV             R0, R4
34E96C:  MOVS            R1, #1
34E96E:  B               loc_34EF7E
34E970:  MOV             R0, R4; jumptable 0034E2E2 case 1061
34E972:  MOVS            R1, #1; __int16
34E974:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E978:  LDR.W           R0, =(ScriptParams_ptr - 0x34E984)
34E97C:  VLDR            S0, =0.3
34E980:  ADD             R0, PC; ScriptParams_ptr
34E982:  LDR             R0, [R0]; ScriptParams
34E984:  VLDR            S2, [R0]
34E988:  VDIV.F32        S0, S2, S0
34E98C:  VSTR            S0, [R0]
34E990:  B               loc_34EEA0
34E992:  MOV             R0, R4; jumptable 0034E2E2 case 1064
34E994:  MOVS            R1, #2; __int16
34E996:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E99A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34E9AC)
34E99E:  MOVW            R3, #0xA2C
34E9A2:  LDR.W           R0, =(ScriptParams_ptr - 0x34E9AE)
34E9A6:  MOVS            R5, #0
34E9A8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34E9AA:  ADD             R0, PC; ScriptParams_ptr
34E9AC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34E9AE:  LDR             R0, [R0]; ScriptParams
34E9B0:  LDRD.W          R2, R0, [R0]
34E9B4:  CMP             R0, #0
34E9B6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34E9B8:  MOV.W           R2, R2,LSR#8
34E9BC:  LDR             R1, [R1]
34E9BE:  MLA.W           R1, R2, R3, R1
34E9C2:  LDRH.W          R2, [R1,#0x3DF]
34E9C6:  BIC.W           R3, R2, #4
34E9CA:  IT NE
34E9CC:  ORRNE.W         R3, R2, #4
34E9D0:  STRH.W          R3, [R1,#0x3DF]
34E9D4:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34E9D6:  MOV             R0, R4; jumptable 0034E2E2 case 1067
34E9D8:  MOVS            R1, #6; __int16
34E9DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34E9DE:  LDR.W           R0, =(ScriptParams_ptr - 0x34E9E6)
34E9E2:  ADD             R0, PC; ScriptParams_ptr
34E9E4:  LDR             R0, [R0]; ScriptParams
34E9E6:  VLDR            S0, [R0]
34E9EA:  VLDR            S6, [R0,#0xC]
34E9EE:  VLDR            S2, [R0,#4]
34E9F2:  VLDR            S8, [R0,#0x10]
34E9F6:  VMIN.F32        D6, D0, D3
34E9FA:  VLDR            S4, [R0,#8]
34E9FE:  VMAX.F32        D0, D0, D3
34EA02:  VLDR            S10, [R0,#0x14]
34EA06:  VMIN.F32        D7, D1, D4
34EA0A:  VMAX.F32        D1, D1, D4
34EA0E:  VMIN.F32        D8, D2, D5
34EA12:  VMOV            R0, S12; this
34EA16:  VMOV            R3, S0; float
34EA1A:  VMOV            R1, S14; float
34EA1E:  VMAX.F32        D0, D2, D5
34EA22:  VSTR            S2, [SP,#0x70+var_70]
34EA26:  VMOV            R2, S16; float
34EA2A:  VSTR            S0, [SP,#0x70+var_6C]
34EA2E:  BLX             j__ZN6CWorld17ClearPedsFromAreaEffffff; CWorld::ClearPedsFromArea(float,float,float,float,float,float)
34EA32:  B               loc_34F06C
34EA34:  MOV             R0, R4; jumptable 0034E2E2 case 1068
34EA36:  MOVS            R1, #1; __int16
34EA38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EA3C:  LDR.W           R0, =(ScriptParams_ptr - 0x34EA44)
34EA40:  ADD             R0, PC; ScriptParams_ptr
34EA42:  LDR             R0, [R0]; ScriptParams
34EA44:  LDR             R0, [R0]
34EA46:  VMOV            S0, R0
34EA4A:  MOVS            R0, #0x94
34EA4C:  VCVT.F32.S32    S0, S0
34EA50:  VMOV            R1, S0
34EA54:  NOP
34EA56:  NOP
34EA58:  B               loc_34F06C
34EA5A:  MOV             R0, R4; jumptable 0034E2E2 case 1069
34EA5C:  MOVS            R1, #1; __int16
34EA5E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EA62:  LDR.W           R0, =(ScriptParams_ptr - 0x34EA6E)
34EA66:  VLDR            S2, =0.3
34EA6A:  ADD             R0, PC; ScriptParams_ptr
34EA6C:  LDR             R0, [R0]; ScriptParams
34EA6E:  VLDR            S0, [R0]
34EA72:  VCVT.F32.S32    S0, S0
34EA76:  VDIV.F32        S0, S0, S2
34EA7A:  VCVT.S32.F32    S0, S0
34EA7E:  VSTR            S0, [R0]
34EA82:  B               loc_34EEA0
34EA84:  MOV             R0, R4; jumptable 0034E2E2 case 1070
34EA86:  MOVS            R1, #2; __int16
34EA88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EA8C:  LDR.W           R0, =(ScriptParams_ptr - 0x34EA94)
34EA90:  ADD             R0, PC; ScriptParams_ptr
34EA92:  LDR             R1, [R0]; ScriptParams
34EA94:  LDRD.W          R0, R1, [R1]; int
34EA98:  BLX             j__ZN6CStats19RegisterFastestTimeEii; CStats::RegisterFastestTime(int,int)
34EA9C:  B               loc_34F06C
34EA9E:  MOV             R0, R4; jumptable 0034E2E2 case 1072
34EAA0:  MOVS            R1, #3; __int16
34EAA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EAA6:  LDR.W           R0, =(ScriptParams_ptr - 0x34EAAE)
34EAAA:  ADD             R0, PC; ScriptParams_ptr
34EAAC:  LDR             R0, [R0]; ScriptParams
34EAAE:  LDRD.W          R1, R0, [R0]
34EAB2:  CMP             R1, #0
34EAB4:  BLT.W           loc_34EEC6
34EAB8:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34EAC4)
34EABC:  UXTB            R6, R1
34EABE:  LSRS            R1, R1, #8
34EAC0:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
34EAC2:  LDR             R2, [R2]; CPools::ms_pPedPool ...
34EAC4:  LDR             R2, [R2]; CPools::ms_pPedPool
34EAC6:  LDR             R3, [R2,#4]
34EAC8:  LDRB            R3, [R3,R1]
34EACA:  CMP             R3, R6
34EACC:  BNE.W           loc_34EEC6
34EAD0:  MOVW            R3, #0x7CC
34EAD4:  LDR             R2, [R2]; int
34EAD6:  MLA.W           R8, R1, R3, R2
34EADA:  CMP             R0, #0
34EADC:  BGE.W           loc_34EECE
34EAE0:  B               loc_34EF1C
34EAE2:  MOV             R0, R4; jumptable 0034E2E2 case 1073
34EAE4:  MOVS            R1, #2; __int16
34EAE6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EAEA:  LDR.W           R0, =(ScriptParams_ptr - 0x34EAFA)
34EAEE:  MOVW            R3, #0xA2C
34EAF2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34EAFC)
34EAF6:  ADD             R0, PC; ScriptParams_ptr
34EAF8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34EAFA:  LDR             R0, [R0]; ScriptParams
34EAFC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34EAFE:  LDRD.W          R2, R0, [R0]
34EB02:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34EB04:  LSRS            R2, R2, #8
34EB06:  LDR             R1, [R1]
34EB08:  MLA.W           R2, R2, R3, R1
34EB0C:  MOVS            R1, #0
34EB0E:  LDRB.W          R3, [R2,#0x48C]
34EB12:  CMP             R0, R3
34EB14:  BGE.W           loc_34EF7C
34EB18:  ADD.W           R0, R2, R0,LSL#2
34EB1C:  LDR.W           R0, [R0,#0x468]
34EB20:  CMP             R0, #0
34EB22:  IT EQ
34EB24:  MOVEQ           R1, #1
34EB26:  B               loc_34EF7C
34EB28:  MOV             R0, R4; jumptable 0034E2E2 case 1074
34EB2A:  MOVS            R1, #2; __int16
34EB2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EB30:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34EB40)
34EB34:  MOVW            R5, #0xA2C
34EB38:  LDR.W           R0, =(ScriptParams_ptr - 0x34EB46)
34EB3C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34EB3E:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34EB4A)
34EB42:  ADD             R0, PC; ScriptParams_ptr
34EB44:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34EB46:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
34EB48:  LDR             R0, [R0]; ScriptParams
34EB4A:  LDR             R2, [R2]; CPools::ms_pPedPool ...
34EB4C:  LDRD.W          R3, R6, [R0]
34EB50:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34EB52:  LDR             R2, [R2]; CPools::ms_pPedPool
34EB54:  LSRS            R3, R3, #8
34EB56:  LDR             R1, [R1]
34EB58:  MLA.W           R1, R3, R5, R1
34EB5C:  LDRD.W          R3, R2, [R2]
34EB60:  ADD.W           R1, R1, R6,LSL#2
34EB64:  LDR.W           R1, [R1,#0x468]
34EB68:  SUBS            R1, R1, R3
34EB6A:  MOV             R3, #0xBED87F3B
34EB72:  ASRS            R1, R1, #2
34EB74:  MULS            R1, R3
34EB76:  LDRB            R2, [R2,R1]
34EB78:  ORR.W           R1, R2, R1,LSL#8
34EB7C:  STR             R1, [R0]
34EB7E:  B               loc_34EEA0
34EB80:  MOV             R0, R4; jumptable 0034E2E2 case 1075
34EB82:  MOVS            R1, #2; __int16
34EB84:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EB88:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34EB98)
34EB8C:  MOVW            R3, #0x7CC
34EB90:  LDR.W           R0, =(ScriptParams_ptr - 0x34EB9A)
34EB94:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34EB96:  ADD             R0, PC; ScriptParams_ptr
34EB98:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34EB9A:  LDR             R0, [R0]; ScriptParams
34EB9C:  LDRD.W          R2, R0, [R0]
34EBA0:  CMP             R0, #0
34EBA2:  LDR             R1, [R1]; CPools::ms_pPedPool
34EBA4:  MOV.W           R2, R2,LSR#8
34EBA8:  LDR             R1, [R1]
34EBAA:  MLA.W           R1, R2, R3, R1
34EBAE:  LDR.W           R2, [R1,#0x488]
34EBB2:  BIC.W           R3, R2, #0x400
34EBB6:  IT NE
34EBB8:  ORRNE.W         R3, R2, #0x400
34EBBC:  B               loc_34EC92
34EBBE:  BLX             j__ZN8CCredits5StartEv; jumptable 0034E2E2 case 1076
34EBC2:  B               loc_34F06C
34EBC4:  BLX             j__ZN8CCredits4StopEv; jumptable 0034E2E2 case 1077
34EBC8:  B               loc_34F06C
34EBCA:  LDR.W           R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x34EBD2); jumptable 0034E2E2 case 1078
34EBCE:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
34EBD0:  LDR             R0, [R0]; CCredits::bCreditsGoing ...
34EBD2:  LDRB            R0, [R0]; CCredits::bCreditsGoing
34EBD4:  EOR.W           R1, R0, #1
34EBD8:  B               loc_34EF7C
34EBDA:  MOV             R0, R4; jumptable 0034E2E2 case 1084
34EBDC:  MOVS            R1, #1; __int16
34EBDE:  MOVS            R5, #1
34EBE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EBE4:  LDR.W           R0, =(ScriptParams_ptr - 0x34EBEC)
34EBE8:  ADD             R0, PC; ScriptParams_ptr
34EBEA:  LDR             R0, [R0]; ScriptParams
34EBEC:  LDR             R0, [R0]
34EBEE:  CMP             R0, #0
34EBF0:  BEQ.W           loc_34EFBA
34EBF4:  LDR.W           R0, =(TheCamera_ptr - 0x34EBFE)
34EBF8:  MOVS            R5, #0
34EBFA:  ADD             R0, PC; TheCamera_ptr
34EBFC:  LDR             R0, [R0]; TheCamera
34EBFE:  STRB.W          R5, [R0,#(byte_951FCB - 0x951FA8)]
34EC02:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34EC04:  MOV             R0, R4; jumptable 0034E2E2 case 1089
34EC06:  MOVS            R1, #1; __int16
34EC08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EC0C:  LDR.W           R0, =(ScriptParams_ptr - 0x34EC1C)
34EC10:  MOVW            R3, #0xA2C
34EC14:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34EC1E)
34EC18:  ADD             R0, PC; ScriptParams_ptr
34EC1A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34EC1C:  LDR             R0, [R0]; ScriptParams
34EC1E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34EC20:  LDR             R2, [R0]
34EC22:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34EC24:  LSRS            R2, R2, #8
34EC26:  LDR             R1, [R1]
34EC28:  MLA.W           R1, R2, R3, R1
34EC2C:  LDRSH.W         R1, [R1,#0x26]
34EC30:  STR             R1, [R0]
34EC32:  B               loc_34EEA0
34EC34:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x34EC3C); jumptable 0034E2E2 case 1093
34EC38:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
34EC3A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
34EC3C:  LDRB.W          R1, [R0,#(byte_796817 - 0x7967F4)]
34EC40:  LDRB.W          R2, [R0,#(byte_79681D - 0x7967F4)]
34EC44:  LDRB.W          R0, [R0,#(byte_79681E - 0x7967F4)]
34EC48:  ORRS            R1, R2
34EC4A:  ORRS            R0, R1
34EC4C:  UXTB            R1, R0
34EC4E:  CMP             R1, #0
34EC50:  IT NE
34EC52:  MOVNE           R1, #1
34EC54:  B               loc_34EF7C
34EC56:  MOV             R0, R4; jumptable 0034E2E2 case 1094
34EC58:  MOVS            R1, #2; __int16
34EC5A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34EC5E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34EC6E)
34EC62:  MOVW            R3, #0x7CC
34EC66:  LDR.W           R0, =(ScriptParams_ptr - 0x34EC70)
34EC6A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34EC6C:  ADD             R0, PC; ScriptParams_ptr
34EC6E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34EC70:  LDR             R0, [R0]; ScriptParams
34EC72:  LDRD.W          R2, R0, [R0]
34EC76:  CMP             R0, #0
34EC78:  LDR             R1, [R1]; CPools::ms_pPedPool
34EC7A:  MOV.W           R2, R2,LSR#8
34EC7E:  LDR             R1, [R1]
34EC80:  MLA.W           R1, R2, R3, R1
34EC84:  LDR.W           R2, [R1,#0x488]
34EC88:  ORR.W           R3, R2, #0x1000
34EC8C:  IT NE
34EC8E:  BICNE.W         R3, R2, #0x1000
34EC92:  STR.W           R3, [R1,#0x488]
34EC96:  B               loc_34F06C
34EC98:  MOV             R0, R4; jumptable 0034E2E2 case 1096
34EC9A:  MOVS            R1, #2; __int16
34EC9C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34ECA0:  LDR.W           R0, =(ScriptParams_ptr - 0x34ECA8)
34ECA4:  ADD             R0, PC; ScriptParams_ptr
34ECA6:  LDR             R0, [R0]; ScriptParams
34ECA8:  LDR             R1, [R0]
34ECAA:  CMP             R1, #0
34ECAC:  BLT.W           loc_34EEEE
34ECB0:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34ECBC)
34ECB4:  UXTB            R3, R1
34ECB6:  LSRS            R1, R1, #8
34ECB8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34ECBA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34ECBC:  LDR             R0, [R0]; CPools::ms_pPedPool
34ECBE:  LDR             R2, [R0,#4]
34ECC0:  LDRB            R2, [R2,R1]
34ECC2:  CMP             R2, R3
34ECC4:  BNE.W           loc_34EEEE
34ECC8:  MOVW            R2, #0x7CC
34ECCC:  LDR             R0, [R0]
34ECCE:  MLA.W           R0, R1, R2, R0
34ECD2:  B               loc_34EEF0
34ECD4:  MOV             R0, R4; jumptable 0034E2E2 case 1097
34ECD6:  MOVS            R1, #1; __int16
34ECD8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34ECDC:  LDR.W           R0, =(ScriptParams_ptr - 0x34ECEC)
34ECE0:  MOVW            R2, #0x7CC
34ECE4:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34ECEE)
34ECE8:  ADD             R0, PC; ScriptParams_ptr
34ECEA:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34ECEC:  LDR             R0, [R0]; ScriptParams
34ECEE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34ECF0:  LDR             R0, [R0]
34ECF2:  LDR             R1, [R1]; CPools::ms_pPedPool
34ECF4:  LSRS            R0, R0, #8
34ECF6:  LDR             R1, [R1]
34ECF8:  MLA.W           R0, R0, R2, R1
34ECFC:  LDRB.W          R1, [R0,#0x485]
34ED00:  LSLS            R1, R1, #0x1F
34ED02:  BEQ.W           loc_34EF7A
34ED06:  B               loc_34EF48
34ED08:  DCFS 0.3
34ED0C:  MOV             R0, R4; jumptable 0034E2E2 case 1099
34ED0E:  MOVS            R1, #1; __int16
34ED10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34ED14:  LDR             R0, =(ScriptParams_ptr - 0x34ED20)
34ED16:  MOVW            R2, #0x7CC
34ED1A:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34ED22)
34ED1C:  ADD             R0, PC; ScriptParams_ptr
34ED1E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34ED20:  LDR             R0, [R0]; ScriptParams
34ED22:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34ED24:  LDR             R0, [R0]
34ED26:  LDR             R1, [R1]; CPools::ms_pPedPool
34ED28:  LSRS            R0, R0, #8
34ED2A:  LDR             R1, [R1]
34ED2C:  MLA.W           R5, R0, R2, R1
34ED30:  LDRB.W          R0, [R5,#0x485]
34ED34:  LSLS            R0, R0, #0x1F
34ED36:  BNE.W           loc_34EF7A
34ED3A:  LDR.W           R0, [R5,#0x440]
34ED3E:  MOV.W           R1, #0x2BC; int
34ED42:  ADDS            R0, #4; this
34ED44:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
34ED48:  CMP             R0, #0
34ED4A:  BNE.W           loc_34EF7A
34ED4E:  ADD.W           R0, R5, #0x440
34ED52:  MOVW            R1, #0x2BD; int
34ED56:  LDR             R0, [R0]
34ED58:  ADDS            R0, #4; this
34ED5A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
34ED5E:  CMP             R0, #0
34ED60:  BNE.W           loc_34EF7A
34ED64:  B               loc_34EF76
34ED66:  MOVS            R4, #0
34ED68:  LDR.W           R0, =(ScriptParams_ptr - 0x34ED70)
34ED6C:  ADD             R0, PC; ScriptParams_ptr
34ED6E:  LDR             R0, [R0]; ScriptParams
34ED70:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
34ED72:  CMP             R0, #0
34ED74:  BEQ.W           loc_34EFC6
34ED78:  LDR.W           R0, [R4,#0x42C]
34ED7C:  ORR.W           R0, R0, #0x200000
34ED80:  B               loc_34EFD4
34ED82:  MOVS            R5, #0
34ED84:  LDR.W           R0, =(ScriptParams_ptr - 0x34ED8C)
34ED88:  ADD             R0, PC; ScriptParams_ptr
34ED8A:  B               loc_34F012
34ED8C:  MOVS            R0, #0
34ED8E:  LDR.W           R2, =(ScriptParams_ptr - 0x34ED96)
34ED92:  ADD             R2, PC; ScriptParams_ptr
34ED94:  LDR             R2, [R2]; ScriptParams
34ED96:  STR             R1, [R2]
34ED98:  LDR             R1, [R2,#(dword_81A90C - 0x81A908)]
34ED9A:  LDR.W           R2, [R0,#0x5A4]
34ED9E:  CMP             R2, R1
34EDA0:  BNE             loc_34EDB0
34EDA2:  LDR.W           R2, =(ScriptParams_ptr - 0x34EDAE)
34EDA6:  LDR.W           R3, [R0,#0x5B0]
34EDAA:  ADD             R2, PC; ScriptParams_ptr
34EDAC:  LDR             R2, [R2]; ScriptParams
34EDAE:  STR             R3, [R2]
34EDB0:  LDR.W           R2, [R0,#0x5C0]
34EDB4:  CMP             R2, R1
34EDB6:  BNE             loc_34EDC4
34EDB8:  LDR             R2, =(ScriptParams_ptr - 0x34EDC2)
34EDBA:  LDR.W           R3, [R0,#0x5CC]
34EDBE:  ADD             R2, PC; ScriptParams_ptr
34EDC0:  LDR             R2, [R2]; ScriptParams
34EDC2:  STR             R3, [R2]
34EDC4:  LDR.W           R2, [R0,#0x5DC]
34EDC8:  CMP             R2, R1
34EDCA:  BNE             loc_34EDD8
34EDCC:  LDR             R2, =(ScriptParams_ptr - 0x34EDD6)
34EDCE:  LDR.W           R3, [R0,#0x5E8]
34EDD2:  ADD             R2, PC; ScriptParams_ptr
34EDD4:  LDR             R2, [R2]; ScriptParams
34EDD6:  STR             R3, [R2]
34EDD8:  LDR.W           R2, [R0,#0x5F8]
34EDDC:  CMP             R2, R1
34EDDE:  BNE             loc_34EDEC
34EDE0:  LDR             R2, =(ScriptParams_ptr - 0x34EDEA)
34EDE2:  LDR.W           R3, [R0,#0x604]
34EDE6:  ADD             R2, PC; ScriptParams_ptr
34EDE8:  LDR             R2, [R2]; ScriptParams
34EDEA:  STR             R3, [R2]
34EDEC:  LDR.W           R2, [R0,#0x614]
34EDF0:  CMP             R2, R1
34EDF2:  BNE             loc_34EE00
34EDF4:  LDR             R2, =(ScriptParams_ptr - 0x34EDFE)
34EDF6:  LDR.W           R3, [R0,#0x620]
34EDFA:  ADD             R2, PC; ScriptParams_ptr
34EDFC:  LDR             R2, [R2]; ScriptParams
34EDFE:  STR             R3, [R2]
34EE00:  LDR.W           R2, [R0,#0x630]
34EE04:  CMP             R2, R1
34EE06:  BNE             loc_34EE14
34EE08:  LDR             R2, =(ScriptParams_ptr - 0x34EE12)
34EE0A:  LDR.W           R3, [R0,#0x63C]
34EE0E:  ADD             R2, PC; ScriptParams_ptr
34EE10:  LDR             R2, [R2]; ScriptParams
34EE12:  STR             R3, [R2]
34EE14:  LDR.W           R2, [R0,#0x64C]
34EE18:  CMP             R2, R1
34EE1A:  BNE             loc_34EE28
34EE1C:  LDR             R2, =(ScriptParams_ptr - 0x34EE26)
34EE1E:  LDR.W           R3, [R0,#0x658]
34EE22:  ADD             R2, PC; ScriptParams_ptr
34EE24:  LDR             R2, [R2]; ScriptParams
34EE26:  STR             R3, [R2]
34EE28:  LDR.W           R2, [R0,#0x668]
34EE2C:  CMP             R2, R1
34EE2E:  BNE             loc_34EE3C
34EE30:  LDR             R2, =(ScriptParams_ptr - 0x34EE3A)
34EE32:  LDR.W           R3, [R0,#0x674]
34EE36:  ADD             R2, PC; ScriptParams_ptr
34EE38:  LDR             R2, [R2]; ScriptParams
34EE3A:  STR             R3, [R2]
34EE3C:  LDR.W           R2, [R0,#0x684]
34EE40:  CMP             R2, R1
34EE42:  BNE             loc_34EE50
34EE44:  LDR             R2, =(ScriptParams_ptr - 0x34EE4E)
34EE46:  LDR.W           R3, [R0,#0x690]
34EE4A:  ADD             R2, PC; ScriptParams_ptr
34EE4C:  LDR             R2, [R2]; ScriptParams
34EE4E:  STR             R3, [R2]
34EE50:  LDR.W           R2, [R0,#0x6A0]
34EE54:  CMP             R2, R1
34EE56:  BNE             loc_34EE64
34EE58:  LDR             R2, =(ScriptParams_ptr - 0x34EE62)
34EE5A:  LDR.W           R3, [R0,#0x6AC]
34EE5E:  ADD             R2, PC; ScriptParams_ptr
34EE60:  LDR             R2, [R2]; ScriptParams
34EE62:  STR             R3, [R2]
34EE64:  LDR.W           R2, [R0,#0x6BC]
34EE68:  CMP             R2, R1
34EE6A:  BNE             loc_34EE78
34EE6C:  LDR             R2, =(ScriptParams_ptr - 0x34EE76)
34EE6E:  LDR.W           R3, [R0,#0x6C8]
34EE72:  ADD             R2, PC; ScriptParams_ptr
34EE74:  LDR             R2, [R2]; ScriptParams
34EE76:  STR             R3, [R2]
34EE78:  LDR.W           R2, [R0,#0x6D8]
34EE7C:  CMP             R2, R1
34EE7E:  BNE             loc_34EE8C
34EE80:  LDR             R2, =(ScriptParams_ptr - 0x34EE8A)
34EE82:  LDR.W           R3, [R0,#0x6E4]
34EE86:  ADD             R2, PC; ScriptParams_ptr
34EE88:  LDR             R2, [R2]; ScriptParams
34EE8A:  STR             R3, [R2]
34EE8C:  LDR.W           R2, [R0,#0x6F4]
34EE90:  CMP             R2, R1
34EE92:  BNE             loc_34EEA0
34EE94:  LDR             R1, =(ScriptParams_ptr - 0x34EE9E)
34EE96:  LDR.W           R0, [R0,#0x700]
34EE9A:  ADD             R1, PC; ScriptParams_ptr
34EE9C:  LDR             R1, [R1]; ScriptParams
34EE9E:  STR             R0, [R1]
34EEA0:  MOV             R0, R4
34EEA2:  MOVS            R1, #1
34EEA4:  B               loc_34F068
34EEA6:  MOVS            R0, #0
34EEA8:  LDR             R1, =(ScriptParams_ptr - 0x34EEB8)
34EEAA:  ADD.W           R3, R0, #0x7A8
34EEAE:  LDR.W           R2, [R0,#0x5A0]
34EEB2:  MOVS            R5, #0
34EEB4:  ADD             R1, PC; ScriptParams_ptr
34EEB6:  CMP             R2, #0
34EEB8:  LDR             R1, [R1]; ScriptParams
34EEBA:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
34EEBC:  IT EQ
34EEBE:  ADDWEQ          R3, R0, #0x8B4
34EEC2:  STR             R1, [R3]
34EEC4:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34EEC6:  MOV.W           R8, #0
34EECA:  CMP             R0, #0
34EECC:  BLT             loc_34EF1C
34EECE:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34EED8)
34EED0:  UXTB            R3, R0
34EED2:  LSRS            R0, R0, #8
34EED4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34EED6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34EED8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34EEDA:  LDR             R2, [R1,#4]
34EEDC:  LDRB            R2, [R2,R0]
34EEDE:  CMP             R2, R3
34EEE0:  BNE             loc_34EF1C
34EEE2:  MOVW            R2, #0xA2C
34EEE6:  LDR             R1, [R1]
34EEE8:  MLA.W           R9, R0, R2, R1
34EEEC:  B               loc_34EF20
34EEEE:  MOVS            R0, #0
34EEF0:  LDR             R1, =(ScriptParams_ptr - 0x34EEF6)
34EEF2:  ADD             R1, PC; ScriptParams_ptr
34EEF4:  LDR             R1, [R1]; ScriptParams
34EEF6:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
34EEF8:  CMP             R2, #0
34EEFA:  BLT             loc_34EF36
34EEFC:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34EF06)
34EEFE:  UXTB            R6, R2
34EF00:  LSRS            R2, R2, #8
34EF02:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34EF04:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34EF06:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34EF08:  LDR             R3, [R1,#4]
34EF0A:  LDRB            R3, [R3,R2]
34EF0C:  CMP             R3, R6
34EF0E:  BNE             loc_34EF36
34EF10:  MOVW            R3, #0xA2C
34EF14:  LDR             R1, [R1]
34EF16:  MLA.W           R1, R2, R3, R1
34EF1A:  B               loc_34EF38
34EF1C:  MOV.W           R9, #0
34EF20:  LDR             R0, =(ScriptParams_ptr - 0x34EF26)
34EF22:  ADD             R0, PC; ScriptParams_ptr
34EF24:  LDR             R0, [R0]; ScriptParams
34EF26:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]; CVehicle *
34EF28:  CMP             R1, #0
34EF2A:  BLT             loc_34EFDA
34EF2C:  MOV             R0, R9; this
34EF2E:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
34EF32:  MOV             R6, R0
34EF34:  B               loc_34EFDC
34EF36:  MOVS            R1, #0
34EF38:  LDRB.W          R2, [R0,#0x485]
34EF3C:  LSLS            R2, R2, #0x1F
34EF3E:  BEQ             loc_34EF7A
34EF40:  LDR.W           R2, [R0,#0x590]
34EF44:  CMP             R2, R1
34EF46:  BNE             loc_34EF7A
34EF48:  LDR.W           R0, [R0,#0x440]
34EF4C:  ADDS            R0, #4; this
34EF4E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
34EF52:  MOV             R5, R0
34EF54:  CBZ             R5, loc_34EF7A
34EF56:  LDR             R0, [R5]
34EF58:  LDR             R1, [R0,#0x14]
34EF5A:  MOV             R0, R5
34EF5C:  BLX             R1
34EF5E:  MOVW            R1, #0x2C5
34EF62:  CMP             R0, R1
34EF64:  BEQ             loc_34EF76
34EF66:  LDR             R0, [R5]
34EF68:  LDR             R1, [R0,#0x14]
34EF6A:  MOV             R0, R5
34EF6C:  BLX             R1
34EF6E:  MOVW            R1, #0x3FE
34EF72:  CMP             R0, R1
34EF74:  BNE             loc_34EF7A
34EF76:  MOVS            R1, #1
34EF78:  B               loc_34EF7C
34EF7A:  MOVS            R1, #0; unsigned __int8
34EF7C:  MOV             R0, R4; this
34EF7E:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34EF82:  B               loc_34F06C
34EF84:  MOVS            R0, #0; this
34EF86:  MOVS            R5, #0
34EF88:  BLX             j__ZN6CWorld22SetAllCarsCanBeDamagedEb; CWorld::SetAllCarsCanBeDamaged(bool)
34EF8C:  ADD             R0, SP, #0x70+var_34; int
34EF8E:  MOV.W           R1, #0xFFFFFFFF
34EF92:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
34EF96:  ADD             R2, SP, #0x70+var_34
34EF98:  MOVS            R3, #0x457A0000
34EF9E:  LDM             R2, {R0-R2}
34EFA0:  BLX             j__ZN6CWorld27ExtinguishAllCarFiresInAreaE7CVectorf; CWorld::ExtinguishAllCarFiresInArea(CVector,float)
34EFA4:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34EFA6:  LDR             R0, =(ScriptParams_ptr - 0x34EFAE)
34EFA8:  MOVS            R5, #0
34EFAA:  ADD             R0, PC; ScriptParams_ptr
34EFAC:  B               loc_34F012
34EFAE:  MOV             R0, R4; this
34EFB0:  MOVS            R1, #0; unsigned __int8
34EFB2:  MOVS            R5, #0
34EFB4:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34EFB8:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34EFBA:  LDR             R0, =(TheCamera_ptr - 0x34EFC0)
34EFBC:  ADD             R0, PC; TheCamera_ptr
34EFBE:  LDR             R0, [R0]; TheCamera
34EFC0:  STRB.W          R5, [R0,#(byte_951FCB - 0x951FA8)]
34EFC4:  B               loc_34F06C
34EFC6:  MOV             R0, R4; this
34EFC8:  BLX             j__ZN8CVehicle17ExtinguishCarFireEv; CVehicle::ExtinguishCarFire(void)
34EFCC:  LDR.W           R0, [R4,#0x42C]
34EFD0:  BIC.W           R0, R0, #0x200000
34EFD4:  STR.W           R0, [R4,#0x42C]
34EFD8:  B               loc_34F06C
34EFDA:  MOVS            R6, #0
34EFDC:  LDR.W           R0, [R8,#0x440]; this
34EFE0:  MOVS            R1, #0; bool
34EFE2:  MOVS            R5, #0
34EFE4:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
34EFE8:  ADD             R4, SP, #0x70+var_60
34EFEA:  MOV             R1, R9; CVehicle *
34EFEC:  MOV             R2, R6; int
34EFEE:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
34EFF0:  MOV             R0, R4; this
34EFF2:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
34EFF6:  MOVS            R0, #1
34EFF8:  MOV             R1, R8; CPed *
34EFFA:  STRB.W          R0, [SP,#0x70+var_44]
34EFFE:  MOV             R0, R4; this
34F000:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassenger10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsPassenger::ProcessPed(CPed *)
34F004:  MOV             R0, R4; this
34F006:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerD2Ev; CTaskSimpleCarSetPedInAsPassenger::~CTaskSimpleCarSetPedInAsPassenger()
34F00A:  B               loc_34F06E; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34F00C:  LDR             R0, =(ScriptParams_ptr - 0x34F014)
34F00E:  MOVS            R5, #0
34F010:  ADD             R0, PC; ScriptParams_ptr
34F012:  LDR             R6, [R0]; ScriptParams
34F014:  ADDS            R2, R6, #4
34F016:  LDM             R2, {R0-R2}
34F018:  STR             R0, [SP,#0x70+var_60]
34F01A:  ADD             R0, SP, #0x70+var_40; CMatrix *
34F01C:  STR             R1, [SP,#0x70+var_5C]
34F01E:  STR             R2, [SP,#0x70+var_58]
34F020:  ADD             R2, SP, #0x70+var_60
34F022:  LDR             R1, [R5,#0x14]; CVector *
34F024:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
34F028:  LDR             R0, [R5,#0x14]
34F02A:  VLDR            S0, [SP,#0x70+var_40]
34F02E:  ADD.W           R1, R0, #0x30 ; '0'
34F032:  CMP             R0, #0
34F034:  VLDR            S2, [SP,#0x70+var_3C]
34F038:  MOV             R0, R4; this
34F03A:  VLDR            S4, [SP,#0x70+var_38]
34F03E:  IT EQ
34F040:  ADDEQ           R1, R5, #4
34F042:  VLDR            S6, [R1]
34F046:  VLDR            S8, [R1,#4]
34F04A:  VLDR            S10, [R1,#8]
34F04E:  VADD.F32        S0, S0, S6
34F052:  VADD.F32        S2, S2, S8
34F056:  MOVS            R1, #3; __int16
34F058:  VADD.F32        S4, S4, S10
34F05C:  VSTR            S0, [R6]
34F060:  VSTR            S2, [R6,#4]
34F064:  VSTR            S4, [R6,#8]
34F068:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34F06C:  MOVS            R5, #0
34F06E:  SXTB            R0, R5; jumptable 0034E2E2 cases 1000,1002,1033,1035,1046,1071,1086-1088
34F070:  ADD             SP, SP, #0x48 ; 'H'
34F072:  VPOP            {D8}
34F076:  ADD             SP, SP, #4
34F078:  POP.W           {R8-R11}
34F07C:  POP             {R4-R7,PC}
