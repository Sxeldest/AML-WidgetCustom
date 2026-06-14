; =========================================================
; Game Engine Function: _ZNK25CEventPedCollisionWithPed10AffectsPedEP4CPed
; Address            : 0x371384 - 0x371516
; =========================================================

371384:  PUSH            {R4-R7,LR}
371386:  ADD             R7, SP, #0xC
371388:  PUSH.W          {R8}
37138C:  MOV             R4, R1
37138E:  MOV             R5, R0
371390:  MOV             R0, R4; this
371392:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
371396:  CMP             R0, #1
371398:  ITT EQ
37139A:  LDREQ.W         R0, [R4,#0x100]
37139E:  CMPEQ           R0, #0
3713A0:  BEQ             loc_3713AA
3713A2:  MOVS            R0, #0
3713A4:  POP.W           {R8}
3713A8:  POP             {R4-R7,PC}
3713AA:  LDR             R1, [R5,#0x10]; CPed *
3713AC:  CMP             R1, #0
3713AE:  BEQ             loc_3713A2
3713B0:  LDRB.W          R0, [R4,#0x485]
3713B4:  LSLS            R0, R0, #0x1F
3713B6:  ITT EQ
3713B8:  LDRBEQ.W        R0, [R1,#0x485]
3713BC:  MOVSEQ.W        R0, R0,LSL#31
3713C0:  BNE             loc_3713A2
3713C2:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x3713CC)
3713C4:  LDR.W           R2, [R1,#0x440]
3713C8:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
3713CA:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
3713CC:  LDR.W           R2, [R2,#0x278]
3713D0:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
3713D2:  CMP             R2, R0
3713D4:  BGT             loc_3713A2
3713D6:  LDR.W           R0, [R4,#0x440]; this
3713DA:  BLX             j__ZNK16CPedIntelligence14IsThreatenedByERK4CPed; CPedIntelligence::IsThreatenedBy(CPed const&)
3713DE:  CMP             R0, #0
3713E0:  BNE             loc_3713A2
3713E2:  LDRSH.W         R0, [R5,#0x2C]
3713E6:  CMP             R0, #3
3713E8:  BGT             loc_371400
3713EA:  LDR             R0, [R5,#0x10]; this
3713EC:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
3713F0:  CMP             R0, #0
3713F2:  BEQ             loc_3713A2
3713F4:  LDR             R1, [R5,#0x10]; CPed *
3713F6:  ADDS            R0, #8; this
3713F8:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
3713FC:  CMP             R0, #1
3713FE:  BNE             loc_3713A2
371400:  LDR             R0, [R4,#0x14]
371402:  VLDR            S0, [R5,#0x14]
371406:  VLDR            S2, [R5,#0x18]
37140A:  VLDR            S6, [R0,#0x10]
37140E:  VLDR            S8, [R0,#0x14]
371412:  VMUL.F32        S0, S0, S6
371416:  VLDR            S4, [R5,#0x1C]
37141A:  VMUL.F32        S2, S2, S8
37141E:  VLDR            S10, [R0,#0x18]
371422:  VMUL.F32        S4, S4, S10
371426:  VADD.F32        S0, S0, S2
37142A:  VMOV.F32        S2, #-0.5
37142E:  VADD.F32        S0, S0, S4
371432:  VCMPE.F32       S0, S2
371436:  VMRS            APSR_nzcv, FPSCR
37143A:  BGT             loc_3713A2
37143C:  LDR.W           R0, [R4,#0x440]
371440:  MOVW            R1, #0x4B2; int
371444:  ADDS            R0, #4; this
371446:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37144A:  MOV             R8, R0
37144C:  CMP.W           R8, #0
371450:  BNE             loc_371468
371452:  LDR.W           R0, [R4,#0x440]
371456:  MOVW            R1, #0x4B3; int
37145A:  ADDS            R0, #4; this
37145C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
371460:  MOV             R8, R0
371462:  CMP.W           R8, #0
371466:  BEQ             loc_3714AA
371468:  LDR             R0, [R5,#0x10]
37146A:  MOVW            R1, #0x4B2; int
37146E:  LDR.W           R0, [R0,#0x440]
371472:  ADDS            R0, #4; this
371474:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
371478:  MOV             R6, R0
37147A:  CBNZ            R6, loc_371490
37147C:  LDR             R0, [R5,#0x10]
37147E:  MOVW            R1, #0x4B3; int
371482:  LDR.W           R0, [R0,#0x440]
371486:  ADDS            R0, #4; this
371488:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37148C:  MOV             R6, R0
37148E:  CBZ             R6, loc_3714AA
371490:  LDR.W           R0, [R8]
371494:  LDR             R1, [R0,#0x14]
371496:  MOV             R0, R8
371498:  BLX             R1
37149A:  MOV             R8, R0
37149C:  LDR             R0, [R6]
37149E:  LDR             R1, [R0,#0x14]
3714A0:  MOV             R0, R6
3714A2:  BLX             R1
3714A4:  CMP             R8, R0
3714A6:  BEQ.W           loc_3713A2
3714AA:  LDR.W           R0, [R4,#0x440]
3714AE:  ADDS            R0, #4; this
3714B0:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3714B4:  CBZ             R0, loc_3714E2
3714B6:  LDR.W           R0, [R4,#0x440]
3714BA:  ADDS            R0, #4; this
3714BC:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3714C0:  LDR             R1, [R0]
3714C2:  LDR             R1, [R1,#0x14]
3714C4:  BLX             R1
3714C6:  MOVW            R1, #0x395
3714CA:  CMP             R0, R1
3714CC:  BNE             loc_3714E2
3714CE:  LDR.W           R0, [R4,#0x440]
3714D2:  ADDS            R0, #4; this
3714D4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3714D8:  LDR             R1, [R5,#0x10]
3714DA:  LDR             R0, [R0,#0xC]
3714DC:  CMP             R0, R1
3714DE:  BEQ.W           loc_3713A2
3714E2:  LDR.W           R0, [R4,#0x440]
3714E6:  MOV.W           R1, #0x3E8; int
3714EA:  ADDS            R0, #4; this
3714EC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3714F0:  CBZ             R0, loc_37150E
3714F2:  LDR             R1, [R5,#0x10]
3714F4:  LDR             R0, [R0,#0x10]
3714F6:  CMP             R0, R1
3714F8:  BNE             loc_37150E
3714FA:  LDR.W           R0, [R4,#0x440]
3714FE:  MOVW            R1, #0x3FB; int
371502:  ADDS            R0, #4; this
371504:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
371508:  CMP             R0, #0
37150A:  BNE.W           loc_3713A2
37150E:  MOVS            R0, #1
371510:  POP.W           {R8}
371514:  POP             {R4-R7,PC}
