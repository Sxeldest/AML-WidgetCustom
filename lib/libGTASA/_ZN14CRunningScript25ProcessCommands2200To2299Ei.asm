; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2200To2299Ei
; Address            : 0x3393C4 - 0x33ABF0
; =========================================================

3393C4:  PUSH            {R4-R7,LR}
3393C6:  ADD             R7, SP, #0xC
3393C8:  PUSH.W          {R8-R11}
3393CC:  SUB             SP, SP, #4
3393CE:  VPUSH           {D8-D11}
3393D2:  SUB             SP, SP, #0x138; float
3393D4:  MOV             R4, R0
3393D6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3393E0)
3393DA:  MOV             R5, R1
3393DC:  ADD             R0, PC; __stack_chk_guard_ptr
3393DE:  LDR             R0, [R0]; __stack_chk_guard
3393E0:  LDR             R0, [R0]
3393E2:  STR             R0, [SP,#0x178+var_44]
3393E4:  SUBW            R0, R5, #0x898; switch 100 cases
3393E8:  CMP             R0, #0x63 ; 'c'
3393EA:  BHI.W           def_3393F8; jumptable 003393F8 default case
3393EE:  MOVW            R8, #0xFBB8
3393F2:  MOVS            R6, #0
3393F4:  MOVT            R8, #0xFFFF
3393F8:  TBH.W           [PC,R0,LSL#1]; switch jump
3393FC:  DCW 0xF7; jump table for switch statement
3393FE:  DCW 0xBE3
339400:  DCW 0xBE3
339402:  DCW 0x11C
339404:  DCW 0x13B
339406:  DCW 0xBE3
339408:  DCW 0x15A
33940A:  DCW 0x22F
33940C:  DCW 0x247
33940E:  DCW 0xBE3
339410:  DCW 0x27B
339412:  DCW 0x29F
339414:  DCW 0x2AB
339416:  DCW 0x2CA
339418:  DCW 0x2EA
33941A:  DCW 0x309
33941C:  DCW 0x328
33941E:  DCW 0x339
339420:  DCW 0xBE3
339422:  DCW 0x352
339424:  DCW 0x375
339426:  DCW 0x381
339428:  DCW 0xBE3
33942A:  DCW 0x3A0
33942C:  DCW 0xBE3
33942E:  DCW 0x3BF
339430:  DCW 0x3D0
339432:  DCW 0x3E1
339434:  DCW 0x64
339436:  DCW 0x64
339438:  DCW 0x64
33943A:  DCW 0x64
33943C:  DCW 0x64
33943E:  DCW 0x64
339440:  DCW 0x76
339442:  DCW 0x76
339444:  DCW 0x76
339446:  DCW 0x84
339448:  DCW 0x84
33944A:  DCW 0x84
33944C:  DCW 0x98
33944E:  DCW 0x98
339450:  DCW 0x98
339452:  DCW 0xA6
339454:  DCW 0xA6
339456:  DCW 0xA6
339458:  DCW 0x3FB
33945A:  DCW 0x41D
33945C:  DCW 0x43D
33945E:  DCW 0x44B
339460:  DCW 0x458
339462:  DCW 0x45C
339464:  DCW 0xBE3
339466:  DCW 0xBE3
339468:  DCW 0xBE3
33946A:  DCW 0xBE3
33946C:  DCW 0x47C
33946E:  DCW 0x480
339470:  DCW 0x497
339472:  DCW 0x4B1
339474:  DCW 0x4B8
339476:  DCW 0xBE3
339478:  DCW 0x513
33947A:  DCW 0x522
33947C:  DCW 0x530
33947E:  DCW 0x53E
339480:  DCW 0x54D
339482:  DCW 0x55A
339484:  DCW 0x602
339486:  DCW 0x629
339488:  DCW 0x634
33948A:  DCW 0x63F
33948C:  DCW 0x650
33948E:  DCW 0x678
339490:  DCW 0x684
339492:  DCW 0xBD
339494:  DCW 0xBD
339496:  DCW 0x698
339498:  DCW 0x7E6
33949A:  DCW 0x804
33949C:  DCW 0x80F
33949E:  DCW 0x848
3394A0:  DCW 0x86A
3394A2:  DCW 0x87F
3394A4:  DCW 0x8B5
3394A6:  DCW 0x8D5
3394A8:  DCW 0xC3
3394AA:  DCW 0xC3
3394AC:  DCW 0x8F7
3394AE:  DCW 0x908
3394B0:  DCW 0x924
3394B2:  DCW 0x945
3394B4:  DCW 0x967
3394B6:  DCW 0x99D
3394B8:  DCW 0x9A4
3394BA:  DCW 0x9AB
3394BC:  DCW 0x9CC
3394BE:  DCW 0x9DF
3394C0:  DCW 0x9E2
3394C2:  DCW 0x9FA
3394C4:  MOV             R0, R4; jumptable 003393F8 cases 2228-2233
3394C6:  MOVS            R1, #2; __int16
3394C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3394CC:  LDR.W           R0, =(ScriptParams_ptr - 0x3394D6)
3394D0:  MOVS            R2, #1
3394D2:  ADD             R0, PC; ScriptParams_ptr
3394D4:  LDR             R0, [R0]; ScriptParams
3394D6:  LDRD.W          R1, R0, [R0]
3394DA:  LSL.W           R0, R2, R0
3394DE:  ANDS            R1, R0
3394E0:  IT NE
3394E2:  MOVNE           R1, #1
3394E4:  B.W             loc_33A8C4
3394E8:  MOV             R0, R4; jumptable 003393F8 cases 2234-2236
3394EA:  MOVS            R1, #2; unsigned __int8
3394EC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
3394F0:  MOV             R5, R0
3394F2:  MOV             R0, R4; this
3394F4:  MOVS            R1, #1; __int16
3394F6:  MOVS            R6, #1
3394F8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3394FC:  LDR.W           R0, =(ScriptParams_ptr - 0x339504)
339500:  ADD             R0, PC; ScriptParams_ptr
339502:  B               loc_33951E
339504:  MOV             R0, R4; jumptable 003393F8 cases 2237-2239
339506:  MOVS            R1, #1; unsigned __int8
339508:  MOVS            R6, #1
33950A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33950E:  MOV             R5, R0
339510:  MOV             R0, R4; this
339512:  MOVS            R1, #1; __int16
339514:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339518:  LDR.W           R0, =(ScriptParams_ptr - 0x339520)
33951C:  ADD             R0, PC; ScriptParams_ptr
33951E:  LDR             R0, [R0]; ScriptParams
339520:  LDR             R1, [R5]
339522:  LDR             R0, [R0]
339524:  LSL.W           R0, R6, R0
339528:  ORRS            R0, R1
33952A:  B               loc_339570
33952C:  MOV             R0, R4; jumptable 003393F8 cases 2240-2242
33952E:  MOVS            R1, #2; unsigned __int8
339530:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
339534:  MOV             R5, R0
339536:  MOV             R0, R4; this
339538:  MOVS            R1, #1; __int16
33953A:  MOVS            R6, #1
33953C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339540:  LDR.W           R0, =(ScriptParams_ptr - 0x339548)
339544:  ADD             R0, PC; ScriptParams_ptr
339546:  B               loc_339562
339548:  MOV             R0, R4; jumptable 003393F8 cases 2243-2245
33954A:  MOVS            R1, #1; unsigned __int8
33954C:  MOVS            R6, #1
33954E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
339552:  MOV             R5, R0
339554:  MOV             R0, R4; this
339556:  MOVS            R1, #1; __int16
339558:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33955C:  LDR.W           R0, =(ScriptParams_ptr - 0x339564)
339560:  ADD             R0, PC; ScriptParams_ptr
339562:  LDR             R0, [R0]; ScriptParams
339564:  LDR             R1, [R5]
339566:  LDR             R0, [R0]
339568:  LSL.W           R0, R6, R0
33956C:  BIC.W           R0, R1, R0
339570:  STR             R0, [R5]
339572:  B.W             loc_33ABC0
339576:  MOV             R0, R4; jumptable 003393F8 cases 2275,2276
339578:  MOV             R1, R5; int
33957A:  BLX             j__ZN14CRunningScript30ObjectInAngledAreaCheckCommandEi; CRunningScript::ObjectInAngledAreaCheckCommand(int)
33957E:  B.W             loc_33ABC0
339582:  MOV             R0, R4; jumptable 003393F8 cases 2286,2287
339584:  MOVS            R1, #3; __int16
339586:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33958A:  LDR.W           R0, =(ScriptParams_ptr - 0x339598)
33958E:  SUB.W           R6, R7, #-var_5A
339592:  MOVS            R2, #8; unsigned __int8
339594:  ADD             R0, PC; ScriptParams_ptr
339596:  MOV             R1, R6; char *
339598:  LDR             R0, [R0]; ScriptParams
33959A:  LDRD.W          R10, R9, [R0]
33959E:  LDR.W           R8, [R0,#(dword_81A910 - 0x81A908)]
3395A2:  MOV             R0, R4; this
3395A4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3395A8:  ADD.W           R0, SP, #0x178+var_112; char *
3395AC:  MOV             R1, R6; char *
3395AE:  BLX             strcpy
3395B2:  MOVW            R0, #0x8EF
3395B6:  CMP             R5, R0
3395B8:  BEQ.W           loc_33A988
3395BC:  MOVW            R0, #0x8EE
3395C0:  CMP             R5, R0
3395C2:  BNE.W           loc_33ABC0
3395C6:  MOV             R0, R4; this
3395C8:  MOVS            R1, #1; __int16
3395CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3395CE:  LDR.W           R0, =(ScriptParams_ptr - 0x3395DA)
3395D2:  MOV.W           R1, #0xFFFFFFFF
3395D6:  ADD             R0, PC; ScriptParams_ptr
3395D8:  LDR             R0, [R0]; ScriptParams
3395DA:  LDR             R0, [R0]
3395DC:  STRD.W          R0, R1, [SP,#0x178+var_178]
3395E0:  B.W             loc_33A99E
3395E4:  MOVS            R6, #0xFF; jumptable 003393F8 default case
3395E6:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
3395EA:  MOV             R0, R4; jumptable 003393F8 case 2200
3395EC:  MOVS            R1, #3; __int16
3395EE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3395F2:  LDR.W           R0, =(ScriptParams_ptr - 0x3395FE)
3395F6:  LDR.W           R1, =(_ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x339604)
3395FA:  ADD             R0, PC; ScriptParams_ptr
3395FC:  LDR.W           R2, =(_ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x33960C)
339600:  ADD             R1, PC; _ZN11CTheScripts17bEnableCraneRaiseE_ptr
339602:  LDR.W           R3, =(_ZN11CTheScripts19bEnableCraneReleaseE_ptr - 0x33960E)
339606:  LDR             R0, [R0]; ScriptParams
339608:  ADD             R2, PC; _ZN11CTheScripts17bEnableCraneLowerE_ptr
33960A:  ADD             R3, PC; _ZN11CTheScripts19bEnableCraneReleaseE_ptr
33960C:  LDR             R1, [R1]; CTheScripts::bEnableCraneRaise ...
33960E:  LDRD.W          R6, R5, [R0]
339612:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
339614:  CMP             R6, #0
339616:  LDR             R2, [R2]; CTheScripts::bEnableCraneLower ...
339618:  IT NE
33961A:  MOVNE           R6, #1
33961C:  LDR             R3, [R3]; CTheScripts::bEnableCraneRelease ...
33961E:  CMP             R5, #0
339620:  STRB            R6, [R1]; CTheScripts::bEnableCraneRaise
339622:  IT NE
339624:  MOVNE           R5, #1
339626:  CMP             R0, #0
339628:  STRB            R5, [R2]; CTheScripts::bEnableCraneLower
33962A:  IT NE
33962C:  MOVNE           R0, #1
33962E:  STRB            R0, [R3]; CTheScripts::bEnableCraneRelease
339630:  B.W             loc_33ABC0
339634:  MOV             R0, R4; jumptable 003393F8 case 2203
339636:  MOVS            R1, #1; __int16
339638:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33963C:  LDR.W           R0, =(ScriptParams_ptr - 0x339644)
339640:  ADD             R0, PC; ScriptParams_ptr
339642:  LDR             R0, [R0]; ScriptParams
339644:  LDR             R1, [R0]
339646:  CMP             R1, #0
339648:  BLT.W           loc_33A80A
33964C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339658)
339650:  UXTB            R3, R1
339652:  LSRS            R1, R1, #8
339654:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
339656:  LDR             R0, [R0]; CPools::ms_pPedPool ...
339658:  LDR             R0, [R0]; CPools::ms_pPedPool
33965A:  LDR             R2, [R0,#4]
33965C:  LDRB            R2, [R2,R1]
33965E:  CMP             R2, R3
339660:  BNE.W           loc_33A80A
339664:  MOVW            R2, #0x7CC
339668:  LDR             R0, [R0]
33966A:  MLA.W           R0, R1, R2, R0
33966E:  B.W             loc_33A80C
339672:  MOV             R0, R4; jumptable 003393F8 case 2204
339674:  MOVS            R1, #2; __int16
339676:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33967A:  LDR.W           R0, =(ScriptParams_ptr - 0x339682)
33967E:  ADD             R0, PC; ScriptParams_ptr
339680:  LDR             R0, [R0]; ScriptParams
339682:  LDR             R1, [R0]
339684:  CMP             R1, #0
339686:  BLT.W           loc_33A81E
33968A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339696)
33968E:  UXTB            R3, R1
339690:  LSRS            R1, R1, #8
339692:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
339694:  LDR             R0, [R0]; CPools::ms_pPedPool ...
339696:  LDR             R0, [R0]; CPools::ms_pPedPool
339698:  LDR             R2, [R0,#4]
33969A:  LDRB            R2, [R2,R1]
33969C:  CMP             R2, R3
33969E:  BNE.W           loc_33A81E
3396A2:  MOVW            R2, #0x7CC
3396A6:  LDR             R0, [R0]
3396A8:  MLA.W           R0, R1, R2, R0
3396AC:  B.W             loc_33A820
3396B0:  MOV             R0, R4; jumptable 003393F8 case 2206
3396B2:  MOVS            R1, #4; __int16
3396B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3396B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3396C4)
3396BC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3396C6)
3396C0:  ADD             R0, PC; ScriptParams_ptr
3396C2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3396C4:  LDR             R3, [R0]; ScriptParams
3396C6:  LDR             R0, [R1]; CPools::ms_pPedPool ...
3396C8:  LDM.W           R3, {R1,R2,R6}
3396CC:  LDR             R0, [R0]; CPools::ms_pPedPool
3396CE:  VLDR            S16, [R3,#0xC]
3396D2:  ADD             R3, SP, #0x178+var_50
3396D4:  STM             R3!, {R1,R2,R6}
3396D6:  LDR             R3, [R0,#8]
3396D8:  CMP             R3, #0
3396DA:  BEQ.W           loc_33A9EE
3396DE:  VMOV            S22, R1
3396E2:  MOVW            R1, #0x7CC
3396E6:  MULS            R1, R3
3396E8:  VMOV            S18, R6
3396EC:  VMOV            S20, R2
3396F0:  SUBS            R6, R3, #1
3396F2:  SUB.W           R5, R1, #0x384
3396F6:  MOVW            R1, #0x270F
3396FA:  STR             R1, [SP,#0x178+var_130]
3396FC:  MOV.W           R1, #0xFFFFFFFF
339700:  STR             R1, [SP,#0x178+var_124]
339702:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33970A)
339706:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
339708:  LDR.W           R11, [R1]; CPools::ms_pPedPool ...
33970C:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x339714)
339710:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
339712:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
339714:  STR             R1, [SP,#0x178+var_12C]
339716:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33971E)
33971A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33971C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33971E:  STR             R1, [SP,#0x178+var_134]
339720:  B               loc_33972C
339722:  SUBS            R6, #1
339724:  LDR.W           R0, [R11]; CPools::ms_pPedPool
339728:  SUBW            R5, R5, #0x7CC
33972C:  LDR             R1, [R0,#4]
33972E:  LDRSB           R1, [R1,R6]
339730:  CMP             R1, #0
339732:  BLT             loc_339826
339734:  LDR             R0, [R0]
339736:  ADD.W           R9, R0, R5
33973A:  CMP.W           R9, #0x448
33973E:  BEQ             loc_339826
339740:  LDRB            R1, [R0,R5]
339742:  CMP             R1, #1
339744:  BNE             loc_339826
339746:  ADD             R0, R8
339748:  ADD.W           R10, R0, R5
33974C:  LDRB.W          R0, [R10,#0x1D]
339750:  LSLS            R0, R0, #0x1C
339752:  ITT PL
339754:  LDRBPL.W        R0, [R9,#0x40]
339758:  MOVSPL.W        R0, R0,LSL#28
33975C:  BMI             loc_339826
33975E:  ADD.W           R1, R9, R8; CPed *
339762:  MOV             R0, R4; this
339764:  STR             R1, [SP,#0x178+var_128]
339766:  BLX             j__ZN14CRunningScript9IsPedDeadEP4CPed; CRunningScript::IsPedDead(CPed *)
33976A:  CMP             R0, #0
33976C:  BNE             loc_339826
33976E:  LDRSH.W         R0, [R10,#0x26]
339772:  LDR             R1, [SP,#0x178+var_12C]; CPed *
339774:  LDR.W           R0, [R1,R0,LSL#2]
339778:  LDRB.W          R0, [R0,#0x4A]
33977C:  LSLS            R0, R0, #0x1F
33977E:  BEQ             loc_339826
339780:  LDR             R0, [SP,#0x178+var_128]; this
339782:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
339786:  CMP             R0, #0
339788:  BNE             loc_339826
33978A:  MOV             R0, #0xFFFFFBCC
339792:  LDR.W           R0, [R9,R0]
339796:  ADD.W           R1, R0, #0x30 ; '0'
33979A:  CMP             R0, #0
33979C:  IT EQ
33979E:  ADDEQ.W         R1, R10, #4
3397A2:  VLDR            D16, [R1]
3397A6:  VSTR            D16, [SP,#0x178+var_120]
3397AA:  VLDR            S0, [SP,#0x178+var_120]
3397AE:  VLDR            S2, [SP,#0x178+var_120+4]
3397B2:  VSUB.F32        S0, S0, S22
3397B6:  LDR             R0, [R1,#8]
3397B8:  VSUB.F32        S2, S2, S20
3397BC:  STR             R0, [SP,#0x178+var_118]
3397BE:  VLDR            S4, [SP,#0x178+var_118]
3397C2:  LDR             R0, [SP,#0x178+var_130]
3397C4:  VSUB.F32        S4, S4, S18
3397C8:  VMUL.F32        S0, S0, S0
3397CC:  VMUL.F32        S2, S2, S2
3397D0:  VMUL.F32        S4, S4, S4
3397D4:  VADD.F32        S0, S0, S2
3397D8:  VMOV            S2, R0
3397DC:  VCVT.F32.S32    S2, S2
3397E0:  VADD.F32        S0, S0, S4
3397E4:  VSQRT.F32       S0, S0
3397E8:  VCMPE.F32       S0, S16
3397EC:  VMRS            APSR_nzcv, FPSCR
3397F0:  ITT LT
3397F2:  VCMPELT.F32     S0, S2
3397F6:  VMRSLT          APSR_nzcv, FPSCR
3397FA:  BGE             loc_339826
3397FC:  LDR             R0, [SP,#0x178+var_134]
3397FE:  LDR             R0, [R0]
339800:  LDRD.W          R1, R0, [R0]
339804:  LDR             R2, [SP,#0x178+var_128]
339806:  SUBS            R1, R2, R1
339808:  MOV             R2, #0xBED87F3B
339810:  ASRS            R1, R1, #2
339812:  MULS            R1, R2
339814:  LDRB            R0, [R0,R1]
339816:  VCVT.S32.F32    S0, S0
33981A:  ORR.W           R0, R0, R1,LSL#8
33981E:  STR             R0, [SP,#0x178+var_124]
339820:  VMOV            R0, S0
339824:  STR             R0, [SP,#0x178+var_130]
339826:  CMP             R6, #0
339828:  BNE.W           loc_339722
33982C:  LDR             R5, [SP,#0x178+var_124]
33982E:  CMP             R5, #0
339830:  BLT.W           loc_33AB82
339834:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339840)
339838:  LSRS            R1, R5, #8
33983A:  UXTB            R3, R5
33983C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33983E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
339840:  LDR             R0, [R0]; CPools::ms_pPedPool
339842:  LDR             R2, [R0,#4]
339844:  LDRB            R2, [R2,R1]
339846:  CMP             R2, R3
339848:  BNE.W           loc_33AB5A
33984C:  MOVW            R2, #0x7CC
339850:  LDR             R0, [R0]
339852:  MLA.W           R0, R1, R2, R0
339856:  B.W             loc_33AB5C
33985A:  MOV             R0, R4; jumptable 003393F8 case 2207
33985C:  MOVS            R1, #1; __int16
33985E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339862:  LDR.W           R0, =(ScriptParams_ptr - 0x339872)
339866:  MOVW            R3, #0x7CC
33986A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339874)
33986E:  ADD             R0, PC; ScriptParams_ptr
339870:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
339872:  LDR             R0, [R0]; ScriptParams
339874:  LDR             R1, [R1]; CPools::ms_pPedPool ...
339876:  LDR             R2, [R0]
339878:  LDR             R1, [R1]; CPools::ms_pPedPool
33987A:  LSRS            R2, R2, #8
33987C:  LDR             R1, [R1]
33987E:  MLA.W           R1, R2, R3, R1
339882:  LDR.W           R1, [R1,#0x59C]
339886:  B.W             loc_33A5A2
33988A:  MOV             R0, R4; jumptable 003393F8 case 2208
33988C:  MOVS            R1, #6; __int16
33988E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339892:  LDR.W           R0, =(ScriptParams_ptr - 0x3398A0)
339896:  SUB.W           R8, R7, #-var_8A
33989A:  MOVS            R2, #8; unsigned __int8
33989C:  ADD             R0, PC; ScriptParams_ptr
33989E:  MOV             R1, R8; char *
3398A0:  LDR             R0, [R0]; ScriptParams
3398A2:  LDRD.W          R11, R10, [R0,#(dword_81A910 - 0x81A908)]
3398A6:  LDRD.W          R5, R6, [R0,#(dword_81A918 - 0x81A908)]
3398AA:  VLDR            S16, [R0,#4]
3398AE:  LDR.W           R9, [R0]
3398B2:  MOV             R0, R4; this
3398B4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3398B8:  ADDS.W          R0, R9, #1
3398BC:  BEQ.W           loc_33A9F4
3398C0:  CMP.W           R9, #0
3398C4:  BLT.W           loc_33A9B4
3398C8:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3398D8)
3398CC:  MOV.W           R1, R9,LSR#8
3398D0:  UXTB.W          R3, R9
3398D4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3398D6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3398D8:  LDR             R0, [R0]; CPools::ms_pPedPool
3398DA:  LDR             R2, [R0,#4]
3398DC:  LDRB            R2, [R2,R1]
3398DE:  CMP             R2, R3
3398E0:  BNE.W           loc_33A9B4
3398E4:  MOVW            R2, #0x7CC
3398E8:  LDR             R0, [R0]
3398EA:  MLA.W           R10, R1, R2, R0
3398EE:  B.W             loc_33A9B8
3398F2:  MOV             R0, R4; jumptable 003393F8 case 2210
3398F4:  MOVS            R1, #3; __int16
3398F6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3398FA:  LDR.W           R0, =(ScriptParams_ptr - 0x33990C)
3398FE:  MOVW            R3, #0xA2C
339902:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33990E)
339906:  MOVS            R6, #0
339908:  ADD             R0, PC; ScriptParams_ptr
33990A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33990C:  LDR             R0, [R0]; ScriptParams
33990E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
339910:  LDR             R2, [R0]
339912:  LDR             R1, [R1]; CPools::ms_pVehiclePool
339914:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
339916:  LSRS            R2, R2, #8
339918:  LDR             R1, [R1]
33991A:  MLA.W           R1, R2, R3, R1
33991E:  LDRB.W          R2, [R1,#0x3BE]
339922:  SUBS            R2, #0x39 ; '9'
339924:  UXTB            R2, R2
339926:  CMP             R2, #2
339928:  ITTT CS
33992A:  ADDWCS          R2, R1, #0x3BE
33992E:  MOVCS           R3, #0x3F ; '?'
339930:  STRBCS          R3, [R2]
339932:  STR.W           R0, [R1,#0x9C4]
339936:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33993A:  MOV             R0, R4; jumptable 003393F8 case 2211
33993C:  MOVS            R1, #1; __int16
33993E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339942:  LDR.W           R0, =(ScriptParams_ptr - 0x33994E)
339946:  LDR.W           R1, =(_ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x339950)
33994A:  ADD             R0, PC; ScriptParams_ptr
33994C:  ADD             R1, PC; _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr
33994E:  B.W             loc_33A7A8
339952:  MOV             R0, R4; jumptable 003393F8 case 2212
339954:  MOVS            R1, #2; __int16
339956:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33995A:  LDR.W           R0, =(ScriptParams_ptr - 0x339962)
33995E:  ADD             R0, PC; ScriptParams_ptr
339960:  LDR             R0, [R0]; ScriptParams
339962:  LDR             R1, [R0]
339964:  CMP             R1, #0
339966:  BLT.W           loc_33A838
33996A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x339976)
33996E:  UXTB            R3, R1
339970:  LSRS            R1, R1, #8
339972:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
339974:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
339976:  LDR             R0, [R0]; CPools::ms_pVehiclePool
339978:  LDR             R2, [R0,#4]
33997A:  LDRB            R2, [R2,R1]
33997C:  CMP             R2, R3
33997E:  BNE.W           loc_33A838
339982:  MOVW            R2, #0xA2C
339986:  LDR             R0, [R0]
339988:  MLA.W           R0, R1, R2, R0
33998C:  B.W             loc_33A83A
339990:  MOV             R0, R4; jumptable 003393F8 case 2213
339992:  MOVS            R1, #2; __int16
339994:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339998:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3399A8)
33999C:  MOVW            R3, #0xA2C
3399A0:  LDR.W           R0, =(ScriptParams_ptr - 0x3399AA)
3399A4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3399A6:  ADD             R0, PC; ScriptParams_ptr
3399A8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3399AA:  LDR             R0, [R0]; ScriptParams
3399AC:  LDRD.W          R2, R0, [R0]
3399B0:  CMP             R0, #0
3399B2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3399B4:  MOV.W           R2, R2,LSR#8
3399B8:  LDR             R1, [R1]
3399BA:  MLA.W           R1, R2, R3, R1
3399BE:  LDR.W           R2, [R1,#0x430]
3399C2:  BIC.W           R3, R2, #0x1000
3399C6:  IT NE
3399C8:  ORRNE.W         R3, R2, #0x1000
3399CC:  B.W             loc_33A680
3399D0:  MOV             R0, R4; jumptable 003393F8 case 2214
3399D2:  MOVS            R1, #3; __int16
3399D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3399D8:  LDR.W           R0, =(ScriptParams_ptr - 0x3399E0)
3399DC:  ADD             R0, PC; ScriptParams_ptr
3399DE:  LDR             R0, [R0]; ScriptParams
3399E0:  LDR             R1, [R0]
3399E2:  CMP             R1, #0
3399E4:  BLT.W           loc_33A84A
3399E8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3399F4)
3399EC:  UXTB            R3, R1
3399EE:  LSRS            R1, R1, #8
3399F0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3399F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3399F4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3399F6:  LDR             R2, [R0,#4]
3399F8:  LDRB            R2, [R2,R1]
3399FA:  CMP             R2, R3
3399FC:  BNE.W           loc_33A84A
339A00:  MOVW            R2, #0xA2C
339A04:  LDR             R0, [R0]
339A06:  MLA.W           R4, R1, R2, R0
339A0A:  B.W             loc_33A84C
339A0E:  MOV             R0, R4; jumptable 003393F8 case 2215
339A10:  MOVS            R1, #2; __int16
339A12:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339A16:  LDR.W           R0, =(ScriptParams_ptr - 0x339A1E)
339A1A:  ADD             R0, PC; ScriptParams_ptr
339A1C:  LDR             R0, [R0]; ScriptParams
339A1E:  LDR             R1, [R0]
339A20:  CMP             R1, #0
339A22:  BLT.W           loc_33A8A6
339A26:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x339A32)
339A2A:  UXTB            R3, R1
339A2C:  LSRS            R1, R1, #8
339A2E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
339A30:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
339A32:  LDR             R0, [R0]; CPools::ms_pVehiclePool
339A34:  LDR             R2, [R0,#4]
339A36:  LDRB            R2, [R2,R1]
339A38:  CMP             R2, R3
339A3A:  BNE.W           loc_33A8A6
339A3E:  MOVW            R2, #0xA2C
339A42:  LDR             R0, [R0]
339A44:  MLA.W           R5, R1, R2, R0
339A48:  B.W             loc_33A8A8
339A4C:  MOV             R0, R4; jumptable 003393F8 case 2216
339A4E:  MOVS            R1, #1; __int16
339A50:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339A54:  LDR.W           R0, =(ScriptParams_ptr - 0x339A5C)
339A58:  ADD             R0, PC; ScriptParams_ptr
339A5A:  LDR             R0, [R0]; ScriptParams
339A5C:  LDR             R0, [R0]
339A5E:  CMP             R0, #0
339A60:  BEQ.W           loc_33AAAA
339A64:  MOVS            R0, #(stderr+1); this
339A66:  BLX             j__ZN10C3dMarkers11ForceRenderEh; C3dMarkers::ForceRender(uchar)
339A6A:  B.W             loc_33ABC0
339A6E:  MOV             R0, R4; jumptable 003393F8 case 2217
339A70:  MOVS            R1, #1; __int16
339A72:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339A76:  LDR.W           R0, =(ScriptParams_ptr - 0x339A82)
339A7A:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x339A84)
339A7E:  ADD             R0, PC; ScriptParams_ptr
339A80:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
339A82:  LDR             R4, [R0]; ScriptParams
339A84:  LDR             R0, [R2]; this
339A86:  LDRSH.W         R1, [R4]; __int16
339A8A:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
339A8E:  STR             R0, [R4]
339A90:  MOVW            R1, #0x6676
339A94:  ADD             R0, R1; this
339A96:  MOVS            R1, #4; int
339A98:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
339A9C:  B.W             loc_33ABC0
339AA0:  MOV             R0, R4; jumptable 003393F8 case 2219
339AA2:  MOVS            R1, #1; __int16
339AA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339AA8:  LDR.W           R0, =(ScriptParams_ptr - 0x339AB4)
339AAC:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x339AB6)
339AB0:  ADD             R0, PC; ScriptParams_ptr
339AB2:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
339AB4:  LDR             R5, [R0]; ScriptParams
339AB6:  LDR             R0, [R2]; this
339AB8:  LDRSH.W         R1, [R5]; __int16
339ABC:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
339AC0:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x339ACE)
339AC4:  STR             R0, [R5]
339AC6:  ADD.W           R0, R0, R0,LSL#2
339ACA:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
339ACC:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
339ACE:  ADD.W           R0, R1, R0,LSL#2
339AD2:  MOV             R1, #0x80148
339ADA:  LDRB            R1, [R0,R1]
339ADC:  CMP             R1, #1
339ADE:  IT NE
339AE0:  MOVNE           R1, #0
339AE2:  B.W             loc_33A8C4
339AE6:  MOV             R0, R4; jumptable 003393F8 case 2220
339AE8:  MOVS            R1, #1; __int16
339AEA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339AEE:  LDR.W           R0, =(ScriptParams_ptr - 0x339AFA)
339AF2:  LDR.W           R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x339AFC)
339AF6:  ADD             R0, PC; ScriptParams_ptr
339AF8:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
339AFA:  B.W             loc_33A7A8
339AFE:  MOV             R0, R4; jumptable 003393F8 case 2221
339B00:  MOVS            R1, #4; __int16
339B02:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339B06:  LDR.W           R0, =(ScriptParams_ptr - 0x339B0E)
339B0A:  ADD             R0, PC; ScriptParams_ptr
339B0C:  LDR             R0, [R0]; ScriptParams
339B0E:  LDR             R1, [R0]
339B10:  CMP             R1, #0
339B12:  BLT.W           loc_33A8CC
339B16:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339B22)
339B1A:  UXTB            R3, R1
339B1C:  LSRS            R1, R1, #8
339B1E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
339B20:  LDR             R0, [R0]; CPools::ms_pPedPool ...
339B22:  LDR             R0, [R0]; CPools::ms_pPedPool
339B24:  LDR             R2, [R0,#4]
339B26:  LDRB            R2, [R2,R1]
339B28:  CMP             R2, R3
339B2A:  BNE.W           loc_33A8CC
339B2E:  MOVW            R2, #0x7CC
339B32:  LDR             R0, [R0]
339B34:  MLA.W           R6, R1, R2, R0
339B38:  B.W             loc_33A8CE
339B3C:  MOV             R0, R4; jumptable 003393F8 case 2223
339B3E:  MOVS            R1, #2; __int16
339B40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339B44:  LDR.W           R0, =(ScriptParams_ptr - 0x339B52)
339B48:  MOVS            R6, #0
339B4A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339B54)
339B4E:  ADD             R0, PC; ScriptParams_ptr
339B50:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
339B52:  LDR             R0, [R0]; ScriptParams
339B54:  LDR             R1, [R1]; CPools::ms_pPedPool ...
339B56:  LDR             R2, [R0]
339B58:  VLDR            S0, [R0,#4]
339B5C:  LDR             R0, [R1]; CPools::ms_pPedPool
339B5E:  VCVT.F32.S32    S0, S0
339B62:  LSRS            R1, R2, #8
339B64:  MOVW            R2, #0x7CC
339B68:  LDR             R0, [R0]
339B6A:  MLA.W           R0, R1, R2, R0
339B6E:  ADD.W           R0, R0, #0x548
339B72:  VSTR            S0, [R0]
339B76:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
339B7A:  MOV             R0, R4; jumptable 003393F8 case 2225
339B7C:  MOVS            R1, #1; __int16
339B7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339B82:  LDR.W           R0, =(ScriptParams_ptr - 0x339B8A)
339B86:  ADD             R0, PC; ScriptParams_ptr
339B88:  LDR             R0, [R0]; ScriptParams
339B8A:  LDR             R0, [R0]
339B8C:  CMP             R0, #0
339B8E:  BEQ.W           loc_33AAB4
339B92:  MOVS            R0, #(stderr+1); this
339B94:  BLX             j__ZN12CPostEffects23ScriptNightVisionSwitchEb; CPostEffects::ScriptNightVisionSwitch(bool)
339B98:  B.W             loc_33ABC0
339B9C:  MOV             R0, R4; jumptable 003393F8 case 2226
339B9E:  MOVS            R1, #1; __int16
339BA0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339BA4:  LDR.W           R0, =(ScriptParams_ptr - 0x339BAC)
339BA8:  ADD             R0, PC; ScriptParams_ptr
339BAA:  LDR             R0, [R0]; ScriptParams
339BAC:  LDR             R0, [R0]
339BAE:  CMP             R0, #0
339BB0:  BEQ.W           loc_33AABE
339BB4:  MOVS            R0, #(stderr+1); this
339BB6:  BLX             j__ZN12CPostEffects26ScriptInfraredVisionSwitchEb; CPostEffects::ScriptInfraredVisionSwitch(bool)
339BBA:  B.W             loc_33ABC0
339BBE:  SUB.W           R5, R7, #-var_5A; jumptable 003393F8 case 2227
339BC2:  MOV             R0, R4; this
339BC4:  MOVS            R2, #8; unsigned __int8
339BC6:  MOV             R1, R5; char *
339BC8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
339BCC:  MOV             R0, R5; char *
339BCE:  MOVS            R1, #2
339BD0:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
339BD4:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x339BE2)
339BD8:  MOVS            R6, #0
339BDA:  LDR.W           R2, =(_ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x339BE4)
339BDE:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
339BE0:  ADD             R2, PC; _ZN9CGangWars19ZoneInfoForTrainingE_ptr
339BE2:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
339BE4:  LDR             R2, [R2]; CGangWars::ZoneInfoForTraining ...
339BE6:  ADD.W           R0, R1, R0,LSL#5
339BEA:  LDRH            R0, [R0,#0x1C]
339BEC:  STR             R0, [R2]; CGangWars::ZoneInfoForTraining
339BEE:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
339BF2:  MOV             R0, R4; jumptable 003393F8 case 2246
339BF4:  MOVS            R1, #2; __int16
339BF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339BFA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339C0C)
339BFE:  MOVW            R3, #0x7CC
339C02:  LDR.W           R0, =(ScriptParams_ptr - 0x339C0E)
339C06:  MOVS            R6, #0
339C08:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
339C0A:  ADD             R0, PC; ScriptParams_ptr
339C0C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
339C0E:  LDR             R0, [R0]; ScriptParams
339C10:  LDRD.W          R2, R0, [R0]
339C14:  LDR             R1, [R1]; CPools::ms_pPedPool
339C16:  AND.W           R0, R0, #3
339C1A:  LSRS            R2, R2, #8
339C1C:  LDR             R1, [R1]
339C1E:  MLA.W           R1, R2, R3, R1
339C22:  LDR.W           R2, [R1,#0x48C]
339C26:  BIC.W           R2, R2, #0x18000000
339C2A:  ORR.W           R0, R2, R0,LSL#27
339C2E:  STR.W           R0, [R1,#0x48C]
339C32:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
339C36:  MOV             R0, R4; jumptable 003393F8 case 2247
339C38:  MOVS            R1, #4; __int16
339C3A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339C3E:  LDR.W           R0, =(ScriptParams_ptr - 0x339C48)
339C42:  MOVS            R6, #0
339C44:  ADD             R0, PC; ScriptParams_ptr
339C46:  LDR             R0, [R0]; ScriptParams
339C48:  LDR             R0, [R0]
339C4A:  CMP             R0, #0
339C4C:  BLT.W           loc_33A90A
339C50:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x339C5C)
339C54:  UXTB            R3, R0
339C56:  LSRS            R0, R0, #8
339C58:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
339C5A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
339C5C:  LDR             R1, [R1]; CPools::ms_pPedPool
339C5E:  LDR             R2, [R1,#4]
339C60:  LDRB            R2, [R2,R0]
339C62:  CMP             R2, R3
339C64:  BNE.W           loc_33A90A
339C68:  MOVW            R2, #0x7CC
339C6C:  LDR             R1, [R1]
339C6E:  MLA.W           R1, R0, R2, R1
339C72:  B.W             loc_33A90C
339C76:  MOV             R0, R4; jumptable 003393F8 case 2248
339C78:  MOVS            R1, #2; __int16
339C7A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339C7E:  LDR.W           R0, =(ScriptParams_ptr - 0x339C86)
339C82:  ADD             R0, PC; ScriptParams_ptr
339C84:  LDR             R1, [R0]; ScriptParams
339C86:  LDRD.W          R0, R1, [R1]; unsigned int
339C8A:  BLX             j__ZN9CShopping16AddPriceModifierEji; CShopping::AddPriceModifier(uint,int)
339C8E:  B.W             loc_33ABC0
339C92:  MOV             R0, R4; jumptable 003393F8 case 2249
339C94:  MOVS            R1, #1; __int16
339C96:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339C9A:  LDR.W           R0, =(ScriptParams_ptr - 0x339CA2)
339C9E:  ADD             R0, PC; ScriptParams_ptr
339CA0:  LDR             R0, [R0]; ScriptParams
339CA2:  LDR             R0, [R0]; this
339CA4:  BLX             j__ZN9CShopping19RemovePriceModifierEj; CShopping::RemovePriceModifier(uint)
339CA8:  B.W             loc_33ABC0
339CAC:  BLX             j__ZN9CTheZones27InitZonesPopulationSettingsEv; jumptable 003393F8 case 2250
339CB0:  B.W             loc_33ABC0
339CB4:  MOV             R0, R4; jumptable 003393F8 case 2251
339CB6:  MOVS            R1, #4; __int16
339CB8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339CBC:  LDR.W           R0, =(ScriptParams_ptr - 0x339CC6)
339CC0:  MOVS            R6, #0
339CC2:  ADD             R0, PC; ScriptParams_ptr
339CC4:  LDR             R0, [R0]; ScriptParams
339CC6:  LDR             R0, [R0]
339CC8:  CMP             R0, #0
339CCA:  BLT.W           loc_33A92E
339CCE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x339CDA)
339CD2:  UXTB            R3, R0
339CD4:  LSRS            R0, R0, #8
339CD6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
339CD8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
339CDA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
339CDC:  LDR             R2, [R1,#4]
339CDE:  LDRB            R2, [R2,R0]
339CE0:  CMP             R2, R3
339CE2:  BNE.W           loc_33A92E
339CE6:  MOVW            R2, #0xA2C
339CEA:  LDR             R1, [R1]
339CEC:  MLA.W           R0, R0, R2, R1
339CF0:  B.W             loc_33A930
339CF4:  BLX             j__ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv; jumptable 003393F8 case 2256
339CF8:  B.W             loc_33A8C2
339CFC:  LDR.W           R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x339D08); jumptable 003393F8 case 2257
339D00:  LDR.W           R1, =(ScriptParams_ptr - 0x339D0A)
339D04:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
339D06:  ADD             R1, PC; ScriptParams_ptr
339D08:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
339D0A:  LDR             R1, [R1]; ScriptParams
339D0C:  VLDR            D16, [R0]
339D10:  LDR             R0, [R0,#(dword_9ABFA0 - 0x9ABF98)]
339D12:  VSTR            D16, [SP,#0x178+var_120]
339D16:  LDRD.W          R2, R3, [SP,#0x178+var_120]
339D1A:  STRD.W          R2, R3, [R1]
339D1E:  STR             R0, [R1,#(dword_81A910 - 0x81A908)]
339D20:  MOVS            R1, #3
339D22:  STR             R0, [SP,#0x178+var_118]
339D24:  MOV             R0, R4
339D26:  B.W             loc_33ABBC
339D2A:  MOV             R0, R4; jumptable 003393F8 case 2258
339D2C:  MOVS            R1, #2; __int16
339D2E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339D32:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x339D44)
339D36:  MOV.W           R3, #0x1A4
339D3A:  LDR.W           R0, =(ScriptParams_ptr - 0x339D46)
339D3E:  MOVS            R6, #0
339D40:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
339D42:  ADD             R0, PC; ScriptParams_ptr
339D44:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
339D46:  LDR             R0, [R0]; ScriptParams
339D48:  LDRD.W          R2, R0, [R0]
339D4C:  LDR             R1, [R1]; CPools::ms_pObjectPool
339D4E:  LSRS            R2, R2, #8
339D50:  LDR             R1, [R1]
339D52:  MLA.W           R1, R2, R3, R1
339D56:  STR.W           R0, [R1,#0x160]
339D5A:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
339D5E:  LDR.W           R0, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x339D6A); jumptable 003393F8 case 2259
339D62:  LDR.W           R1, =(ScriptParams_ptr - 0x339D6C)
339D66:  ADD             R0, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
339D68:  ADD             R1, PC; ScriptParams_ptr
339D6A:  B               loc_33A0F8
339D6C:  SUB.W           R5, R7, #-var_5A; jumptable 003393F8 case 2260
339D70:  MOV             R0, R4; this
339D72:  MOVS            R2, #8; unsigned __int8
339D74:  MOV             R1, R5; char *
339D76:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
339D7A:  LDR.W           R1, =(aPedDummy+4 - 0x339D8A); "DUMMY"
339D7E:  MOVS            R0, #0
339D80:  STRB.W          R0, [SP,#0x178+var_108]
339D84:  MOV             R0, R5; char *
339D86:  ADD             R1, PC; "DUMMY"
339D88:  BLX             strcasecmp
339D8C:  CMP             R0, #0
339D8E:  ITTT NE
339D90:  ADDNE.W         R0, SP, #0x178+var_108; char *
339D94:  SUBNE.W         R1, R7, #-var_5A; char *
339D98:  BLXNE           strcpy
339D9C:  MOV             R0, R4; this
339D9E:  MOVS            R1, #7; __int16
339DA0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339DA4:  LDR.W           R0, =(RsGlobal_ptr - 0x339DB4)
339DA8:  ADD.W           LR, SP, #0x178+var_174
339DAC:  VLDR            S4, =640.0
339DB0:  ADD             R0, PC; RsGlobal_ptr
339DB2:  VLDR            S6, =448.0
339DB6:  LDR             R0, [R0]; RsGlobal
339DB8:  VLDR            S0, [R0,#4]
339DBC:  VLDR            S2, [R0,#8]
339DC0:  VCVT.F32.S32    S0, S0
339DC4:  LDR.W           R0, =(ScriptParams_ptr - 0x339DD0)
339DC8:  VCVT.F32.S32    S2, S2
339DCC:  ADD             R0, PC; ScriptParams_ptr
339DCE:  LDR             R5, [R0]; ScriptParams
339DD0:  VDIV.F32        S0, S0, S4
339DD4:  LDRB            R0, [R5,#(dword_81A914 - 0x81A908)]
339DD6:  LDRB            R1, [R5,#(dword_81A918 - 0x81A908)]
339DD8:  LDRB            R6, [R5,#(dword_81A91C - 0x81A908)]
339DDA:  LDRB.W          R12, [R5,#(dword_81A920 - 0x81A908)]
339DDE:  VDIV.F32        S2, S2, S6
339DE2:  VLDR            S4, [R5]
339DE6:  VLDR            S6, [R5,#4]
339DEA:  VMUL.F32        S4, S4, S0
339DEE:  VLDR            S8, [R5,#8]
339DF2:  VMUL.F32        S2, S6, S2
339DF6:  STM.W           LR, {R0,R1,R6,R12}
339DFA:  VMUL.F32        S0, S8, S0
339DFE:  ADD             R1, SP, #0x178+var_108; unsigned __int8
339E00:  MOVS            R0, #0; this
339E02:  MOVS            R6, #0
339E04:  VMOV            R2, S4; char *
339E08:  VMOV            R3, S2; float
339E0C:  VSTR            S0, [SP,#0x178+var_178]
339E10:  BLX             j__ZN11CMenuSystem13CreateNewMenuEhPcfffhhhh; CMenuSystem::CreateNewMenu(uchar,char *,float,float,float,uchar,uchar,uchar,uchar)
339E14:  STR             R0, [R5]
339E16:  MOV             R0, R4; this
339E18:  MOVS            R1, #1; __int16
339E1A:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
339E1E:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
339E22:  MOV             R0, R4; jumptable 003393F8 case 2262
339E24:  MOVS            R1, #3; __int16
339E26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339E2A:  LDR.W           R0, =(ScriptParams_ptr - 0x339E32)
339E2E:  ADD             R0, PC; ScriptParams_ptr
339E30:  LDR             R2, [R0]; ScriptParams
339E32:  LDRB            R0, [R2]; this
339E34:  LDRB            R1, [R2,#(dword_81A90C - 0x81A908)]; unsigned __int8
339E36:  LDRB            R2, [R2,#(dword_81A910 - 0x81A908)]; unsigned __int8
339E38:  BLX             j__ZN11CMenuSystem20SetColumnOrientationEhhh; CMenuSystem::SetColumnOrientation(uchar,uchar,uchar)
339E3C:  B.W             loc_33ABC0
339E40:  MOV             R0, R4; jumptable 003393F8 case 2263
339E42:  MOVS            R1, #1; __int16
339E44:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339E48:  LDR.W           R0, =(ScriptParams_ptr - 0x339E50)
339E4C:  ADD             R0, PC; ScriptParams_ptr
339E4E:  LDR             R5, [R0]; ScriptParams
339E50:  LDRB            R0, [R5]; this
339E52:  BLX             j__ZN11CMenuSystem16CheckForSelectedEh; CMenuSystem::CheckForSelected(uchar)
339E56:  STR             R0, [R5]
339E58:  B.W             loc_33ABB8
339E5C:  MOV             R0, R4; jumptable 003393F8 case 2264
339E5E:  MOVS            R1, #1; __int16
339E60:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339E64:  LDR.W           R0, =(ScriptParams_ptr - 0x339E6C)
339E68:  ADD             R0, PC; ScriptParams_ptr
339E6A:  LDR             R5, [R0]; ScriptParams
339E6C:  LDRB            R0, [R5]; this
339E6E:  BLX             j__ZN11CMenuSystem14CheckForAcceptEh; CMenuSystem::CheckForAccept(uchar)
339E72:  STR             R0, [R5]
339E74:  B.W             loc_33ABB8
339E78:  MOV             R0, R4; jumptable 003393F8 case 2265
339E7A:  MOVS            R1, #3; __int16
339E7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339E80:  LDR.W           R0, =(ScriptParams_ptr - 0x339E88)
339E84:  ADD             R0, PC; ScriptParams_ptr
339E86:  LDR             R2, [R0]; ScriptParams
339E88:  LDRB            R0, [R2]; this
339E8A:  LDRB            R1, [R2,#(dword_81A90C - 0x81A908)]; unsigned __int8
339E8C:  LDRB            R2, [R2,#(dword_81A910 - 0x81A908)]; unsigned __int8
339E8E:  BLX             j__ZN11CMenuSystem15ActivateOneItemEhhh; CMenuSystem::ActivateOneItem(uchar,uchar,uchar)
339E92:  B.W             loc_33ABC0
339E96:  MOV             R0, R4; jumptable 003393F8 case 2266
339E98:  MOVS            R1, #1; __int16
339E9A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339E9E:  LDR.W           R0, =(ScriptParams_ptr - 0x339EA6)
339EA2:  ADD             R0, PC; ScriptParams_ptr
339EA4:  LDR             R0, [R0]; ScriptParams
339EA6:  LDRB            R0, [R0]; this
339EA8:  BLX             j__ZN11CMenuSystem13SwitchOffMenuEh; CMenuSystem::SwitchOffMenu(uchar)
339EAC:  B.W             loc_33ABC0
339EB0:  MOV             R0, R4; jumptable 003393F8 case 2267
339EB2:  MOVS            R1, #2; __int16
339EB4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
339EB8:  LDR.W           R0, =(ScriptParams_ptr - 0x339EC8)
339EBC:  SUB.W           R5, R7, #-var_5A
339EC0:  MOVS            R6, #0
339EC2:  MOVS            R2, #8; unsigned __int8
339EC4:  ADD             R0, PC; ScriptParams_ptr
339EC6:  STRB.W          R6, [SP,#0x178+var_80]
339ECA:  LDR             R0, [R0]; ScriptParams
339ECC:  LDR             R1, [R0]
339ECE:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
339ED0:  STR             R1, [SP,#0x178+var_124]
339ED2:  MOV             R1, R5; char *
339ED4:  STR             R0, [SP,#0x178+var_128]
339ED6:  MOV             R0, R4; this
339ED8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
339EDC:  LDR.W           R1, =(aPedDummy+4 - 0x339EE6); "DUMMY"
339EE0:  MOV             R0, R5; char *
339EE2:  ADD             R1, PC; "DUMMY"
339EE4:  BLX             strcasecmp
339EE8:  CMP             R0, #0
339EEA:  ITTT NE
339EEC:  ADDNE.W         R0, SP, #0x178+var_80; char *
339EF0:  SUBNE.W         R1, R7, #-var_5A; char *
339EF4:  BLXNE           strcpy
339EF8:  ADD             R5, SP, #0x178+var_64
339EFA:  MOV             R0, R4; this
339EFC:  MOVS            R2, #8; unsigned __int8
339EFE:  STRB.W          R6, [SP,#0x178+var_50]
339F02:  MOV             R1, R5; char *
339F04:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
339F08:  LDR.W           R1, =(aPedDummy+4 - 0x339F12); "DUMMY"
339F0C:  MOV             R0, R5; char *
339F0E:  ADD             R1, PC; "DUMMY"
339F10:  BLX             strcasecmp
339F14:  CMP             R0, #0
339F16:  ITTT NE
339F18:  ADDNE.W         R0, SP, #0x178+var_50; char *
339F1C:  ADDNE.W         R1, SP, #0x178+var_64; char *
339F20:  BLXNE           strcpy
339F24:  ADD.W           R8, SP, #0x178+var_108
339F28:  LDR.W           R6, =(aPedDummy+4 - 0x339F5E); "DUMMY"
339F2C:  ADD.W           R0, R8, #0x64 ; 'd'
339F30:  STR             R0, [SP,#0x178+var_138]
339F32:  ADD.W           R0, R8, #0x5A ; 'Z'
339F36:  STR             R0, [SP,#0x178+var_140]
339F38:  ADD.W           R0, R8, #0x50 ; 'P'
339F3C:  STR             R0, [SP,#0x178+var_148]
339F3E:  ADD.W           R0, R8, #0x46 ; 'F'
339F42:  STR             R0, [SP,#0x178+var_12C]
339F44:  ADD.W           R0, R8, #0x3C ; '<'
339F48:  STR             R0, [SP,#0x178+var_130]
339F4A:  ADD.W           R0, R8, #0x32 ; '2'
339F4E:  ADD.W           R9, R8, #0x14
339F52:  ADD.W           R10, R8, #0xA
339F56:  SUB.W           R5, R7, #-var_6E
339F5A:  ADD             R6, PC; "DUMMY"
339F5C:  MOV.W           R11, #0
339F60:  STR             R0, [SP,#0x178+var_134]
339F62:  ADD.W           R0, R8, #0x28 ; '('
339F66:  STR             R0, [SP,#0x178+var_13C]
339F68:  ADD.W           R0, R8, #0x1E
339F6C:  STRB.W          R11, [SP,#0x178+var_FE]
339F70:  STRB.W          R11, [SP,#0x178+var_108]
339F74:  STRB.W          R11, [SP,#0x178+var_F4]
339F78:  STRB.W          R11, [SP,#0x178+var_EA]
339F7C:  STRB.W          R11, [SP,#0x178+var_E0]
339F80:  STRB.W          R11, [SP,#0x178+var_D6]
339F84:  STRB.W          R11, [SP,#0x178+var_CC]
339F88:  STRB.W          R11, [SP,#0x178+var_C2]
339F8C:  STRB.W          R11, [SP,#0x178+var_B8]
339F90:  STRB.W          R11, [SP,#0x178+var_AE]
339F94:  STR             R0, [SP,#0x178+var_144]
339F96:  STRB.W          R11, [SP,#0x178+var_A4]
339F9A:  MOV             R0, R4; this
339F9C:  MOV             R1, R5; char *
339F9E:  MOVS            R2, #8; unsigned __int8
339FA0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
339FA4:  MOV             R0, R5; char *
339FA6:  MOV             R1, R6; char *
339FA8:  BLX             strcasecmp
339FAC:  CMP             R0, #0
339FAE:  ITTT NE
339FB0:  ADDNE.W         R0, R8, R11; char *
339FB4:  MOVNE           R1, R5; char *
339FB6:  BLXNE           strcpy
339FBA:  ADD.W           R11, R11, #0xA
339FBE:  CMP.W           R11, #0x6E ; 'n'
339FC2:  BNE             loc_339F9A
339FC4:  LDR             R0, [SP,#0x178+var_148]
339FC6:  ADD             R2, SP, #0x178+var_80; char *
339FC8:  STR             R0, [SP,#0x178+var_158]; char *
339FCA:  ADD             R3, SP, #0x178+var_50; char *
339FCC:  LDR             R0, [SP,#0x178+var_140]
339FCE:  STR             R0, [SP,#0x178+var_154]; char *
339FD0:  LDR             R0, [SP,#0x178+var_138]
339FD2:  STR             R0, [SP,#0x178+var_150]; char *
339FD4:  STRD.W          R8, R10, [SP,#0x178+var_178]; char *
339FD8:  LDR             R0, [SP,#0x178+var_144]
339FDA:  STR.W           R9, [SP,#0x178+var_170]; char *
339FDE:  STR             R0, [SP,#0x178+var_16C]; char *
339FE0:  LDR             R0, [SP,#0x178+var_13C]
339FE2:  STR             R0, [SP,#0x178+var_168]; char *
339FE4:  LDR             R0, [SP,#0x178+var_134]
339FE6:  STR             R0, [SP,#0x178+var_164]; char *
339FE8:  LDR             R0, [SP,#0x178+var_130]
339FEA:  STR             R0, [SP,#0x178+var_160]; char *
339FEC:  LDR             R0, [SP,#0x178+var_12C]
339FEE:  LDR             R1, [SP,#0x178+var_128]
339FF0:  STR             R0, [SP,#0x178+var_15C]; char *
339FF2:  LDR             R0, [SP,#0x178+var_124]
339FF4:  UXTB            R1, R1; unsigned __int8
339FF6:  UXTB            R0, R0; this
339FF8:  BLX             j__ZN11CMenuSystem10InsertMenuEhhPcS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_; CMenuSystem::InsertMenu(uchar,uchar,char *,char *,char *,char *,char *,char *,char *,char *,char *,char *,char *,char *,char *)
339FFC:  B.W             loc_33ABC0
33A000:  MOV             R0, R4; jumptable 003393F8 case 2268
33A002:  MOVS            R1, #4; __int16
33A004:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A008:  LDR.W           R0, =(ScriptParams_ptr - 0x33A012)
33A00C:  MOVS            R5, #0
33A00E:  ADD             R0, PC; ScriptParams_ptr
33A010:  LDR             R0, [R0]; ScriptParams
33A012:  LDRD.W          R4, R2, [R0]
33A016:  LDRD.W          R3, R1, [R0,#(dword_81A910 - 0x81A908)]
33A01A:  ADD             R0, SP, #0x178+var_108
33A01C:  STRD.W          R2, R3, [SP,#0x178+var_108]
33A020:  MOVS            R2, #0
33A022:  BLX             j__ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi; CEntryExitManager::FindNearestEntryExit(CVector2D const&,float,int)
33A026:  LDR.W           R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x33A02E)
33A02A:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
33A02C:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
33A02E:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
33A030:  LDR             R2, [R1,#4]
33A032:  LDRSB           R2, [R2,R0]; CEntryExit *
33A034:  CMP             R2, #0
33A036:  ITTT GE
33A038:  LDRGE           R1, [R1]
33A03A:  RSBGE.W         R0, R0, R0,LSL#4
33A03E:  ADDGE.W         R5, R1, R0,LSL#2
33A042:  MOV             R0, R4; this
33A044:  MOV             R1, R5; int
33A046:  BLX             j__ZN6CRadar16SetBlipEntryExitEiP10CEntryExit; CRadar::SetBlipEntryExit(int,CEntryExit *)
33A04A:  B.W             loc_33ABC0
33A04E:  MOV             R0, R4; jumptable 003393F8 case 2269
33A050:  MOVS            R1, #1; __int16
33A052:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A056:  LDR.W           R0, =(ScriptParams_ptr - 0x33A062)
33A05A:  LDR.W           R1, =(_ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr - 0x33A064)
33A05E:  ADD             R0, PC; ScriptParams_ptr
33A060:  ADD             R1, PC; _ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr
33A062:  B               loc_33A7A8
33A064:  MOV             R0, R4; jumptable 003393F8 case 2270
33A066:  MOVS            R1, #1; __int16
33A068:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A06C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A078)
33A070:  LDR.W           R1, =(_ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr - 0x33A07A)
33A074:  ADD             R0, PC; ScriptParams_ptr
33A076:  ADD             R1, PC; _ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr
33A078:  B               loc_33A7A8
33A07A:  MOV             R0, R4; jumptable 003393F8 case 2271
33A07C:  MOVS            R1, #5; __int16
33A07E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A082:  LDR.W           R0, =(ScriptParams_ptr - 0x33A092)
33A086:  LDR.W           R1, =(_ZN8CRestart25ExtraHospitalRestartCoorsE_ptr - 0x33A098)
33A08A:  LDR.W           R2, =(_ZN8CRestart26ExtraHospitalRestartRadiusE_ptr - 0x33A09A)
33A08E:  ADD             R0, PC; ScriptParams_ptr
33A090:  LDR.W           R3, =(_ZN8CRestart27ExtraHospitalRestartHeadingE_ptr - 0x33A09C)
33A094:  ADD             R1, PC; _ZN8CRestart25ExtraHospitalRestartCoorsE_ptr
33A096:  ADD             R2, PC; _ZN8CRestart26ExtraHospitalRestartRadiusE_ptr
33A098:  ADD             R3, PC; _ZN8CRestart27ExtraHospitalRestartHeadingE_ptr
33A09A:  B               loc_33A0BC
33A09C:  MOV             R0, R4; jumptable 003393F8 case 2272
33A09E:  MOVS            R1, #5; __int16
33A0A0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A0A4:  LDR.W           R0, =(ScriptParams_ptr - 0x33A0B4)
33A0A8:  LDR.W           R1, =(_ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr - 0x33A0BA)
33A0AC:  LDR.W           R2, =(_ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr - 0x33A0BC)
33A0B0:  ADD             R0, PC; ScriptParams_ptr
33A0B2:  LDR.W           R3, =(_ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr - 0x33A0BE)
33A0B6:  ADD             R1, PC; _ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr
33A0B8:  ADD             R2, PC; _ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr
33A0BA:  ADD             R3, PC; _ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr
33A0BC:  LDR             R0, [R0]; ScriptParams
33A0BE:  LDR             R1, [R1]; CRestart::ExtraHospitalRestartCoors
33A0C0:  LDRD.W          R6, R5, [R0]
33A0C4:  LDR.W           R12, [R2]; CRestart::ExtraHospitalRestartRadius
33A0C8:  LDRD.W          R4, R2, [R0,#(dword_81A910 - 0x81A908)]
33A0CC:  STR             R6, [SP,#0x178+var_50]
33A0CE:  MOVS            R6, #0
33A0D0:  STR             R5, [SP,#0x178+var_50+4]
33A0D2:  LDR             R3, [R3]; CRestart::ExtraHospitalRestartHeading
33A0D4:  VLDR            D16, [SP,#0x178+var_50]
33A0D8:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
33A0DA:  STR             R4, [R1,#8]
33A0DC:  STR.W           R2, [R12]; CRestart::ExtraHospitalRestartRadius
33A0E0:  STR             R0, [R3]; CRestart::ExtraHospitalRestartHeading
33A0E2:  VSTR            D16, [R1]
33A0E6:  STR             R4, [SP,#0x178+var_48]
33A0E8:  B.W             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A0EC:  LDR.W           R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x33A0F8); jumptable 003393F8 case 2273
33A0F0:  LDR.W           R1, =(ScriptParams_ptr - 0x33A0FA)
33A0F4:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
33A0F6:  ADD             R1, PC; ScriptParams_ptr
33A0F8:  LDR             R0, [R0]; CTagManager::ms_numTagged
33A0FA:  LDR             R1, [R1]; ScriptParams
33A0FC:  LDR             R0, [R0]; CTagManager::ms_numTagged
33A0FE:  STR             R0, [R1]
33A100:  B.W             loc_33ABB8
33A104:  LDR.W           R0, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x33A110); jumptable 003393F8 case 2274
33A108:  VLDR            S0, =100.0
33A10C:  ADD             R0, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
33A10E:  LDR             R0, [R0]; CGangWars::TerritoryUnderControlPercentage ...
33A110:  VLDR            S2, [R0]
33A114:  LDR.W           R0, =(ScriptParams_ptr - 0x33A120)
33A118:  VMUL.F32        S0, S2, S0
33A11C:  ADD             R0, PC; ScriptParams_ptr
33A11E:  LDR             R0, [R0]; ScriptParams
33A120:  VCVT.S32.F32    S0, S0
33A124:  VSTR            S0, [R0]
33A128:  B.W             loc_33ABB8
33A12C:  MOV             R0, R4; jumptable 003393F8 case 2277
33A12E:  MOVS            R1, #4; __int16
33A130:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A134:  LDR.W           R0, =(ScriptParams_ptr - 0x33A140)
33A138:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33A142)
33A13C:  ADD             R0, PC; ScriptParams_ptr
33A13E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33A140:  LDR             R3, [R0]; ScriptParams
33A142:  LDR             R0, [R1]; CPools::ms_pPedPool ...
33A144:  LDM.W           R3, {R1,R2,R6}
33A148:  LDR             R0, [R0]; CPools::ms_pPedPool
33A14A:  VLDR            S16, [R3,#0xC]
33A14E:  ADD             R3, SP, #0x178+var_50
33A150:  STM             R3!, {R1,R2,R6}
33A152:  LDR             R3, [R0,#8]
33A154:  CMP             R3, #0
33A156:  BEQ.W           loc_33AAC8
33A15A:  VMOV            S22, R1
33A15E:  MOVW            R1, #0x7CC
33A162:  MULS            R1, R3
33A164:  VMOV            S18, R6
33A168:  VMOV            S20, R2
33A16C:  SUBS            R6, R3, #1
33A16E:  SUB.W           R5, R1, #0x384
33A172:  MOV.W           R1, #0xFFFFFFFF
33A176:  STR             R1, [SP,#0x178+var_128]
33A178:  MOVW            R1, #0x270F
33A17C:  STR             R1, [SP,#0x178+var_12C]
33A17E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33A186)
33A182:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33A184:  LDR.W           R11, [R1]; CPools::ms_pPedPool ...
33A188:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33A190)
33A18C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33A18E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33A190:  STR             R1, [SP,#0x178+var_130]
33A192:  B               loc_33A1AA
33A194:  DCFS 640.0
33A198:  DCFS 448.0
33A19C:  DCD __stack_chk_guard_ptr - 0x3393E0
33A1A0:  SUBS            R6, #1
33A1A2:  LDR.W           R0, [R11]; CPools::ms_pPedPool
33A1A6:  SUBW            R5, R5, #0x7CC
33A1AA:  LDR             R1, [R0,#4]
33A1AC:  LDRSB           R1, [R1,R6]
33A1AE:  CMP             R1, #0
33A1B0:  BLT             loc_33A2A0
33A1B2:  LDR             R0, [R0]
33A1B4:  ADD.W           R9, R0, R5
33A1B8:  CMP.W           R9, #0x448
33A1BC:  BEQ             loc_33A2A0
33A1BE:  LDRB            R1, [R0,R5]
33A1C0:  CMP             R1, #1
33A1C2:  BNE             loc_33A2A0
33A1C4:  ADD             R0, R8
33A1C6:  ADD.W           R10, R0, R5
33A1CA:  LDRB.W          R0, [R10,#0x1D]
33A1CE:  LSLS            R0, R0, #0x1C
33A1D0:  ITT PL
33A1D2:  LDRBPL.W        R0, [R9,#0x40]
33A1D6:  MOVSPL.W        R0, R0,LSL#28
33A1DA:  BMI             loc_33A2A0
33A1DC:  ADD.W           R1, R9, R8; CPed *
33A1E0:  MOV             R0, R4; this
33A1E2:  STR             R1, [SP,#0x178+var_124]
33A1E4:  BLX             j__ZN14CRunningScript9IsPedDeadEP4CPed; CRunningScript::IsPedDead(CPed *)
33A1E8:  CMP             R0, #0
33A1EA:  BNE             loc_33A2A0
33A1EC:  LDR             R0, [SP,#0x178+var_124]; this
33A1EE:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
33A1F2:  CMP             R0, #0
33A1F4:  BNE             loc_33A2A0
33A1F6:  ADD.W           R0, R9, #0x3C ; '<'
33A1FA:  LDR             R2, [SP,#0x178+var_124]
33A1FC:  MOVS            R1, #0
33A1FE:  LDRB            R0, [R0,#0xA]
33A200:  CMP.W           R1, R0,LSR#7
33A204:  BNE             loc_33A2A0
33A206:  MOV             R0, #0xFFFFFBCC
33A20E:  LDR.W           R0, [R9,R0]
33A212:  ADD.W           R1, R0, #0x30 ; '0'
33A216:  CMP             R0, #0
33A218:  IT EQ
33A21A:  ADDEQ.W         R1, R10, #4
33A21E:  VLDR            D16, [R1]
33A222:  VSTR            D16, [SP,#0x178+var_120]
33A226:  VLDR            S0, [SP,#0x178+var_120]
33A22A:  VLDR            S2, [SP,#0x178+var_120+4]
33A22E:  VSUB.F32        S0, S0, S22
33A232:  LDR             R0, [R1,#8]
33A234:  VSUB.F32        S2, S2, S20
33A238:  STR             R0, [SP,#0x178+var_118]
33A23A:  VLDR            S4, [SP,#0x178+var_118]
33A23E:  LDR             R0, [SP,#0x178+var_12C]
33A240:  VSUB.F32        S4, S4, S18
33A244:  VMUL.F32        S0, S0, S0
33A248:  VMUL.F32        S2, S2, S2
33A24C:  VMUL.F32        S4, S4, S4
33A250:  VADD.F32        S0, S0, S2
33A254:  VMOV            S2, R0
33A258:  VCVT.F32.S32    S2, S2
33A25C:  VADD.F32        S0, S0, S4
33A260:  VSQRT.F32       S0, S0
33A264:  VCMPE.F32       S0, S16
33A268:  VMRS            APSR_nzcv, FPSCR
33A26C:  ITT LT
33A26E:  VCMPELT.F32     S0, S2
33A272:  VMRSLT          APSR_nzcv, FPSCR
33A276:  BGE             loc_33A2A0
33A278:  LDR             R0, [SP,#0x178+var_130]
33A27A:  LDR             R0, [R0]
33A27C:  LDRD.W          R1, R0, [R0]
33A280:  SUBS            R1, R2, R1
33A282:  MOV             R2, #0xBED87F3B
33A28A:  ASRS            R1, R1, #2
33A28C:  MULS            R1, R2
33A28E:  LDRB            R0, [R0,R1]
33A290:  VCVT.S32.F32    S0, S0
33A294:  ORR.W           R0, R0, R1,LSL#8
33A298:  STR             R0, [SP,#0x178+var_128]
33A29A:  VMOV            R0, S0
33A29E:  STR             R0, [SP,#0x178+var_12C]
33A2A0:  CMP             R6, #0
33A2A2:  BNE.W           loc_33A1A0
33A2A6:  LDR             R5, [SP,#0x178+var_128]
33A2A8:  CMP             R5, #0
33A2AA:  BLT.W           loc_33ABB0
33A2AE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33A2BA)
33A2B2:  LSRS            R1, R5, #8
33A2B4:  UXTB            R3, R5
33A2B6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33A2B8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33A2BA:  LDR             R0, [R0]; CPools::ms_pPedPool
33A2BC:  LDR             R2, [R0,#4]
33A2BE:  LDRB            R2, [R2,R1]
33A2C0:  CMP             R2, R3
33A2C2:  BNE.W           loc_33AB88
33A2C6:  MOVW            R2, #0x7CC
33A2CA:  LDR             R0, [R0]
33A2CC:  MLA.W           R0, R1, R2, R0
33A2D0:  B.W             loc_33AB8A
33A2D4:  DCD ScriptParams_ptr - 0x3394D6
33A2D8:  DCD ScriptParams_ptr - 0x339504
33A2DC:  DCD ScriptParams_ptr - 0x339520
33A2E0:  DCD ScriptParams_ptr - 0x339548
33A2E4:  DCD ScriptParams_ptr - 0x339564
33A2E8:  DCD ScriptParams_ptr - 0x339598
33A2EC:  DCD ScriptParams_ptr - 0x3395DA
33A2F0:  DCD ScriptParams_ptr - 0x3395FE
33A2F4:  DCD _ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x339604
33A2F8:  DCD _ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x33960C
33A2FC:  DCD _ZN11CTheScripts19bEnableCraneReleaseE_ptr - 0x33960E
33A300:  DCD ScriptParams_ptr - 0x339644
33A304:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339658
33A308:  DCD ScriptParams_ptr - 0x339682
33A30C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339696
33A310:  DCD ScriptParams_ptr - 0x3396C4
33A314:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3396C6
33A318:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33970A
33A31C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x339714
33A320:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33971E
33A324:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339840
33A328:  DCD ScriptParams_ptr - 0x339872
33A32C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339874
33A330:  DCD ScriptParams_ptr - 0x3398A0
33A334:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3398D8
33A338:  DCD ScriptParams_ptr - 0x33990C
33A33C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33990E
33A340:  DCD ScriptParams_ptr - 0x33994E
33A344:  DCD _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x339950
33A348:  DCD ScriptParams_ptr - 0x339962
33A34C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x339976
33A350:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3399A8
33A354:  DCD ScriptParams_ptr - 0x3399AA
33A358:  DCD ScriptParams_ptr - 0x3399E0
33A35C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3399F4
33A360:  DCD ScriptParams_ptr - 0x339A1E
33A364:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x339A32
33A368:  DCD ScriptParams_ptr - 0x339A5C
33A36C:  DCD ScriptParams_ptr - 0x339A82
33A370:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x339A84
33A374:  DCD ScriptParams_ptr - 0x339AB4
33A378:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x339AB6
33A37C:  DCD _ZN10CStreaming16ms_aInfoForModelE_ptr - 0x339ACE
33A380:  DCD ScriptParams_ptr - 0x339AFA
33A384:  DCD _ZN9CGangWars16bTrainingMissionE_ptr - 0x339AFC
33A388:  DCD ScriptParams_ptr - 0x339B0E
33A38C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339B22
33A390:  DCD ScriptParams_ptr - 0x339B52
33A394:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339B54
33A398:  DCD ScriptParams_ptr - 0x339B8A
33A39C:  DCD ScriptParams_ptr - 0x339BAC
33A3A0:  DCD _ZN9CTheZones19NavigationZoneArrayE_ptr - 0x339BE2
33A3A4:  DCD _ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x339BE4
33A3A8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339C0C
33A3AC:  DCD ScriptParams_ptr - 0x339C0E
33A3B0:  DCD ScriptParams_ptr - 0x339C48
33A3B4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x339C5C
33A3B8:  DCD ScriptParams_ptr - 0x339C86
33A3BC:  DCD ScriptParams_ptr - 0x339DD0
33A3C0:  DCFS 100.0
33A3C4:  DCD ScriptParams_ptr - 0x339CA2
33A3C8:  MOV             R0, R4; jumptable 003393F8 case 2278
33A3CA:  MOVS            R1, #2; __int16
33A3CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A3D0:  LDR.W           R0, =(ScriptParams_ptr - 0x33A3D8)
33A3D4:  ADD             R0, PC; ScriptParams_ptr
33A3D6:  LDR             R0, [R0]; ScriptParams
33A3D8:  LDR             R1, [R0]
33A3DA:  CMP             R1, #0
33A3DC:  BLT.W           loc_33A972
33A3E0:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33A3EC)
33A3E4:  UXTB            R3, R1
33A3E6:  LSRS            R1, R1, #8
33A3E8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33A3EA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33A3EC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33A3EE:  LDR             R2, [R0,#4]
33A3F0:  LDRB            R2, [R2,R1]
33A3F2:  CMP             R2, R3
33A3F4:  BNE.W           loc_33A972
33A3F8:  MOVW            R2, #0xA2C
33A3FC:  LDR             R0, [R0]
33A3FE:  MLA.W           R0, R1, R2, R0
33A402:  B               loc_33A974
33A404:  MOV             R0, R4; jumptable 003393F8 case 2279
33A406:  MOVS            R1, #1; __int16
33A408:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A40C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A418)
33A410:  LDR.W           R1, =(_ZN17CEntryExitManager12ms_bDisabledE_ptr - 0x33A41A)
33A414:  ADD             R0, PC; ScriptParams_ptr
33A416:  ADD             R1, PC; _ZN17CEntryExitManager12ms_bDisabledE_ptr
33A418:  B               loc_33A7A8
33A41A:  MOV             R0, R4; jumptable 003393F8 case 2280
33A41C:  MOVS            R1, #1; __int16
33A41E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A422:  LDR.W           R0, =(ScriptParams_ptr - 0x33A42E)
33A426:  ADD             R1, SP, #0x178+var_64; char *
33A428:  MOVS            R2, #8; unsigned __int8
33A42A:  ADD             R0, PC; ScriptParams_ptr
33A42C:  LDR             R0, [R0]; ScriptParams
33A42E:  LDR             R5, [R0]
33A430:  MOV             R0, R4; this
33A432:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33A436:  CMP.W           R5, #0xFFFFFFFF
33A43A:  BGT             loc_33A450
33A43C:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33A446)
33A440:  NEGS            R1, R5
33A442:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33A444:  RSB.W           R1, R1, R1,LSL#3
33A448:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
33A44A:  ADD.W           R0, R0, R1,LSL#2
33A44E:  LDR             R5, [R0,#0x18]
33A450:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33A458)
33A454:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33A456:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
33A458:  LDR.W           R4, [R0,R5,LSL#2]
33A45C:  LDR             R0, [R4]
33A45E:  LDR             R1, [R0,#0x3C]
33A460:  MOV             R0, R4
33A462:  BLX             R1
33A464:  MOV             R6, R0
33A466:  ADD             R0, SP, #0x178+var_64; this
33A468:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
33A46C:  CMP             R6, R0
33A46E:  BEQ             loc_33A482
33A470:  LDR             R0, [R4]
33A472:  ADD             R1, SP, #0x178+var_64
33A474:  LDR             R2, [R0,#0x34]
33A476:  MOV             R0, R4
33A478:  BLX             R2
33A47A:  LDR             R0, [R4]
33A47C:  LDR             R1, [R0,#0x38]
33A47E:  MOV             R0, R4
33A480:  BLX             R1
33A482:  ADD             R1, SP, #0x178+var_64; char *
33A484:  MOV             R0, R5; this
33A486:  BLX             j__ZN11CTheScripts48AddToListOfSpecialAnimGroupsAttachedToCharModelsEiPc; CTheScripts::AddToListOfSpecialAnimGroupsAttachedToCharModels(int,char *)
33A48A:  B               loc_33ABC0
33A48C:  MOV             R0, R4; jumptable 003393F8 case 2281
33A48E:  MOVS            R1, #2; __int16
33A490:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A494:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33A4A6)
33A498:  MOV.W           R3, #0x1A4
33A49C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A4A8)
33A4A0:  MOVS            R6, #0
33A4A2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33A4A4:  ADD             R0, PC; ScriptParams_ptr
33A4A6:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33A4A8:  LDR             R0, [R0]; ScriptParams
33A4AA:  LDRD.W          R2, R0, [R0]
33A4AE:  CMP             R0, #0
33A4B0:  LDR             R1, [R1]; CPools::ms_pObjectPool
33A4B2:  MOV.W           R2, R2,LSR#8
33A4B6:  LDR             R1, [R1]
33A4B8:  MLA.W           R1, R2, R3, R1
33A4BC:  LDR.W           R2, [R1,#0x144]
33A4C0:  BIC.W           R3, R2, #0x2000
33A4C4:  IT NE
33A4C6:  ORRNE.W         R3, R2, #0x2000
33A4CA:  STR.W           R3, [R1,#0x144]
33A4CE:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A4D0:  MOV             R0, R4; jumptable 003393F8 case 2282
33A4D2:  MOVS            R1, #1; __int16
33A4D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A4D8:  LDR.W           R0, =(ScriptParams_ptr - 0x33A4E6)
33A4DC:  MOVS            R6, #0
33A4DE:  LDR.W           R1, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x33A4E8)
33A4E2:  ADD             R0, PC; ScriptParams_ptr
33A4E4:  ADD             R1, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
33A4E6:  LDR             R0, [R0]; ScriptParams
33A4E8:  LDR             R1, [R1]; CPopulation::m_bDontCreateRandomGangMembers ...
33A4EA:  LDR             R0, [R0]
33A4EC:  CMP             R0, #0
33A4EE:  MOV.W           R0, #0
33A4F2:  IT EQ
33A4F4:  MOVEQ           R0, #1
33A4F6:  STRB            R0, [R1]; CPopulation::m_bDontCreateRandomGangMembers
33A4F8:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A4FA:  MOV             R0, R4; jumptable 003393F8 case 2283
33A4FC:  MOVS            R1, #7; __int16
33A4FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A502:  LDR.W           R0, =(ScriptParams_ptr - 0x33A50A)
33A506:  ADD             R0, PC; ScriptParams_ptr
33A508:  LDR             R0, [R0]; ScriptParams
33A50A:  LDM.W           R0, {R1-R3,R6}
33A50E:  LDRD.W          R5, R4, [R0,#(dword_81A918 - 0x81A908)]
33A512:  LDR.W           R8, [R0,#(dword_81A920 - 0x81A908)]
33A516:  ADD             R0, SP, #0x178+var_50
33A518:  STM             R0!, {R1-R3}
33A51A:  STRD.W          R6, R5, [SP,#0x178+var_120]
33A51E:  STR             R4, [SP,#0x178+var_118]
33A520:  ADD             R4, SP, #0x178+var_108
33A522:  LDR             R0, [SP,#0x178+var_118]
33A524:  VLDR            D16, [SP,#0x178+var_120]
33A528:  STR             R0, [SP,#0x78]
33A52A:  MOV             R0, R4; this
33A52C:  VSTR            D16, [SP,#0x178+var_108]
33A530:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
33A534:  MOV             R3, R0
33A536:  LDR.W           R0, =(g_fx_ptr - 0x33A544)
33A53A:  MOVW            R2, #0xCCCD
33A53E:  MOVS            R6, #0
33A540:  ADD             R0, PC; g_fx_ptr
33A542:  MOV.W           R1, #0x3F800000
33A546:  MOVT            R2, #0x3ECC
33A54A:  MOVS            R5, #1
33A54C:  LDR             R0, [R0]; g_fx
33A54E:  STRD.W          R8, R6, [SP,#0x178+var_178]
33A552:  STRD.W          R6, R6, [SP,#0x178+var_170]
33A556:  STRD.W          R5, R2, [SP,#0x178+var_168]
33A55A:  MOV             R2, R4
33A55C:  STR             R1, [SP,#0x178+var_160]
33A55E:  ADD             R1, SP, #0x178+var_50
33A560:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
33A564:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A566:  MOV             R0, R4; jumptable 003393F8 case 2284
33A568:  MOVS            R1, #1; __int16
33A56A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A56E:  LDR.W           R0, =(ScriptParams_ptr - 0x33A57E)
33A572:  MOVW            R3, #0xA2C
33A576:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33A580)
33A57A:  ADD             R0, PC; ScriptParams_ptr
33A57C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33A57E:  LDR             R0, [R0]; ScriptParams
33A580:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33A582:  LDR             R2, [R0]
33A584:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33A586:  LSRS            R2, R2, #8
33A588:  LDR             R1, [R1]
33A58A:  MLA.W           R1, R2, R3, R1
33A58E:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33A596)
33A592:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33A594:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
33A596:  LDRSH.W         R1, [R1,#0x26]
33A59A:  LDR.W           R1, [R2,R1,LSL#2]
33A59E:  LDRSB.W         R1, [R1,#0x65]
33A5A2:  STR             R1, [R0]
33A5A4:  B               loc_33ABB8
33A5A6:  MOV             R0, R4; jumptable 003393F8 case 2285
33A5A8:  MOVS            R1, #1; __int16
33A5AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A5AE:  LDR.W           R0, =(ScriptParams_ptr - 0x33A5B6)
33A5B2:  ADD             R0, PC; ScriptParams_ptr
33A5B4:  LDR             R0, [R0]; ScriptParams
33A5B6:  LDR             R1, [R0]
33A5B8:  CMP             R1, #0
33A5BA:  BLT.W           loc_33ABC0
33A5BE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33A5CA)
33A5C2:  UXTB            R3, R1
33A5C4:  LSRS            R1, R1, #8; CPed *
33A5C6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33A5C8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33A5CA:  LDR             R0, [R0]; CPools::ms_pPedPool
33A5CC:  LDR             R2, [R0,#4]
33A5CE:  LDRB            R2, [R2,R1]
33A5D0:  CMP             R2, R3
33A5D2:  BNE.W           loc_33ABC0
33A5D6:  MOVW            R2, #0x7CC
33A5DA:  LDR             R0, [R0]
33A5DC:  MLA.W           R0, R1, R2, R0; this
33A5E0:  CMP             R0, #0
33A5E2:  IT NE
33A5E4:  BLXNE           j__ZN14CConversations24RemoveConversationForPedEP4CPed; CConversations::RemoveConversationForPed(CPed *)
33A5E8:  B               loc_33ABC0
33A5EA:  ADD             R5, SP, #0x178+var_94; jumptable 003393F8 case 2288
33A5EC:  MOV             R0, R4; this
33A5EE:  MOVS            R2, #8; unsigned __int8
33A5F0:  MOV             R1, R5; char *
33A5F2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33A5F6:  ADD             R6, SP, #0x178+var_108
33A5F8:  MOV             R0, R4; this
33A5FA:  MOVS            R2, #8; unsigned __int8
33A5FC:  MOV             R1, R6; char *
33A5FE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33A602:  MOV             R0, R5; this
33A604:  MOV             R1, R6; char *
33A606:  BLX             j__ZN12CCutsceneMgr20AppendToNextCutsceneEPKcS1_; CCutsceneMgr::AppendToNextCutscene(char const*,char const*)
33A60A:  B               loc_33ABC0
33A60C:  MOV             R0, R4; jumptable 003393F8 case 2289
33A60E:  MOVS            R1, #3; __int16
33A610:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A614:  LDR.W           R0, =(ScriptParams_ptr - 0x33A61C)
33A618:  ADD             R0, PC; ScriptParams_ptr
33A61A:  LDR             R0, [R0]; ScriptParams
33A61C:  LDRD.W          R1, R2, [R0]; unsigned __int8
33A620:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33A622:  STRD.W          R1, R2, [SP,#0x178+var_120]
33A626:  MOVS            R1, #(stderr+1); CVector *
33A628:  STR             R0, [SP,#0x178+var_118]
33A62A:  ADD             R0, SP, #0x178+var_120; this
33A62C:  BLX             j__ZN9CTheZones27FindSmallestZoneForPositionEPK7CVectorh; CTheZones::FindSmallestZoneForPosition(CVector const*,uchar)
33A630:  MOV             R5, R0
33A632:  MOV             R0, R4; this
33A634:  MOVS            R1, #2; unsigned __int8
33A636:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33A63A:  MOV             R1, R5; char *
33A63C:  MOVS            R2, #8; size_t
33A63E:  BLX             strncpy
33A642:  B               loc_33ABC0
33A644:  MOV             R0, R4; jumptable 003393F8 case 2290
33A646:  MOVS            R1, #2; __int16
33A648:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A64C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33A65C)
33A650:  MOVW            R3, #0xA2C
33A654:  LDR.W           R0, =(ScriptParams_ptr - 0x33A65E)
33A658:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33A65A:  ADD             R0, PC; ScriptParams_ptr
33A65C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33A65E:  LDR             R0, [R0]; ScriptParams
33A660:  LDRD.W          R2, R0, [R0]
33A664:  CMP             R0, #0
33A666:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33A668:  MOV.W           R2, R2,LSR#8
33A66C:  LDR             R1, [R1]
33A66E:  MLA.W           R1, R2, R3, R1
33A672:  LDR.W           R2, [R1,#0x430]
33A676:  BIC.W           R3, R2, #0x4000
33A67A:  IT NE
33A67C:  ORRNE.W         R3, R2, #0x4000
33A680:  STR.W           R3, [R1,#0x430]
33A684:  B               loc_33ABC0
33A686:  MOV             R0, R4; jumptable 003393F8 case 2291
33A688:  MOVS            R1, #2; __int16
33A68A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A68E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33A6A0)
33A692:  MOVW            R3, #0xA2C
33A696:  LDR.W           R0, =(ScriptParams_ptr - 0x33A6A2)
33A69A:  MOVS            R6, #0
33A69C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33A69E:  ADD             R0, PC; ScriptParams_ptr
33A6A0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33A6A2:  LDR             R0, [R0]; ScriptParams
33A6A4:  LDRD.W          R2, R0, [R0]
33A6A8:  CMP             R0, #0
33A6AA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33A6AC:  MOV.W           R2, R2,LSR#8
33A6B0:  LDR             R1, [R1]
33A6B2:  MLA.W           R1, R2, R3, R1
33A6B6:  LDR.W           R2, [R1,#0x42C]
33A6BA:  BIC.W           R3, R2, #0x80
33A6BE:  IT NE
33A6C0:  ORRNE.W         R3, R2, #0x80
33A6C4:  STR.W           R3, [R1,#0x42C]
33A6C8:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A6CA:  MOV             R0, R4; jumptable 003393F8 case 2292
33A6CC:  MOVS            R1, #1; __int16
33A6CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A6D2:  LDR.W           R0, =(ScriptParams_ptr - 0x33A6DA)
33A6D6:  ADD             R0, PC; ScriptParams_ptr
33A6D8:  LDR             R0, [R0]; ScriptParams
33A6DA:  LDR             R4, [R0]
33A6DC:  MOV.W           R0, #0xFFFFFFFF; int
33A6E0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33A6E4:  LDR.W           R0, [R0,#0x444]
33A6E8:  STRB.W          R4, [R0,#0x43]
33A6EC:  MOV.W           R0, #0xFFFFFFFF; int
33A6F0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33A6F4:  LDR.W           R0, [R0,#0x444]
33A6F8:  MOV.W           R2, #0x2D4
33A6FC:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x33A706)
33A700:  LDR             R0, [R0,#0x38]
33A702:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
33A704:  LDR             R1, [R1]; CPedGroups::ms_groups ...
33A706:  MLA.W           R0, R0, R2, R1
33A70A:  ADD.W           R4, R0, #8
33A70E:  MOV             R0, R4; this
33A710:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
33A714:  MOV             R5, R0
33A716:  MOV.W           R0, #0xFFFFFFFF; int
33A71A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33A71E:  LDR.W           R0, [R0,#0x444]
33A722:  LDRB.W          R0, [R0,#0x43]
33A726:  SUBS            R1, R5, R0; int
33A728:  CMP             R1, #1
33A72A:  BLT.W           loc_33ABC0
33A72E:  MOV             R0, R4; this
33A730:  BLX             j__ZN19CPedGroupMembership16RemoveNFollowersEi; CPedGroupMembership::RemoveNFollowers(int)
33A734:  B               loc_33ABC0
33A736:  MOV.W           R0, #0xFFFFFFFF; jumptable 003393F8 case 2293
33A73A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33A73E:  BLX             j__ZN10CPlayerPed24MakePlayerGroupDisappearEv; CPlayerPed::MakePlayerGroupDisappear(void)
33A742:  B               loc_33ABC0
33A744:  MOV.W           R0, #0xFFFFFFFF; jumptable 003393F8 case 2294
33A748:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33A74C:  BLX             j__ZN10CPlayerPed23MakePlayerGroupReappearEv; CPlayerPed::MakePlayerGroupReappear(void)
33A750:  B               loc_33ABC0
33A752:  MOV             R0, R4; jumptable 003393F8 case 2295
33A754:  MOVS            R1, #2; __int16
33A756:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A75A:  LDR.W           R0, =(ScriptParams_ptr - 0x33A766)
33A75E:  MOV.W           R2, #0x194
33A762:  ADD             R0, PC; ScriptParams_ptr
33A764:  LDR             R6, [R0]; ScriptParams
33A766:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x33A772)
33A76A:  LDRD.W          R1, R5, [R6]; int
33A76E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
33A770:  LDR             R0, [R0]; CWorld::Players ...
33A772:  MLA.W           R8, R1, R2, R0
33A776:  MOV             R0, R5; this
33A778:  BLX             j__ZN8CClothes20GetTextureDependencyEi; CClothes::GetTextureDependency(int)
33A77C:  LDR.W           R1, [R8,#8]
33A780:  ADD.W           R2, R1, R5,LSL#2
33A784:  LDR             R2, [R2,#0x28]
33A786:  STR             R2, [R6]
33A788:  LDR.W           R0, [R1,R0,LSL#2]
33A78C:  MOVS            R1, #2
33A78E:  STR             R0, [R6,#(dword_81A90C - 0x81A908)]
33A790:  MOV             R0, R4
33A792:  B               loc_33ABBC
33A794:  MOV             R0, R4; jumptable 003393F8 case 2296
33A796:  MOVS            R1, #1; __int16
33A798:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A79C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A7A8)
33A7A0:  LDR.W           R1, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x33A7AA)
33A7A4:  ADD             R0, PC; ScriptParams_ptr
33A7A6:  ADD             R1, PC; _ZN6CStats16bShowUpdateStatsE_ptr
33A7A8:  LDR             R0, [R0]; ScriptParams
33A7AA:  MOVS            R6, #0
33A7AC:  LDR             R1, [R1]; CGameLogic::bPenaltyForDeathApplies
33A7AE:  LDR             R0, [R0]
33A7B0:  CMP             R0, #0
33A7B2:  IT NE
33A7B4:  MOVNE           R0, #1
33A7B6:  STRB            R0, [R1]; CGameLogic::bPenaltyForDeathApplies
33A7B8:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A7BA:  MOV             R0, R4; jumptable 003393F8 case 2297
33A7BC:  MOVS            R1, #2
33A7BE:  B               loc_33A7C4
33A7C0:  MOV             R0, R4; jumptable 003393F8 case 2298
33A7C2:  MOVS            R1, #1; unsigned __int8
33A7C4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33A7C8:  ADD             R6, SP, #0x178+var_80
33A7CA:  MOV             R5, R0
33A7CC:  MOV             R0, R4; this
33A7CE:  MOVS            R2, #0x10; unsigned __int8
33A7D0:  MOV             R1, R6; char *
33A7D2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33A7D6:  MOV             R0, R5; char *
33A7D8:  MOV             R1, R6; char *
33A7DA:  MOVS            R2, #0x10; size_t
33A7DC:  BLX             strncmp
33A7E0:  CMP             R0, #0
33A7E2:  MOV.W           R1, #0
33A7E6:  MOV.W           R6, #0
33A7EA:  IT EQ
33A7EC:  MOVEQ           R1, #1
33A7EE:  B               loc_33A816
33A7F0:  MOV             R0, R4; jumptable 003393F8 case 2299
33A7F2:  MOVS            R1, #2; __int16
33A7F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A7F8:  LDR.W           R0, =(ScriptParams_ptr - 0x33A800)
33A7FC:  ADD             R0, PC; ScriptParams_ptr
33A7FE:  LDR             R0, [R0]; ScriptParams
33A800:  LDRB            R1, [R0,#(dword_81A90C - 0x81A908)]; int
33A802:  LDR             R0, [R0]; this
33A804:  BLX             j__ZN6CRadar22SetCoordBlipAppearanceEih; CRadar::SetCoordBlipAppearance(int,uchar)
33A808:  B               loc_33ABC0
33A80A:  MOVS            R0, #0; this
33A80C:  MOVS            R1, #0; CPed *
33A80E:  MOVS            R6, #0
33A810:  BLX             j__ZN14CConversations33IsPlayerInPositionForConversationEP4CPedb; CConversations::IsPlayerInPositionForConversation(CPed *,bool)
33A814:  MOV             R1, R0; unsigned __int8
33A816:  MOV             R0, R4; this
33A818:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33A81C:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A81E:  MOVS            R0, #0; this
33A820:  LDR.W           R1, =(ScriptParams_ptr - 0x33A828)
33A824:  ADD             R1, PC; ScriptParams_ptr
33A826:  LDR             R1, [R1]; ScriptParams
33A828:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33A82A:  CMP             R1, #0
33A82C:  BEQ.W           loc_33AAD2
33A830:  MOVS            R1, #(stderr+1); CPed *
33A832:  BLX             j__ZN14CConversations18EnableConversationEP4CPedb; CConversations::EnableConversation(CPed *,bool)
33A836:  B               loc_33ABC0
33A838:  MOVS            R0, #0; this
33A83A:  LDR.W           R1, =(ScriptParams_ptr - 0x33A842)
33A83E:  ADD             R1, PC; ScriptParams_ptr
33A840:  LDR             R1, [R1]; ScriptParams
33A842:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; float
33A844:  BLX             j__ZN11CAutomobile21UpdateMovingCollisionEf; CAutomobile::UpdateMovingCollision(float)
33A848:  B               loc_33ABC0
33A84A:  MOVS            R4, #0
33A84C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A854)
33A850:  ADD             R0, PC; ScriptParams_ptr
33A852:  LDR             R0, [R0]; ScriptParams
33A854:  LDR             R5, [R0,#(dword_81A90C - 0x81A908)]
33A856:  MOV             R0, R5
33A858:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
33A85C:  MOV             R8, R0
33A85E:  LDR             R0, [R4]
33A860:  MOV             R1, R5
33A862:  LDR.W           R2, [R0,#0x88]
33A866:  MOV             R0, R4
33A868:  BLX             R2
33A86A:  CMP             R0, #0
33A86C:  BNE.W           loc_33ABC0
33A870:  ADD.W           R0, R4, R8,LSL#2
33A874:  LDR.W           R0, [R0,#0x65C]
33A878:  CMP             R0, #0
33A87A:  BEQ.W           loc_33ABC0
33A87E:  LDR.W           R0, =(ScriptParams_ptr - 0x33A88C)
33A882:  MOV             R2, R8
33A884:  LDR             R1, [R4]
33A886:  MOV             R3, R5
33A888:  ADD             R0, PC; ScriptParams_ptr
33A88A:  MOVS            R6, #0
33A88C:  LDR             R0, [R0]; ScriptParams
33A88E:  LDR.W           R12, [R1,#0x70]
33A892:  MOVS            R1, #0
33A894:  VLDR            S0, [R0,#8]
33A898:  MOVS            R0, #1
33A89A:  STR             R0, [SP,#0x178+var_174]
33A89C:  MOV             R0, R4
33A89E:  VSTR            S0, [SP,#0x178+var_178]
33A8A2:  BLX             R12
33A8A4:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A8A6:  MOVS            R5, #0
33A8A8:  LDR.W           R0, =(ScriptParams_ptr - 0x33A8B0)
33A8AC:  ADD             R0, PC; ScriptParams_ptr
33A8AE:  LDR             R0, [R0]; ScriptParams
33A8B0:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
33A8B2:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
33A8B6:  MOV             R1, R0
33A8B8:  LDR             R0, [R5]
33A8BA:  LDR.W           R2, [R0,#0x94]
33A8BE:  MOV             R0, R5
33A8C0:  BLX             R2
33A8C2:  MOV             R1, R0; unsigned __int8
33A8C4:  MOV             R0, R4; this
33A8C6:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33A8CA:  B               loc_33ABC0
33A8CC:  MOVS            R6, #0
33A8CE:  LDR.W           R0, =(ScriptParams_ptr - 0x33A8D6)
33A8D2:  ADD             R0, PC; ScriptParams_ptr
33A8D4:  LDR             R0, [R0]; ScriptParams
33A8D6:  LDRD.W          R2, R3, [R0,#(dword_81A90C - 0x81A908)]
33A8DA:  LDR             R1, [R0,#(dword_81A914 - 0x81A908)]
33A8DC:  ADD             R0, SP, #0x178+var_108
33A8DE:  STRD.W          R2, R3, [SP,#0x178+var_108]
33A8E2:  MOV.W           R2, #0xFFFFFFFF
33A8E6:  BLX             j__ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi; CEntryExitManager::FindNearestEntryExit(CVector2D const&,float,int)
33A8EA:  LDR.W           R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x33A8F2)
33A8EE:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
33A8F0:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
33A8F2:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
33A8F4:  LDR             R2, [R1,#4]
33A8F6:  LDRSB           R2, [R2,R0]
33A8F8:  CMP             R2, #0
33A8FA:  BLT.W           loc_33AADC
33A8FE:  LDR             R1, [R1]
33A900:  RSB.W           R0, R0, R0,LSL#4
33A904:  ADD.W           R5, R1, R0,LSL#2
33A908:  B               loc_33AADE
33A90A:  MOVS            R1, #0; CPed *
33A90C:  LDR.W           R0, =(ScriptParams_ptr - 0x33A914)
33A910:  ADD             R0, PC; ScriptParams_ptr
33A912:  LDR             R0, [R0]; ScriptParams
33A914:  LDRD.W          R2, R3, [R0,#(dword_81A90C - 0x81A908)]; float
33A918:  VLDR            S0, [R0,#0xC]
33A91C:  MOVS            R0, #1
33A91E:  STRD.W          R6, R0, [SP,#0x178+var_174]; bool
33A922:  MOV             R0, R4; this
33A924:  VSTR            S0, [SP,#0x178+var_178]
33A928:  BLX             j__ZN14CRunningScript18SetCharCoordinatesEP4CPedfffbb; CRunningScript::SetCharCoordinates(CPed *,float,float,float,bool,bool)
33A92C:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A92E:  MOVS            R0, #0
33A930:  LDR.W           R1, =(ScriptParams_ptr - 0x33A93C)
33A934:  LDR.W           R2, [R0,#0x42C]
33A938:  ADD             R1, PC; ScriptParams_ptr
33A93A:  LDR             R3, [R0]
33A93C:  ORR.W           R2, R2, #0x200000
33A940:  STR.W           R2, [R0,#0x42C]
33A944:  LDR             R1, [R1]; ScriptParams
33A946:  LDRD.W          R2, R5, [R1,#(dword_81A90C - 0x81A908)]
33A94A:  LDR             R1, [R1,#(dword_81A914 - 0x81A908)]
33A94C:  LDR.W           R4, [R3,#0xAC]
33A950:  MOVS            R3, #0
33A952:  CMP             R1, #0
33A954:  IT NE
33A956:  MOVNE           R1, #1
33A958:  CMP             R2, #0
33A95A:  STR             R1, [SP,#0x178+var_178]
33A95C:  MOV.W           R1, #0
33A960:  IT EQ
33A962:  MOVEQ           R1, #1
33A964:  CMP             R5, #0
33A966:  MOV.W           R2, #0
33A96A:  IT EQ
33A96C:  MOVEQ           R2, #1
33A96E:  BLX             R4
33A970:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33A972:  MOVS            R0, #0; this
33A974:  LDR             R1, =(ScriptParams_ptr - 0x33A97A)
33A976:  ADD             R1, PC; ScriptParams_ptr
33A978:  LDR             R1, [R1]; ScriptParams
33A97A:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33A97C:  CMP             R1, #0
33A97E:  BEQ.W           loc_33AB2E
33A982:  BLX             j__ZN6CPlane9SetGearUpEv; CPlane::SetGearUp(void)
33A986:  B               loc_33ABC0
33A988:  MOV             R0, R4; this
33A98A:  MOVS            R1, #2; __int16
33A98C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33A990:  LDR             R0, =(ScriptParams_ptr - 0x33A996)
33A992:  ADD             R0, PC; ScriptParams_ptr
33A994:  LDR             R0, [R0]; ScriptParams
33A996:  LDRD.W          R1, R0, [R0]
33A99A:  STRD.W          R1, R0, [SP,#0x178+var_178]; char *
33A99E:  ADD.W           R3, SP, #0x178+var_112; char *
33A9A2:  UXTB.W          R0, R10; this
33A9A6:  UXTB.W          R1, R9; unsigned __int8
33A9AA:  UXTB.W          R2, R8; unsigned __int8
33A9AE:  BLX             j__ZN11CMenuSystem27InsertOneMenuItemWithNumberEhhhPcii; CMenuSystem::InsertOneMenuItemWithNumber(uchar,uchar,uchar,char *,int,int)
33A9B2:  B               loc_33ABC0
33A9B4:  MOV.W           R10, #0
33A9B8:  LDR.W           R0, [R10,#0x14]
33A9BC:  ADD.W           R1, R0, #0x30 ; '0'
33A9C0:  CMP             R0, #0
33A9C2:  IT EQ
33A9C4:  ADDEQ.W         R1, R10, #4
33A9C8:  CMP.W           R10, #0
33A9CC:  VLDR            D16, [R1]
33A9D0:  LDR             R0, [R1,#8]
33A9D2:  STR             R0, [SP,#0x178+var_78]
33A9D4:  VSTR            D16, [SP,#0x178+var_80]
33A9D8:  BEQ             loc_33A9FA
33A9DA:  LDR.W           R0, [R10,#0x440]; this
33A9DE:  BLX             j__ZNK16CPedIntelligence14GetEffectInUseEv; CPedIntelligence::GetEffectInUse(void)
33A9E2:  CMP.W           R11, #0
33A9E6:  BNE             loc_33AA06
33A9E8:  MOV.W           R11, #0xFFFFFFFF
33A9EC:  B               loc_33AA22
33A9EE:  MOV.W           R5, #0xFFFFFFFF
33A9F2:  B               loc_33AB82
33A9F4:  STRD.W          R10, R5, [SP,#0x178+var_80]
33A9F8:  STR             R6, [SP,#0x178+var_78]
33A9FA:  MOV.W           R10, #0
33A9FE:  MOVS            R0, #0
33AA00:  CMP.W           R11, #0
33AA04:  BEQ             loc_33A9E8
33AA06:  CMP.W           R11, #0xFFFFFFFF
33AA0A:  BGT             loc_33AA22
33AA0C:  LDR             R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33AA16)
33AA0E:  RSB.W           R2, R11, #0
33AA12:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33AA14:  RSB.W           R2, R2, R2,LSL#3
33AA18:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
33AA1A:  ADD.W           R1, R1, R2,LSL#2
33AA1E:  LDR.W           R11, [R1,#0x18]
33AA22:  VMOV            R1, S16; CVector *
33AA26:  ADD             R3, SP, #0x178+var_50
33AA28:  MOVS            R5, #0
33AA2A:  MOVS            R6, #1
33AA2C:  STR             R5, [SP,#0x178+var_50]
33AA2E:  ADD             R2, SP, #0x178+var_120
33AA30:  STR             R5, [SP,#0x178+var_120]
33AA32:  STRD.W          R8, R6, [SP,#0x178+var_178]; int
33AA36:  STRD.W          R0, R3, [SP,#0x178+var_170]; bool
33AA3A:  ADD             R0, SP, #0x178+var_80; this
33AA3C:  STR             R2, [SP,#0x178+var_168]; C2dEffect **
33AA3E:  MOV             R2, R11; float
33AA40:  MOVS            R3, #5; int
33AA42:  BLX             j__ZN17CAttractorScanner25GetClosestAttractorOfTypeERK7CVectorfiiPKcbPK9C2dEffectRPS5_RP7CEntity; CAttractorScanner::GetClosestAttractorOfType(CVector const&,float,int,int,char const*,bool,C2dEffect const*,C2dEffect*&,CEntity *&)
33AA46:  LDR             R0, [SP,#0x178+var_50]
33AA48:  CMP             R0, #0
33AA4A:  BEQ.W           loc_33AB54
33AA4E:  LDRB.W          R0, [R4,#0xE9]
33AA52:  CMP             R0, #0xFF
33AA54:  BEQ             loc_33AB34
33AA56:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x33AA5C)
33AA58:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
33AA5A:  LDR             R1, [R0]; CRunningScript **
33AA5C:  MOV             R0, R4; this
33AA5E:  BLX             j__ZN14CRunningScript20RemoveScriptFromListEPPS_; CRunningScript::RemoveScriptFromList(CRunningScript**)
33AA62:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x33AA68)
33AA64:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
33AA66:  LDR             R1, [R0]; CRunningScript **
33AA68:  MOV             R0, R4; this
33AA6A:  BLX             j__ZN14CRunningScript15AddScriptToListEPPS_; CRunningScript::AddScriptToList(CRunningScript**)
33AA6E:  MOV             R0, R4; this
33AA70:  BLX             j__ZN14CRunningScript18ShutdownThisScriptEv; CRunningScript::ShutdownThisScript(void)
33AA74:  ADD             R4, SP, #0x178+var_108
33AA76:  LDR             R2, [SP,#0x178+var_120]; this
33AA78:  LDR             R1, [SP,#0x178+var_50]; int
33AA7A:  MOVS            R3, #1
33AA7C:  MOV             R0, R4; int
33AA7E:  MOVS            R6, #1
33AA80:  BLX             j__ZN15CEventAttractorC2EP9C2dEffectP7CEntityh_0; CEventAttractor::CEventAttractor(C2dEffect *,CEntity *,uchar)
33AA84:  MOVS            R0, #0xE9
33AA86:  MOV             R1, R4; CEvent *
33AA88:  STRH.W          R0, [SP,#0x178+var_FE]
33AA8C:  MOVS            R2, #1; bool
33AA8E:  LDR.W           R0, [R10,#0x440]
33AA92:  ADDS            R0, #0x68 ; 'h'; this
33AA94:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
33AA98:  LDR.W           R0, [R10,#0x440]
33AA9C:  LDR             R1, [SP,#0x178+var_50]
33AA9E:  BLX             j__ZN16CPedIntelligence14SetEffectInUseEP9C2dEffect; CPedIntelligence::SetEffectInUse(C2dEffect *)
33AAA2:  MOV             R0, R4; this
33AAA4:  BLX             j__ZN15CEventAttractorD2Ev_0; CEventAttractor::~CEventAttractor()
33AAA8:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AAAA:  MOVS            R0, #0; this
33AAAC:  MOVS            R6, #0
33AAAE:  BLX             j__ZN10C3dMarkers11ForceRenderEh; C3dMarkers::ForceRender(uchar)
33AAB2:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AAB4:  MOVS            R0, #0; this
33AAB6:  MOVS            R6, #0
33AAB8:  BLX             j__ZN12CPostEffects23ScriptNightVisionSwitchEb; CPostEffects::ScriptNightVisionSwitch(bool)
33AABC:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AABE:  MOVS            R0, #0; this
33AAC0:  MOVS            R6, #0
33AAC2:  BLX             j__ZN12CPostEffects26ScriptInfraredVisionSwitchEb; CPostEffects::ScriptInfraredVisionSwitch(bool)
33AAC6:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AAC8:  LDR             R0, =(ScriptParams_ptr - 0x33AAD2)
33AACA:  MOV.W           R5, #0xFFFFFFFF
33AACE:  ADD             R0, PC; ScriptParams_ptr
33AAD0:  B               loc_33ABB4
33AAD2:  MOVS            R1, #0; CPed *
33AAD4:  MOVS            R6, #0
33AAD6:  BLX             j__ZN14CConversations18EnableConversationEP4CPedb; CConversations::EnableConversation(CPed *,bool)
33AADA:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AADC:  MOVS            R5, #0
33AADE:  LDR             R0, [R5,#0x38]
33AAE0:  MOV             R4, R5
33AAE2:  CMP             R0, #0
33AAE4:  ITT NE
33AAE6:  STRNE           R5, [R0,#0x38]
33AAE8:  MOVNE           R4, R0
33AAEA:  LDRB.W          R0, [R4,#0x32]
33AAEE:  STRB.W          R0, [R6,#0x33]
33AAF2:  LDRB.W          R0, [R4,#0x32]
33AAF6:  CMP             R0, #0
33AAF8:  IT NE
33AAFA:  MOVNE           R0, R5
33AAFC:  STR.W           R0, [R6,#0x794]
33AB00:  MOV             R0, R6; this
33AB02:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
33AB06:  MOVS            R6, #0
33AB08:  CMP             R0, #1
33AB0A:  BNE             loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AB0C:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x33AB12)
33AB0E:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
33AB10:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
33AB12:  STR             R6, [R0]; CEntryExitManager::ms_entryExitStackPosn
33AB14:  MOV             R0, R5; this
33AB16:  BLX             j__ZN17CEntryExitManager19AddEntryExitToStackEP10CEntryExit; CEntryExitManager::AddEntryExitToStack(CEntryExit *)
33AB1A:  LDRB.W          R0, [R4,#0x33]
33AB1E:  CMP             R0, #0
33AB20:  BEQ             loc_33ABE6
33AB22:  SUBS            R0, #1; this
33AB24:  MOVS            R1, #0; int
33AB26:  MOVS            R6, #0
33AB28:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
33AB2C:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33AB2E:  BLX             j__ZN6CPlane11SetGearDownEv; CPlane::SetGearDown(void)
33AB32:  B               loc_33ABC0
33AB34:  MOVS            R0, #dword_24; this
33AB36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33AB3A:  LDR             R2, [SP,#0x178+var_120]
33AB3C:  MOV             R5, R0
33AB3E:  LDR             R1, [SP,#0x178+var_50]
33AB40:  BLX             j__ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity; CTaskComplexUseEffect::CTaskComplexUseEffect(C2dEffect *,CEntity *)
33AB44:  MOV             R0, R4; this
33AB46:  MOV             R1, R9; int
33AB48:  MOV             R2, R5; CTask *
33AB4A:  MOV.W           R3, #0x8A0; int
33AB4E:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33AB52:  MOVS            R5, #1
33AB54:  MOV             R0, R4
33AB56:  MOV             R1, R5
33AB58:  B               loc_33A8C6
33AB5A:  MOVS            R0, #0; this
33AB5C:  MOVS            R1, #2; unsigned __int8
33AB5E:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
33AB62:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x33AB68)
33AB64:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
33AB66:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
33AB68:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
33AB6A:  ADDS            R1, #1
33AB6C:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
33AB6E:  LDRB.W          R0, [R4,#0xE6]
33AB72:  CBZ             R0, loc_33AB82
33AB74:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33AB7E)
33AB76:  MOV             R1, R5; int
33AB78:  MOVS            R2, #2; unsigned __int8
33AB7A:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33AB7C:  LDR             R0, [R0]; this
33AB7E:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
33AB82:  LDR             R0, =(ScriptParams_ptr - 0x33AB88)
33AB84:  ADD             R0, PC; ScriptParams_ptr
33AB86:  B               loc_33ABB4
33AB88:  MOVS            R0, #0; this
33AB8A:  MOVS            R1, #2; unsigned __int8
33AB8C:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
33AB90:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x33AB96)
33AB92:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
33AB94:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
33AB96:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
33AB98:  ADDS            R1, #1
33AB9A:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
33AB9C:  LDRB.W          R0, [R4,#0xE6]
33ABA0:  CBZ             R0, loc_33ABB0
33ABA2:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33ABAC)
33ABA4:  MOV             R1, R5; int
33ABA6:  MOVS            R2, #2; unsigned __int8
33ABA8:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33ABAA:  LDR             R0, [R0]; this
33ABAC:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
33ABB0:  LDR             R0, =(ScriptParams_ptr - 0x33ABB6)
33ABB2:  ADD             R0, PC; ScriptParams_ptr
33ABB4:  LDR             R0, [R0]; ScriptParams
33ABB6:  STR             R5, [R0]
33ABB8:  MOV             R0, R4; this
33ABBA:  MOVS            R1, #1; __int16
33ABBC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33ABC0:  MOVS            R6, #0
33ABC2:  LDR             R0, =(__stack_chk_guard_ptr - 0x33ABCA); jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
33ABC4:  LDR             R1, [SP,#0x178+var_44]
33ABC6:  ADD             R0, PC; __stack_chk_guard_ptr
33ABC8:  LDR             R0, [R0]; __stack_chk_guard
33ABCA:  LDR             R0, [R0]
33ABCC:  SUBS            R0, R0, R1
33ABCE:  ITTTT EQ
33ABD0:  SXTBEQ          R0, R6
33ABD2:  ADDEQ           SP, SP, #0x138
33ABD4:  VPOPEQ          {D8-D11}
33ABD8:  ADDEQ           SP, SP, #4
33ABDA:  ITT EQ
33ABDC:  POPEQ.W         {R8-R11}
33ABE0:  POPEQ           {R4-R7,PC}
33ABE2:  BLX             __stack_chk_fail
33ABE6:  MOVS            R0, #0; this
33ABE8:  MOVS            R6, #0
33ABEA:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
33ABEE:  B               loc_33ABC2; jumptable 003393F8 cases 2201,2202,2205,2209,2218,2222,2224,2252-2255,2261
