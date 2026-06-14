; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim10ProcessPedEP4CPed
; Address            : 0x53A230 - 0x53A54A
; =========================================================

53A230:  PUSH            {R4-R7,LR}
53A232:  ADD             R7, SP, #0xC
53A234:  PUSH.W          {R8,R9,R11}
53A238:  VPUSH           {D8}
53A23C:  SUB             SP, SP, #0x68
53A23E:  MOV             R4, R0
53A240:  MOV             R5, R1
53A242:  LDR             R0, [R4,#0x3C]
53A244:  CBZ             R0, loc_53A26E
53A246:  LDR.W           R1, [R5,#0x4E0]; int
53A24A:  MOVS            R2, #3; unsigned int
53A24C:  LDR             R0, [R5,#0x18]; int
53A24E:  MOV.W           R3, #0x41000000
53A252:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
53A256:  MOV             R0, R5
53A258:  MOVS            R1, #1
53A25A:  MOVS            R6, #1
53A25C:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A260:  STR.W           R6, [R5,#0x53C]
53A264:  LDR             R0, [R4,#0x60]
53A266:  CMP             R0, #0
53A268:  BNE.W           loc_53A44A
53A26C:  B               loc_53A454
53A26E:  LDR             R0, =(_ZN15CTaskSimpleSwim14SWIM_STOP_TIMEE_ptr - 0x53A278)
53A270:  VLDR            S0, [R4,#0x58]
53A274:  ADD             R0, PC; _ZN15CTaskSimpleSwim14SWIM_STOP_TIMEE_ptr
53A276:  LDR             R0, [R0]; CTaskSimpleSwim::SWIM_STOP_TIME ...
53A278:  VLDR            S2, [R0]
53A27C:  VCMPE.F32       S0, S2
53A280:  VMRS            APSR_nzcv, FPSCR
53A284:  BGT             loc_53A2C6
53A286:  LDR.W           R0, [R5,#0x484]
53A28A:  TST.W           R0, #0x100
53A28E:  BNE             loc_53A2C6
53A290:  ADD.W           R3, R5, #0x488
53A294:  ADDW            R6, R5, #0x484
53A298:  BIC.W           R0, R0, #0x200
53A29C:  LDM             R3, {R1-R3}
53A29E:  STM.W           R6, {R0-R3}
53A2A2:  MOV             R0, R5; this
53A2A4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53A2A8:  CMP             R0, #1
53A2AA:  BNE             loc_53A33A
53A2AC:  LDR             R0, [R4,#0x5C]
53A2AE:  CMP             R0, #0
53A2B0:  ITT NE
53A2B2:  LDRHNE          R0, [R4,#0xA]
53A2B4:  CMPNE           R0, #4
53A2B6:  BNE             loc_53A3A4
53A2B8:  MOV             R0, R4; this
53A2BA:  MOV             R1, R5; CPlayerPed *
53A2BC:  BLX             j__ZN15CTaskSimpleSwim19ProcessControlInputEP10CPlayerPed; CTaskSimpleSwim::ProcessControlInput(CPlayerPed *)
53A2C0:  MOVS            R0, #0
53A2C2:  STR             R0, [R4,#0x5C]
53A2C4:  B               loc_53A49E
53A2C6:  LDR             R1, [R4,#0xC]
53A2C8:  CMP             R1, #0xBF
53A2CA:  BNE             loc_53A2D0
53A2CC:  MOVS            R6, #0
53A2CE:  B               loc_53A2D8
53A2D0:  LDR             R0, [R5,#0x18]
53A2D2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53A2D6:  MOV             R6, R0
53A2D8:  MOVS            R0, #1
53A2DA:  MOVS            R1, #1
53A2DC:  STR.W           R0, [R5,#0x53C]
53A2E0:  MOV             R0, R5
53A2E2:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A2E6:  CMP             R6, #0
53A2E8:  BEQ.W           loc_53A430
53A2EC:  LDRH            R0, [R6,#0x2C]
53A2EE:  CMP             R0, #0x80
53A2F0:  BNE             loc_53A2FC
53A2F2:  LDRH            R0, [R6,#0x2E]
53A2F4:  ORR.W           R0, R0, #8
53A2F8:  STRH            R0, [R6,#0x2E]
53A2FA:  B               loc_53A304
53A2FC:  MOVS            R0, #0xC0800000
53A302:  STR             R0, [R6,#0x1C]
53A304:  LDR             R0, [R4,#0xC]
53A306:  CMP.W           R0, #0x138
53A30A:  BEQ             loc_53A328
53A30C:  MOVW            R1, #0x137
53A310:  CMP             R0, R1
53A312:  BNE.W           loc_53A430
53A316:  MOVS            R0, #4
53A318:  MOVS            R1, #4
53A31A:  STR.W           R0, [R5,#0x53C]
53A31E:  MOV             R0, R5
53A320:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A324:  MOVS            R2, #0
53A326:  B               loc_53A432
53A328:  MOVS            R0, #6
53A32A:  MOVS            R1, #6
53A32C:  STR.W           R0, [R5,#0x53C]
53A330:  MOV             R0, R5
53A332:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A336:  MOVS            R2, #1
53A338:  B               loc_53A432
53A33A:  MOV             R0, R4; this
53A33C:  MOV             R1, R5; CPed *
53A33E:  BLX             j__ZN15CTaskSimpleSwim16ProcessControlAIEP4CPed; CTaskSimpleSwim::ProcessControlAI(CPed *)
53A342:  LDRH            R0, [R4,#0xA]
53A344:  CMP             R0, #4
53A346:  BNE.W           loc_53A52E
53A34A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53A35A)
53A34C:  MOV.W           R8, #0
53A350:  MOV.W           R9, #3
53A354:  MOVS            R1, #0
53A356:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53A358:  MOVS            R3, #0x35 ; '5'
53A35A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53A35C:  LDR             R2, [R0]; CTimer::ms_fTimeStep
53A35E:  ADD             R0, SP, #0x88+var_34
53A360:  STRD.W          R9, R8, [SP,#0x88+var_88]
53A364:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
53A368:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x53A374)
53A36A:  MOVS            R3, #0x35 ; '5'; int
53A36C:  LDR             R1, [R6]
53A36E:  ADD             R6, SP, #0x88+var_74
53A370:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
53A372:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
53A374:  LDR             R2, [R0]; int
53A376:  UBFX.W          R0, R1, #8, #1
53A37A:  STRD.W          R9, R8, [SP,#0x88+var_88]; int
53A37E:  MOVS            R1, #0; this
53A380:  STRD.W          R8, R0, [SP,#0x88+var_80]; int
53A384:  MOV             R0, R6; int
53A386:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
53A38A:  MOV             R1, R5; CPed *
53A38C:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
53A390:  CMP             R0, #1
53A392:  BNE             loc_53A466
53A394:  ADD.W           R2, R6, #0x34 ; '4'
53A398:  ADD             R0, SP, #0x88+var_34; int
53A39A:  MOV             R1, R5; this
53A39C:  MOVS            R3, #1
53A39E:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
53A3A2:  B               loc_53A46C
53A3A4:  MOV             R0, R4; this
53A3A6:  MOV             R1, R5; CPed *
53A3A8:  BLX             j__ZN15CTaskSimpleSwim16ProcessControlAIEP4CPed; CTaskSimpleSwim::ProcessControlAI(CPed *)
53A3AC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53A3B6)
53A3AE:  VLDR            S0, =50.0
53A3B2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53A3B4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53A3B6:  VLDR            S2, [R0]
53A3BA:  LDR             R0, [R4,#0x5C]
53A3BC:  VDIV.F32        S0, S2, S0
53A3C0:  VLDR            S2, =1000.0
53A3C4:  VMUL.F32        S0, S0, S2
53A3C8:  VCVT.U32.F32    S0, S0
53A3CC:  VMOV            R1, S0
53A3D0:  SUBS            R1, R0, R1
53A3D2:  MOV.W           R0, #0
53A3D6:  IT LS
53A3D8:  MOVLS           R1, R0
53A3DA:  STR             R1, [R4,#0x5C]
53A3DC:  LDR             R1, [R5,#0x14]
53A3DE:  VLDR            S0, [R4,#0x14]
53A3E2:  ADD.W           R2, R1, #0x30 ; '0'
53A3E6:  CMP             R1, #0
53A3E8:  VLDR            S2, [R4,#0x18]
53A3EC:  IT EQ
53A3EE:  ADDEQ           R2, R5, #4
53A3F0:  VLDR            S4, [R2]
53A3F4:  VLDR            S6, [R2,#4]
53A3F8:  VSUB.F32        S0, S0, S4
53A3FC:  LDR.W           R1, [R5,#0x444]
53A400:  VSUB.F32        S2, S2, S6
53A404:  VMUL.F32        S0, S0, S0
53A408:  VMUL.F32        S2, S2, S2
53A40C:  VADD.F32        S0, S0, S2
53A410:  VMOV.F32        S2, #0.5
53A414:  VSQRT.F32       S0, S0
53A418:  VSTR            S0, [R1,#0x14]
53A41C:  LDR.W           R1, [R5,#0x444]
53A420:  VLDR            S0, [R1,#0x14]
53A424:  VCMPE.F32       S0, S2
53A428:  VMRS            APSR_nzcv, FPSCR
53A42C:  BGE             loc_53A48A
53A42E:  STR             R0, [R1,#0x14]
53A430:  MOVS            R2, #3; unsigned int
53A432:  LDR.W           R1, [R5,#0x4E0]; int
53A436:  MOV.W           R3, #0x40800000
53A43A:  LDR             R0, [R5,#0x18]; int
53A43C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
53A440:  MOV             R0, R5; this
53A442:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
53A446:  LDR             R0, [R4,#0x60]; this
53A448:  CBZ             R0, loc_53A462
53A44A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
53A44E:  MOVS            R0, #0
53A450:  MOVS            R6, #1
53A452:  STR             R0, [R4,#0x60]
53A454:  MOV             R0, R6
53A456:  ADD             SP, SP, #0x68 ; 'h'
53A458:  VPOP            {D8}
53A45C:  POP.W           {R8,R9,R11}
53A460:  POP             {R4-R7,PC}
53A462:  MOVS            R6, #1
53A464:  B               loc_53A454
53A466:  MOVS            R0, #1
53A468:  STRB.W          R0, [SP,#0x88+var_36]
53A46C:  LDR.W           R0, [R5,#0x440]
53A470:  ADD             R6, SP, #0x88+var_74
53A472:  MOVS            R2, #0; bool
53A474:  ADDS            R0, #0x68 ; 'h'; this
53A476:  MOV             R1, R6; CEvent *
53A478:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53A47C:  MOV             R0, R6; this
53A47E:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
53A482:  ADD             R0, SP, #0x88+var_34; this
53A484:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
53A488:  B               loc_53A52E
53A48A:  VMOV.F32        S2, #1.0
53A48E:  VCMPE.F32       S0, S2
53A492:  VMRS            APSR_nzcv, FPSCR
53A496:  ITT GT
53A498:  MOVGT.W         R0, #0x3F800000
53A49C:  STRGT           R0, [R1,#0x14]
53A49E:  VMOV.F32        S16, #1.0
53A4A2:  LDRH            R0, [R4,#0xA]
53A4A4:  CMP             R0, #4
53A4A6:  BNE             loc_53A4D2
53A4A8:  LDR             R0, [R5,#0x18]
53A4AA:  MOV.W           R1, #0x13A
53A4AE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53A4B2:  CMP             R0, #0
53A4B4:  MOV.W           R1, #1
53A4B8:  ITTTT NE
53A4BA:  VLDRNE          S0, [R0,#0x18]
53A4BE:  VLDRNE          S2, [R0,#0x24]
53A4C2:  VMOVNE.F32      S4, #1.0
53A4C6:  VMULNE.F32      S0, S2, S0
53A4CA:  IT NE
53A4CC:  VADDNE.F32      S16, S0, S4
53A4D0:  B               loc_53A4D4
53A4D2:  MOVS            R1, #0; bool
53A4D4:  VMOV            R2, S16; float
53A4D8:  MOV             R0, R5; this
53A4DA:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
53A4DE:  LDRB            R0, [R4,#8]
53A4E0:  CMP             R0, #0
53A4E2:  ITT NE
53A4E4:  LDRHNE          R0, [R4,#0xA]
53A4E6:  CMPNE           R0, #4
53A4E8:  BEQ             loc_53A526
53A4EA:  LDR.W           R0, [R5,#0x444]
53A4EE:  VLDR            S16, [R0,#0x44]
53A4F2:  MOVS            R0, #8
53A4F4:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
53A4F8:  VMOV.F32        S0, #0.5
53A4FC:  VMOV            S2, R0
53A500:  VMUL.F32        S0, S2, S0
53A504:  VCMPE.F32       S16, S0
53A508:  VMRS            APSR_nzcv, FPSCR
53A50C:  BGE             loc_53A526
53A50E:  MOVS            R0, #0
53A510:  MOV.W           R1, #0x164; unsigned __int16
53A514:  STRD.W          R0, R0, [SP,#0x88+var_88]; unsigned __int8
53A518:  MOVS            R2, #0; unsigned int
53A51A:  STR             R0, [SP,#0x88+var_80]; unsigned __int8
53A51C:  MOV             R0, R5; this
53A51E:  MOV.W           R3, #0x3F800000; float
53A522:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
53A526:  MOV             R0, R5
53A528:  MOVS            R1, #0
53A52A:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A52E:  MOV             R0, R4; this
53A530:  MOV             R1, R5; CPed *
53A532:  BLX             j__ZN15CTaskSimpleSwim16ProcessSwimAnimsEP4CPed; CTaskSimpleSwim::ProcessSwimAnims(CPed *)
53A536:  MOV             R0, R4; this
53A538:  MOV             R1, R5; CPed *
53A53A:  BLX             j__ZN15CTaskSimpleSwim25ProcessSwimmingResistanceEP4CPed; CTaskSimpleSwim::ProcessSwimmingResistance(CPed *)
53A53E:  MOV             R0, R4; this
53A540:  MOV             R1, R5; CPed *
53A542:  BLX             j__ZN15CTaskSimpleSwim14ProcessEffectsEP4CPed; CTaskSimpleSwim::ProcessEffects(CPed *)
53A546:  MOVS            R6, #0
53A548:  B               loc_53A454
