; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c14SetupHousePedsEv
; Address            : 0x44A1C8 - 0x44A392
; =========================================================

44A1C8:  PUSH            {R4-R7,LR}
44A1CA:  ADD             R7, SP, #0xC
44A1CC:  PUSH.W          {R8-R11}
44A1D0:  SUB             SP, SP, #4
44A1D2:  VPUSH           {D8-D9}
44A1D6:  SUB             SP, SP, #0x30
44A1D8:  MOV             R4, R0
44A1DA:  MOVS            R0, #0; this
44A1DC:  MOVS            R5, #0
44A1DE:  BLX             j__ZN10CStreaming21StreamPedsForInteriorEi; CStreaming::StreamPedsForInterior(int)
44A1E2:  MOVS            R0, #0; this
44A1E4:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
44A1E8:  STRB.W          R5, [R4,#0x36]
44A1EC:  STRD.W          R5, R5, [SP,#0x60+var_40]
44A1F0:  STR             R5, [SP,#0x60+var_38]
44A1F2:  LDR             R5, [R4,#8]
44A1F4:  LDR             R1, [R5,#0x14]
44A1F6:  CBNZ            R1, loc_44A208
44A1F8:  MOV             R0, R5; this
44A1FA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
44A1FE:  LDR             R1, [R5,#0x14]; CMatrix *
44A200:  ADDS            R0, R5, #4; this
44A202:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
44A206:  LDR             R1, [R5,#0x14]
44A208:  ADD             R0, SP, #0x60+var_50
44A20A:  ADD             R2, SP, #0x60+var_40
44A20C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
44A210:  VLDR            D16, [SP,#0x60+var_50]
44A214:  LDR             R0, [SP,#0x60+var_48]
44A216:  STR             R0, [SP,#0x60+var_38]
44A218:  VSTR            D16, [SP,#0x60+var_40]
44A21C:  BLX             rand
44A220:  UXTH            R0, R0
44A222:  VLDR            S16, =0.000015259
44A226:  VMOV            S0, R0
44A22A:  VLDR            S18, =100.0
44A22E:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x44A23C)
44A230:  MOV.W           R9, #2
44A234:  VCVT.F32.S32    S0, S0
44A238:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
44A23A:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
44A23C:  VMUL.F32        S0, S0, S16
44A240:  VMUL.F32        S0, S0, S18
44A244:  VCVT.S32.F32    S0, S0
44A248:  LDR             R0, [R0]; this
44A24A:  VMOV            R1, S0
44A24E:  CMP             R1, #0x32 ; '2'
44A250:  IT GT
44A252:  MOVGT.W         R9, #1
44A256:  CBZ             R0, loc_44A290
44A258:  BLX             j__ZN9CPopCycle25PickGangToCreateMembersOfEv; CPopCycle::PickGangToCreateMembersOf(void)
44A25C:  MOV             R5, R0
44A25E:  CBZ             R5, loc_44A294
44A260:  SUBS            R0, R5, #7; this
44A262:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
44A266:  CMP             R0, #0
44A268:  BLT             loc_44A28C
44A26A:  BLX             rand
44A26E:  UXTH            R0, R0
44A270:  VMOV            S0, R0
44A274:  VCVT.F32.S32    S0, S0
44A278:  VMUL.F32        S0, S0, S16
44A27C:  VMUL.F32        S0, S0, S18
44A280:  VCVT.S32.F32    S0, S0
44A284:  VMOV            R0, S0
44A288:  CMP             R0, #0xF
44A28A:  BLE             loc_44A29A
44A28C:  MOVS            R0, #1
44A28E:  B               loc_44A2AA
44A290:  MOVS            R0, #1
44A292:  B               loc_44A2AA
44A294:  MOVS            R5, #0
44A296:  MOVS            R0, #1
44A298:  B               loc_44A2AA
44A29A:  BLX             rand
44A29E:  AND.W           R0, R0, #1
44A2A2:  RSBS.W          R9, R0, #4
44A2A6:  BEQ             loc_44A384
44A2A8:  MOVS            R0, #0
44A2AA:  STR             R0, [SP,#0x60+var_58]
44A2AC:  SUBS            R0, R5, #7
44A2AE:  STR             R0, [SP,#0x60+var_60]
44A2B0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44A2B8)
44A2B2:  MOVS            R6, #0
44A2B4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44A2B6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44A2B8:  STR             R0, [SP,#0x60+var_54]
44A2BA:  LDR             R0, =(g_interiorMan_ptr - 0x44A2C0)
44A2BC:  ADD             R0, PC; g_interiorMan_ptr
44A2BE:  LDR.W           R11, [R0]; g_interiorMan
44A2C2:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x44A2C8)
44A2C4:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
44A2C6:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
44A2C8:  STR             R0, [SP,#0x60+var_5C]
44A2CA:  LDR             R0, [SP,#0x60+var_58]
44A2CC:  CBZ             R0, loc_44A2E4
44A2CE:  CMP.W           R9, #1
44A2D2:  BNE             loc_44A2EC
44A2D4:  BLX             rand
44A2D8:  TST.W           R0, #1
44A2DC:  ITE EQ
44A2DE:  MOVEQ           R0, #1
44A2E0:  MOVNE           R0, #0
44A2E2:  B               loc_44A2EE
44A2E4:  LDR             R0, [SP,#0x60+var_60]; this
44A2E6:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
44A2EA:  B               loc_44A2F2
44A2EC:  MOV             R0, R6; this
44A2EE:  BLX             j__ZN10CStreaming24FindMIPedSlotForInteriorEi; CStreaming::FindMIPedSlotForInterior(int)
44A2F2:  MOV             R1, R0
44A2F4:  LDR             R0, [SP,#0x60+var_54]
44A2F6:  ADD             R2, SP, #0x60+var_40
44A2F8:  MOVS            R3, #0
44A2FA:  LDRSB.W         R5, [R4,#0x36]
44A2FE:  LDR.W           R0, [R0,R1,LSL#2]
44A302:  LDR             R0, [R0,#0x40]
44A304:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
44A308:  ADD.W           R8, R4, R5,LSL#2
44A30C:  CMP             R0, #0
44A30E:  STR.W           R0, [R8,#0x38]!
44A312:  BEQ             loc_44A368
44A314:  LDRB.W          R0, [R4,#0x36]
44A318:  ADR             R1, aHouse; "house"
44A31A:  MOVS            R3, #3; signed __int8
44A31C:  ADDS            R0, #1
44A31E:  STRB.W          R0, [R4,#0x36]
44A322:  LDR.W           R2, [R8]; CEntity *
44A326:  LDR             R0, [SP,#0x60+var_5C]; this
44A328:  BLX             j__ZN17CScriptsForBrains48StartOrRequestNewStreamedScriptBrainWithThisNameEPKcP7CEntitya; CScriptsForBrains::StartOrRequestNewStreamedScriptBrainWithThisName(char const*,CEntity *,signed char)
44A32C:  LDR.W           R0, [R8]; this
44A330:  MOVS            R1, #2; unsigned __int8
44A332:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
44A336:  LDR.W           R0, [R8]
44A33A:  MOVS            R1, #7; int
44A33C:  LDR.W           R0, [R0,#0x440]; this
44A340:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
44A344:  LDR.W           R0, [R8]
44A348:  LDR.W           R10, [R0,#0x440]
44A34C:  MOVS            R0, #off_18; this
44A34E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
44A352:  MOV             R1, R4; InteriorGroup_c *
44A354:  MOV             R5, R0
44A356:  BLX             j__ZN22CTaskInteriorBeInHouseC2EP15InteriorGroup_c; CTaskInteriorBeInHouse::CTaskInteriorBeInHouse(InteriorGroup_c *)
44A35A:  ADD.W           R0, R10, #4; this
44A35E:  MOV             R1, R5; CTask *
44A360:  MOVS            R2, #4; int
44A362:  MOVS            R3, #0; bool
44A364:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
44A368:  ADD.W           R0, R11, R6
44A36C:  MOVW            R1, #0x472C
44A370:  LDRB            R0, [R0,R1]
44A372:  CBNZ            R0, loc_44A37E
44A374:  LDR.W           R1, [R8]; CPed *
44A378:  MOV             R0, R4; this
44A37A:  BLX             j__ZN15InteriorGroup_c9RemovePedEP4CPed; InteriorGroup_c::RemovePed(CPed *)
44A37E:  ADDS            R6, #1
44A380:  CMP             R9, R6
44A382:  BNE             loc_44A2CA
44A384:  ADD             SP, SP, #0x30 ; '0'
44A386:  VPOP            {D8-D9}
44A38A:  ADD             SP, SP, #4
44A38C:  POP.W           {R8-R11}
44A390:  POP             {R4-R7,PC}
