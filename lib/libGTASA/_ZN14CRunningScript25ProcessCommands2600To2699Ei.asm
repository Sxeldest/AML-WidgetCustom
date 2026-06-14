; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2600To2699Ei
; Address            : 0x3401F0 - 0x341A26
; =========================================================

3401F0:  PUSH            {R4-R7,LR}
3401F2:  ADD             R7, SP, #0xC
3401F4:  PUSH.W          {R8-R11}
3401F8:  SUB             SP, SP, #4
3401FA:  VPUSH           {D8-D13}
3401FE:  SUB.W           SP, SP, #0x378; int
340202:  MOV             R4, SP
340204:  BFC.W           R4, #0, #4
340208:  MOV             SP, R4
34020A:  MOV             R4, R0
34020C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x340216)
340210:  MOV             R6, R1
340212:  ADD             R0, PC; __stack_chk_guard_ptr
340214:  LDR             R0, [R0]; __stack_chk_guard
340216:  LDR             R0, [R0]
340218:  STR             R0, [SP,#0x3C8+var_54]
34021A:  SUBW            R0, R6, #0xA28; switch 105 cases
34021E:  CMP             R0, #0x68 ; 'h'
340220:  BHI.W           def_340226; jumptable 00340226 default case
340224:  MOVS            R5, #0
340226:  TBH.W           [PC,R0,LSL#1]; switch jump
34022A:  DCW 0xD6; jump table for switch statement
34022C:  DCW 0x10A
34022E:  DCW 0x125
340230:  DCW 0x148
340232:  DCW 0x150
340234:  DCW 0x15B
340236:  DCW 0x166
340238:  DCW 0x186
34023A:  DCW 0x19A
34023C:  DCW 0x1BD
34023E:  DCW 0x1D0
340240:  DCW 0x1F3
340242:  DCW 0xAFC
340244:  DCW 0x226
340246:  DCW 0x24A
340248:  DCW 0x24E
34024A:  DCW 0xAFC
34024C:  DCW 0x25C
34024E:  DCW 0x268
340250:  DCW 0x28C
340252:  DCW 0x2A4
340254:  DCW 0x2BE
340256:  DCW 0x2D6
340258:  DCW 0x38E
34025A:  DCW 0x399
34025C:  DCW 0x3A8
34025E:  DCW 0xAFC
340260:  DCW 0x3B5
340262:  DCW 0x3B9
340264:  DCW 0x3CC
340266:  DCW 0x3EE
340268:  DCW 0x405
34026A:  DCW 0x40A
34026C:  DCW 0xB9
34026E:  DCW 0x41F
340270:  DCW 0x436
340272:  DCW 0x43E
340274:  DCW 0xB9
340276:  DCW 0xB9
340278:  DCW 0xB9
34027A:  DCW 0x445
34027C:  DCW 0x44E
34027E:  DCW 0x45E
340280:  DCW 0x485
340282:  DCW 0x495
340284:  DCW 0x4AD
340286:  DCW 0x4BB
340288:  DCW 0x4C9
34028A:  DCW 0x4E9
34028C:  DCW 0x504
34028E:  DCW 0x51C
340290:  DCW 0x53F
340292:  DCW 0x55D
340294:  DCW 0x58A
340296:  DCW 0xC0
340298:  DCW 0x5AB
34029A:  DCW 0x5B8
34029C:  DCW 0x5C6
34029E:  DCW 0x5D4
3402A0:  DCW 0x5E2
3402A2:  DCW 0x5F0
3402A4:  DCW 0x5F9
3402A6:  DCW 0x601
3402A8:  DCW 0x60F
3402AA:  DCW 0x621
3402AC:  DCW 0x633
3402AE:  DCW 0x64B
3402B0:  DCW 0x671
3402B2:  DCW 0xC0
3402B4:  DCW 0x69
3402B6:  DCW 0x67E
3402B8:  DCW 0x697
3402BA:  DCW 0x733
3402BC:  DCW 0x7E2
3402BE:  DCW 0x8B1
3402C0:  DCW 0x8B7
3402C2:  DCW 0x8C3
3402C4:  DCW 0x8D2
3402C6:  DCW 0x8ED
3402C8:  DCW 0x8F9
3402CA:  DCW 0x69
3402CC:  DCW 0x69
3402CE:  DCW 0x69
3402D0:  DCW 0x69
3402D2:  DCW 0x69
3402D4:  DCW 0x69
3402D6:  DCW 0x69
3402D8:  DCW 0x69
3402DA:  DCW 0x69
3402DC:  DCW 0x92
3402DE:  DCW 0x92
3402E0:  DCW 0x92
3402E2:  DCW 0x92
3402E4:  DCW 0x92
3402E6:  DCW 0x92
3402E8:  DCW 0x92
3402EA:  DCW 0x92
3402EC:  DCW 0x91B
3402EE:  DCW 0x927
3402F0:  DCW 0x94D
3402F2:  DCW 0x967
3402F4:  DCW 0x96C
3402F6:  DCW 0x97A
3402F8:  DCW 0x97F
3402FA:  DCW 0x994
3402FC:  ADD             R5, SP, #0x3C8+var_60; jumptable 00340226 cases 2669,2680-2688
3402FE:  MOV             R0, R4; this
340300:  MOVS            R2, #8; unsigned __int8
340302:  MOV             R1, R5; char *
340304:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
340308:  LDR.W           R0, =(TheText_ptr - 0x340312)
34030C:  MOV             R1, R5; CKeyGen *
34030E:  ADD             R0, PC; TheText_ptr
340310:  LDR             R0, [R0]; TheText ; this
340312:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
340316:  MOV             R8, R0
340318:  MOV             R0, R4; this
34031A:  MOVS            R1, #1; __int16
34031C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340320:  SUBW            R0, R6, #0xA78; switch 9 cases
340324:  CMP             R0, #8
340326:  BHI.W           def_34032A; jumptable 0034032A default case
34032A:  TBH.W           [PC,R0,LSL#1]; switch jump
34032E:  DCW 9; jump table for switch statement
340330:  DCW 0x924
340332:  DCW 0x92D
340334:  DCW 0x939
340336:  DCW 0x946
340338:  DCW 0x928
34033A:  DCW 0x94B
34033C:  DCW 0x956
34033E:  DCW 0x964
340340:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2680
340344:  CMP             R0, #0
340346:  BNE.W           loc_341820
34034A:  B.W             def_34032A; jumptable 0034032A default case
34034E:  ADD             R5, SP, #0x3C8+var_60; jumptable 00340226 cases 2689-2696
340350:  MOV             R0, R4; this
340352:  MOVS            R2, #8; unsigned __int8
340354:  MOV             R1, R5; char *
340356:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34035A:  LDR.W           R0, =(TheText_ptr - 0x340364)
34035E:  MOV             R1, R5; CKeyGen *
340360:  ADD             R0, PC; TheText_ptr
340362:  LDR             R0, [R0]; TheText ; this
340364:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
340368:  MOV             R8, R0
34036A:  MOV             R0, R4; this
34036C:  MOVS            R1, #1; __int16
34036E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340372:  SUBW            R0, R6, #0xA82; switch 7 cases
340376:  CMP             R0, #6
340378:  BHI.W           def_34037C; jumptable 0034037C default case
34037C:  TBH.W           [PC,R0,LSL#1]; switch jump
340380:  DCW 7; jump table for switch statement
340382:  DCW 0x983
340384:  DCW 0x98C
340386:  DCW 0x998
340388:  DCW 0x9A7
34038A:  DCW 0x987
34038C:  DCW 0x9AC
34038E:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034037C case 2690
340392:  CMP             R0, #0
340394:  BNE.W           loc_341820
340398:  B.W             def_34037C; jumptable 0034037C default case
34039C:  MOV             R0, R4; jumptable 00340226 cases 2633,2637-2639
34039E:  MOVS            R1, #0; unsigned __int8
3403A0:  MOVS            R5, #0
3403A2:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3403A6:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
3403AA:  MOV             R0, R4; jumptable 00340226 cases 2654,2668
3403AC:  MOVS            R1, #2; __int16
3403AE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3403B2:  MOVW            R0, #0xA5E
3403B6:  CMP             R6, R0
3403B8:  BNE.W           loc_34175E
3403BC:  LDR.W           R0, =(ScriptParams_ptr - 0x3403C4)
3403C0:  ADD             R0, PC; ScriptParams_ptr
3403C2:  LDR             R1, [R0]; ScriptParams
3403C4:  LDRD.W          R0, R1, [R1]
3403C8:  BLX             j__ZN15CTouchInterface14SetWidgetValueENS_9WidgetIDsEf; CTouchInterface::SetWidgetValue(CTouchInterface::WidgetIDs,float)
3403CC:  B.W             loc_341820
3403D0:  MOVS            R5, #0xFF; jumptable 00340226 default case
3403D2:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
3403D6:  MOV             R0, R4; jumptable 00340226 case 2600
3403D8:  MOVS            R1, #2; __int16
3403DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3403DE:  LDR.W           R0, =(ScriptParams_ptr - 0x3403E6)
3403E2:  ADD             R0, PC; ScriptParams_ptr
3403E4:  LDR             R0, [R0]; ScriptParams
3403E6:  LDR             R1, [R0]
3403E8:  CMP             R1, #0
3403EA:  BLT.W           loc_341820
3403EE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3403FA)
3403F2:  UXTB            R3, R1
3403F4:  LSRS            R1, R1, #8
3403F6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3403F8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3403FA:  LDR             R0, [R0]; CPools::ms_pPedPool
3403FC:  LDR             R2, [R0,#4]
3403FE:  LDRB            R2, [R2,R1]
340400:  CMP             R2, R3
340402:  BNE.W           loc_341820
340406:  MOVW            R2, #0x7CC
34040A:  LDR             R0, [R0]
34040C:  MLA.W           R5, R1, R2, R0
340410:  CMP             R5, #0
340412:  BEQ.W           loc_341820
340416:  LDR.W           R0, =(ScriptParams_ptr - 0x34041E)
34041A:  ADD             R0, PC; ScriptParams_ptr
34041C:  LDR             R0, [R0]; ScriptParams
34041E:  LDR             R4, [R0,#(dword_81A90C - 0x81A908)]
340420:  LDR.W           R0, [R5,#0x440]; this
340424:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
340428:  CMP             R0, #0
34042A:  BEQ.W           loc_341820
34042E:  ADD.W           R0, R5, #0x440
340432:  LDR             R0, [R0]; this
340434:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
340438:  STR             R4, [R0,#0x10]
34043A:  B.W             loc_341820
34043E:  MOV             R0, R4; jumptable 00340226 case 2601
340440:  MOVS            R1, #1; __int16
340442:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340446:  LDR.W           R0, =(ScriptParams_ptr - 0x340456)
34044A:  MOV.W           R2, #0x194
34044E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x340458)
340452:  ADD             R0, PC; ScriptParams_ptr
340454:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
340456:  LDR             R0, [R0]; ScriptParams
340458:  LDR             R1, [R1]; CWorld::Players ...
34045A:  LDR             R0, [R0]
34045C:  MULS            R0, R2
34045E:  LDR             R0, [R1,R0]
340460:  LDR.W           R0, [R0,#0x440]; this
340464:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
340468:  MOV             R1, R0
34046A:  CMP             R1, #0
34046C:  IT NE
34046E:  MOVNE           R1, #1
340470:  B.W             loc_34151A
340474:  ADD             R5, SP, #0x3C8+var_60; jumptable 00340226 case 2602
340476:  MOV             R0, R4; this
340478:  MOVS            R2, #8; unsigned __int8
34047A:  MOV             R1, R5; char *
34047C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
340480:  LDR.W           R0, =(TheText_ptr - 0x34048A)
340484:  MOV             R1, R5; CKeyGen *
340486:  ADD             R0, PC; TheText_ptr
340488:  LDR             R0, [R0]; TheText ; this
34048A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
34048E:  MOV             R1, R0; unsigned __int16 *
340490:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x340498)
340494:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
340496:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
340498:  LDR.W           R5, [R0,#(dword_6F3A1C - 0x6F3794)]
34049C:  CMP             R5, #0
34049E:  BEQ.W           loc_341790
3404A2:  ADD             R6, SP, #0x3C8+var_398
3404A4:  MOV.W           R2, #(elf_hash_bucket+0x94); unsigned __int16 *
3404A8:  MOV             R0, R6; this
3404AA:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3404AE:  MOV             R0, R5; this
3404B0:  MOV             R1, R6; CMessages *
3404B2:  BLX             j__ZN15CWidgetHelpText14IsStringQueuedEPt; CWidgetHelpText::IsStringQueued(ushort *)
3404B6:  B.W             loc_341518
3404BA:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x3404C2); jumptable 00340226 case 2603
3404BE:  ADD             R0, PC; FrontEndMenuManager_ptr
3404C0:  LDR             R0, [R0]; FrontEndMenuManager
3404C2:  LDRB.W          R1, [R0,#(byte_98F126 - 0x98F0F8)]
3404C6:  B.W             loc_34151A
3404CA:  MOV             R0, R4; jumptable 00340226 case 2604
3404CC:  MOVS            R1, #1; __int16
3404CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3404D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3404DE)
3404D6:  LDR.W           R1, =(_ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x3404E0)
3404DA:  ADD             R0, PC; ScriptParams_ptr
3404DC:  ADD             R1, PC; _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr
3404DE:  B               loc_3406DA
3404E0:  MOV             R0, R4; jumptable 00340226 case 2605
3404E2:  MOVS            R1, #1; __int16
3404E4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3404E8:  LDR.W           R0, =(ScriptParams_ptr - 0x3404F4)
3404EC:  LDR.W           R1, =(_ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr - 0x3404F6)
3404F0:  ADD             R0, PC; ScriptParams_ptr
3404F2:  ADD             R1, PC; _ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr
3404F4:  B               loc_3406DA
3404F6:  MOV             R0, R4; jumptable 00340226 case 2606
3404F8:  MOVS            R1, #7; __int16
3404FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3404FE:  LDR.W           R0, =(ScriptParams_ptr - 0x340506)
340502:  ADD             R0, PC; ScriptParams_ptr
340504:  LDR             R0, [R0]; ScriptParams
340506:  ADD.W           R9, R0, #8
34050A:  LDRD.W          R8, R1, [R0]; unsigned int
34050E:  LDM.W           R9, {R2,R3,R9}
340512:  LDR             R6, [R0,#(dword_81A91C - 0x81A908)]
340514:  VLDR            S16, [R0,#0x18]
340518:  ADD             R0, SP, #0x3C8+var_398
34051A:  STM             R0!, {R1-R3}
34051C:  ADDS            R0, R6, #2
34051E:  BEQ.W           loc_3418AC
340522:  ADDS            R0, R6, #1
340524:  BNE.W           loc_3418B0
340528:  LDR.W           R0, =(_ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr - 0x340530)
34052C:  ADD             R0, PC; _ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr
34052E:  LDR             R0, [R0]; CTaskComplexFollowNodeRoute::ms_iDefaultTime ...
340530:  LDR             R6, [R0]; CTaskComplexFollowNodeRoute::ms_iDefaultTime
340532:  B.W             loc_3418B0
340536:  MOV             R0, R4; jumptable 00340226 case 2607
340538:  MOVS            R1, #1; __int16
34053A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34053E:  LDR.W           R0, =(ScriptParams_ptr - 0x34054C)
340542:  MOVS            R5, #0
340544:  LDR.W           R1, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x34054E)
340548:  ADD             R0, PC; ScriptParams_ptr
34054A:  ADD             R1, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
34054C:  LDR             R0, [R0]; ScriptParams
34054E:  LDR             R1, [R1]; CTheScripts::bDrawCrossHair ...
340550:  LDR             R0, [R0]
340552:  CMP             R0, #0
340554:  IT NE
340556:  MOVNE           R0, #2
340558:  STR             R0, [R1]; CTheScripts::bDrawCrossHair
34055A:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
34055E:  MOV             R0, R4; jumptable 00340226 case 2608
340560:  MOVS            R1, #1; __int16
340562:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340566:  LDR.W           R0, =(ScriptParams_ptr - 0x340576)
34056A:  MOVW            R2, #0xA2C
34056E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x340578)
340572:  ADD             R0, PC; ScriptParams_ptr
340574:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
340576:  LDR             R0, [R0]; ScriptParams
340578:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34057A:  LDR             R0, [R0]
34057C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34057E:  LSRS            R0, R0, #8
340580:  MUL.W           R3, R0, R2
340584:  LDR             R1, [R1]
340586:  MLA.W           R4, R0, R2, R1
34058A:  LDR             R3, [R1,R3]
34058C:  MOV             R0, R4
34058E:  LDR.W           R1, [R3,#0xCC]
340592:  BLX             R1
340594:  MOVS            R0, #0
340596:  MOVS            R5, #0
340598:  MOVT            R0, #0x447A
34059C:  STR.W           R0, [R4,#0x4CC]
3405A0:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
3405A4:  MOV             R0, R4; jumptable 00340226 case 2609
3405A6:  MOVS            R1, #2; __int16
3405A8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3405AC:  LDR.W           R0, =(ScriptParams_ptr - 0x3405B4)
3405B0:  ADD             R0, PC; ScriptParams_ptr
3405B2:  LDR             R4, [R0]; ScriptParams
3405B4:  LDR             R0, [R4]; int
3405B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3405BA:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]
3405BC:  CMP             R1, #0
3405BE:  IT NE
3405C0:  MOVNE           R1, #1; bool
3405C2:  BLX             j__ZN10CPlayerPed23ForceGroupToNeverFollowEb; CPlayerPed::ForceGroupToNeverFollow(bool)
3405C6:  B.W             loc_341820
3405CA:  MOV             R0, R4; jumptable 00340226 case 2610
3405CC:  MOVS            R1, #1; __int16
3405CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3405D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3405E2)
3405D6:  MOVW            R2, #0x7CC
3405DA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3405E4)
3405DE:  ADD             R0, PC; ScriptParams_ptr
3405E0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3405E2:  LDR             R0, [R0]; ScriptParams
3405E4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3405E6:  LDR             R0, [R0]
3405E8:  LDR             R1, [R1]; CPools::ms_pPedPool
3405EA:  LSRS            R0, R0, #8
3405EC:  LDR             R1, [R1]
3405EE:  MLA.W           R0, R0, R2, R1
3405F2:  MOVS            R1, #0
3405F4:  LDR.W           R0, [R0,#0x100]
3405F8:  CMP             R0, #0
3405FA:  BEQ.W           loc_34151A
3405FE:  LDRB.W          R0, [R0,#0x3A]
340602:  AND.W           R0, R0, #7
340606:  CMP             R0, #2
340608:  IT EQ
34060A:  MOVEQ           R1, #1
34060C:  B.W             loc_34151A
340610:  MOV             R0, R4; jumptable 00340226 case 2611
340612:  MOVS            R1, #1; __int16
340614:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340618:  LDR.W           R0, =(ScriptParams_ptr - 0x340628)
34061C:  MOVW            R2, #0x7CC
340620:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34062A)
340624:  ADD             R0, PC; ScriptParams_ptr
340626:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
340628:  LDR             R0, [R0]; ScriptParams
34062A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34062C:  LDR             R0, [R0]
34062E:  LDR             R1, [R1]; CPools::ms_pPedPool
340630:  LSRS            R0, R0, #8
340632:  LDR             R1, [R1]
340634:  MLA.W           R0, R0, R2, R1
340638:  LDR.W           R0, [R0,#0x100]
34063C:  CMP             R0, #0
34063E:  BEQ.W           loc_341770
340642:  LDRB.W          R1, [R0,#0x3A]
340646:  AND.W           R1, R1, #7
34064A:  CMP             R1, #2
34064C:  BNE.W           loc_341770
340650:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x340658)
340654:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
340656:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
340658:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34065A:  LDRD.W          R2, R1, [R1]
34065E:  SUBS            R0, R0, R2
340660:  MOV             R2, #0xBFE6D523
340668:  ASRS            R0, R0, #2
34066A:  MULS            R0, R2
34066C:  LDRB            R1, [R1,R0]
34066E:  ORR.W           R0, R1, R0,LSL#8
340672:  B.W             loc_341774
340676:  MOV             R0, R4; jumptable 00340226 case 2613
340678:  MOVS            R1, #5; __int16
34067A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34067E:  LDR.W           R0, =(ScriptParams_ptr - 0x340688)
340682:  MOVS            R5, #0
340684:  ADD             R0, PC; ScriptParams_ptr
340686:  LDR             R2, [R0]; ScriptParams
340688:  LDR             R3, [R2,#(dword_81A918 - 0x81A908)]
34068A:  VLDR            S0, [R2,#0xC]
34068E:  LDM             R2, {R0-R2}
340690:  CMP             R3, #0
340692:  BLT.W           loc_34177C
340696:  LDR.W           R6, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3406A4)
34069A:  UXTB.W          R12, R3
34069E:  LSRS            R3, R3, #8
3406A0:  ADD             R6, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3406A2:  LDR             R6, [R6]; CPools::ms_pVehiclePool ...
3406A4:  LDR             R6, [R6]; CPools::ms_pVehiclePool
3406A6:  LDR             R4, [R6,#4]
3406A8:  LDRB            R4, [R4,R3]
3406AA:  CMP             R4, R12
3406AC:  BNE.W           loc_34177C
3406B0:  MOVW            R4, #0xA2C
3406B4:  LDR             R6, [R6]
3406B6:  MLA.W           R6, R3, R4, R6
3406BA:  B.W             loc_34177E
3406BE:  BLX             j__ZN10CGameLogic30IsSkipWaitingForScriptToFadeInEv; jumptable 00340226 case 2614
3406C2:  B.W             loc_341518
3406C6:  MOV             R0, R4; jumptable 00340226 case 2615
3406C8:  MOVS            R1, #1; __int16
3406CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3406CE:  LDR.W           R0, =(ScriptParams_ptr - 0x3406DA)
3406D2:  LDR.W           R1, =(_ZN8CVehicle24ms_forceVehicleLightsOffE_ptr - 0x3406DC)
3406D6:  ADD             R0, PC; ScriptParams_ptr
3406D8:  ADD             R1, PC; _ZN8CVehicle24ms_forceVehicleLightsOffE_ptr
3406DA:  LDR             R0, [R0]; ScriptParams
3406DC:  LDR             R1, [R1]; CTheScripts::bDrawOddJobTitleBeforeFade
3406DE:  LDR             R0, [R0]
3406E0:  B               loc_3409BC
3406E2:  LDR.W           R0, =(TheCamera_ptr - 0x3406EE); jumptable 00340226 case 2617
3406E6:  LDR.W           R1, =(ScriptParams_ptr - 0x3406F0)
3406EA:  ADD             R0, PC; TheCamera_ptr
3406EC:  ADD             R1, PC; ScriptParams_ptr
3406EE:  LDR             R0, [R0]; TheCamera
3406F0:  LDR             R1, [R1]; ScriptParams
3406F2:  LDR.W           R0, [R0,#(dword_952058 - 0x951FA8)]
3406F6:  B.W             loc_3417BC
3406FA:  MOV             R0, R4; jumptable 00340226 case 2618
3406FC:  MOVS            R1, #2; __int16
3406FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340702:  LDR.W           R0, =(ScriptParams_ptr - 0x34070A)
340706:  ADD             R0, PC; ScriptParams_ptr
340708:  LDR             R1, [R0]; ScriptParams
34070A:  LDRD.W          R0, R1, [R1]
34070E:  CMP.W           R1, #0xFFFFFFFF
340712:  BGT             loc_340728
340714:  LDR.W           R2, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34071E)
340718:  NEGS            R1, R1
34071A:  ADD             R2, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
34071C:  RSB.W           R1, R1, R1,LSL#3
340720:  LDR             R2, [R2]; CTheScripts::UsedObjectArray ...
340722:  ADD.W           R1, R2, R1,LSL#2
340726:  LDR             R1, [R1,#0x18]
340728:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x340736)
34072C:  MOV.W           R3, #0x194
340730:  MOVS            R5, #0
340732:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
340734:  LDR             R2, [R2]; CWorld::Players ...
340736:  MLA.W           R0, R0, R3, R2
34073A:  LDR.W           R0, [R0,#0xA0]
34073E:  CMP             R0, R1
340740:  B               loc_340E12
340742:  MOV             R0, R4; jumptable 00340226 case 2619
340744:  MOVS            R1, #1; __int16
340746:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34074A:  LDR.W           R0, =(ScriptParams_ptr - 0x34075C)
34074E:  MOV.W           R2, #0x194
340752:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34075E)
340756:  MOVS            R5, #0
340758:  ADD             R0, PC; ScriptParams_ptr
34075A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34075C:  LDR             R0, [R0]; ScriptParams
34075E:  LDR             R1, [R1]; CWorld::Players ...
340760:  LDR             R0, [R0]
340762:  MLA.W           R0, R0, R2, R1
340766:  MOV.W           R1, #0xFFFFFFFF
34076A:  STR.W           R1, [R0,#0xA0]
34076E:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340772:  ADD             R6, SP, #0x3C8+var_398; jumptable 00340226 case 2620
340774:  MOV             R0, R4; this
340776:  MOVS            R2, #8; unsigned __int8
340778:  MOV             R1, R6; char *
34077A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34077E:  MOV             R0, R4; this
340780:  MOVS            R1, #1; __int16
340782:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340786:  LDR.W           R0, =(ScriptParams_ptr - 0x340794)
34078A:  MOVS            R5, #0
34078C:  MOVS            R1, #0; char *
34078E:  MOVS            R2, #0; char *
340790:  ADD             R0, PC; ScriptParams_ptr
340792:  LDR             R0, [R0]; ScriptParams
340794:  LDR             R0, [R0]
340796:  STRD.W          R5, R5, [SP,#0x3C8+var_3C8]; int
34079A:  NEGS            R3, R0; char *
34079C:  MOV             R0, R6; this
34079E:  BLX             j__ZN14CConversations21SetUpConversationNodeEPcS0_S0_iii; CConversations::SetUpConversationNode(char *,char *,char *,int,int,int)
3407A2:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
3407A6:  MOV             R0, R4; jumptable 00340226 case 2621
3407A8:  MOVS            R1, #1; __int16
3407AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3407AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3407B6)
3407B2:  ADD             R0, PC; ScriptParams_ptr
3407B4:  LDR             R0, [R0]; ScriptParams
3407B6:  LDR             R0, [R0]
3407B8:  CMP             R0, #0
3407BA:  BEQ.W           loc_3417A0
3407BE:  LDR.W           R0, =(_ZN6CCheat17m_aCheatFunctionsE_ptr - 0x3407C6)
3407C2:  ADD             R0, PC; _ZN6CCheat17m_aCheatFunctionsE_ptr
3407C4:  LDR             R0, [R0]; CCheat::m_aCheatFunctions ...
3407C6:  LDR.W           R0, [R0,#(off_68630C - 0x686184)]
3407CA:  CMP             R0, #0
3407CC:  BEQ.W           loc_341A0A
3407D0:  BLX             R0
3407D2:  B.W             loc_341820
3407D6:  MOV             R0, R4; jumptable 00340226 case 2622
3407D8:  MOVS            R1, #6; __int16
3407DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3407DE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3407E6)
3407E2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3407E4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3407E6:  LDR             R0, [R0]; CPools::ms_pPedPool
3407E8:  LDR             R1, [R0,#8]
3407EA:  CMP             R1, #0
3407EC:  BEQ.W           loc_3417B0
3407F0:  LDR.W           R2, =(ScriptParams_ptr - 0x3407FA)
3407F4:  SUBS            R5, R1, #1
3407F6:  ADD             R2, PC; ScriptParams_ptr
3407F8:  LDR             R2, [R2]; ScriptParams
3407FA:  VLDR            S0, [R2]
3407FE:  VLDR            S6, [R2,#0xC]
340802:  VLDR            S2, [R2,#4]
340806:  VLDR            S8, [R2,#0x10]
34080A:  VADD.F32        S24, S0, S6
34080E:  VLDR            S4, [R2,#8]
340812:  VSUB.F32        S26, S0, S6
340816:  VLDR            S10, [R2,#0x14]
34081A:  MOVW            R2, #0x7CC
34081E:  MULS            R2, R1
340820:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x340830)
340824:  VADD.F32        S16, S4, S10
340828:  VADD.F32        S18, S2, S8
34082C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34082E:  VSUB.F32        S20, S4, S10
340832:  VSUB.F32        S22, S2, S8
340836:  LDR.W           R10, [R1]; CPools::ms_pPedPool ...
34083A:  SUB.W           R6, R2, #0x384
34083E:  MOV             R2, #0xFFFFFBB8
340846:  B               loc_340852
340848:  SUBS            R5, #1
34084A:  LDR.W           R0, [R10]; CPools::ms_pPedPool
34084E:  SUBW            R6, R6, #0x7CC
340852:  LDR             R1, [R0,#4]
340854:  LDRSB           R1, [R1,R5]
340856:  CMP             R1, #0
340858:  BLT             loc_3408A4
34085A:  LDR             R0, [R0]
34085C:  ADD.W           R11, R0, R6
340860:  CMP.W           R11, #0x448
340864:  BEQ             loc_3408A4
340866:  LDRB            R1, [R0,R6]
340868:  CMP             R1, #1
34086A:  BNE             loc_3408A4
34086C:  ADD             R0, R2
34086E:  ADD.W           R8, R0, R6
340872:  LDRB.W          R0, [R8,#0x1D]
340876:  LSLS            R0, R0, #0x1C
340878:  ITT PL
34087A:  LDRBPL.W        R0, [R11,#0x40]
34087E:  MOVSPL.W        R0, R0,LSL#28
340882:  BMI             loc_3408A4
340884:  SUB.W           R1, R11, #0x448; CPed *
340888:  MOV             R0, R4; this
34088A:  STR             R1, [SP,#0x3C8+var_3A8]
34088C:  MOV             R9, R2
34088E:  BLX             j__ZN14CRunningScript9IsPedDeadEP4CPed; CRunningScript::IsPedDead(CPed *)
340892:  CMP             R0, #0
340894:  MOV             R2, R9
340896:  ITTT EQ
340898:  ADDEQ.W         R0, R11, #0x3C ; '<'
34089C:  LDRBEQ          R0, [R0,#1]
34089E:  MOVSEQ.W        R0, R0,LSL#31
3408A2:  BEQ             loc_3408AC
3408A4:  CMP             R5, #0
3408A6:  BNE             loc_340848
3408A8:  B.W             loc_341794
3408AC:  LDR             R0, [SP,#0x3C8+var_3A8]; this
3408AE:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
3408B2:  MOV             R2, R9
3408B4:  CMP             R0, #0
3408B6:  BNE             loc_3408A4
3408B8:  MOV             R0, #0xFFFFFBCC
3408C0:  LDR.W           R1, [R11,R0]
3408C4:  ADD.W           R0, R1, #0x30 ; '0'
3408C8:  CMP             R1, #0
3408CA:  IT EQ
3408CC:  ADDEQ.W         R0, R8, #4
3408D0:  VLDR            S0, [R0]
3408D4:  VCMPE.F32       S0, S26
3408D8:  VMRS            APSR_nzcv, FPSCR
3408DC:  BLT             loc_3408A4
3408DE:  VCMPE.F32       S0, S24
3408E2:  VMRS            APSR_nzcv, FPSCR
3408E6:  BGT             loc_3408A4
3408E8:  VLDR            S0, [R0,#4]
3408EC:  VCMPE.F32       S0, S22
3408F0:  VMRS            APSR_nzcv, FPSCR
3408F4:  BLT             loc_3408A4
3408F6:  VCMPE.F32       S0, S18
3408FA:  VMRS            APSR_nzcv, FPSCR
3408FE:  BGT             loc_3408A4
340900:  VLDR            S0, [R0,#8]
340904:  VCMPE.F32       S0, S20
340908:  VMRS            APSR_nzcv, FPSCR
34090C:  BLT             loc_3408A4
34090E:  VCMPE.F32       S0, S16
340912:  VMRS            APSR_nzcv, FPSCR
340916:  BGT             loc_3408A4
340918:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x340922)
34091C:  ADD             R2, R11
34091E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
340920:  LDR             R0, [R0]; CPools::ms_pPedPool ...
340922:  LDR             R0, [R0]; CPools::ms_pPedPool
340924:  LDRD.W          R1, R0, [R0]
340928:  SUBS            R1, R2, R1
34092A:  MOV             R2, #0xBED87F3B
340932:  ASRS            R1, R1, #2
340934:  MULS            R1, R2
340936:  LDRB            R0, [R0,R1]
340938:  ORR.W           R0, R0, R1,LSL#8
34093C:  LDR.W           R1, =(ScriptParams_ptr - 0x340944)
340940:  ADD             R1, PC; ScriptParams_ptr
340942:  B.W             loc_3417BA
340946:  MOV             R0, R4; jumptable 00340226 case 2623
340948:  MOVS            R1, #1; __int16
34094A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34094E:  LDR.W           R0, =(ScriptParams_ptr - 0x34095A)
340952:  LDR.W           R1, =(_ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr - 0x34095C)
340956:  ADD             R0, PC; ScriptParams_ptr
340958:  ADD             R1, PC; _ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr
34095A:  B               loc_3409B0
34095C:  MOV             R0, R4; jumptable 00340226 case 2624
34095E:  MOVS            R1, #4; __int16
340960:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340964:  LDR.W           R0, =(ScriptParams_ptr - 0x34096C)
340968:  ADD             R0, PC; ScriptParams_ptr
34096A:  LDR             R5, [R0]; ScriptParams
34096C:  LDM.W           R5, {R0-R3}; float
340970:  BLX             j__ZN10C3dMarkers15User3dMarkerSetEfffi; C3dMarkers::User3dMarkerSet(float,float,float,int)
340974:  STR             R0, [R5]
340976:  B.W             loc_3417BE
34097A:  MOV             R0, R4; jumptable 00340226 case 2625
34097C:  MOVS            R1, #1; __int16
34097E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340982:  LDR.W           R0, =(ScriptParams_ptr - 0x34098A)
340986:  ADD             R0, PC; ScriptParams_ptr
340988:  LDR             R0, [R0]; ScriptParams
34098A:  LDR             R0, [R0]; this
34098C:  BLX             j__ZN10C3dMarkers18User3dMarkerDeleteEi; C3dMarkers::User3dMarkerDelete(int)
340990:  B.W             loc_341820
340994:  BLX             j__ZN29CTaskComplexProstituteSolicit24GetRidOfPlayerProstituteEv; jumptable 00340226 case 2627
340998:  B.W             loc_341820
34099C:  MOV             R0, R4; jumptable 00340226 case 2628
34099E:  MOVS            R1, #1; __int16
3409A0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3409A4:  LDR.W           R0, =(ScriptParams_ptr - 0x3409B0)
3409A8:  LDR.W           R1, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x3409B2)
3409AC:  ADD             R0, PC; ScriptParams_ptr
3409AE:  ADD             R1, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
3409B0:  LDR             R0, [R0]; ScriptParams
3409B2:  LDR             R1, [R1]; CGameLogic::bScriptCoopGameGoingOn
3409B4:  LDR             R0, [R0]
3409B6:  CMP             R0, #0
3409B8:  IT NE
3409BA:  MOVNE           R0, #1
3409BC:  STRB            R0, [R1]; CGameLogic::bScriptCoopGameGoingOn
3409BE:  B.W             loc_341820
3409C2:  MOV             R0, R4; jumptable 00340226 case 2629
3409C4:  MOVS            R1, #1; __int16
3409C6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3409CA:  LDR.W           R1, =(ScriptParams_ptr - 0x3409D8)
3409CE:  MOVS            R5, #0
3409D0:  LDR.W           R0, =(_ZN8CVehicle30ms_fRailTrackResistanceDefaultE_ptr - 0x3409DA)
3409D4:  ADD             R1, PC; ScriptParams_ptr
3409D6:  ADD             R0, PC; _ZN8CVehicle30ms_fRailTrackResistanceDefaultE_ptr
3409D8:  LDR             R1, [R1]; ScriptParams
3409DA:  LDR             R0, [R0]; CVehicle::ms_fRailTrackResistanceDefault ...
3409DC:  VLDR            S2, [R1]
3409E0:  VLDR            S0, [R0]
3409E4:  VCMPE.F32       S2, #0.0
3409E8:  LDR.W           R0, =(_ZN8CVehicle23ms_fRailTrackResistanceE_ptr - 0x3409F8)
3409EC:  VMRS            APSR_nzcv, FPSCR
3409F0:  VMUL.F32        S4, S2, S0
3409F4:  ADD             R0, PC; _ZN8CVehicle23ms_fRailTrackResistanceE_ptr
3409F6:  LDR             R0, [R0]; CVehicle::ms_fRailTrackResistance ...
3409F8:  IT GT
3409FA:  VMOVGT.F32      S0, S4
3409FE:  VSTR            S0, [R0]
340A02:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340A06:  MOV             R0, R4; jumptable 00340226 case 2630
340A08:  MOVS            R1, #2; __int16
340A0A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340A0E:  LDR.W           R0, =(ScriptParams_ptr - 0x340A16)
340A12:  ADD             R0, PC; ScriptParams_ptr
340A14:  LDR             R1, [R0]; ScriptParams
340A16:  LDRD.W          R0, R1, [R1]
340A1A:  CMP             R1, #0
340A1C:  BEQ.W           loc_3417C8
340A20:  LDR.W           R2, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x340A2A)
340A24:  SXTB            R1, R0; signed __int8
340A26:  ADD             R2, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
340A28:  LDR             R0, [R2]; this
340A2A:  MOVS            R2, #1; bool
340A2C:  BLX             j__ZN17CScriptsForBrains31SwitchAllObjectBrainsWithThisIDEab; CScriptsForBrains::SwitchAllObjectBrainsWithThisID(signed char,bool)
340A30:  B.W             loc_341820
340A34:  MOVS            R0, #(stderr+1); jumptable 00340226 case 2631
340A36:  BLX             j__ZN14CConversations25DoneSettingUpConversationEb; CConversations::DoneSettingUpConversation(bool)
340A3A:  B.W             loc_341820
340A3E:  MOV             R0, R4; jumptable 00340226 case 2632
340A40:  MOVS            R1, #1; __int16
340A42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340A46:  LDR.W           R0, =(ScriptParams_ptr - 0x340A54)
340A4A:  MOVS            R5, #0
340A4C:  LDR.W           R1, =(FrontEndMenuManager_ptr - 0x340A56)
340A50:  ADD             R0, PC; ScriptParams_ptr
340A52:  ADD             R1, PC; FrontEndMenuManager_ptr
340A54:  LDR             R0, [R0]; ScriptParams
340A56:  LDR             R1, [R1]; FrontEndMenuManager ; int
340A58:  LDR             R0, [R0]
340A5A:  CMP             R0, #0
340A5C:  IT NE
340A5E:  MOVNE           R0, #1
340A60:  STRB.W          R0, [R1,#(byte_98F119 - 0x98F0F8)]
340A64:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340A68:  MOVS            R0, #0; jumptable 00340226 case 2634
340A6A:  MOVS            R5, #0
340A6C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
340A70:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x340A7C)
340A74:  LDR.W           R1, =(ScriptParams_ptr - 0x340A7E)
340A78:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
340A7A:  ADD             R1, PC; ScriptParams_ptr ; int
340A7C:  LDR             R6, [R0]; CPad::NewMouseControllerState ...
340A7E:  LDR.W           R8, [R1]; ScriptParams
340A82:  LDR             R0, [R6,#(dword_959B00 - 0x959AF4)]
340A84:  STR.W           R0, [R8]
340A88:  MOVS            R0, #0; this
340A8A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
340A8E:  LDR             R0, [R6,#(dword_959B04 - 0x959AF4)]
340A90:  STR.W           R0, [R8,#(dword_81A90C - 0x81A908)]
340A94:  B               loc_340CD8
340A96:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 00340226 case 2635
340A9A:  MOV             R1, R0
340A9C:  CMP             R1, #1
340A9E:  IT NE
340AA0:  MOVNE           R1, #0
340AA2:  B.W             loc_34151A
340AA6:  LDR.W           R0, =(MousePointerStateHelper_ptr - 0x340AAE); jumptable 00340226 case 2636
340AAA:  ADD             R0, PC; MousePointerStateHelper_ptr
340AAC:  LDR             R0, [R0]; MousePointerStateHelper
340AAE:  LDRB            R1, [R0,#(byte_98F0F5 - 0x98F0F4)]
340AB0:  B.W             loc_34151A
340AB4:  LDR.W           R0, =(dword_81A9C8 - 0x340ABE); jumptable 00340226 case 2640
340AB8:  MOVS            R5, #0
340ABA:  ADD             R0, PC; dword_81A9C8
340ABC:  LDR             R1, [R0]
340ABE:  ADDS            R1, #1
340AC0:  STR             R1, [R0]
340AC2:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340AC6:  MOV             R0, R4; jumptable 00340226 case 2641
340AC8:  MOVS            R1, #1; __int16
340ACA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340ACE:  LDR.W           R0, =(ScriptParams_ptr - 0x340ADC)
340AD2:  MOVS            R1, #0
340AD4:  MOVS            R2, #2
340AD6:  MOVS            R5, #0
340AD8:  ADD             R0, PC; ScriptParams_ptr
340ADA:  LDR             R0, [R0]; ScriptParams
340ADC:  LDR             R0, [R0]
340ADE:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
340AE2:  B.W             loc_34156C
340AE6:  MOV             R0, R4; jumptable 00340226 case 2642
340AE8:  MOVS            R1, #1; __int16
340AEA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340AEE:  LDR.W           R0, =(ScriptParams_ptr - 0x340AFC)
340AF2:  MOVS            R1, #0
340AF4:  MOVS            R2, #2
340AF6:  MOVS            R5, #0
340AF8:  ADD             R0, PC; ScriptParams_ptr
340AFA:  LDR             R0, [R0]; ScriptParams
340AFC:  LDR             R0, [R0]
340AFE:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
340B02:  CMP             R0, #1
340B04:  BNE             loc_340B20
340B06:  LDR.W           R0, =(ScriptParams_ptr - 0x340B10)
340B0A:  MOVS            R5, #1
340B0C:  ADD             R0, PC; ScriptParams_ptr
340B0E:  LDR             R0, [R0]; ScriptParams
340B10:  LDR             R0, [R0]
340B12:  CMP             R0, #0x66 ; 'f'
340B14:  BNE             loc_340B20
340B16:  MOVS            R0, #0; this
340B18:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
340B1C:  STRB.W          R5, [R0,#0x122]
340B20:  LDR.W           R0, =(ScriptParams_ptr - 0x340B28)
340B24:  ADD             R0, PC; ScriptParams_ptr
340B26:  LDR             R0, [R0]; ScriptParams
340B28:  LDR             R0, [R0]
340B2A:  CMP             R0, #0x69 ; 'i'
340B2C:  IT EQ
340B2E:  MOVEQ           R5, #0
340B30:  B.W             loc_341818
340B34:  MOV             R0, R4; jumptable 00340226 case 2643
340B36:  MOVS            R1, #1; __int16
340B38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340B3C:  LDR.W           R0, =(ScriptParams_ptr - 0x340B4A)
340B40:  MOVS            R1, #0
340B42:  MOVS            R2, #1
340B44:  MOVS            R5, #0
340B46:  ADD             R0, PC; ScriptParams_ptr
340B48:  LDR             R0, [R0]; ScriptParams
340B4A:  LDR             R0, [R0]
340B4C:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
340B50:  B.W             loc_34156C
340B54:  MOV             R0, R4; jumptable 00340226 case 2644
340B56:  MOVS            R1, #1; __int16
340B58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340B5C:  LDR.W           R0, =(ScriptParams_ptr - 0x340B66)
340B60:  MOVS            R1, #1
340B62:  ADD             R0, PC; ScriptParams_ptr
340B64:  LDR             R0, [R0]; ScriptParams
340B66:  LDR             R5, [R0]
340B68:  MOV             R0, R5
340B6A:  BLX             j__ZN15CTouchInterface12IsSwipedLeftENS_9WidgetIDsEi; CTouchInterface::IsSwipedLeft(CTouchInterface::WidgetIDs,int)
340B6E:  CBNZ            R0, loc_340B7E
340B70:  MOV             R0, R5
340B72:  MOVS            R1, #1
340B74:  BLX             j__ZN15CTouchInterface13IsSwipedRightENS_9WidgetIDsEi; CTouchInterface::IsSwipedRight(CTouchInterface::WidgetIDs,int)
340B78:  CMP             R0, #1
340B7A:  BNE.W           loc_341790
340B7E:  MOVS            R1, #1
340B80:  B.W             loc_34151A
340B84:  MOV             R0, R4; jumptable 00340226 case 2645
340B86:  MOVS            R1, #1; __int16
340B88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340B8C:  LDR.W           R0, =(ScriptParams_ptr - 0x340B96)
340B90:  MOVS            R1, #1
340B92:  ADD             R0, PC; ScriptParams_ptr
340B94:  LDR             R0, [R0]; ScriptParams
340B96:  LDR             R0, [R0]
340B98:  BLX             j__ZN15CTouchInterface12IsSwipedLeftENS_9WidgetIDsEi; CTouchInterface::IsSwipedLeft(CTouchInterface::WidgetIDs,int)
340B9C:  B.W             loc_341518
340BA0:  MOV             R0, R4; jumptable 00340226 case 2646
340BA2:  MOVS            R1, #1; __int16
340BA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340BA8:  LDR.W           R0, =(ScriptParams_ptr - 0x340BB2)
340BAC:  MOVS            R1, #1
340BAE:  ADD             R0, PC; ScriptParams_ptr
340BB0:  LDR             R0, [R0]; ScriptParams
340BB2:  LDR             R0, [R0]
340BB4:  BLX             j__ZN15CTouchInterface13IsSwipedRightENS_9WidgetIDsEi; CTouchInterface::IsSwipedRight(CTouchInterface::WidgetIDs,int)
340BB8:  B.W             loc_341518
340BBC:  LDR.W           R0, =(DoMissionSkip_ptr - 0x340BC4); jumptable 00340226 case 2647
340BC0:  ADD             R0, PC; DoMissionSkip_ptr
340BC2:  LDR             R0, [R0]; DoMissionSkip
340BC4:  LDRB            R0, [R0]
340BC6:  CMP             R0, #0
340BC8:  BEQ.W           loc_3417DC
340BCC:  LDR.W           R1, =(DoMissionSkip_ptr - 0x340BE0)
340BD0:  MOVS            R6, #0
340BD2:  LDR.W           R3, =(currentMissionPage_ptr - 0x340BE6)
340BD6:  MOVS            R5, #1
340BD8:  LDR.W           R0, =(currentSkipToMissionNumber_ptr - 0x340BE8)
340BDC:  ADD             R1, PC; DoMissionSkip_ptr
340BDE:  LDR.W           R2, =(ScriptParams_ptr - 0x340BEC)
340BE2:  ADD             R3, PC; currentMissionPage_ptr
340BE4:  ADD             R0, PC; currentSkipToMissionNumber_ptr
340BE6:  LDR             R1, [R1]; DoMissionSkip
340BE8:  ADD             R2, PC; ScriptParams_ptr
340BEA:  LDR             R3, [R3]; currentMissionPage
340BEC:  LDR             R0, [R0]; currentSkipToMissionNumber
340BEE:  LDR             R2, [R2]; ScriptParams
340BF0:  STRB            R6, [R1]
340BF2:  LDR             R1, [R3]
340BF4:  LDR             R0, [R0]
340BF6:  STR             R1, [R2]
340BF8:  B.W             loc_3417EA
340BFC:  LDR.W           R0, =(SkipToMissionNumber_ptr - 0x340C04); jumptable 00340226 case 2648
340C00:  ADD             R0, PC; SkipToMissionNumber_ptr
340C02:  LDR             R0, [R0]; SkipToMissionNumber
340C04:  LDR             R1, [R0]
340C06:  ADDS            R0, R1, #1
340C08:  MOV.W           R0, #0xFFFFFFFF
340C0C:  BEQ.W           loc_3417FA
340C10:  LDR.W           R3, =(SkipToMissionNumber_ptr - 0x340C1E)
340C14:  MOVS            R5, #1
340C16:  LDR.W           R2, =(DoMissionSkip_ptr - 0x340C20)
340C1A:  ADD             R3, PC; SkipToMissionNumber_ptr
340C1C:  ADD             R2, PC; DoMissionSkip_ptr
340C1E:  LDR             R3, [R3]; SkipToMissionNumber
340C20:  LDR             R2, [R2]; DoMissionSkip
340C22:  STR             R0, [R3]
340C24:  MOV             R0, R1
340C26:  LDR.W           R1, =(ScriptParams_ptr - 0x340C30)
340C2A:  STRB            R5, [R2]
340C2C:  ADD             R1, PC; ScriptParams_ptr
340C2E:  B.W             loc_34180C
340C32:  LDR.W           R0, =(SkipToMissionPage_ptr - 0x340C3A); jumptable 00340226 case 2649
340C36:  ADD             R0, PC; SkipToMissionPage_ptr
340C38:  LDR             R0, [R0]; SkipToMissionPage
340C3A:  LDR             R1, [R0]
340C3C:  MOVS            R0, #0
340C3E:  CMP             R1, #0
340C40:  BEQ.W           loc_341804
340C44:  LDR.W           R2, =(ScriptParams_ptr - 0x340C52)
340C48:  ADDS            R3, R1, #2
340C4A:  MOV.W           R5, #1
340C4E:  ADD             R2, PC; ScriptParams_ptr
340C50:  LDR             R2, [R2]; ScriptParams
340C52:  STR             R1, [R2]
340C54:  BEQ.W           loc_341810
340C58:  LDR.W           R1, =(SkipToMissionPage_ptr - 0x340C60)
340C5C:  ADD             R1, PC; SkipToMissionPage_ptr
340C5E:  B.W             loc_34180C
340C62:  MOV             R0, R4; jumptable 00340226 case 2650
340C64:  MOVS            R1, #1; __int16
340C66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340C6A:  LDR.W           R0, =(ScriptParams_ptr - 0x340C72)
340C6E:  ADD             R0, PC; ScriptParams_ptr
340C70:  LDR.W           R8, [R0]; ScriptParams
340C74:  LDR.W           R0, [R8]
340C78:  BLX             j__ZN15CTouchInterface14GetWidgetValueENS_9WidgetIDsE; CTouchInterface::GetWidgetValue(CTouchInterface::WidgetIDs)
340C7C:  MOV             R6, R0
340C7E:  MOVS            R1, #0
340C80:  VMOV            S0, R6
340C84:  MOV             R0, R4; this
340C86:  MOVS            R5, #0
340C88:  VCMPE.F32       S0, #0.0
340C8C:  VMRS            APSR_nzcv, FPSCR
340C90:  IT GT
340C92:  MOVGT           R1, #1; unsigned __int8
340C94:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
340C98:  MOV             R0, R4; this
340C9A:  MOVS            R1, #1; __int16
340C9C:  STR.W           R6, [R8]
340CA0:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
340CA4:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340CA8:  MOV             R0, R4; jumptable 00340226 case 2651
340CAA:  MOVS            R1, #1; __int16
340CAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340CB0:  LDR.W           R0, =(ScriptParams_ptr - 0x340CBE)
340CB4:  ADD             R1, SP, #0x3C8+var_398
340CB6:  ADD             R2, SP, #0x3C8+var_60
340CB8:  MOVS            R5, #0
340CBA:  ADD             R0, PC; ScriptParams_ptr
340CBC:  STR             R5, [SP,#0x3C8+var_398]
340CBE:  STR             R5, [SP,#0x3C8+var_60]
340CC0:  LDR             R6, [R0]; ScriptParams
340CC2:  LDR             R0, [R6]
340CC4:  BLX             j__ZN15CTouchInterface15GetWidgetValue2ENS_9WidgetIDsEPfS1_; CTouchInterface::GetWidgetValue2(CTouchInterface::WidgetIDs,float *,float *)
340CC8:  MOV             R0, R4; this
340CCA:  MOVS            R1, #0; unsigned __int8
340CCC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
340CD0:  LDR             R1, [SP,#0x3C8+var_60]
340CD2:  LDR             R0, [SP,#0x3C8+var_398]
340CD4:  STRD.W          R0, R1, [R6]
340CD8:  MOV             R0, R4; this
340CDA:  MOVS            R1, #2; __int16
340CDC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
340CE0:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340CE4:  MOV             R0, R4; jumptable 00340226 case 2652
340CE6:  MOVS            R1, #2; __int16
340CE8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340CEC:  ADD             R1, SP, #0x3C8+var_60; char *
340CEE:  MOV             R0, R4; this
340CF0:  MOVS            R2, #8; unsigned __int8
340CF2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
340CF6:  LDR.W           R0, =(ScriptParams_ptr - 0x340CFE)
340CFA:  ADD             R0, PC; ScriptParams_ptr
340CFC:  LDR             R0, [R0]; ScriptParams
340CFE:  VLDR            S0, [R0]
340D02:  VCMP.F32        S0, #0.0
340D06:  VMRS            APSR_nzcv, FPSCR
340D0A:  BNE.W           loc_34184C
340D0E:  LDR.W           R0, =(ScriptParams_ptr - 0x340D1C)
340D12:  MOVS            R5, #0
340D14:  LDR.W           R1, =(numMissions_ptr - 0x340D22)
340D18:  ADD             R0, PC; ScriptParams_ptr
340D1A:  LDR.W           R2, =(dword_81A9CC - 0x340D26)
340D1E:  ADD             R1, PC; numMissions_ptr
340D20:  LDR             R0, [R0]; ScriptParams
340D22:  ADD             R2, PC; dword_81A9CC
340D24:  VLDR            S0, [R0,#4]
340D28:  LDR             R0, [R1]; numMissions
340D2A:  VCVT.S32.F32    S0, S0
340D2E:  VMOV            R1, S0
340D32:  SUBS            R1, #1
340D34:  STR             R1, [R2]
340D36:  STR.W           R5, [R0,R1,LSL#2]
340D3A:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340D3E:  MOV             R0, R4; jumptable 00340226 case 2653
340D40:  MOVS            R1, #1; __int16
340D42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340D46:  LDR.W           R0, =(ScriptParams_ptr - 0x340D54)
340D4A:  ADD             R1, SP, #0x3C8+var_39C
340D4C:  STR             R1, [SP,#0x3C8+var_3C8]
340D4E:  ADD             R1, SP, #0x3C8+var_398
340D50:  ADD             R0, PC; ScriptParams_ptr
340D52:  ADD             R2, SP, #0x3C8+var_60
340D54:  ADD             R3, SP, #0x3C8+var_6C
340D56:  LDR             R0, [R0]; ScriptParams
340D58:  LDR             R0, [R0]
340D5A:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_9WidgetIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetIDs,float &,float &,float &,float &)
340D5E:  MOV             R5, R0
340D60:  CMP             R5, #1
340D62:  BNE.W           loc_341818
340D66:  LDR.W           R0, =(ScriptParams_ptr - 0x340D70)
340D6A:  LDR             R2, [SP,#0x3C8+var_60]
340D6C:  ADD             R0, PC; ScriptParams_ptr
340D6E:  LDR             R3, [SP,#0x3C8+var_6C]
340D70:  LDRD.W          R6, R1, [SP,#0x3C8+var_39C]
340D74:  LDR             R0, [R0]; ScriptParams
340D76:  STM             R0!, {R1-R3,R6}
340D78:  MOV             R0, R4
340D7A:  MOVS            R1, #4
340D7C:  B.W             loc_341814
340D80:  MOV             R0, R4; jumptable 00340226 case 2655
340D82:  MOVS            R1, #3; __int16
340D84:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340D88:  LDR.W           R0, =(ScriptParams_ptr - 0x340D90)
340D8C:  ADD             R0, PC; ScriptParams_ptr
340D8E:  LDR             R2, [R0]; ScriptParams
340D90:  LDM             R2, {R0-R2}
340D92:  BLX             j__ZN15CTouchInterface14SetSliderRangeENS_9WidgetIDsEff; CTouchInterface::SetSliderRange(CTouchInterface::WidgetIDs,float,float)
340D96:  B.W             loc_341820
340D9A:  MOV             R0, R4; jumptable 00340226 case 2656
340D9C:  MOVS            R1, #2; __int16
340D9E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340DA2:  LDR.W           R0, =(ScriptParams_ptr - 0x340DAA)
340DA6:  ADD             R0, PC; ScriptParams_ptr
340DA8:  LDR             R1, [R0]; ScriptParams
340DAA:  LDRD.W          R0, R1, [R1]
340DAE:  BLX             j__ZN15CTouchInterface13AddWidgetFlagENS_9WidgetIDsEi; CTouchInterface::AddWidgetFlag(CTouchInterface::WidgetIDs,int)
340DB2:  B.W             loc_341820
340DB6:  MOV             R0, R4; jumptable 00340226 case 2657
340DB8:  MOVS            R1, #2; __int16
340DBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340DBE:  LDR.W           R0, =(ScriptParams_ptr - 0x340DC6)
340DC2:  ADD             R0, PC; ScriptParams_ptr
340DC4:  LDR             R1, [R0]; ScriptParams
340DC6:  LDRD.W          R0, R1, [R1]
340DCA:  BLX             j__ZN15CTouchInterface16RemoveWidgetFlagENS_9WidgetIDsEi; CTouchInterface::RemoveWidgetFlag(CTouchInterface::WidgetIDs,int)
340DCE:  B.W             loc_341820
340DD2:  MOV             R0, R4; jumptable 00340226 case 2658
340DD4:  MOVS            R1, #2; __int16
340DD6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340DDA:  LDR.W           R0, =(ScriptParams_ptr - 0x340DE2)
340DDE:  ADD             R0, PC; ScriptParams_ptr
340DE0:  LDR             R1, [R0]; ScriptParams
340DE2:  LDRD.W          R0, R1, [R1]
340DE6:  BLX             j__ZN15CTouchInterface13AddButtonFlagENS_9WidgetIDsEi; CTouchInterface::AddButtonFlag(CTouchInterface::WidgetIDs,int)
340DEA:  B.W             loc_341820
340DEE:  MOV             R0, R4; jumptable 00340226 case 2659
340DF0:  MOVS            R1, #2; __int16
340DF2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340DF6:  LDR.W           R0, =(ScriptParams_ptr - 0x340DFE)
340DFA:  ADD             R0, PC; ScriptParams_ptr
340DFC:  LDR             R1, [R0]; ScriptParams
340DFE:  LDRD.W          R0, R1, [R1]
340E02:  BLX             j__ZN15CTouchInterface16RemoveButtonFlagENS_9WidgetIDsEi; CTouchInterface::RemoveButtonFlag(CTouchInterface::WidgetIDs,int)
340E06:  B.W             loc_341820
340E0A:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 00340226 case 2660
340E0E:  MOVS            R5, #0
340E10:  CMP             R0, #0
340E12:  MOV.W           R1, #0
340E16:  IT EQ
340E18:  MOVEQ           R1, #1
340E1A:  B               loc_34156E
340E1C:  LDR.W           R0, =(SkipIntroCutscene_ptr - 0x340E24); jumptable 00340226 case 2661
340E20:  ADD             R0, PC; SkipIntroCutscene_ptr
340E22:  LDR             R0, [R0]; SkipIntroCutscene
340E24:  LDRB            R0, [R0]
340E26:  EOR.W           R1, R0, #1
340E2A:  B               loc_34151A
340E2C:  LDR             R0, [R4,#0x14]; jumptable 00340226 case 2662
340E2E:  ADD             R2, SP, #0x3C8+var_398
340E30:  MOVS            R1, #0
340E32:  MOVS            R5, #0
340E34:  ADDS            R3, R0, R1
340E36:  LDRB.W          R6, [R3],#1
340E3A:  STR             R3, [R4,#0x14]
340E3C:  STRB            R6, [R2,R1]
340E3E:  ADDS            R1, #1
340E40:  CMP             R1, #0x80
340E42:  BNE             loc_340E34
340E44:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340E48:  MOV             R0, R4; jumptable 00340226 case 2663
340E4A:  MOVS            R1, #3; __int16
340E4C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340E50:  LDR             R0, [R4,#0x14]
340E52:  ADD             R2, SP, #0x3C8+var_398
340E54:  MOVS            R1, #0
340E56:  MOVS            R5, #0
340E58:  ADDS            R3, R0, R1
340E5A:  LDRB.W          R6, [R3],#1
340E5E:  STR             R3, [R4,#0x14]
340E60:  STRB            R6, [R2,R1]
340E62:  ADDS            R1, #1
340E64:  CMP             R1, #0x80
340E66:  BNE             loc_340E58
340E68:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340E6C:  MOV             R0, R4; jumptable 00340226 case 2664
340E6E:  MOVS            R1, #3; __int16
340E70:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340E74:  LDR             R0, [R4,#0x14]
340E76:  ADD             R2, SP, #0x3C8+var_398
340E78:  MOVS            R1, #0
340E7A:  MOVS            R5, #0
340E7C:  ADDS            R3, R0, R1
340E7E:  LDRB.W          R6, [R3],#1
340E82:  STR             R3, [R4,#0x14]
340E84:  STRB            R6, [R2,R1]
340E86:  ADDS            R1, #1
340E88:  CMP             R1, #0x80
340E8A:  BNE             loc_340E7C
340E8C:  B.W             loc_341822; jumptable 00340226 cases 2612,2616,2626
340E90:  ADD             R5, SP, #0x3C8+var_60; jumptable 00340226 case 2665
340E92:  MOV             R0, R4; this
340E94:  MOVS            R2, #8; unsigned __int8
340E96:  MOV             R1, R5; char *
340E98:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
340E9C:  ADR.W           R0, dword_341A80
340EA0:  ADR.W           R1, aIe09; "IE09"
340EA4:  VLD1.64         {D16-D17}, [R0@128]
340EA8:  ADD             R0, SP, #0x3C8+var_398
340EAA:  VST1.64         {D16-D17}, [R0@128]
340EAE:  MOV             R0, R5; char *
340EB0:  BLX             strcasecmp
340EB4:  CMP             R0, #0
340EB6:  BEQ.W           loc_341880
340EBA:  MOVS            R0, #1
340EBC:  B.W             loc_341892
340EC0:  ADD             R1, SP, #0x3C8+var_60; jumptable 00340226 case 2666
340EC2:  MOV             R0, R4; this
340EC4:  MOVS            R2, #8; unsigned __int8
340EC6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
340ECA:  MOV             R0, R4; this
340ECC:  MOVS            R1, #1; __int16
340ECE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340ED2:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x340EDA)
340ED6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
340ED8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
340EDA:  LDR.W           R4, [R0,#(dword_6F3A04 - 0x6F3794)]
340EDE:  CMP             R4, #0
340EE0:  BEQ.W           loc_341820
340EE4:  LDR.W           R0, =(ScriptParams_ptr - 0x340EF2)
340EE8:  ADD             R5, SP, #0x3C8+var_398
340EEA:  ADR.W           R1, dword_341B94
340EEE:  ADD             R0, PC; ScriptParams_ptr
340EF0:  LDR             R0, [R0]; ScriptParams
340EF2:  LDR             R2, [R0]
340EF4:  MOV             R0, R5
340EF6:  BL              sub_5E6BC0
340EFA:  LDR             R0, [R4]
340EFC:  ADD             R1, SP, #0x3C8+var_60
340EFE:  MOV             R2, R5
340F00:  LDR.W           R3, [R0,#0x8C]
340F04:  MOV             R0, R4
340F06:  BLX             R3
340F08:  B.W             loc_341820
340F0C:  MOV             R0, R4; jumptable 00340226 case 2667
340F0E:  MOVS            R1, #1; __int16
340F10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340F14:  LDR.W           R0, =(ScriptParams_ptr - 0x340F1C)
340F18:  ADD             R0, PC; ScriptParams_ptr
340F1A:  LDR             R0, [R0]; ScriptParams
340F1C:  LDR             R0, [R0]
340F1E:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
340F22:  B.W             loc_341820
340F26:  MOV             R0, R4; jumptable 00340226 case 2670
340F28:  MOVS            R1, #1; __int16
340F2A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340F2E:  LDR             R0, [R4,#0x14]
340F30:  ADD             R2, SP, #0x3C8+var_398
340F32:  MOVS            R1, #0
340F34:  ADDS            R3, R0, R1
340F36:  LDRB.W          R6, [R3],#1
340F3A:  STR             R3, [R4,#0x14]
340F3C:  STRB            R6, [R2,R1]
340F3E:  ADDS            R1, #1
340F40:  CMP             R1, #0x80
340F42:  BNE             loc_340F34
340F44:  LDR.W           R0, =(ScriptParams_ptr - 0x340F4E)
340F48:  ADD             R1, SP, #0x3C8+var_398; char *
340F4A:  ADD             R0, PC; ScriptParams_ptr
340F4C:  LDR             R0, [R0]; ScriptParams
340F4E:  LDR             R0, [R0]; int
340F50:  BLX             j__ZN15CTouchInterface16SetWidgetTextureENS_9WidgetIDsEPc; CTouchInterface::SetWidgetTexture(CTouchInterface::WidgetIDs,char *)
340F54:  B.W             loc_341820
340F58:  MOV             R0, R4; jumptable 00340226 case 2671
340F5A:  MOVS            R1, #1; __int16
340F5C:  MOVS            R5, #1
340F5E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
340F62:  LDR.W           R0, =(ScriptParams_ptr - 0x340F6A)
340F66:  ADD             R0, PC; ScriptParams_ptr
340F68:  LDR             R0, [R0]; ScriptParams
340F6A:  LDR             R0, [R0]
340F6C:  CMP             R0, #0x63 ; 'c'
340F6E:  BEQ.W           loc_341820
340F72:  LDR.W           R0, =(missionReplaySetting_ptr - 0x340F7E)
340F76:  ADD.W           R1, R4, #8
340F7A:  ADD             R0, PC; missionReplaySetting_ptr
340F7C:  LDR             R0, [R0]; missionReplaySetting
340F7E:  STR             R5, [R0]
340F80:  MOVS            R0, #0
340F82:  B               loc_341390
340F84:  DCD __stack_chk_guard_ptr - 0x340216
340F88:  DCD TheText_ptr - 0x340312
340F8C:  DCD TheText_ptr - 0x340364
340F90:  DCD ScriptParams_ptr - 0x3403C4
340F94:  DCD ScriptParams_ptr - 0x3403E6
340F98:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3403FA
340F9C:  DCD ScriptParams_ptr - 0x34041E
340FA0:  DCD ScriptParams_ptr - 0x340456
340FA4:  DCD _ZN6CWorld7PlayersE_ptr - 0x340458
340FA8:  DCD TheText_ptr - 0x34048A
340FAC:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x340498
340FB0:  DCD FrontEndMenuManager_ptr - 0x3404C2
340FB4:  DCD ScriptParams_ptr - 0x3404DE
340FB8:  DCD _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x3404E0
340FBC:  DCD ScriptParams_ptr - 0x3404F4
340FC0:  DCD _ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr - 0x3404F6
340FC4:  DCD ScriptParams_ptr - 0x340506
340FC8:  DCD _ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr - 0x340530
340FCC:  DCD ScriptParams_ptr - 0x34054C
340FD0:  DCD _ZN11CTheScripts14bDrawCrossHairE_ptr - 0x34054E
340FD4:  DCD ScriptParams_ptr - 0x340576
340FD8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x340578
340FDC:  DCD ScriptParams_ptr - 0x3405B4
340FE0:  DCD ScriptParams_ptr - 0x3405E2
340FE4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3405E4
340FE8:  DCD ScriptParams_ptr - 0x340628
340FEC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34062A
340FF0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x340658
340FF4:  DCD ScriptParams_ptr - 0x340688
340FF8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3406A4
340FFC:  DCD ScriptParams_ptr - 0x3406DA
341000:  DCD _ZN8CVehicle24ms_forceVehicleLightsOffE_ptr - 0x3406DC
341004:  DCD TheCamera_ptr - 0x3406EE
341008:  DCD ScriptParams_ptr - 0x3406F0
34100C:  DCD ScriptParams_ptr - 0x34070A
341010:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34071E
341014:  DCD _ZN6CWorld7PlayersE_ptr - 0x340736
341018:  DCD ScriptParams_ptr - 0x34075C
34101C:  DCD _ZN6CWorld7PlayersE_ptr - 0x34075E
341020:  DCD ScriptParams_ptr - 0x340794
341024:  DCD ScriptParams_ptr - 0x3407B6
341028:  DCD _ZN6CCheat17m_aCheatFunctionsE_ptr - 0x3407C6
34102C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3407E6
341030:  DCD ScriptParams_ptr - 0x3407FA
341034:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x340830
341038:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x340922
34103C:  DCD ScriptParams_ptr - 0x340944
341040:  DCD ScriptParams_ptr - 0x34095A
341044:  DCD _ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr - 0x34095C
341048:  DCD ScriptParams_ptr - 0x34096C
34104C:  DCD ScriptParams_ptr - 0x34098A
341050:  DCD ScriptParams_ptr - 0x3409B0
341054:  DCD _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x3409B2
341058:  DCD ScriptParams_ptr - 0x3409D8
34105C:  DCD _ZN8CVehicle30ms_fRailTrackResistanceDefaultE_ptr - 0x3409DA
341060:  DCD _ZN8CVehicle23ms_fRailTrackResistanceE_ptr - 0x3409F8
341064:  DCD ScriptParams_ptr - 0x340A16
341068:  DCD _ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x340A2A
34106C:  DCD ScriptParams_ptr - 0x340A54
341070:  DCD FrontEndMenuManager_ptr - 0x340A56
341074:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x340A7C
341078:  DCD ScriptParams_ptr - 0x340A7E
34107C:  DCD MousePointerStateHelper_ptr - 0x340AAE
341080:  DCD dword_81A9C8 - 0x340ABE
341084:  DCD ScriptParams_ptr - 0x340ADC
341088:  DCFS 640.0
34108C:  DCFS 448.0
341090:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341098); jumptable 00340226 case 2672
341094:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341096:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
341098:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
34109A:  CMP             R0, #0x5F ; '_'
34109C:  BHI.W           loc_341820
3410A0:  MOV             R0, R4; this
3410A2:  MOVS            R1, #2; __int16
3410A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3410A8:  ADD.W           R8, SP, #0x3C8+var_60
3410AC:  MOV             R0, R4; this
3410AE:  MOVS            R2, #8; unsigned __int8
3410B0:  MOV             R1, R8; char *
3410B2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3410B6:  LDR.W           R0, =(TheText_ptr - 0x3410C0)
3410BA:  MOV             R1, R8; CKeyGen *
3410BC:  ADD             R0, PC; TheText_ptr
3410BE:  LDR.W           R9, [R0]; TheText
3410C2:  MOV             R0, R9; this
3410C4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3410C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3410D0)
3410CC:  ADD             R0, PC; ScriptParams_ptr
3410CE:  LDR             R5, [R0]; ScriptParams
3410D0:  LDRD.W          R0, R1, [R5]
3410D4:  STR             R0, [SP,#0x3C8+var_398]
3410D6:  MOV             R0, R4; this
3410D8:  STR             R1, [SP,#0x3C8+var_6C]
3410DA:  MOVS            R1, #1; __int16
3410DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3410E0:  LDR             R0, [R5]
3410E2:  ADD             R1, SP, #0x3C8+var_6C; float *
3410E4:  STR             R0, [SP,#0x3C8+var_39C]
3410E6:  MOV.W           R0, #0x3F800000
3410EA:  STR             R0, [SP,#0x3C8+var_3A0]
3410EC:  ADD             R0, SP, #0x3C8+var_398; float *
3410EE:  ADD             R2, SP, #0x3C8+var_39C; float *
3410F0:  ADD             R3, SP, #0x3C8+var_3A0; float *
3410F2:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
3410F6:  LDR.W           R0, =(RsGlobal_ptr - 0x341102)
3410FA:  VLDR            S2, =640.0
3410FE:  ADD             R0, PC; RsGlobal_ptr
341100:  VLDR            S18, =448.0
341104:  LDR             R4, [R0]; RsGlobal
341106:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341112)
34110A:  VLDR            S0, [R4,#4]
34110E:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341110:  VCVT.F32.S32    S0, S0
341114:  LDR             R5, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
341116:  LDR.W           R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x341120)
34111A:  LDRH            R1, [R5]; CTheScripts::NumberOfIntroTextLinesThisFrame
34111C:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
34111E:  LDR             R6, [R0]; CTheScripts::IntroTextLines ...
341120:  ADD.W           R0, R1, R1,LSL#4
341124:  VDIV.F32        S0, S0, S2
341128:  ADD.W           R1, R6, R0,LSL#2; unsigned __int8
34112C:  VLDR            S2, [SP,#0x3C8+var_398]
341130:  VDIV.F32        S0, S2, S0
341134:  VSTR            S0, [R1,#0x2C]
341138:  VLDR            S0, [R4,#8]
34113C:  VCVT.F32.S32    S0, S0
341140:  VLDR            S2, [SP,#0x3C8+var_6C]
341144:  LDRB.W          R0, [R1,#0x28]; this
341148:  VDIV.F32        S0, S0, S18
34114C:  VDIV.F32        S0, S2, S0
341150:  VSTR            S0, [R1,#0x30]
341154:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
341158:  VLDR            S0, [R4,#8]
34115C:  VMOV.F32        S16, #0.5
341160:  VCVT.F32.S32    S0, S0
341164:  LDRH            R0, [R5]; CTheScripts::NumberOfIntroTextLinesThisFrame
341166:  ADD.W           R0, R0, R0,LSL#4
34116A:  ADD.W           R0, R6, R0,LSL#2
34116E:  VDIV.F32        S0, S0, S18
341172:  VLDR            S2, [R0,#4]
341176:  VMUL.F32        S0, S2, S0
34117A:  VMUL.F32        S0, S0, S16
34117E:  VMOV            R0, S0; this
341182:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
341186:  MOVS            R0, #0; this
341188:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
34118C:  MOV             R4, R0
34118E:  MOV             R0, R9; this
341190:  MOV             R1, R8; CKeyGen *
341192:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
341196:  MOVS            R1, #(stderr+1); unsigned __int16 *
341198:  MOVS            R2, #0; unsigned __int8
34119A:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
34119E:  VMOV            S0, R0
3411A2:  VLDR            S2, [SP,#0x3C8+var_39C]
3411A6:  VMOV            S20, R4
3411AA:  VCMPE.F32       S0, S2
3411AE:  VMRS            APSR_nzcv, FPSCR
3411B2:  BLE.W           loc_3418FA
3411B6:  VDIV.F32        S0, S2, S0
3411BA:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x3411C6)
3411BE:  LDR.W           R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x3411C8)
3411C2:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
3411C4:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
3411C6:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
3411C8:  LDR             R1, [R1]; CTheScripts::IntroTextLines ...
3411CA:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
3411CC:  ADD.W           R0, R0, R0,LSL#4
3411D0:  ADD.W           R0, R1, R0,LSL#2
3411D4:  VLDR            S2, [R0]
3411D8:  VLDR            S4, [R0,#4]
3411DC:  VMUL.F32        S2, S0, S2
3411E0:  VMUL.F32        S0, S0, S4
3411E4:  VSTR            S2, [R0]
3411E8:  VSTR            S0, [R0,#4]
3411EC:  B               loc_341914
3411EE:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x3411F6); jumptable 00340226 case 2673
3411F2:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
3411F4:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
3411F6:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
3411F8:  CMP             R0, #0x5F ; '_'
3411FA:  BHI.W           loc_341820
3411FE:  MOV             R0, R4; this
341200:  MOVS            R1, #2; __int16
341202:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341206:  ADD.W           R8, SP, #0x3C8+var_60
34120A:  MOV             R0, R4; this
34120C:  MOVS            R2, #8; unsigned __int8
34120E:  MOV             R1, R8; char *
341210:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
341214:  LDR.W           R0, =(TheText_ptr - 0x34121E)
341218:  MOV             R1, R8; CKeyGen *
34121A:  ADD             R0, PC; TheText_ptr
34121C:  LDR.W           R9, [R0]; TheText
341220:  MOV             R0, R9; this
341222:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
341226:  LDR.W           R0, =(ScriptParams_ptr - 0x34122E)
34122A:  ADD             R0, PC; ScriptParams_ptr
34122C:  LDR.W           R11, [R0]; ScriptParams
341230:  LDRD.W          R0, R1, [R11]
341234:  STR             R0, [SP,#0x3C8+var_6C]
341236:  MOV             R0, R4; this
341238:  STR             R1, [SP,#0x3C8+var_39C]
34123A:  MOVS            R1, #2; __int16
34123C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341240:  LDR.W           R0, [R11,#(dword_81A90C - 0x81A908)]
341244:  ADD             R1, SP, #0x3C8+var_39C; float *
341246:  STR             R0, [SP,#0x3C8+var_3A0]
341248:  MOV.W           R0, #0x3F800000
34124C:  STR             R0, [SP,#0x3C8+var_3A4]
34124E:  ADD             R0, SP, #0x3C8+var_6C; float *
341250:  ADD             R2, SP, #0x3C8+var_3A0; float *
341252:  ADD             R3, SP, #0x3C8+var_3A4; float *
341254:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
341258:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341266)
34125C:  MOVS            R2, #8; size_t
34125E:  VLDR            S2, =640.0
341262:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341264:  VLDR            S16, =448.0
341268:  LDR             R4, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34126A:  LDR.W           R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x341274)
34126E:  LDRH            R1, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
341270:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
341272:  LDR             R6, [R0]; CTheScripts::IntroTextLines ...
341274:  ADD.W           R0, R1, R1,LSL#4
341278:  LDR.W           R1, =(RsGlobal_ptr - 0x341280)
34127C:  ADD             R1, PC; RsGlobal_ptr
34127E:  ADD.W           R0, R6, R0,LSL#2
341282:  LDR             R5, [R1]; RsGlobal
341284:  MOV             R1, R8; char *
341286:  VLDR            S0, [R5,#4]
34128A:  VCVT.F32.S32    S0, S0
34128E:  VDIV.F32        S0, S0, S2
341292:  VLDR            S2, [SP,#0x3C8+var_6C]
341296:  VDIV.F32        S0, S2, S0
34129A:  VSTR            S0, [R0,#0x2C]
34129E:  VLDR            S0, [R5,#8]
3412A2:  VCVT.F32.S32    S0, S0
3412A6:  VLDR            S2, [SP,#0x3C8+var_39C]
3412AA:  VDIV.F32        S0, S0, S16
3412AE:  VDIV.F32        S0, S2, S0
3412B2:  VSTR            S0, [R0,#0x30]
3412B6:  ADDS            R0, #0x34 ; '4'; char *
3412B8:  BLX             strncpy
3412BC:  LDRH            R0, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
3412BE:  MOV.W           R10, #0xFFFFFFFF
3412C2:  LDR.W           R1, [R11]; unsigned __int8
3412C6:  ADD.W           R0, R0, R0,LSL#4
3412CA:  ADD.W           R0, R6, R0,LSL#2
3412CE:  STRD.W          R1, R10, [R0,#0x3C]
3412D2:  LDRB.W          R0, [R0,#0x28]; this
3412D6:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
3412DA:  VLDR            S0, [R5,#8]
3412DE:  VMOV.F32        S18, #0.5
3412E2:  VCVT.F32.S32    S0, S0
3412E6:  LDRH            R0, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
3412E8:  ADD.W           R0, R0, R0,LSL#4
3412EC:  ADD.W           R0, R6, R0,LSL#2
3412F0:  VDIV.F32        S0, S0, S16
3412F4:  VLDR            S2, [R0,#4]
3412F8:  VMUL.F32        S0, S2, S0
3412FC:  VMUL.F32        S0, S0, S18
341300:  VMOV            R0, S0; this
341304:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
341308:  MOVS            R0, #0; this
34130A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
34130E:  MOV             R4, R0
341310:  MOV             R0, R9; this
341312:  MOV             R1, R8; CKeyGen *
341314:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
341318:  LDR.W           R1, [R11]; unsigned __int16 *
34131C:  ADD             R5, SP, #0x3C8+var_398
34131E:  MOV.W           R2, #0xFFFFFFFF; int
341322:  MOV.W           R3, #0xFFFFFFFF; int
341326:  STRD.W          R10, R10, [SP,#0x3C8+var_3C8]; int
34132A:  STRD.W          R10, R5, [SP,#0x3C8+var_3C0]; int
34132E:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
341332:  MOV             R0, R5; this
341334:  MOVS            R1, #(stderr+1); unsigned __int16 *
341336:  MOVS            R2, #0; unsigned __int8
341338:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
34133C:  VMOV            S0, R0
341340:  VLDR            S2, [SP,#0x3C8+var_3A0]
341344:  VMOV            S20, R4
341348:  VCMPE.F32       S0, S2
34134C:  VMRS            APSR_nzcv, FPSCR
341350:  BLE.W           loc_341990
341354:  VDIV.F32        S0, S2, S0
341358:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341364)
34135C:  LDR.W           R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x341366)
341360:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341362:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
341364:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
341366:  LDR             R1, [R1]; CTheScripts::IntroTextLines ...
341368:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
34136A:  ADD.W           R0, R0, R0,LSL#4
34136E:  ADD.W           R0, R1, R0,LSL#2
341372:  VLDR            S2, [R0]
341376:  VLDR            S4, [R0,#4]
34137A:  VMUL.F32        S2, S0, S2
34137E:  VMUL.F32        S0, S0, S4
341382:  VSTR            S2, [R0]
341386:  VSTR            S0, [R0,#4]
34138A:  B               loc_3419AA
34138C:  MOVS            R0, #1; jumptable 00340226 case 2674
34138E:  MOVS            R1, #0
341390:  MOVS            R5, #0
341392:  BLX             j__Z16SaveGameForPause10eSaveTypesPc; SaveGameForPause(eSaveTypes,char *)
341396:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341398:  MOV             R0, R4; jumptable 00340226 case 2675
34139A:  MOVS            R1, #4; __int16
34139C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3413A0:  LDR.W           R0, =(ScriptParams_ptr - 0x3413A8)
3413A4:  ADD             R0, PC; ScriptParams_ptr
3413A6:  LDR             R3, [R0]; ScriptParams
3413A8:  LDM             R3, {R0-R3}
3413AA:  BLX             j__ZN15CTouchInterface15SetWidgetValue3ENS_9WidgetIDsEfff; CTouchInterface::SetWidgetValue3(CTouchInterface::WidgetIDs,float,float,float)
3413AE:  B               loc_341820
3413B0:  MOV             R0, R4; jumptable 00340226 case 2676
3413B2:  MOVS            R1, #1; __int16
3413B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3413B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3413C0)
3413BC:  ADD             R0, PC; ScriptParams_ptr
3413BE:  LDR             R0, [R0]; ScriptParams
3413C0:  LDR             R0, [R0]
3413C2:  CMP             R0, #0
3413C4:  IT NE
3413C6:  MOVNE           R0, #1; bool
3413C8:  BLX             j__Z14IsGameResumingb; IsGameResuming(bool)
3413CC:  B               loc_341518
3413CE:  MOV             R0, R4; jumptable 00340226 case 2677
3413D0:  MOVS            R1, #2; __int16
3413D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3413D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3413DE)
3413DA:  ADD             R0, PC; ScriptParams_ptr
3413DC:  LDR             R0, [R0]; ScriptParams
3413DE:  LDRB            R6, [R0,#(dword_81A90C - 0x81A908)]
3413E0:  LDRB            R5, [R0]
3413E2:  MOV             R1, R6; unsigned __int8
3413E4:  MOV             R0, R5; this
3413E6:  BLX             j__ZN11CMenuSystem17IsCarColourInGridEhh; CMenuSystem::IsCarColourInGrid(uchar,uchar)
3413EA:  MOV             R1, R0; unsigned __int8
3413EC:  MOV             R0, R4; this
3413EE:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3413F2:  MOV             R0, R5; this
3413F4:  MOV             R1, R6; unsigned __int8
3413F6:  BLX             j__ZN11CMenuSystem21FindCarColourFromGridEhh; CMenuSystem::FindCarColourFromGrid(uchar,uchar)
3413FA:  SXTB            R1, R0; unsigned __int8
3413FC:  MOV             R0, R5; this
3413FE:  BLX             j__ZN11CMenuSystem17SetActiveMenuItemEha; CMenuSystem::SetActiveMenuItem(uchar,signed char)
341402:  B               loc_341820
341404:  MOV             R0, R4; jumptable 00340226 case 2678
341406:  MOVS            R1, #1; __int16
341408:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34140C:  LDR.W           R0, =(ScriptParams_ptr - 0x341414)
341410:  ADD             R0, PC; ScriptParams_ptr
341412:  LDR             R0, [R0]; ScriptParams
341414:  LDR             R0, [R0]
341416:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
34141A:  B               loc_341518
34141C:  MOV             R0, R4; jumptable 00340226 case 2679
34141E:  MOVS            R1, #1; __int16
341420:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341424:  ADDS            R4, #8
341426:  ADR.W           R1, aCrane2; "crane2"
34142A:  MOV             R0, R4; char *
34142C:  BLX             strcmp
341430:  CMP             R0, #0
341432:  BEQ.W           loc_3418A2
341436:  LDR.W           R0, =(ScriptParams_ptr - 0x341448)
34143A:  MOVS            R5, #0
34143C:  LDR.W           R1, =(missionReplaySetting_ptr - 0x34144A)
341440:  LDR.W           R2, =(IsOddJob_ptr - 0x34144C)
341444:  ADD             R0, PC; ScriptParams_ptr
341446:  ADD             R1, PC; missionReplaySetting_ptr
341448:  ADD             R2, PC; IsOddJob_ptr
34144A:  LDR             R0, [R0]; ScriptParams
34144C:  LDR             R1, [R1]; missionReplaySetting
34144E:  LDR             R2, [R2]; IsOddJob
341450:  LDR             R0, [R0]
341452:  STR             R5, [R1]
341454:  MOV             R1, R4
341456:  STR             R0, [R2]
341458:  MOVS            R0, #4
34145A:  BLX             j__Z16SaveGameForPause10eSaveTypesPc; SaveGameForPause(eSaveTypes,char *)
34145E:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341460:  MOV             R0, R4; jumptable 00340226 case 2697
341462:  MOVS            R1, #3; __int16
341464:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341468:  LDR.W           R0, =(ScriptParams_ptr - 0x341470)
34146C:  ADD             R0, PC; ScriptParams_ptr
34146E:  LDR             R2, [R0]; ScriptParams
341470:  LDM             R2, {R0-R2}
341472:  BLX             j__ZN15CTouchInterface15SetWidgetValue2ENS_9WidgetIDsEff; CTouchInterface::SetWidgetValue2(CTouchInterface::WidgetIDs,float,float)
341476:  B               loc_341820
341478:  MOV             R0, R4; jumptable 00340226 case 2698
34147A:  MOVS            R1, #7; __int16
34147C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341480:  LDR.W           R0, =(ScriptParams_ptr - 0x34148E)
341484:  ADD.W           R8, SP, #0x3C8+var_60
341488:  MOVS            R2, #8; unsigned __int8
34148A:  ADD             R0, PC; ScriptParams_ptr
34148C:  MOV             R1, R8; char *
34148E:  LDR             R6, [R0]; ScriptParams
341490:  MOV             R0, R4; this
341492:  LDR             R5, [R6,#(dword_81A920 - 0x81A908)]
341494:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
341498:  LDRD.W          R0, R3, [R6],#8
34149C:  LDM             R6, {R1,R2,R4,R6}
34149E:  CMP             R4, #0
3414A0:  IT NE
3414A2:  MOVNE           R4, #1
3414A4:  CMP             R2, #0
3414A6:  IT NE
3414A8:  MOVNE           R2, #1
3414AA:  CMP             R1, #0
3414AC:  IT NE
3414AE:  MOVNE           R1, #1
3414B0:  CMP             R3, #0
3414B2:  STMEA.W         SP, {R1,R2,R4,R6}
3414B6:  IT NE
3414B8:  MOVNE           R3, #1
3414BA:  MOV             R1, R8
3414BC:  MOV             R2, R5
3414BE:  BLX             j__ZN15CTouchInterface13SetWidgetInfoENS_9WidgetIDsEPcfbbbbi; CTouchInterface::SetWidgetInfo(CTouchInterface::WidgetIDs,char *,float,bool,bool,bool,bool,int)
3414C2:  B               loc_341820
3414C4:  MOV             R0, R4; jumptable 00340226 case 2699
3414C6:  MOVS            R1, #5; __int16
3414C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3414CC:  ADD             R5, SP, #0x3C8+var_60
3414CE:  MOV             R0, R4; this
3414D0:  MOVS            R2, #8; unsigned __int8
3414D2:  MOV             R1, R5; char *
3414D4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3414D8:  ADD             R6, SP, #0x3C8+var_6C
3414DA:  MOV             R0, R4; this
3414DC:  MOVS            R2, #8; unsigned __int8
3414DE:  MOV             R1, R6; char *
3414E0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3414E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3414EC)
3414E8:  ADD             R0, PC; ScriptParams_ptr
3414EA:  LDR             R4, [R0]; ScriptParams
3414EC:  LDM             R4, {R0-R4}
3414EE:  STMEA.W         SP, {R4-R6}
3414F2:  BLX             j__ZN15CTouchInterface14SetWidgetInfo2ENS_9WidgetIDsEiiiiPcS1_; CTouchInterface::SetWidgetInfo2(CTouchInterface::WidgetIDs,int,int,int,int,char *,char *)
3414F6:  B               loc_341820
3414F8:  MOVS            R0, #0; jumptable 00340226 case 2700
3414FA:  MOVS            R5, #0
3414FC:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
341500:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341502:  MOV             R0, R4; jumptable 00340226 case 2701
341504:  MOVS            R1, #1; __int16
341506:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34150A:  LDR.W           R0, =(ScriptParams_ptr - 0x341512)
34150E:  ADD             R0, PC; ScriptParams_ptr
341510:  LDR             R0, [R0]; ScriptParams
341512:  LDR             R0, [R0]
341514:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
341518:  MOV             R1, R0
34151A:  MOV             R0, R4
34151C:  B               loc_34181C
34151E:  MOV             R0, R4; jumptable 00340226 case 2702
341520:  MOVS            R1, #1; __int16
341522:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341526:  B               loc_341820
341528:  BLX             j__ZN14CWeaponEffects18ClearAllCrosshairsEv; jumptable 00340226 case 2703
34152C:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x34153E)
341530:  MOV.W           R2, #0x194
341534:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x341540)
341538:  MOVS            R5, #0
34153A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
34153C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34153E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
341540:  LDR             R1, [R1]; CWorld::Players ...
341542:  LDR             R0, [R0]; CWorld::PlayerInFocus
341544:  SMULBB.W        R0, R0, R2
341548:  LDR             R0, [R1,R0]; this
34154A:  MOVS            R1, #0; CEntity *
34154C:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
341550:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341552:  MOV             R0, R4; jumptable 00340226 case 2704
341554:  MOVS            R1, #1; __int16
341556:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34155A:  LDR.W           R0, =(ScriptParams_ptr - 0x341566)
34155E:  MOVS            R1, #0
341560:  MOVS            R5, #0
341562:  ADD             R0, PC; ScriptParams_ptr
341564:  LDR             R0, [R0]; ScriptParams
341566:  LDR             R0, [R0]
341568:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
34156C:  MOV             R1, R0; unsigned __int8
34156E:  MOV             R0, R4; this
341570:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
341574:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341576:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2681
34157A:  CMP             R0, #1
34157C:  BEQ             def_34032A; jumptable 0034032A default case
34157E:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2685
341582:  CMP             R0, #2
341584:  BEQ             def_34032A; jumptable 0034032A default case
341586:  B               loc_341820
341588:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x341590); jumptable 0034032A case 2682
34158C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
34158E:  LDR             R5, [R0]; MobileSettings::settings ...
341590:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
341594:  LDR.W           R1, [R5,#(dword_6E051C - 0x6E03F4)]
341598:  ORRS            R0, R1
34159A:  BNE.W           loc_341820
34159E:  B               def_34032A; jumptable 0034032A default case
3415A0:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2683
3415A4:  MOVS            R5, #0
3415A6:  CMP             R0, #0
3415A8:  BNE.W           loc_341822; jumptable 00340226 cases 2612,2616,2626
3415AC:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3415B4)
3415B0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3415B2:  LDR             R0, [R0]; MobileSettings::settings ...
3415B4:  LDR.W           R0, [R0,#(dword_6E051C - 0x6E03F4)]
3415B8:  B               loc_3415F0
3415BA:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2684
3415BE:  CMP             R0, #1
3415C0:  BEQ             def_34032A; jumptable 0034032A default case
3415C2:  B               loc_341820
3415C4:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3415CC); jumptable 0034032A case 2686
3415C8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
3415CA:  LDR             R5, [R0]; MobileSettings::settings ...
3415CC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3415D0:  LDR             R1, [R5,#(dword_6E045C - 0x6E03F4)]
3415D2:  ORRS            R0, R1
3415D4:  BNE.W           loc_341820
3415D8:  B               def_34032A; jumptable 0034032A default case
3415DA:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2687
3415DE:  MOVS            R5, #0
3415E0:  CMP             R0, #0
3415E2:  BNE.W           loc_341822; jumptable 00340226 cases 2612,2616,2626
3415E6:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3415EE)
3415EA:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3415EC:  LDR             R0, [R0]; MobileSettings::settings ...
3415EE:  LDR             R0, [R0,#(dword_6E045C - 0x6E03F4)]
3415F0:  CMP             R0, #1
3415F2:  BEQ             def_34032A; jumptable 0034032A default case
3415F4:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
3415F6:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034032A case 2688
3415FA:  MOVS            R5, #0
3415FC:  CMP             R0, #0
3415FE:  BNE.W           loc_341822; jumptable 00340226 cases 2612,2616,2626
341602:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x34160A)
341606:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
341608:  LDR             R0, [R0]; MobileSettings::settings ...
34160A:  LDR             R0, [R0,#(dword_6E045C - 0x6E03F4)]
34160C:  CMP             R0, #2
34160E:  BNE.W           loc_341822; jumptable 00340226 cases 2612,2616,2626
341612:  LDR.W           R0, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x34161A); jumptable 0034032A default case
341616:  ADD             R0, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
341618:  LDR             R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
34161A:  LDRB            R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages
34161C:  CMP             R0, #0
34161E:  ITT EQ
341620:  LDRBEQ.W        R0, [R4,#0xE8]
341624:  CMPEQ           R0, #0
341626:  BEQ             loc_341670
341628:  LDR.W           R0, =(ScriptParams_ptr - 0x341636)
34162C:  MOVS            R4, #0
34162E:  MOV             R1, R8; char *
341630:  MOVS            R2, #0; unsigned __int16 *
341632:  ADD             R0, PC; ScriptParams_ptr
341634:  MOVS            R3, #1; bool
341636:  LDR             R0, [R0]; ScriptParams
341638:  LDR             R0, [R0]
34163A:  STRD.W          R4, R0, [SP,#0x3C8+var_3C8]; bool
34163E:  ADD             R0, SP, #0x3C8+var_60; this
341640:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
341644:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x34164C)
341648:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
34164A:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
34164C:  LDRB            R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
34164E:  CBZ             R0, loc_34167E
341650:  MOV.W           R0, #0xFFFFFFFF
341654:  MOV             R1, R8; char *
341656:  STRD.W          R0, R0, [SP,#0x3C8+var_3C8]; int
34165A:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
34165E:  STRD.W          R0, R0, [SP,#0x3C8+var_3C0]; int
341662:  ADD             R0, SP, #0x3C8+var_60; this
341664:  MOV.W           R3, #0xFFFFFFFF; int
341668:  STR             R4, [SP,#0x3C8+var_3B8]; int
34166A:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
34166E:  B               loc_34167E
341670:  LDR.W           R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x341678)
341674:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
341676:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress ...
341678:  LDRB            R0, [R0]; CTheScripts::bMiniGameInProgress
34167A:  CMP             R0, #0
34167C:  BEQ             loc_341628
34167E:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x341686)
341682:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
341684:  B               loc_341754
341686:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034037C case 2691
34168A:  CMP             R0, #1
34168C:  BEQ             def_34037C; jumptable 0034037C default case
34168E:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034037C case 2695
341692:  CMP             R0, #2
341694:  BEQ             def_34037C; jumptable 0034037C default case
341696:  B               loc_341820
341698:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3416A0); jumptable 0034037C case 2692
34169C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
34169E:  LDR             R5, [R0]; MobileSettings::settings ...
3416A0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3416A4:  LDR.W           R1, [R5,#(dword_6E051C - 0x6E03F4)]
3416A8:  ORRS            R0, R1
3416AA:  BNE.W           loc_341820
3416AE:  B               def_34037C; jumptable 0034037C default case
3416B0:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034037C case 2693
3416B4:  MOVS            R5, #0
3416B6:  CMP             R0, #0
3416B8:  BNE.W           loc_341822; jumptable 00340226 cases 2612,2616,2626
3416BC:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3416C4)
3416C0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3416C2:  LDR             R0, [R0]; MobileSettings::settings ...
3416C4:  LDR.W           R0, [R0,#(dword_6E051C - 0x6E03F4)]
3416C8:  CMP             R0, #1
3416CA:  BEQ             def_34037C; jumptable 0034037C default case
3416CC:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
3416CE:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 0034037C case 2694
3416D2:  CMP             R0, #1
3416D4:  BEQ             def_34037C; jumptable 0034037C default case
3416D6:  B               loc_341820
3416D8:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3416E0); jumptable 0034037C case 2696
3416DC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
3416DE:  LDR             R5, [R0]; MobileSettings::settings ...
3416E0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3416E4:  LDR             R1, [R5,#(dword_6E045C - 0x6E03F4)]
3416E6:  ORRS            R0, R1
3416E8:  BNE.W           loc_341820
3416EC:  LDR.W           R0, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x3416F4); jumptable 0034037C default case
3416F0:  ADD             R0, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
3416F2:  LDR             R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
3416F4:  LDRB            R0, [R0]; CTheScripts::bDisplayNonMiniGameHelpMessages
3416F6:  CMP             R0, #0
3416F8:  ITT EQ
3416FA:  LDRBEQ.W        R0, [R4,#0xE8]
3416FE:  CMPEQ           R0, #0
341700:  BEQ             loc_341740
341702:  ADD             R0, SP, #0x3C8+var_60; this
341704:  MOVS            R4, #0
341706:  MOV             R1, R8; char *
341708:  MOVS            R2, #0; unsigned __int16 *
34170A:  MOVS            R3, #0; bool
34170C:  STRD.W          R4, R4, [SP,#0x3C8+var_3C8]; bool
341710:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
341714:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x34171C)
341718:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
34171A:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
34171C:  LDRB            R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
34171E:  CBZ             R0, loc_34174E
341720:  MOV.W           R0, #0xFFFFFFFF
341724:  MOV             R1, R8; char *
341726:  STRD.W          R0, R0, [SP,#0x3C8+var_3C8]; int
34172A:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
34172E:  STRD.W          R0, R0, [SP,#0x3C8+var_3C0]; int
341732:  ADD             R0, SP, #0x3C8+var_60; this
341734:  MOV.W           R3, #0xFFFFFFFF; int
341738:  STR             R4, [SP,#0x3C8+var_3B8]; int
34173A:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
34173E:  B               loc_34174E
341740:  LDR.W           R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x341748)
341744:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
341746:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress ...
341748:  LDRB            R0, [R0]; CTheScripts::bMiniGameInProgress
34174A:  CMP             R0, #0
34174C:  BEQ             loc_341702
34174E:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x341756)
341752:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
341754:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
341756:  MOVS            R1, #1
341758:  MOVS            R5, #0
34175A:  STRB            R1, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
34175C:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
34175E:  LDR.W           R0, =(ScriptParams_ptr - 0x341766)
341762:  ADD             R0, PC; ScriptParams_ptr
341764:  LDR             R1, [R0]; ScriptParams
341766:  LDRD.W          R0, R1, [R1]
34176A:  BLX             j__ZN15CTouchInterface15SetEquippedItemENS_9WidgetIDsEi; CTouchInterface::SetEquippedItem(CTouchInterface::WidgetIDs,int)
34176E:  B               loc_341820
341770:  MOV.W           R0, #0xFFFFFFFF
341774:  LDR.W           R1, =(ScriptParams_ptr - 0x34177C)
341778:  ADD             R1, PC; ScriptParams_ptr
34177A:  B               loc_3417BA
34177C:  MOVS            R6, #0
34177E:  VMOV            R3, S0
341782:  MOVS            R4, #1
341784:  STRD.W          R5, R6, [SP,#0x3C8+var_3C8]
341788:  STR             R4, [SP,#0x3C8+var_3C0]
34178A:  BLX             j__ZN10CGameLogic9SetUpSkipE7CVectorfbP8CVehicleb; CGameLogic::SetUpSkip(CVector,float,bool,CVehicle *,bool)
34178E:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341790:  MOVS            R1, #0
341792:  B               loc_34151A
341794:  LDR.W           R1, =(ScriptParams_ptr - 0x3417A0)
341798:  MOV.W           R0, #0xFFFFFFFF
34179C:  ADD             R1, PC; ScriptParams_ptr
34179E:  B               loc_3417BA
3417A0:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3417AA)
3417A4:  MOVS            R5, #0
3417A6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3417A8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3417AA:  STRB.W          R5, [R0,#(byte_796856 - 0x7967F4)]
3417AE:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
3417B0:  LDR.W           R1, =(ScriptParams_ptr - 0x3417BC)
3417B4:  MOV.W           R0, #0xFFFFFFFF
3417B8:  ADD             R1, PC; ScriptParams_ptr
3417BA:  LDR             R1, [R1]; ScriptParams
3417BC:  STR             R0, [R1]
3417BE:  MOV             R0, R4; this
3417C0:  MOVS            R1, #1; __int16
3417C2:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3417C6:  B               loc_341820
3417C8:  LDR.W           R2, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x3417D4)
3417CC:  SXTB            R1, R0; signed __int8
3417CE:  MOVS            R5, #0
3417D0:  ADD             R2, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
3417D2:  LDR             R0, [R2]; this
3417D4:  MOVS            R2, #0; bool
3417D6:  BLX             j__ZN17CScriptsForBrains31SwitchAllObjectBrainsWithThisIDEab; CScriptsForBrains::SwitchAllObjectBrainsWithThisID(signed char,bool)
3417DA:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
3417DC:  LDR.W           R0, =(ScriptParams_ptr - 0x3417E6)
3417E0:  MOVS            R5, #0
3417E2:  ADD             R0, PC; ScriptParams_ptr
3417E4:  LDR             R0, [R0]; ScriptParams
3417E6:  STR             R5, [R0]
3417E8:  MOVS            R0, #0
3417EA:  LDR.W           R1, =(ScriptParams_ptr - 0x3417F2)
3417EE:  ADD             R1, PC; ScriptParams_ptr
3417F0:  LDR             R1, [R1]; ScriptParams
3417F2:  STR             R0, [R1,#(dword_81A90C - 0x81A908)]
3417F4:  MOV             R0, R4
3417F6:  MOVS            R1, #2
3417F8:  B               loc_341814
3417FA:  LDR.W           R1, =(ScriptParams_ptr - 0x341804)
3417FE:  MOVS            R5, #0
341800:  ADD             R1, PC; ScriptParams_ptr
341802:  B               loc_34180C
341804:  LDR.W           R1, =(ScriptParams_ptr - 0x34180E)
341808:  MOVS            R5, #0
34180A:  ADD             R1, PC; ScriptParams_ptr
34180C:  LDR             R1, [R1]
34180E:  STR             R0, [R1]
341810:  MOV             R0, R4; this
341812:  MOVS            R1, #1; __int16
341814:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
341818:  MOV             R0, R4; this
34181A:  MOV             R1, R5; unsigned __int8
34181C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
341820:  MOVS            R5, #0
341822:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x34182C); jumptable 00340226 cases 2612,2616,2626
341826:  LDR             R1, [SP,#0x3C8+var_54]
341828:  ADD             R0, PC; __stack_chk_guard_ptr
34182A:  LDR             R0, [R0]; __stack_chk_guard
34182C:  LDR             R0, [R0]
34182E:  SUBS            R0, R0, R1
341830:  ITTTT EQ
341832:  SXTBEQ          R0, R5
341834:  SUBEQ.W         R4, R7, #-var_50
341838:  MOVEQ           SP, R4
34183A:  VPOPEQ          {D8-D13}
34183E:  ITTT EQ
341840:  ADDEQ           SP, SP, #4
341842:  POPEQ.W         {R8-R11}
341846:  POPEQ           {R4-R7,PC}; float
341848:  BLX             __stack_chk_fail
34184C:  LDR             R4, =(dword_81A9CC - 0x341854)
34184E:  LDR             R0, =(numMissions_ptr - 0x341858)
341850:  ADD             R4, PC; dword_81A9CC
341852:  LDR             R1, =(missionLabel_ptr - 0x34185C)
341854:  ADD             R0, PC; numMissions_ptr
341856:  LDR             R2, [R4]
341858:  ADD             R1, PC; missionLabel_ptr
34185A:  LDR             R5, [R0]; numMissions
34185C:  LDR             R0, [R1]; missionLabel
34185E:  LDR.W           R1, [R5,R2,LSL#2]
341862:  ADD.W           R0, R0, R2,LSL#12
341866:  MOVS            R2, #8; size_t
341868:  ADD.W           R0, R0, R1,LSL#4; char *
34186C:  ADD             R1, SP, #0x3C8+var_60; char *
34186E:  BLX             strncpy
341872:  LDR             R0, [R4]
341874:  LDR.W           R1, [R5,R0,LSL#2]
341878:  ADDS            R1, #1
34187A:  STR.W           R1, [R5,R0,LSL#2]
34187E:  B               loc_341820
341880:  MOVS            R0, #0x43160000
341886:  STR             R0, [SP,#0x3C8+var_38C]
341888:  MOVS            R0, #0x43740000
34188E:  STR             R0, [SP,#0x3C8+var_394]
341890:  MOVS            R0, #0
341892:  STR             R0, [SP,#0x3C8+var_3C8]
341894:  ADD             R0, SP, #0x3C8+var_60
341896:  ADD             R3, SP, #0x3C8+var_398
341898:  MOVS            R1, #0
34189A:  MOVS            R2, #0
34189C:  BLX             j__ZN15CTouchInterface16CreateShopWidgetEPKcPS1_iR14WidgetPositionb; CTouchInterface::CreateShopWidget(char const*,char const**,int,WidgetPosition &,bool)
3418A0:  B               loc_341820
3418A2:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
3418A6:  CMP             R0, #0
3418A8:  BNE             loc_341820
3418AA:  B               loc_341436
3418AC:  MOV.W           R6, #0xFFFFFFFF
3418B0:  MOVS            R0, #dword_60; this
3418B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3418B6:  VMOV            R3, S16; float
3418BA:  LDR             R1, =(_ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr - 0x3418C4)
3418BC:  MOV             R5, R0
3418BE:  LDR             R0, =(_ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr - 0x3418C8)
3418C0:  ADD             R1, PC; _ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr
3418C2:  MOVS            R2, #1
3418C4:  ADD             R0, PC; _ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr
3418C6:  STR             R2, [SP,#0x3C8+var_3B8]; bool
3418C8:  LDR             R1, [R1]; CTaskComplexFollowNodeRoute::ms_fFollowNodeThresholdHeightChange ...
3418CA:  LDR             R0, [R0]; CTaskComplexFollowNodeRoute::ms_fSlowDownDistance ...
3418CC:  STRD.W          R2, R6, [SP,#0x3C8+var_3C0]; bool
3418D0:  ADD             R2, SP, #0x3C8+var_398; CVector *
3418D2:  VLDR            S2, [R1]
3418D6:  MOV             R1, R9; int
3418D8:  VLDR            S0, [R0]
3418DC:  MOV             R0, R5; this
3418DE:  VSTR            S0, [SP,#0x3C8+var_3C8]
3418E2:  VSTR            S2, [SP,#0x3C8+var_3C4]
3418E6:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
3418EA:  MOV             R0, R4; this
3418EC:  MOV             R1, R8; int
3418EE:  MOV             R2, R5; CTask *
3418F0:  MOVW            R3, #0xA2E; int
3418F4:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3418F8:  B               loc_341820
3418FA:  LDR             R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341902)
3418FC:  LDR             R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x341904)
3418FE:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341900:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
341902:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
341904:  LDR             R1, [R1]; float
341906:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
341908:  ADD.W           R0, R0, R0,LSL#4
34190C:  ADD.W           R0, R1, R0,LSL#2
341910:  VLDR            S0, [R0,#4]
341914:  LDR             R0, =(RsGlobal_ptr - 0x34191A)
341916:  ADD             R0, PC; RsGlobal_ptr
341918:  LDR             R0, [R0]; RsGlobal
34191A:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
34191C:  VMOV            S2, R0
341920:  VCVT.F32.S32    S2, S2
341924:  VDIV.F32        S2, S2, S18
341928:  VMUL.F32        S0, S0, S2
34192C:  VMUL.F32        S0, S0, S16
341930:  VMOV            R0, S0; this
341934:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
341938:  MOVS            R0, #0; this
34193A:  MOVS            R5, #0
34193C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
341940:  VMOV            S0, R0
341944:  LDR             R1, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341952)
341946:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x341954)
341948:  MOVS            R2, #8; size_t
34194A:  VSUB.F32        S0, S20, S0
34194E:  ADD             R1, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341950:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
341952:  LDR             R4, [R1]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
341954:  LDR             R6, [R0]; CTheScripts::IntroTextLines ...
341956:  LDRH            R1, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
341958:  VMUL.F32        S0, S0, S16
34195C:  ADD.W           R0, R1, R1,LSL#4
341960:  ADD             R1, SP, #0x3C8+var_60; char *
341962:  ADD.W           R0, R6, R0,LSL#2
341966:  VLDR            S2, [R0,#0x30]
34196A:  VADD.F32        S0, S2, S0
34196E:  VSTR            S0, [R0,#0x30]
341972:  ADDS            R0, #0x34 ; '4'; char *
341974:  BLX             strncpy
341978:  LDRH            R0, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
34197A:  MOV.W           R2, #0xFFFFFFFF
34197E:  ADD.W           R1, R0, R0,LSL#4
341982:  ADDS            R0, #1
341984:  ADD.W           R1, R6, R1,LSL#2
341988:  STRD.W          R2, R2, [R1,#0x3C]
34198C:  STRH            R0, [R4]; CTheScripts::NumberOfIntroTextLinesThisFrame
34198E:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341990:  LDR             R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x341998)
341992:  LDR             R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x34199A)
341994:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
341996:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
341998:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
34199A:  LDR             R1, [R1]; float
34199C:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
34199E:  ADD.W           R0, R0, R0,LSL#4
3419A2:  ADD.W           R0, R1, R0,LSL#2
3419A6:  VLDR            S0, [R0,#4]
3419AA:  LDR             R0, =(RsGlobal_ptr - 0x3419B0)
3419AC:  ADD             R0, PC; RsGlobal_ptr
3419AE:  LDR             R0, [R0]; RsGlobal
3419B0:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
3419B2:  VMOV            S2, R0
3419B6:  VCVT.F32.S32    S2, S2
3419BA:  VDIV.F32        S2, S2, S16
3419BE:  VMUL.F32        S0, S0, S2
3419C2:  VMUL.F32        S0, S0, S18
3419C6:  VMOV            R0, S0; this
3419CA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
3419CE:  MOVS            R0, #0; this
3419D0:  MOVS            R5, #0
3419D2:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
3419D6:  LDR             R1, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x3419E4)
3419D8:  VMOV            S0, R0
3419DC:  VSUB.F32        S0, S20, S0
3419E0:  ADD             R1, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
3419E2:  LDR             R0, [R1]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
3419E4:  LDR             R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x3419EC)
3419E6:  LDRH            R2, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
3419E8:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
3419EA:  VMUL.F32        S0, S0, S18
3419EE:  LDR             R1, [R1]; CTheScripts::IntroTextLines ...
3419F0:  ADD.W           R3, R2, R2,LSL#4
3419F4:  ADD.W           R1, R1, R3,LSL#2
3419F8:  VLDR            S2, [R1,#0x30]
3419FC:  VADD.F32        S0, S2, S0
341A00:  VSTR            S0, [R1,#0x30]
341A04:  ADDS            R1, R2, #1
341A06:  STRH            R1, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
341A08:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
341A0A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x341A12)
341A0C:  MOVS            R5, #0
341A0E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
341A10:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
341A12:  LDRB.W          R1, [R0,#(byte_796856 - 0x7967F4)]
341A16:  CMP             R1, #0
341A18:  MOV.W           R1, #0
341A1C:  IT EQ
341A1E:  MOVEQ           R1, #1
341A20:  STRB.W          R1, [R0,#(byte_796856 - 0x7967F4)]
341A24:  B               loc_341822; jumptable 00340226 cases 2612,2616,2626
