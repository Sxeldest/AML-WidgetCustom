; =========================================================
; Game Engine Function: _ZN12CEventDamage17ComputeDamageAnimEP4CPedb
; Address            : 0x37327C - 0x373A2A
; =========================================================

37327C:  PUSH            {R4-R7,LR}
37327E:  ADD             R7, SP, #0xC
373280:  PUSH.W          {R8-R11}
373284:  SUB             SP, SP, #4
373286:  VPUSH           {D8-D10}
37328A:  SUB             SP, SP, #0x20
37328C:  MOV             R8, R1
37328E:  MOV             R9, R0
373290:  LDR.W           R1, [R8,#0x484]
373294:  LDR.W           R0, [R8,#0x490]
373298:  TST.W           R1, #0x100
37329C:  ITT NE
37329E:  LDRNE.W         R1, [R8,#0x590]
3732A2:  CMPNE           R1, #0
3732A4:  BNE             loc_373308
3732A6:  LDR.W           R1, [R9,#0x18]
3732AA:  VMOV.F32        S18, #1.0
3732AE:  MOVS            R6, #0
3732B0:  LDR.W           R5, [R8,#0x450]
3732B4:  SUBS            R1, #0x18
3732B6:  ADDW            R11, R8, #0x484
3732BA:  CMP             R1, #9
3732BC:  MOV.W           R4, #0
3732C0:  ITTTT LS
3732C2:  BFCLS.W         R1, #0xA, #0x16
3732C6:  MOVWLS          R3, #0x20F
3732CA:  LSRLS.W         R1, R3, R1
3732CE:  ANDLS.W         R6, R1, #1
3732D2:  LSLS            R0, R0, #0x1D
3732D4:  LDR.W           R1, [R9,#0x10]
3732D8:  IT PL
3732DA:  MOVPL           R4, #1
3732DC:  MOV.W           R10, #0
3732E0:  STR             R2, [SP,#0x58+var_48]
3732E2:  CMP             R1, #0
3732E4:  STR             R5, [SP,#0x58+var_54]
3732E6:  BEQ             loc_37333E
3732E8:  LDRB.W          R0, [R1,#0x3A]
3732EC:  AND.W           R0, R0, #7
3732F0:  CMP             R0, #3
3732F2:  BNE             loc_373342
3732F4:  LDR.W           R0, [R1,#0x440]; this
3732F8:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
3732FC:  MOV             R10, R0
3732FE:  CMP.W           R10, #0
373302:  BEQ             loc_37334A
373304:  MOVS            R5, #0
373306:  B               loc_373358
373308:  LDR.W           R0, [R9,#0x18]
37330C:  MOVS            R1, #1
37330E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
373312:  LDR             R1, [R0]
373314:  CBNZ            R1, loc_373322
373316:  LDR.W           R1, [R9,#0x18]
37331A:  CMP             R1, #2
37331C:  BCC             loc_373322
37331E:  CMP             R1, #0x2E ; '.'
373320:  BNE             loc_37332A
373322:  LDRSH.W         R0, [R0,#0x22]
373326:  CMP             R0, #0x33 ; '3'
373328:  BLT             loc_373336
37332A:  LDRB.W          R0, [R9,#0x21]
37332E:  ORR.W           R0, R0, #2
373332:  STRB.W          R0, [R9,#0x21]
373336:  MOVS            R0, #0xBF
373338:  STR.W           R0, [R9,#0x28]
37333C:  B               loc_3737DC
37333E:  MOVS            R5, #0
373340:  B               loc_373386
373342:  MOV.W           R10, #0
373346:  MOVS            R5, #0
373348:  B               loc_373386
37334A:  LDR.W           R0, [R9,#0x10]
37334E:  LDR.W           R0, [R0,#0x440]; this
373352:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
373356:  MOV             R5, R0
373358:  LDR.W           R0, [R9,#0x10]
37335C:  LDR.W           R0, [R0,#0x444]
373360:  CBZ             R0, loc_373386
373362:  LDRB.W          R0, [R0,#0x34]
373366:  LSLS            R0, R0, #0x1E
373368:  BMI             loc_373382
37336A:  MOVS            R0, #4
37336C:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
373370:  VMOV.F32        S0, #0.5
373374:  VMOV            S2, R0
373378:  VMUL.F32        S2, S2, S0
37337C:  VADD.F32        S18, S2, S0
373380:  B               loc_373386
373382:  VMOV.F32        S18, #2.0
373386:  MOVS            R0, #0
373388:  ADD             R1, SP, #0x58+var_44
37338A:  STRD.W          R0, R0, [SP,#0x58+var_44]
37338E:  MOVS            R2, #5
373390:  STR             R0, [SP,#0x58+var_3C]
373392:  MOV             R0, R8; this
373394:  MOVS            R3, #0
373396:  ANDS            R4, R6
373398:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
37339C:  LDR.W           R0, [R8,#0x440]
3733A0:  ADDS            R0, #4; this
3733A2:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3733A6:  MOV             R6, R0
3733A8:  LDR.W           R0, [R8,#0x14]
3733AC:  ADD.W           R1, R8, #4
3733B0:  VLDR            S0, [SP,#0x58+var_3C]
3733B4:  CMP             R0, #0
3733B6:  STR             R1, [SP,#0x58+var_50]
3733B8:  IT NE
3733BA:  ADDNE.W         R1, R0, #0x30 ; '0'
3733BE:  VLDR            S2, [R1,#8]
3733C2:  VCMPE.F32       S0, S2
3733C6:  VMRS            APSR_nzcv, FPSCR
3733CA:  BGE             loc_373418
3733CC:  MOV             R0, R8; this
3733CE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3733D2:  CBZ             R6, loc_373418
3733D4:  CBNZ            R0, loc_373418
3733D6:  LDR             R0, [R6]
3733D8:  LDR             R1, [R0,#0x14]
3733DA:  MOV             R0, R6
3733DC:  BLX             R1
3733DE:  CMP             R0, #0xCF
3733E0:  BEQ             loc_3733EE
3733E2:  LDR             R0, [R6]
3733E4:  LDR             R1, [R0,#0x14]
3733E6:  MOV             R0, R6
3733E8:  BLX             R1
3733EA:  CMP             R0, #0xCD
3733EC:  BNE             loc_373418
3733EE:  LDRB.W          R0, [R9,#0x21]
3733F2:  MOV.W           R1, #0x800
3733F6:  ORR.W           R0, R0, #2
3733FA:  STRB.W          R0, [R9,#0x21]
3733FE:  LDR.W           R0, [R8,#0x18]
373402:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
373406:  MOVS            R1, #0x24 ; '$'
373408:  CMP             R0, #0
37340A:  IT NE
37340C:  MOVNE           R1, #0x27 ; '''
37340E:  VLDR            S16, =0.0
373412:  STR.W           R1, [R9,#0x28]
373416:  B               loc_3734E8
373418:  LDR.W           R0, [R9,#0x1C]
37341C:  VLDR            S16, =0.0
373420:  CMP             R0, #3
373422:  BNE             loc_3734E8
373424:  CBZ             R5, loc_373438
373426:  LDRB            R0, [R5,#0x10]
373428:  CMP             R0, #5
37342A:  BNE             loc_373438
37342C:  LDRB.W          R6, [R9,#0x20]
373430:  CMP             R6, #0
373432:  IT NE
373434:  MOVNE           R6, #1
373436:  B               loc_37343E
373438:  CMP             R4, #1
37343A:  BNE             loc_37344C
37343C:  MOVS            R6, #1
37343E:  MOV             R0, R8; this
373440:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
373444:  EOR.W           R0, R0, #1
373448:  ANDS            R0, R6
37344A:  B               loc_37344E
37344C:  MOVS            R0, #0
37344E:  LDR.W           R1, [R11]
373452:  MOV.W           R3, #0x4000000
373456:  LDR.W           R2, [R11,#0xC]
37345A:  ANDS            R1, R3
37345C:  MOVS            R3, #4
37345E:  ANDS            R2, R3
373460:  ORRS            R1, R2
373462:  BEQ             loc_3734C2
373464:  LDR.W           R0, [R9,#0x18]
373468:  CMP             R0, #8
37346A:  BGT             loc_37348C
37346C:  VMOV.F32        S0, #15.0
373470:  ADDW            R0, R8, #0x544
373474:  VLDR            S2, [R0]
373478:  VCMPE.F32       S2, S0
37347C:  VMRS            APSR_nzcv, FPSCR
373480:  BGE             loc_3734A2
373482:  VMOV.F32        S0, #5.0
373486:  VMUL.F32        S16, S18, S0
37348A:  B               loc_3734DC
37348C:  CMP             R0, #0x36 ; '6'
37348E:  BNE             loc_3734A2
373490:  LDR.W           R0, [R9,#0x10]
373494:  CBZ             R0, loc_3734A2
373496:  LDRB.W          R0, [R0,#0x3A]
37349A:  AND.W           R0, R0, #7
37349E:  CMP             R0, #4
3734A0:  BEQ             loc_3734DC
3734A2:  CMP.W           R10, #0
3734A6:  BEQ             loc_3734E8
3734A8:  LDRB.W          R0, [R10,#0x25]
3734AC:  CMP             R0, #4
3734AE:  BNE             loc_3734E8
3734B0:  MOV             R0, R8; this
3734B2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3734B6:  CBNZ            R0, loc_3734E8
3734B8:  LDR.W           R0, [R8,#0x450]
3734BC:  CMP             R0, #5
3734BE:  BGE             loc_3734DC
3734C0:  B               loc_3734E8
3734C2:  LDR.W           R1, [R8,#0x100]
3734C6:  CMP             R1, #0
3734C8:  IT EQ
3734CA:  EORSEQ.W        R0, R0, #1
3734CE:  BNE             loc_373464
3734D0:  LDR.W           R0, [R9,#0x10]
3734D4:  CMP             R0, #0
3734D6:  BEQ             loc_373464
3734D8:  VMOV.F32        S16, #5.0
3734DC:  LDRB.W          R0, [R9,#0x21]
3734E0:  ORR.W           R0, R0, #2
3734E4:  STRB.W          R0, [R9,#0x21]
3734E8:  LDRB.W          R0, [R9,#0x21]
3734EC:  LDRB.W          R1, [R9,#0x20]
3734F0:  TST.W           R0, #2
3734F4:  STR.W           R11, [SP,#0x58+var_4C]
3734F8:  BEQ             loc_37353C
3734FA:  MOV.W           R11, #0
3734FE:  CMP.W           R10, #0
373502:  BEQ.W           loc_3736E8
373506:  CMP             R1, #0
373508:  BNE.W           loc_3736E8
37350C:  LDRSB.W         R2, [R10,#0x24]
373510:  MOVS            R6, #0x10
373512:  LDR.W           R3, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x373520)
373516:  SUBS            R2, #4
373518:  LDRSB.W         R1, [R10,#0x25]
37351C:  ADD             R3, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
37351E:  IT LT
373520:  MOVLT           R2, #0
373522:  ADD.W           R2, R2, R2,LSL#4
373526:  LDR             R3, [R3]; CTaskSimpleFight::m_aComboData ...
373528:  LSLS            R6, R1
37352A:  ADD.W           R2, R3, R2,LSL#3
37352E:  LDRH.W          R2, [R2,#(word_9FD4E4 - 0x9FD460)]
373532:  TST             R6, R2
373534:  BEQ             loc_37360E
373536:  LDR.W           R11, [SP,#0x58+var_4C]
37353A:  MOVS            R1, #0
37353C:  CMP.W           R10, #0
373540:  AND.W           R2, R0, #0xFD
373544:  STRB.W          R2, [R9,#0x21]
373548:  BEQ             loc_3735BA
37354A:  CBNZ            R1, loc_3735BA
37354C:  LDRSB.W         R2, [R10,#0x24]
373550:  CMP             R2, #4
373552:  BLT             loc_3735BA
373554:  LDRSB.W         R3, [R10,#0x25]
373558:  CMP             R3, #2
37355A:  BGT             loc_3735BA
37355C:  LDR.W           R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x37356E)
373560:  ADD.W           R2, R2, R2,LSL#4
373564:  MOVW            R3, #0xFDE0
373568:  MOVS            R6, #0x10
37356A:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
37356C:  MOVT            R3, #0xFFFF
373570:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
373572:  ADD.W           R2, R1, R2,LSL#3
373576:  LDR             R2, [R2,R3]
373578:  MOV.W           R3, #0x41800000
37357C:  STR.W           R2, [R9,#0x24]
373580:  LDRSB.W         R2, [R10,#0x25]
373584:  STR.W           R3, [R9,#0x2C]
373588:  ADDS            R2, #0xDB
37358A:  STR.W           R2, [R9,#0x28]
37358E:  LDRSB.W         R3, [R10,#0x24]
373592:  LDRSB.W         R2, [R10,#0x25]
373596:  SUBS            R3, #4
373598:  IT LT
37359A:  MOVLT           R3, #0
37359C:  ADD.W           R3, R3, R3,LSL#4
3735A0:  LSL.W           R2, R6, R2
3735A4:  ADD.W           R1, R1, R3,LSL#3
3735A8:  LDRH.W          R1, [R1,#(word_9FD4E4 - 0x9FD460)]
3735AC:  TST             R2, R1
3735AE:  ITT NE
3735B0:  ORRNE.W         R0, R0, #2
3735B4:  STRBNE.W        R0, [R9,#0x21]
3735B8:  B               loc_3736E4
3735BA:  CBZ             R5, loc_3735C6
3735BC:  CMP             R1, #0
3735BE:  ITT EQ
3735C0:  LDRBEQ          R0, [R5,#0x10]
3735C2:  CMPEQ           R0, #5
3735C4:  BEQ             loc_3735F6
3735C6:  LDR.W           R0, [R9,#0x18]
3735CA:  SUBS            R0, #0x16
3735CC:  CMP             R0, #0xB
3735CE:  BHI             loc_3736AC
3735D0:  CMP             R4, #1
3735D2:  BNE             loc_3735DE
3735D4:  MOV             R0, R8; this
3735D6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3735DA:  CMP             R0, #1
3735DC:  BNE             loc_3736AC
3735DE:  MOV             R0, R8; this
3735E0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3735E4:  CMP             R0, #1
3735E6:  BNE             loc_37362A
3735E8:  LDR             R0, [SP,#0x58+var_54]
3735EA:  CMP             R0, #1
3735EC:  BGT             loc_373646
3735EE:  EORS.W          R0, R4, #1
3735F2:  BEQ             loc_373630
3735F4:  B               loc_373646
3735F6:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x373608)
3735FA:  MOVS            R1, #0xDC
3735FC:  MOV.W           R2, #0x41800000
373600:  ADD.W           R3, R9, #0x24 ; '$'
373604:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
373606:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
373608:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData
37360A:  STM             R3!, {R0-R2}
37360C:  B               loc_3736E4
37360E:  CMP             R1, #2
373610:  BGT             loc_373624
373612:  LDR.W           R11, [SP,#0x58+var_4C]
373616:  MOV.W           R3, #0x1000
37361A:  LSLS            R3, R1
37361C:  MOVS            R1, #0
37361E:  TST             R3, R2
373620:  BNE.W           loc_37353C
373624:  MOV.W           R11, #0
373628:  B               loc_3736E8
37362A:  LDR             R0, [SP,#0x58+var_54]
37362C:  CMP             R0, #1
37362E:  BGT             loc_373646
373630:  LDR.W           R0, [R11]
373634:  MOV.W           R2, #0x4000000
373638:  LDR.W           R1, [R11,#0xC]
37363C:  ANDS            R0, R2
37363E:  MOVS            R2, #4
373640:  ANDS            R1, R2
373642:  ORRS            R0, R1
373644:  BEQ             loc_3736AC
373646:  LDRB.W          R1, [R9,#0x20]
37364A:  MOV.W           R0, #0x41000000
37364E:  MOVS            R2, #0
373650:  ADDS            R1, #0x1C
373652:  STRD.W          R2, R1, [R9,#0x24]
373656:  STR.W           R0, [R9,#0x2C]
37365A:  MOV             R0, R8; this
37365C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
373660:  CMP             R0, #1
373662:  BNE             loc_3736E4
373664:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x373670)
373668:  LDR.W           R0, [R8,#0x444]
37366C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37366E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
373670:  LDR             R2, [R0,#0x28]
373672:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
373674:  CMP             R1, R2
373676:  BLS             loc_3736DE
373678:  LDR.W           R2, [R8,#0x44C]
37367C:  CMP             R2, #0x32 ; '2'
37367E:  BEQ             loc_3736DE
373680:  VMOV            S0, R1
373684:  ADR.W           R2, dword_373A50
373688:  VCVT.F32.U32    S0, S0
37368C:  LDR.W           R1, [R9,#0x18]
373690:  CMP             R1, #0x1F
373692:  IT EQ
373694:  ADDEQ           R2, #4
373696:  VLDR            S2, [R2]
37369A:  VADD.F32        S0, S2, S0
37369E:  VCVT.U32.F32    S0, S0
3736A2:  VSTR            S0, [R0,#0x28]
3736A6:  B               loc_3736E4
3736A8:  DCFS 0.0
3736AC:  MOV             R0, R8; this
3736AE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3736B2:  CMP             R0, #1
3736B4:  BNE.W           loc_373802
3736B8:  LDR.W           R0, [R9,#0x18]
3736BC:  CMP             R0, #0x16
3736BE:  BLT.W           loc_373806
3736C2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3736CC)
3736C4:  LDR.W           R0, [R8,#0x444]
3736C8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3736CA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3736CC:  LDR             R2, [R0,#0x28]
3736CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3736D0:  CMP             R1, R2
3736D2:  BLS             loc_3736DE
3736D4:  LDR.W           R2, [R8,#0x44C]
3736D8:  CMP             R2, #0x32 ; '2'
3736DA:  BNE.W           loc_3737EA
3736DE:  MOVS            R0, #0xBF
3736E0:  STR.W           R0, [R9,#0x28]
3736E4:  MOV.W           R11, #1
3736E8:  LDR             R0, [SP,#0x58+var_48]
3736EA:  CMP             R0, #1
3736EC:  BNE             loc_373726
3736EE:  LDR.W           R0, [R8,#0x440]
3736F2:  ADDS            R0, #4; this
3736F4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3736F8:  CBZ             R0, loc_373726
3736FA:  LDR.W           R0, [R8,#0x440]
3736FE:  ADDS            R0, #4; this
373700:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
373704:  LDR             R1, [R0]
373706:  MOVS            R2, #1
373708:  MOV             R3, R9
37370A:  LDR             R6, [R1,#0x1C]
37370C:  MOV             R1, R8
37370E:  BLX             R6
373710:  CBNZ            R0, loc_373726
373712:  LDRB.W          R1, [R9,#0x21]
373716:  MOVS            R0, #0xC0
373718:  MOVS            R2, #0
37371A:  STRD.W          R2, R0, [R9,#0x24]
37371E:  AND.W           R0, R1, #0xFD
373722:  STRB.W          R0, [R9,#0x21]
373726:  LDRB.W          R0, [R9,#0x21]
37372A:  LSLS            R0, R0, #0x1E
37372C:  MOV.W           R0, #0
373730:  IT PL
373732:  MOVPL           R0, #1
373734:  ORRS.W          R0, R0, R11
373738:  BNE             loc_3737DC
37373A:  LDRB.W          R0, [R9,#0x20]
37373E:  VCMPE.F32       S16, #0.0
373742:  VMRS            APSR_nzcv, FPSCR
373746:  ADD.W           R0, R0, #0x18
37374A:  STR.W           R0, [R9,#0x28]
37374E:  BLE             loc_3737DC
373750:  LDR.W           R0, [R9,#0x10]
373754:  LDR.W           R1, [R8,#0x14]
373758:  LDR             R3, [SP,#0x58+var_50]
37375A:  LDR             R2, [R0,#0x14]
37375C:  CMP             R1, #0
37375E:  IT NE
373760:  ADDNE.W         R3, R1, #0x30 ; '0'
373764:  ADD.W           R1, R2, #0x30 ; '0'
373768:  CMP             R2, #0
37376A:  VLDR            S2, [R3]
37376E:  VLDR            S0, [R3,#4]
373772:  IT EQ
373774:  ADDEQ           R1, R0, #4
373776:  VLDR            S4, [R1]
37377A:  VLDR            S6, [R1,#4]
37377E:  VSUB.F32        S2, S4, S2
373782:  VSUB.F32        S0, S6, S0
373786:  VMUL.F32        S6, S2, S2
37378A:  VMUL.F32        S4, S0, S0
37378E:  VADD.F32        S4, S6, S4
373792:  VCMPE.F32       S4, #0.0
373796:  VMRS            APSR_nzcv, FPSCR
37379A:  BLE             loc_3737B2
37379C:  VSQRT.F32       S4, S4
3737A0:  VMOV.F32        S6, #1.0
3737A4:  VDIV.F32        S4, S6, S4
3737A8:  VMUL.F32        S0, S0, S4
3737AC:  VMUL.F32        S2, S2, S4
3737B0:  B               loc_3737B6
3737B2:  VMOV.F32        S2, #1.0
3737B6:  VNMUL.F32       S2, S16, S2
3737BA:  LDR             R3, [SP,#0x58+var_4C]
3737BC:  VNMUL.F32       S0, S16, S0
3737C0:  LDR             R0, [R3]
3737C2:  BIC.W           R0, R0, #3
3737C6:  STR             R0, [R3]
3737C8:  MOVS            R3, #0
3737CA:  MOV             R0, R8
3737CC:  VMOV            R1, S2
3737D0:  MOVT            R3, #0x40A0
3737D4:  VMOV            R2, S0
3737D8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
3737DC:  ADD             SP, SP, #0x20 ; ' '
3737DE:  VPOP            {D8-D10}
3737E2:  ADD             SP, SP, #4
3737E4:  POP.W           {R8-R11}
3737E8:  POP             {R4-R7,PC}
3737EA:  VMOV            S0, R1
3737EE:  VLDR            S2, =2500.0
3737F2:  VCVT.F32.U32    S0, S0
3737F6:  VADD.F32        S0, S0, S2
3737FA:  VCVT.U32.F32    S0, S0
3737FE:  VSTR            S0, [R0,#0x28]
373802:  LDR.W           R0, [R9,#0x18]
373806:  SUB.W           R1, R0, #0x16
37380A:  CMP             R1, #0x19
37380C:  BHI             loc_373830
37380E:  LDR.W           R0, [R8,#0x440]
373812:  ADDS            R0, #0x38 ; '8'; this
373814:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
373818:  MOV             R6, R0
37381A:  CBZ             R6, loc_373866
37381C:  LDR             R0, [R6]
37381E:  LDR             R1, [R0,#8]
373820:  MOV             R0, R6
373822:  BLX             R1
373824:  CMP             R0, #9
373826:  ITE EQ
373828:  LDREQ           R6, [R6,#0x28]
37382A:  MOVNE.W         R6, #0xFFFFFFFF
37382E:  B               loc_37386A
373830:  LDRB.W          R1, [R9,#0x20]
373834:  CMP             R1, #2
373836:  ADD.W           R2, R1, #0x20 ; ' '
37383A:  STR.W           R2, [R9,#0x28]
37383E:  BEQ             loc_373890
373840:  CMP             R1, #0
373842:  BNE.W           loc_3736E4
373846:  VLDR            S0, [R9,#0x34]
37384A:  VMOV.F32        S4, #20.0
37384E:  VLDR            S2, [R9,#0x38]
373852:  VADD.F32        S0, S0, S2
373856:  VCMPE.F32       S0, S4
37385A:  VMRS            APSR_nzcv, FPSCR
37385E:  BLE.W           loc_3736E4
373862:  MOVS            R0, #0x25 ; '%'
373864:  B               loc_3736E0
373866:  MOV.W           R6, #0xFFFFFFFF
37386A:  LDR.W           R0, [R9,#0x1C]
37386E:  SUBS            R0, #3; switch 6 cases
373870:  CMP             R0, #5
373872:  BHI             def_373874; jumptable 00373874 default case
373874:  TBB.W           [PC,R0]; switch jump
373878:  DCB 3; jump table for switch statement
373879:  DCB 3
37387A:  DCB 0x15
37387B:  DCB 0x3E
37387C:  DCB 0x96
37387D:  DCB 0x67
37387E:  LDRSB.W         R0, [R9,#0x20]; jumptable 00373874 cases 3,4
373882:  CMP             R0, #4
373884:  BCS.W           loc_373998
373888:  ADR             R1, dword_373A38
37388A:  LDR.W           R0, [R1,R0,LSL#2]
37388E:  B               loc_3739F6
373890:  CMP             R0, #0xF
373892:  BGT.W           loc_3736E4
373896:  MOVS            R0, #0x28 ; '('
373898:  B               loc_3736E0
37389A:  LDRB.W          R0, [R9,#0x20]; jumptable 00373874 default case
37389E:  ADDS            R0, #0x20 ; ' '
3738A0:  B               loc_3736E0
3738A2:  LDRB.W          R0, [R9,#0x20]; jumptable 00373874 case 5
3738A6:  MOVS            R1, #0xAC
3738A8:  CMP             R0, #1
3738AA:  IT EQ
3738AC:  MOVEQ           R1, #0xAD
3738AE:  CMP             R0, #2
3738B0:  IT EQ
3738B2:  MOVEQ           R1, #0xAB
3738B4:  CMP             R1, R6
3738B6:  STR.W           R1, [R9,#0x28]
3738BA:  BNE.W           loc_3736E4
3738BE:  VMOV.F32        S20, #3.0
3738C2:  VLDR            S18, =0.000015259
3738C6:  MOV.W           R11, #1
3738CA:  BLX             rand
3738CE:  UXTH            R0, R0
3738D0:  VMOV            S0, R0
3738D4:  VCVT.F32.S32    S0, S0
3738D8:  VMUL.F32        S0, S0, S18
3738DC:  VMUL.F32        S0, S0, S20
3738E0:  VCVT.S32.F32    S0, S0
3738E4:  VMOV            R0, S0
3738E8:  ADDS            R0, #0xAB
3738EA:  STR.W           R0, [R9,#0x28]
3738EE:  CMP             R0, R6
3738F0:  BEQ             loc_3738CA
3738F2:  B               loc_3736E8
3738F4:  LDRB.W          R0, [R9,#0x20]; jumptable 00373874 case 6
3738F8:  MOVS            R1, #0xAF
3738FA:  CMP             R0, #3
3738FC:  IT EQ
3738FE:  MOVEQ           R1, #0xB0
373900:  CMP             R0, #2
373902:  IT EQ
373904:  MOVEQ           R1, #0xAE
373906:  CMP             R1, R6
373908:  STR.W           R1, [R9,#0x28]
37390C:  BNE.W           loc_3736E4
373910:  VMOV.F32        S20, #3.0
373914:  VLDR            S18, =0.000015259
373918:  MOV.W           R11, #1
37391C:  BLX             rand
373920:  UXTH            R0, R0
373922:  VMOV            S0, R0
373926:  VCVT.F32.S32    S0, S0
37392A:  VMUL.F32        S0, S0, S18
37392E:  VMUL.F32        S0, S0, S20
373932:  VCVT.S32.F32    S0, S0
373936:  VMOV            R0, S0
37393A:  ADDS            R0, #0xAE
37393C:  STR.W           R0, [R9,#0x28]
373940:  CMP             R0, R6
373942:  BEQ             loc_37391C
373944:  B               loc_3736E8
373946:  LDRB.W          R0, [R9,#0x20]; jumptable 00373874 case 8
37394A:  MOVS            R1, #0xB5
37394C:  CMP             R0, #3
37394E:  IT EQ
373950:  MOVEQ           R1, #0xB6
373952:  CMP             R0, #2
373954:  IT EQ
373956:  MOVEQ           R1, #0xB4
373958:  CMP             R1, R6
37395A:  STR.W           R1, [R9,#0x28]
37395E:  BNE.W           loc_3736E4
373962:  VMOV.F32        S20, #3.0
373966:  VLDR            S18, =0.000015259
37396A:  MOV.W           R11, #1
37396E:  BLX             rand
373972:  UXTH            R0, R0
373974:  VMOV            S0, R0
373978:  VCVT.F32.S32    S0, S0
37397C:  VMUL.F32        S0, S0, S18
373980:  VMUL.F32        S0, S0, S20
373984:  VCVT.S32.F32    S0, S0
373988:  VMOV            R0, S0
37398C:  ADDS            R0, #0xB4
37398E:  STR.W           R0, [R9,#0x28]
373992:  CMP             R0, R6
373994:  BEQ             loc_37396E
373996:  B               loc_3736E8
373998:  LDR.W           R0, [R9,#0x28]
37399C:  CMP             R0, R6
37399E:  BNE.W           loc_3736E4
3739A2:  B               loc_373A00
3739A4:  LDRB.W          R0, [R9,#0x20]; jumptable 00373874 case 7
3739A8:  MOVS            R1, #0xB2
3739AA:  CMP             R0, #1
3739AC:  IT EQ
3739AE:  MOVEQ           R1, #0xB3
3739B0:  CMP             R0, #2
3739B2:  IT EQ
3739B4:  MOVEQ           R1, #0xB1
3739B6:  CMP             R1, R6
3739B8:  STR.W           R1, [R9,#0x28]
3739BC:  BNE.W           loc_3736E4
3739C0:  VMOV.F32        S20, #3.0
3739C4:  VLDR            S18, =0.000015259
3739C8:  MOV.W           R11, #1
3739CC:  BLX             rand
3739D0:  UXTH            R0, R0
3739D2:  VMOV            S0, R0
3739D6:  VCVT.F32.S32    S0, S0
3739DA:  VMUL.F32        S0, S0, S18
3739DE:  VMUL.F32        S0, S0, S20
3739E2:  VCVT.S32.F32    S0, S0
3739E6:  VMOV            R0, S0
3739EA:  ADDS            R0, #0xB1
3739EC:  STR.W           R0, [R9,#0x28]
3739F0:  CMP             R0, R6
3739F2:  BEQ             loc_3739CC
3739F4:  B               loc_3736E8
3739F6:  STR.W           R0, [R9,#0x28]
3739FA:  CMP             R0, R6
3739FC:  BNE.W           loc_3736E4
373A00:  BLX             rand
373A04:  UXTH            R0, R0
373A06:  VLDR            S2, =0.000015259
373A0A:  VMOV            S0, R0
373A0E:  VMOV.F32        S4, #4.0
373A12:  VCVT.F32.S32    S0, S0
373A16:  VMUL.F32        S0, S0, S2
373A1A:  VMUL.F32        S0, S0, S4
373A1E:  VCVT.S32.F32    S0, S0
373A22:  VMOV            R0, S0
373A26:  ADDS            R0, #0xB7
373A28:  B               loc_3739F6
