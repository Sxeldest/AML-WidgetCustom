; =========================================================
; Game Engine Function: _ZN16CTaskSimplePause9SerializeEv
; Address            : 0x3573CC - 0x35745C
; =========================================================

3573CC:  PUSH            {R4-R7,LR}
3573CE:  ADD             R7, SP, #0xC
3573D0:  PUSH.W          {R11}
3573D4:  MOV             R4, R0
3573D6:  LDR             R0, [R4]
3573D8:  LDR             R1, [R0,#0x14]
3573DA:  MOV             R0, R4
3573DC:  BLX             R1
3573DE:  MOV             R5, R0
3573E0:  LDR             R0, =(UseDataFence_ptr - 0x3573E6)
3573E2:  ADD             R0, PC; UseDataFence_ptr
3573E4:  LDR             R0, [R0]; UseDataFence
3573E6:  LDRB            R0, [R0]
3573E8:  CMP             R0, #0
3573EA:  IT NE
3573EC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3573F0:  MOVS            R0, #4; byte_count
3573F2:  BLX             malloc
3573F6:  MOV             R6, R0
3573F8:  MOVS            R1, #byte_4; void *
3573FA:  STR             R5, [R6]
3573FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357400:  MOV             R0, R6; p
357402:  BLX             free
357406:  LDR             R0, [R4]
357408:  LDR             R1, [R0,#0x14]
35740A:  MOV             R0, R4
35740C:  BLX             R1
35740E:  CMP             R0, #0xCA
357410:  BNE             loc_357444
357412:  LDR             R0, =(UseDataFence_ptr - 0x357418)
357414:  ADD             R0, PC; UseDataFence_ptr
357416:  LDR             R0, [R0]; UseDataFence
357418:  LDRB            R0, [R0]
35741A:  CMP             R0, #0
35741C:  IT NE
35741E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357422:  MOVS            R0, #4; byte_count
357424:  BLX             malloc
357428:  MOV             R5, R0
35742A:  LDR             R0, [R4,#0x14]
35742C:  STR             R0, [R5]
35742E:  MOV             R0, R5; this
357430:  MOVS            R1, #byte_4; void *
357432:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357436:  MOV             R0, R5; p
357438:  POP.W           {R11}
35743C:  POP.W           {R4-R7,LR}
357440:  B.W             j_free
357444:  LDR             R0, [R4]
357446:  LDR             R1, [R0,#0x14]
357448:  MOV             R0, R4
35744A:  BLX             R1
35744C:  MOV             R1, R0; int
35744E:  MOVS            R0, #0xCA; int
357450:  POP.W           {R11}
357454:  POP.W           {R4-R7,LR}
357458:  B.W             sub_1941D4
