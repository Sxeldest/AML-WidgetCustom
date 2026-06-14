; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c13SetupShopPedsEv
; Address            : 0x44A3B4 - 0x44A534
; =========================================================

44A3B4:  PUSH            {R4-R7,LR}
44A3B6:  ADD             R7, SP, #0xC
44A3B8:  PUSH.W          {R8-R11}
44A3BC:  SUB             SP, SP, #4
44A3BE:  VPUSH           {D8-D10}
44A3C2:  SUB             SP, SP, #0x20
44A3C4:  MOV             R11, R0
44A3C6:  MOVS            R0, #(stderr+1); this
44A3C8:  BLX             j__ZN10CStreaming21StreamPedsForInteriorEi; CStreaming::StreamPedsForInterior(int)
44A3CC:  MOVS            R0, #0; this
44A3CE:  MOV.W           R8, #0
44A3D2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
44A3D6:  LDRSB.W         R4, [R11,#0xF]
44A3DA:  STRB.W          R8, [R11,#0x36]
44A3DE:  BLX             rand
44A3E2:  UXTH            R0, R0
44A3E4:  VLDR            S16, =0.000015259
44A3E8:  VMOV            S0, R0
44A3EC:  VMOV.F32        S2, #3.0
44A3F0:  VCVT.F32.S32    S0, S0
44A3F4:  VMUL.F32        S0, S0, S16
44A3F8:  VMUL.F32        S0, S0, S2
44A3FC:  VCVT.S32.F32    S0, S0
44A400:  VMOV            R0, S0
44A404:  ADDS            R0, #2
44A406:  MULS            R0, R4
44A408:  CMP             R0, #0
44A40A:  BLT.W           loc_44A526
44A40E:  VMOV.F32        S18, #1.0
44A412:  MVNS            R0, R0
44A414:  VMOV.F32        S20, #7.0
44A418:  STR             R0, [SP,#0x58+var_50]
44A41A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44A428)
44A41C:  ADD.W           R10, SP, #0x58+var_4C
44A420:  MOV.W           R9, #0
44A424:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44A426:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44A428:  STR             R0, [SP,#0x58+var_54]
44A42A:  CMP.W           R9, #0
44A42E:  BEQ             loc_44A452
44A430:  BLX             rand
44A434:  UXTH            R0, R0
44A436:  VMOV            S0, R0
44A43A:  VCVT.F32.S32    S0, S0
44A43E:  VMUL.F32        S0, S0, S16
44A442:  VMUL.F32        S0, S0, S20
44A446:  VCVT.S32.F32    S0, S0
44A44A:  VMOV            R0, S0
44A44E:  ADDS            R0, #1
44A450:  B               loc_44A454
44A452:  MOVS            R0, #0; this
44A454:  BLX             j__ZN10CStreaming24FindMIPedSlotForInteriorEi; CStreaming::FindMIPedSlotForInterior(int)
44A458:  MOV             R6, R0
44A45A:  LDR             R0, [SP,#0x58+var_54]
44A45C:  LDR.W           R0, [R0,R6,LSL#2]
44A460:  LDR             R5, [R0,#0x40]
44A462:  MOV             R0, R11; this
44A464:  STRD.W          R8, R8, [SP,#0x58+var_4C]
44A468:  STR.W           R8, [SP,#0x58+var_44]
44A46C:  BLX             j__ZN15InteriorGroup_c17GetRandomInteriorEv; InteriorGroup_c::GetRandomInterior(void)
44A470:  ADD             R2, SP, #0x58+var_3C; int *
44A472:  ADD             R3, SP, #0x58+var_40; int *
44A474:  MOVS            R1, #3; int
44A476:  MOV             R4, R0
44A478:  BLX             j__ZN10Interior_c13GetRandomTileEiPiS0_; Interior_c::GetRandomTile(int,int *,int *)
44A47C:  VLDR            S0, [SP,#0x58+var_3C]
44A480:  MOV             R0, R4
44A482:  VLDR            S2, [SP,#0x58+var_40]
44A486:  MOV             R3, R10
44A488:  VCVT.F32.S32    S0, S0
44A48C:  VCVT.F32.S32    S2, S2
44A490:  VMOV            R1, S0
44A494:  VMOV            R2, S2
44A498:  BLX             j__ZN10Interior_c13GetTileCentreEffP5RwV3d; Interior_c::GetTileCentre(float,float,RwV3d *)
44A49C:  VLDR            S0, [SP,#0x58+var_44]
44A4A0:  MOV             R0, R5
44A4A2:  MOV             R1, R6
44A4A4:  MOV             R2, R10
44A4A6:  VADD.F32        S0, S0, S18
44A4AA:  MOVS            R3, #0
44A4AC:  VSTR            S0, [SP,#0x58+var_44]
44A4B0:  LDRSB.W         R4, [R11,#0x36]
44A4B4:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
44A4B8:  ADD.W           R4, R11, R4,LSL#2
44A4BC:  CMP             R0, #0
44A4BE:  STR.W           R0, [R4,#0x38]!
44A4C2:  BEQ             loc_44A51A
44A4C4:  LDRB.W          R0, [R11,#0x36]
44A4C8:  MOVS            R1, #2; unsigned __int8
44A4CA:  ADDS            R0, #1
44A4CC:  STRB.W          R0, [R11,#0x36]
44A4D0:  LDR             R0, [R4]; this
44A4D2:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
44A4D6:  LDR             R0, [R4]
44A4D8:  MOVS            R1, #7; int
44A4DA:  LDR.W           R0, [R0,#0x440]; this
44A4DE:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
44A4E2:  LDR             R0, [R4]
44A4E4:  CMP.W           R9, #0
44A4E8:  LDR.W           R5, [R0,#0x440]
44A4EC:  BEQ             loc_44A4FE
44A4EE:  MOVS            R0, #dword_34; this
44A4F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
44A4F4:  MOV             R1, R11; InteriorGroup_c *
44A4F6:  MOV             R4, R0
44A4F8:  BLX             j__ZN21CTaskInteriorBeInShopC2EP15InteriorGroup_c; CTaskInteriorBeInShop::CTaskInteriorBeInShop(InteriorGroup_c *)
44A4FC:  B               loc_44A50E
44A4FE:  MOVS            R0, #dword_20; this
44A500:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
44A504:  MOV             R1, R11; InteriorGroup_c *
44A506:  MOVS            R2, #0; unsigned __int8
44A508:  MOV             R4, R0
44A50A:  BLX             j__ZN23CTaskInteriorShopKeeperC2EP15InteriorGroup_ch; CTaskInteriorShopKeeper::CTaskInteriorShopKeeper(InteriorGroup_c *,uchar)
44A50E:  ADDS            R0, R5, #4; this
44A510:  MOV             R1, R4; CTask *
44A512:  MOVS            R2, #4; int
44A514:  MOVS            R3, #0; bool
44A516:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
44A51A:  LDR             R0, [SP,#0x58+var_50]
44A51C:  SUB.W           R9, R9, #1
44A520:  CMP             R0, R9
44A522:  BNE.W           loc_44A42A
44A526:  ADD             SP, SP, #0x20 ; ' '
44A528:  VPOP            {D8-D10}
44A52C:  ADD             SP, SP, #4
44A52E:  POP.W           {R8-R11}
44A532:  POP             {R4-R7,PC}
