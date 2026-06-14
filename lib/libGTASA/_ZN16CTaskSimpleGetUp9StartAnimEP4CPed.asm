; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUp9StartAnimEP4CPed
; Address            : 0x52B234 - 0x52B422
; =========================================================

52B234:  PUSH            {R4-R7,LR}
52B236:  ADD             R7, SP, #0xC
52B238:  PUSH.W          {R8-R10}
52B23C:  SUB             SP, SP, #0x68
52B23E:  MOV             R4, R1
52B240:  MOV             R6, R0
52B242:  MOV             R0, R4; this
52B244:  BLX             j__ZN13CPedPlacement21IsPositionClearOfCarsEPK4CPed; CPedPlacement::IsPositionClearOfCars(CPed const*)
52B248:  MOV             R5, R0
52B24A:  CMP             R5, #0
52B24C:  ITT NE
52B24E:  LDRNE.W         R0, [R5,#0x5A0]
52B252:  CMPNE           R0, #9
52B254:  BEQ             loc_52B266
52B256:  LDR.W           R0, [R5,#0x5A4]
52B25A:  CMP             R0, #2
52B25C:  ITT NE
52B25E:  LDRNE.W         R0, [R4,#0x100]
52B262:  CMPNE           R5, R0
52B264:  BNE             loc_52B2D4
52B266:  LDR.W           R0, [R4,#0x12C]; CVehicle *
52B26A:  CBZ             R0, loc_52B288
52B26C:  LDRB.W          R1, [R0,#0x3A]
52B270:  AND.W           R1, R1, #7
52B274:  CMP             R1, #2
52B276:  BNE             loc_52B288
52B278:  LDR.W           R1, [R0,#0x5A0]
52B27C:  CMP             R1, #9
52B27E:  ITT NE
52B280:  LDRNE.W         R1, [R0,#0x5A4]
52B284:  CMPNE           R1, #2
52B286:  BNE             loc_52B2DE
52B288:  LDR             R0, [R4,#0x18]
52B28A:  MOVS            R1, #0
52B28C:  STR.W           R1, [R4,#0x12C]
52B290:  MOV.W           R1, #0x800
52B294:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
52B298:  LDR             R1, [R4,#0x18]
52B29A:  MOVS            R3, #0
52B29C:  CMP             R0, #0
52B29E:  MOV.W           R2, #0x70 ; 'p'
52B2A2:  IT NE
52B2A4:  MOVNE           R2, #0x73 ; 's'; unsigned int
52B2A6:  MOVT            R3, #0x447A
52B2AA:  MOV             R0, R1; int
52B2AC:  MOVS            R1, #0; int
52B2AE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52B2B2:  LDR             R1, =(_ZN16CTaskSimpleGetUp17FinishAnimGetUpCBEP21CAnimBlendAssociationPv_ptr - 0x52B2BC)
52B2B4:  MOV             R2, R6; void *
52B2B6:  STR             R0, [R6,#0xC]
52B2B8:  ADD             R1, PC; _ZN16CTaskSimpleGetUp17FinishAnimGetUpCBEP21CAnimBlendAssociationPv_ptr
52B2BA:  LDR             R1, [R1]; CTaskSimpleGetUp::FinishAnimGetUpCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B2BC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B2C0:  MOV             R0, R4; CPed *
52B2C2:  MOVS            R1, #1
52B2C4:  MOVS            R6, #1
52B2C6:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
52B2CA:  MOV             R0, R6
52B2CC:  ADD             SP, SP, #0x68 ; 'h'
52B2CE:  POP.W           {R8-R10}
52B2D2:  POP             {R4-R7,PC}
52B2D4:  LDR.W           R0, [R4,#0x56C]
52B2D8:  CMP             R0, R5
52B2DA:  BNE             loc_52B362
52B2DC:  B               loc_52B266
52B2DE:  BLX             j__Z21IsVehiclePointerValidP8CVehicle; IsVehiclePointerValid(CVehicle *)
52B2E2:  CMP             R0, #1
52B2E4:  BNE             loc_52B288
52B2E6:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x52B2EE)
52B2E8:  LDRH            R1, [R4,#0x24]
52B2EA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
52B2EC:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
52B2EE:  LDR             R0, [R0]; CTimer::m_FrameCounter
52B2F0:  ADD             R0, R1
52B2F2:  ADDS            R0, #5
52B2F4:  LSLS            R0, R0, #0x1D
52B2F6:  BNE             loc_52B362
52B2F8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x52B302)
52B2FA:  LDRSH.W         R1, [R4,#0x26]
52B2FE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
52B300:  LDR.W           R10, [R4,#0x12C]
52B304:  LDR.W           R8, [R4,#0x14]
52B308:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
52B30A:  LDR.W           R2, [R10,#0x14]
52B30E:  LDR.W           R0, [R0,R1,LSL#2]
52B312:  CMP             R2, #0
52B314:  LDR.W           R9, [R0,#0x2C]
52B318:  BEQ             loc_52B31E
52B31A:  MOV             R0, R10
52B31C:  B               loc_52B338
52B31E:  MOV             R0, R10; this
52B320:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
52B324:  LDR.W           R1, [R10,#0x14]; CMatrix *
52B328:  ADD.W           R0, R10, #4; this
52B32C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
52B330:  LDR.W           R0, [R4,#0x12C]
52B334:  LDR.W           R2, [R10,#0x14]; CMatrix *
52B338:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x52B342)
52B33A:  LDRSH.W         R0, [R0,#0x26]
52B33E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
52B340:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
52B342:  LDR.W           R0, [R1,R0,LSL#2]
52B346:  MOVS            R1, #0
52B348:  LDR             R3, [R0,#0x2C]; int
52B34A:  LDR             R0, =(unk_9FF1C4 - 0x52B350)
52B34C:  ADD             R0, PC; unk_9FF1C4
52B34E:  STRD.W          R0, R1, [SP,#0x80+var_80]; int
52B352:  STRD.W          R1, R1, [SP,#0x80+var_78]; int
52B356:  MOV             R0, R8; int
52B358:  MOV             R1, R9; int
52B35A:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
52B35E:  CMP             R0, #1
52B360:  BLT             loc_52B288
52B362:  LDR.W           R0, [R4,#0x490]
52B366:  ORR.W           R0, R0, #8
52B36A:  STR.W           R0, [R4,#0x490]
52B36E:  MOV             R0, R4; this
52B370:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52B374:  CBZ             R0, loc_52B38E
52B376:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52B37C)
52B378:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52B37A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52B37C:  VLDR            S0, [R0]
52B380:  VCMPE.F32       S0, #0.0
52B384:  VMRS            APSR_nzcv, FPSCR
52B388:  BGT             loc_52B3A2
52B38A:  MOVS            R6, #0
52B38C:  B               loc_52B2CA
52B38E:  MOVS            R0, #0; this
52B390:  MOVS            R6, #0
52B392:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
52B396:  LDRH.W          R0, [R0,#0x110]
52B39A:  CMP             R0, #0
52B39C:  BEQ             loc_52B2CA
52B39E:  VLDR            S0, =1000.0
52B3A2:  VMOV            R2, S0
52B3A6:  ADD             R0, SP, #0x80+var_2C
52B3A8:  MOV.W           R8, #0
52B3AC:  MOV.W           R9, #3
52B3B0:  MOV             R1, R5
52B3B2:  MOVS            R3, #0x32 ; '2'
52B3B4:  ADDW            R6, R4, #0x484
52B3B8:  STRD.W          R9, R8, [SP,#0x80+var_80]
52B3BC:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
52B3C0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52B3CC)
52B3C2:  MOVS            R3, #0x32 ; '2'; int
52B3C4:  LDR             R1, [R6]
52B3C6:  ADD             R6, SP, #0x80+var_6C
52B3C8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52B3CA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52B3CC:  LDR             R2, [R0]; int
52B3CE:  UBFX.W          R0, R1, #8, #1
52B3D2:  STRD.W          R9, R8, [SP,#0x80+var_80]; int
52B3D6:  MOV             R1, R5; this
52B3D8:  STRD.W          R8, R0, [SP,#0x80+var_78]; int
52B3DC:  MOV             R0, R6; int
52B3DE:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
52B3E2:  MOV             R1, R4; CPed *
52B3E4:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
52B3E8:  CMP             R0, #1
52B3EA:  BNE             loc_52B3FC
52B3EC:  ADD.W           R2, R6, #0x34 ; '4'
52B3F0:  ADD             R0, SP, #0x80+var_2C; int
52B3F2:  MOV             R1, R4; this
52B3F4:  MOVS            R3, #1
52B3F6:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
52B3FA:  B               loc_52B402
52B3FC:  MOVS            R0, #1
52B3FE:  STRB.W          R0, [SP,#0x80+var_2E]
52B402:  LDR.W           R0, [R4,#0x440]
52B406:  ADD             R4, SP, #0x80+var_6C
52B408:  MOVS            R2, #0; bool
52B40A:  MOVS            R6, #0
52B40C:  ADDS            R0, #0x68 ; 'h'; this
52B40E:  MOV             R1, R4; CEvent *
52B410:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52B414:  MOV             R0, R4; this
52B416:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
52B41A:  ADD             R0, SP, #0x80+var_2C; this
52B41C:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
52B420:  B               loc_52B2CA
