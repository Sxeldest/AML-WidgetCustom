; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot10CreateTaskEv
; Address            : 0x496440 - 0x49649E
; =========================================================

496440:  PUSH            {R4,R5,R7,LR}
496442:  ADD             R7, SP, #8
496444:  SUB             SP, SP, #0x18
496446:  LDR             R0, =(UseDataFence_ptr - 0x49644C)
496448:  ADD             R0, PC; UseDataFence_ptr
49644A:  LDR             R0, [R0]; UseDataFence
49644C:  LDRB            R4, [R0]
49644E:  CBZ             R4, loc_496466
496450:  LDR             R0, =(UseDataFence_ptr - 0x496458)
496452:  MOVS            R1, #(stderr+2); void *
496454:  ADD             R0, PC; UseDataFence_ptr
496456:  LDR             R5, [R0]; UseDataFence
496458:  MOVS            R0, #0
49645A:  STRB            R0, [R5]
49645C:  SUB.W           R0, R7, #-var_A; this
496460:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496464:  STRB            R4, [R5]
496466:  ADD             R0, SP, #0x20+var_10; this
496468:  MOVS            R1, #byte_4; void *
49646A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49646E:  LDR             R0, [SP,#0x20+var_10]; this
496470:  MOVS            R5, #0
496472:  ADDS            R1, R0, #1; unsigned int
496474:  BEQ             loc_49647E
496476:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49647A:  MOV             R4, R0
49647C:  B               loc_496480
49647E:  MOVS            R4, #0
496480:  MOVS            R0, #dword_38; this
496482:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496486:  MOVS            R1, #1
496488:  STRD.W          R5, R5, [SP,#0x20+var_20]; unsigned int
49648C:  STR             R1, [SP,#0x20+var_18]; int
49648E:  MOV             R1, R4; CPed *
496490:  MOV.W           R2, #0xFFFFFFFF; int
496494:  MOVS            R3, #0; unsigned int
496496:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
49649A:  ADD             SP, SP, #0x18
49649C:  POP             {R4,R5,R7,PC}
