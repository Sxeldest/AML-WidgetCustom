; =========================================================
; Game Engine Function: _ZN22CTaskSimpleHitFromLeft9SerializeEv
; Address            : 0x49754C - 0x497612
; =========================================================

49754C:  PUSH            {R4-R7,LR}
49754E:  ADD             R7, SP, #0xC
497550:  PUSH.W          {R8-R10}
497554:  SUB             SP, SP, #0x88
497556:  MOV             R4, R0
497558:  LDR             R0, =(__stack_chk_guard_ptr - 0x49755E)
49755A:  ADD             R0, PC; __stack_chk_guard_ptr
49755C:  LDR             R0, [R0]; __stack_chk_guard
49755E:  LDR             R0, [R0]
497560:  STR             R0, [SP,#0xA0+var_1C]
497562:  LDR             R0, [R4]
497564:  LDR             R1, [R0,#0x14]
497566:  MOV             R0, R4
497568:  BLX             R1
49756A:  MOV             R8, R0
49756C:  LDR             R0, =(UseDataFence_ptr - 0x497572)
49756E:  ADD             R0, PC; UseDataFence_ptr
497570:  LDR             R0, [R0]; UseDataFence
497572:  LDRB            R5, [R0]
497574:  CBZ             R5, loc_4975B8
497576:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497582)
497578:  MOVS            R3, #0
49757A:  LDR             R1, =(UseDataFence_ptr - 0x497584)
49757C:  LDR             R2, =(DataFence_ptr - 0x497586)
49757E:  ADD             R0, PC; currentSaveFenceCount_ptr
497580:  ADD             R1, PC; UseDataFence_ptr
497582:  ADD             R2, PC; DataFence_ptr
497584:  LDR             R0, [R0]; currentSaveFenceCount
497586:  LDR.W           R9, [R1]; UseDataFence
49758A:  LDR             R1, [R2]; DataFence
49758C:  LDR             R2, [R0]
49758E:  STRB.W          R3, [R9]
497592:  LDRH            R1, [R1]
497594:  ADDS            R3, R2, #1
497596:  STR             R3, [R0]
497598:  MOVS            R0, #2; byte_count
49759A:  ADD.W           R10, R2, R1
49759E:  BLX             malloc
4975A2:  MOV             R6, R0
4975A4:  MOVS            R1, #(stderr+2); void *
4975A6:  STRH.W          R10, [R6]
4975AA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4975AE:  MOV             R0, R6; p
4975B0:  BLX             free
4975B4:  STRB.W          R5, [R9]
4975B8:  MOVS            R0, #4; byte_count
4975BA:  BLX             malloc
4975BE:  MOV             R6, R0
4975C0:  MOVS            R1, #byte_4; void *
4975C2:  STR.W           R8, [R6]
4975C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4975CA:  MOV             R0, R6; p
4975CC:  BLX             free
4975D0:  LDR             R0, [R4]
4975D2:  LDR             R1, [R0,#0x14]
4975D4:  MOV             R0, R4
4975D6:  BLX             R1
4975D8:  MOVW            R1, #0x195
4975DC:  CMP             R0, R1
4975DE:  BEQ             loc_4975F8
4975E0:  LDR             R0, [R4]
4975E2:  LDR             R1, [R0,#0x14]
4975E4:  MOV             R0, R4
4975E6:  BLX             R1
4975E8:  LDR             R1, =(aErrorClassDIsN - 0x4975F6); "ERROR - class %d is not type %d seriali"...
4975EA:  MOV             R2, R0
4975EC:  ADD             R0, SP, #0xA0+var_9C
4975EE:  MOVW            R3, #0x195
4975F2:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
4975F4:  BL              sub_5E6BC0
4975F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x497600)
4975FA:  LDR             R1, [SP,#0xA0+var_1C]
4975FC:  ADD             R0, PC; __stack_chk_guard_ptr
4975FE:  LDR             R0, [R0]; __stack_chk_guard
497600:  LDR             R0, [R0]
497602:  SUBS            R0, R0, R1
497604:  ITTT EQ
497606:  ADDEQ           SP, SP, #0x88
497608:  POPEQ.W         {R8-R10}
49760C:  POPEQ           {R4-R7,PC}
49760E:  BLX             __stack_chk_fail
