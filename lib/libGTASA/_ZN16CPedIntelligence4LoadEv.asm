; =========================================================
; Game Engine Function: _ZN16CPedIntelligence4LoadEv
; Address            : 0x48552C - 0x48565E
; =========================================================

48552C:  PUSH            {R4-R7,LR}
48552E:  ADD             R7, SP, #0xC
485530:  PUSH.W          {R8-R11}
485534:  SUB             SP, SP, #0xC
485536:  MOV             R4, R0
485538:  LDR             R0, =(UseDataFence_ptr - 0x48553E)
48553A:  ADD             R0, PC; UseDataFence_ptr
48553C:  LDR             R0, [R0]; UseDataFence
48553E:  LDRB            R5, [R0]
485540:  CBZ             R5, loc_485556
485542:  LDR             R0, =(UseDataFence_ptr - 0x48554A)
485544:  MOVS            R1, #(stderr+2); void *
485546:  ADD             R0, PC; UseDataFence_ptr
485548:  LDR             R6, [R0]; UseDataFence
48554A:  MOVS            R0, #0
48554C:  STRB            R0, [R6]
48554E:  ADD             R0, SP, #0x28+var_20; this
485550:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
485554:  STRB            R5, [R6]
485556:  ADD             R0, SP, #0x28+var_20; this
485558:  MOVS            R1, #byte_4; void *
48555A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48555E:  LDR             R0, [SP,#0x28+var_20]
485560:  CMP             R0, #0
485562:  BEQ             loc_4855EE
485564:  ADDS            R0, R4, #4
485566:  STR             R0, [SP,#0x28+var_28]
485568:  LDR             R0, =(UseDataFence_ptr - 0x48557A)
48556A:  ADD.W           R11, SP, #0x28+var_24
48556E:  MOV.W           R9, #0
485572:  MOV.W           R8, #0
485576:  ADD             R0, PC; UseDataFence_ptr
485578:  LDR             R4, [R0]; UseDataFence
48557A:  LDR             R0, =(loadingPed_ptr - 0x485580)
48557C:  ADD             R0, PC; loadingPed_ptr
48557E:  LDR.W           R10, [R0]; loadingPed
485582:  LDR             R0, =(UseDataFence_ptr - 0x485588)
485584:  ADD             R0, PC; UseDataFence_ptr
485586:  LDR             R5, [R0]; UseDataFence
485588:  B               loc_48559A
48558A:  LDR             R0, [SP,#0x28+var_28]; this
48558C:  MOV             R1, R6; CTask *
48558E:  MOVS            R2, #3; int
485590:  MOVS            R3, #0; bool
485592:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
485596:  MOV.W           R8, #4
48559A:  LDRB            R6, [R4]
48559C:  CBZ             R6, loc_4855AC
48559E:  MOV             R0, R11; this
4855A0:  MOVS            R1, #(stderr+2); void *
4855A2:  STRB.W          R9, [R5]
4855A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4855AA:  STRB            R6, [R5]
4855AC:  MOV             R0, R11; this
4855AE:  MOVS            R1, #byte_4; void *
4855B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4855B4:  LDR             R0, [SP,#0x28+var_24]
4855B6:  ADDS            R0, #1; this
4855B8:  BEQ             loc_4855D6
4855BA:  BLX             j__ZN5CTask10CreateTaskEv; CTask::CreateTask(void)
4855BE:  MOV             R6, R0
4855C0:  LDR.W           R0, [R10]; this
4855C4:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
4855C8:  CBZ             R6, loc_4855D6
4855CA:  CMP.W           R8, #3
4855CE:  BEQ             loc_48558A
4855D0:  CMP.W           R8, #4
4855D4:  BEQ             loc_4855E2
4855D6:  ADD.W           R8, R8, #1
4855DA:  CMP.W           R8, #5
4855DE:  BNE             loc_48559A
4855E0:  B               loc_4855EE
4855E2:  LDR             R0, [SP,#0x28+var_28]; this
4855E4:  MOV             R1, R6; CTask *
4855E6:  MOVS            R2, #4; int
4855E8:  MOVS            R3, #0; bool
4855EA:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4855EE:  LDR             R0, =(UseDataFence_ptr - 0x4855FA)
4855F0:  ADD.W           R8, SP, #0x28+var_24
4855F4:  MOVS            R6, #0x10
4855F6:  ADD             R0, PC; UseDataFence_ptr
4855F8:  LDR.W           R11, [R0]; UseDataFence
4855FC:  LDR             R0, =(loadingPed_ptr - 0x485602)
4855FE:  ADD             R0, PC; loadingPed_ptr
485600:  LDR.W           R9, [R0]; loadingPed
485604:  LDR             R0, =(missionScript_ptr - 0x48560A)
485606:  ADD             R0, PC; missionScript_ptr
485608:  LDR.W           R10, [R0]; missionScript
48560C:  LDR             R0, =(UseDataFence_ptr - 0x485612)
48560E:  ADD             R0, PC; UseDataFence_ptr
485610:  LDR             R4, [R0]; UseDataFence
485612:  LDRB.W          R5, [R11]
485616:  CBZ             R5, loc_485626
485618:  MOVS            R0, #0
48561A:  MOVS            R1, #(stderr+2); void *
48561C:  STRB            R0, [R4]
48561E:  MOV             R0, R8; this
485620:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
485624:  STRB            R5, [R4]
485626:  MOV             R0, R8; this
485628:  MOVS            R1, #byte_4; void *
48562A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48562E:  LDR             R0, [SP,#0x28+var_24]; this
485630:  CMP             R0, #0x20 ; ' '
485632:  BNE             loc_485652
485634:  BLX             j__ZN5CTask10CreateTaskEv; CTask::CreateTask(void)
485638:  MOV             R5, R0
48563A:  LDR.W           R0, [R9]; this
48563E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
485642:  MOV             R1, R0; int
485644:  LDR.W           R0, [R10]; this
485648:  MOV             R2, R5; CTask *
48564A:  MOVW            R3, #0x5CB; int
48564E:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
485652:  SUBS            R6, #1
485654:  BNE             loc_485612
485656:  ADD             SP, SP, #0xC
485658:  POP.W           {R8-R11}
48565C:  POP             {R4-R7,PC}
