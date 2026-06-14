; =========================================================
; Game Engine Function: _ZN19CTaskComplexInWater18CreateFirstSubTaskEP4CPed
; Address            : 0x4F1404 - 0x4F1504
; =========================================================

4F1404:  PUSH            {R4,R5,R7,LR}
4F1406:  ADD             R7, SP, #8
4F1408:  SUB             SP, SP, #0x18
4F140A:  MOV             R4, R1
4F140C:  MOV             R0, R4; this
4F140E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F1412:  CBNZ            R0, loc_4F1420
4F1414:  LDRSH.W         R0, [R4,#0x26]; this
4F1418:  BLX             j__ZN11CPopulation11IsSunbatherEi; CPopulation::IsSunbather(int)
4F141C:  CMP             R0, #1
4F141E:  BNE             loc_4F1436
4F1420:  MOVS            R0, #dword_68; this
4F1422:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1426:  MOV             R4, R0
4F1428:  MOVS            R1, #0; CVector *
4F142A:  MOVS            R2, #0; CPed *
4F142C:  BLX             j__ZN15CTaskSimpleSwimC2EPK7CVectorP4CPed; CTaskSimpleSwim::CTaskSimpleSwim(CVector const*,CPed *)
4F1430:  MOV             R0, R4
4F1432:  ADD             SP, SP, #0x18
4F1434:  POP             {R4,R5,R7,PC}
4F1436:  LDRB.W          R0, [R4,#0x48A]
4F143A:  LSLS            R0, R0, #0x1B
4F143C:  BMI             loc_4F1474
4F143E:  MOV             R0, R4; this
4F1440:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F1444:  CBZ             R0, loc_4F14AE
4F1446:  ADD.W           R5, R0, #8
4F144A:  MOV             R0, R5; this
4F144C:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4F1450:  CBZ             R0, loc_4F14AE
4F1452:  MOV             R0, R5; this
4F1454:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4F1458:  LDR.W           R0, [R0,#0x444]
4F145C:  CBZ             R0, loc_4F14AE
4F145E:  MOVS            R0, #dword_68; this
4F1460:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1464:  MOV             R4, R0
4F1466:  MOV             R0, R5; this
4F1468:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4F146C:  MOV             R2, R0
4F146E:  MOV             R0, R4
4F1470:  MOVS            R1, #0
4F1472:  B               loc_4F142C
4F1474:  MOVS            R0, #word_28; this
4F1476:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F147A:  MOV             R4, R0
4F147C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F1480:  LDR             R0, =(_ZTV15CTaskComplexDie_ptr - 0x4F148C)
4F1482:  MOVS            R1, #0x35 ; '5'
4F1484:  STR             R1, [R4,#0xC]
4F1486:  MOVS            R1, #0
4F1488:  ADD             R0, PC; _ZTV15CTaskComplexDie_ptr
4F148A:  MOVS            R2, #0x8C
4F148C:  STR             R1, [R4,#0x10]
4F148E:  STR             R2, [R4,#0x14]
4F1490:  MOV.W           R2, #0x40800000
4F1494:  LDR             R0, [R0]; `vtable for'CTaskComplexDie ...
4F1496:  STRD.W          R2, R1, [R4,#0x18]
4F149A:  STR             R1, [R4,#0x24]
4F149C:  ADDS            R0, #8
4F149E:  LDRB.W          R1, [R4,#0x20]
4F14A2:  STR             R0, [R4]
4F14A4:  AND.W           R0, R1, #0xF8
4F14A8:  STRB.W          R0, [R4,#0x20]
4F14AC:  B               loc_4F1430
4F14AE:  LDRB.W          R0, [R4,#0x448]
4F14B2:  CMP             R0, #2
4F14B4:  BNE             loc_4F14E8
4F14B6:  LDR.W           R0, [R4,#0x440]; this
4F14BA:  MOV.W           R1, #0x384; int
4F14BE:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
4F14C2:  CBZ             R0, loc_4F14E8
4F14C4:  LDR.W           R0, [R4,#0x440]; this
4F14C8:  MOV.W           R1, #0x384; int
4F14CC:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
4F14D0:  VLDR            D16, [R0,#0xC]
4F14D4:  LDR             R0, [R0,#0x14]
4F14D6:  STR             R0, [SP,#0x20+var_10]
4F14D8:  MOVS            R0, #dword_68; this
4F14DA:  VSTR            D16, [SP,#0x20+var_18]
4F14DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F14E2:  MOV             R4, R0
4F14E4:  ADD             R1, SP, #0x20+var_18
4F14E6:  B               loc_4F142A
4F14E8:  MOVS            R0, #dword_20; this
4F14EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F14EE:  MOV             R4, R0
4F14F0:  MOVS            R0, #0
4F14F2:  STR             R0, [SP,#0x20+var_20]
4F14F4:  MOV             R0, R4
4F14F6:  MOVS            R1, #0
4F14F8:  MOVS            R2, #0xE
4F14FA:  MOV.W           R3, #0x41000000
4F14FE:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
4F1502:  B               loc_4F1430
