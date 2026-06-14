; =========================================================
; Game Engine Function: _ZN13CEventHandler21ComputeReviveResponseEP6CEventP5CTaskS3_
; Address            : 0x3805B8 - 0x3806C0
; =========================================================

3805B8:  PUSH            {R4,R5,R7,LR}
3805BA:  ADD             R7, SP, #8
3805BC:  MOV             R4, R0
3805BE:  MOVS            R1, #0
3805C0:  LDR             R0, [R4]
3805C2:  MOVT            R1, #0x42C8
3805C6:  STR.W           R1, [R0,#0x544]
3805CA:  LDR             R0, [R4]
3805CC:  LDRD.W          R1, R2, [R0,#0x1C]
3805D0:  ORR.W           R1, R1, #1
3805D4:  STRD.W          R1, R2, [R0,#0x1C]
3805D8:  LDR             R0, [R4]
3805DA:  LDR.W           R2, [R0,#0x488]
3805DE:  LDR.W           R1, [R0,#0x484]
3805E2:  LDR.W           R3, [R0,#0x48C]
3805E6:  BIC.W           R2, R2, #0x10
3805EA:  LDR.W           R5, [R0,#0x490]
3805EE:  STR.W           R1, [R0,#0x484]
3805F2:  STR.W           R2, [R0,#0x488]
3805F6:  STR.W           R3, [R0,#0x48C]
3805FA:  STR.W           R5, [R0,#0x490]
3805FE:  LDR             R0, [R4]
380600:  LDR.W           R2, [R0,#0x488]
380604:  LDR.W           R1, [R0,#0x484]
380608:  LDR.W           R3, [R0,#0x48C]
38060C:  BIC.W           R2, R2, #0x80000000
380610:  LDR.W           R5, [R0,#0x490]
380614:  STR.W           R1, [R0,#0x484]
380618:  STR.W           R2, [R0,#0x488]
38061C:  STR.W           R3, [R0,#0x48C]
380620:  STR.W           R5, [R0,#0x490]
380624:  LDR             R0, [R4]
380626:  LDR.W           R3, [R0,#0x48C]
38062A:  LDR.W           R1, [R0,#0x484]
38062E:  LDR.W           R2, [R0,#0x488]
380632:  BIC.W           R3, R3, #0x100
380636:  LDR.W           R5, [R0,#0x490]
38063A:  STR.W           R1, [R0,#0x484]
38063E:  MOVS            R1, #1
380640:  STR.W           R2, [R0,#0x488]
380644:  STR.W           R3, [R0,#0x48C]
380648:  STR.W           R5, [R0,#0x490]
38064C:  LDR             R0, [R4]; CPed *
38064E:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
380652:  LDR             R0, [R4]
380654:  LDR             R1, [R0,#0x44]
380656:  BIC.W           R1, R1, #0x20000000
38065A:  STR             R1, [R0,#0x44]
38065C:  LDR             R0, [R4]; this
38065E:  BLX             j__ZN4CPed22RestartNonPartialAnimsEv; CPed::RestartNonPartialAnims(void)
380662:  MOVS            R0, #(byte_9+3); this
380664:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380668:  BLX             j__ZN30CTaskComplexGetUpAndStandStillC2Ev; CTaskComplexGetUpAndStandStill::CTaskComplexGetUpAndStandStill(void)
38066C:  STR             R0, [R4,#0x24]
38066E:  MOVS            R0, #dword_1C; this
380670:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380674:  MOV             R5, R0
380676:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
38067A:  LDR             R0, =(_ZTV14CTaskSimpleSay_ptr - 0x380688)
38067C:  MOVS            R1, #0
38067E:  MOV.W           R2, #0xFFFFFFFF
380682:  MOVS            R3, #0xB3
380684:  ADD             R0, PC; _ZTV14CTaskSimpleSay_ptr
380686:  STRH            R1, [R5,#0x18]
380688:  STRD.W          R3, R2, [R5,#8]
38068C:  LDR             R0, [R0]; `vtable for'CTaskSimpleSay ...
38068E:  STRD.W          R1, R1, [R5,#0x10]
380692:  ADDS            R0, #8
380694:  STR             R0, [R5]
380696:  LDR             R0, [R4]; this
380698:  STR             R5, [R4,#0x2C]
38069A:  LDR.W           R4, [R0,#0x440]
38069E:  LDR             R1, [R4,#0x10]
3806A0:  CMP             R1, #0
3806A2:  ITT EQ
3806A4:  LDREQ           R1, [R4,#0x14]; CPed *
3806A6:  CMPEQ           R1, #0
3806A8:  BEQ             loc_3806AC
3806AA:  POP             {R4,R5,R7,PC}
3806AC:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
3806B0:  MOV             R1, R0
3806B2:  ADDS            R0, R4, #4
3806B4:  MOVS            R2, #4
3806B6:  MOVS            R3, #0
3806B8:  POP.W           {R4,R5,R7,LR}
3806BC:  B.W             j_j__ZN12CTaskManager7SetTaskEP5CTaskib; j_CTaskManager::SetTask(CTask *,int,bool)
