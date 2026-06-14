; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeading9SerializeEv
; Address            : 0x527488 - 0x527572
; =========================================================

527488:  PUSH            {R4-R7,LR}
52748A:  ADD             R7, SP, #0xC
52748C:  PUSH.W          {R11}
527490:  MOV             R4, R0
527492:  LDR             R0, [R4]
527494:  LDR             R1, [R0,#0x14]
527496:  MOV             R0, R4
527498:  BLX             R1
52749A:  MOV             R5, R0
52749C:  LDR             R0, =(UseDataFence_ptr - 0x5274A2)
52749E:  ADD             R0, PC; UseDataFence_ptr
5274A0:  LDR             R0, [R0]; UseDataFence
5274A2:  LDRB            R0, [R0]
5274A4:  CMP             R0, #0
5274A6:  IT NE
5274A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5274AC:  MOVS            R0, #4; byte_count
5274AE:  BLX             malloc
5274B2:  MOV             R6, R0
5274B4:  MOVS            R1, #byte_4; void *
5274B6:  STR             R5, [R6]
5274B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5274BC:  MOV             R0, R6; p
5274BE:  BLX             free
5274C2:  LDR             R0, [R4]
5274C4:  LDR             R1, [R0,#0x14]
5274C6:  MOV             R0, R4
5274C8:  BLX             R1
5274CA:  MOVW            R1, #0x386
5274CE:  CMP             R0, R1
5274D0:  BNE             loc_527558
5274D2:  LDR             R0, =(UseDataFence_ptr - 0x5274D8)
5274D4:  ADD             R0, PC; UseDataFence_ptr
5274D6:  LDR             R0, [R0]; UseDataFence
5274D8:  LDRB            R0, [R0]
5274DA:  CMP             R0, #0
5274DC:  IT NE
5274DE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5274E2:  MOVS            R0, #4; byte_count
5274E4:  BLX             malloc
5274E8:  MOV             R5, R0
5274EA:  LDR             R0, [R4,#8]
5274EC:  STR             R0, [R5]
5274EE:  MOV             R0, R5; this
5274F0:  MOVS            R1, #byte_4; void *
5274F2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5274F6:  MOV             R0, R5; p
5274F8:  BLX             free
5274FC:  LDR             R0, =(UseDataFence_ptr - 0x527502)
5274FE:  ADD             R0, PC; UseDataFence_ptr
527500:  LDR             R0, [R0]; UseDataFence
527502:  LDRB            R0, [R0]
527504:  CMP             R0, #0
527506:  IT NE
527508:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52750C:  MOVS            R0, #4; byte_count
52750E:  BLX             malloc
527512:  MOV             R5, R0
527514:  LDR             R0, [R4,#0xC]
527516:  STR             R0, [R5]
527518:  MOV             R0, R5; this
52751A:  MOVS            R1, #byte_4; void *
52751C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527520:  MOV             R0, R5; p
527522:  BLX             free
527526:  LDR             R0, =(UseDataFence_ptr - 0x52752C)
527528:  ADD             R0, PC; UseDataFence_ptr
52752A:  LDR             R0, [R0]; UseDataFence
52752C:  LDRB            R0, [R0]
52752E:  CMP             R0, #0
527530:  IT NE
527532:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527536:  MOVS            R0, #4; byte_count
527538:  BLX             malloc
52753C:  MOV             R5, R0
52753E:  LDR             R0, [R4,#0x10]
527540:  STR             R0, [R5]
527542:  MOV             R0, R5; this
527544:  MOVS            R1, #byte_4; void *
527546:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52754A:  MOV             R0, R5; p
52754C:  POP.W           {R11}
527550:  POP.W           {R4-R7,LR}
527554:  B.W             j_free
527558:  LDR             R0, [R4]
52755A:  LDR             R1, [R0,#0x14]
52755C:  MOV             R0, R4
52755E:  BLX             R1
527560:  MOV             R1, R0; int
527562:  MOVW            R0, #0x386; int
527566:  POP.W           {R11}
52756A:  POP.W           {R4-R7,LR}
52756E:  B.W             sub_1941D4
