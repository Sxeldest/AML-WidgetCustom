; =========================================================
; Game Engine Function: _ZN14CTaskSimpleSay9SerializeEv
; Address            : 0x357500 - 0x3575C0
; =========================================================

357500:  PUSH            {R4-R7,LR}
357502:  ADD             R7, SP, #0xC
357504:  PUSH.W          {R11}
357508:  MOV             R4, R0
35750A:  LDR             R0, [R4]
35750C:  LDR             R1, [R0,#0x14]
35750E:  MOV             R0, R4
357510:  BLX             R1
357512:  MOV             R5, R0
357514:  LDR             R0, =(UseDataFence_ptr - 0x35751A)
357516:  ADD             R0, PC; UseDataFence_ptr
357518:  LDR             R0, [R0]; UseDataFence
35751A:  LDRB            R0, [R0]
35751C:  CMP             R0, #0
35751E:  IT NE
357520:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357524:  MOVS            R0, #4; byte_count
357526:  BLX             malloc
35752A:  MOV             R6, R0
35752C:  MOVS            R1, #byte_4; void *
35752E:  STR             R5, [R6]
357530:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357534:  MOV             R0, R6; p
357536:  BLX             free
35753A:  LDR             R0, [R4]
35753C:  LDR             R1, [R0,#0x14]
35753E:  MOV             R0, R4
357540:  BLX             R1
357542:  MOVW            R1, #0x12D
357546:  CMP             R0, R1
357548:  BNE             loc_3575A6
35754A:  LDR             R0, =(UseDataFence_ptr - 0x357550)
35754C:  ADD             R0, PC; UseDataFence_ptr
35754E:  LDR             R0, [R0]; UseDataFence
357550:  LDRB            R0, [R0]
357552:  CMP             R0, #0
357554:  IT NE
357556:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35755A:  MOVS            R0, #4; byte_count
35755C:  BLX             malloc
357560:  MOV             R5, R0
357562:  LDR             R0, [R4,#8]
357564:  STR             R0, [R5]
357566:  MOV             R0, R5; this
357568:  MOVS            R1, #byte_4; void *
35756A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35756E:  MOV             R0, R5; p
357570:  BLX             free
357574:  LDR             R0, =(UseDataFence_ptr - 0x35757A)
357576:  ADD             R0, PC; UseDataFence_ptr
357578:  LDR             R0, [R0]; UseDataFence
35757A:  LDRB            R0, [R0]
35757C:  CMP             R0, #0
35757E:  IT NE
357580:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357584:  MOVS            R0, #4; byte_count
357586:  BLX             malloc
35758A:  MOV             R5, R0
35758C:  LDR             R0, [R4,#0xC]
35758E:  STR             R0, [R5]
357590:  MOV             R0, R5; this
357592:  MOVS            R1, #byte_4; void *
357594:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357598:  MOV             R0, R5; p
35759A:  POP.W           {R11}
35759E:  POP.W           {R4-R7,LR}
3575A2:  B.W             j_free
3575A6:  LDR             R0, [R4]
3575A8:  LDR             R1, [R0,#0x14]
3575AA:  MOV             R0, R4
3575AC:  BLX             R1
3575AE:  MOV             R1, R0; int
3575B0:  MOVW            R0, #0x12D; int
3575B4:  POP.W           {R11}
3575B8:  POP.W           {R4-R7,LR}
3575BC:  B.W             sub_1941D4
