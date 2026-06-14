; =========================================================
; Game Engine Function: _ZN23CTaskSimpleHitFromFront9SerializeEv
; Address            : 0x497418 - 0x4974DC
; =========================================================

497418:  PUSH            {R4-R7,LR}
49741A:  ADD             R7, SP, #0xC
49741C:  PUSH.W          {R8-R10}
497420:  SUB             SP, SP, #0x88
497422:  MOV             R4, R0
497424:  LDR             R0, =(__stack_chk_guard_ptr - 0x49742A)
497426:  ADD             R0, PC; __stack_chk_guard_ptr
497428:  LDR             R0, [R0]; __stack_chk_guard
49742A:  LDR             R0, [R0]
49742C:  STR             R0, [SP,#0xA0+var_1C]
49742E:  LDR             R0, [R4]
497430:  LDR             R1, [R0,#0x14]
497432:  MOV             R0, R4
497434:  BLX             R1
497436:  MOV             R8, R0
497438:  LDR             R0, =(UseDataFence_ptr - 0x49743E)
49743A:  ADD             R0, PC; UseDataFence_ptr
49743C:  LDR             R0, [R0]; UseDataFence
49743E:  LDRB            R5, [R0]
497440:  CBZ             R5, loc_497484
497442:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49744E)
497444:  MOVS            R3, #0
497446:  LDR             R1, =(UseDataFence_ptr - 0x497450)
497448:  LDR             R2, =(DataFence_ptr - 0x497452)
49744A:  ADD             R0, PC; currentSaveFenceCount_ptr
49744C:  ADD             R1, PC; UseDataFence_ptr
49744E:  ADD             R2, PC; DataFence_ptr
497450:  LDR             R0, [R0]; currentSaveFenceCount
497452:  LDR.W           R9, [R1]; UseDataFence
497456:  LDR             R1, [R2]; DataFence
497458:  LDR             R2, [R0]
49745A:  STRB.W          R3, [R9]
49745E:  LDRH            R1, [R1]
497460:  ADDS            R3, R2, #1
497462:  STR             R3, [R0]
497464:  MOVS            R0, #2; byte_count
497466:  ADD.W           R10, R2, R1
49746A:  BLX             malloc
49746E:  MOV             R6, R0
497470:  MOVS            R1, #(stderr+2); void *
497472:  STRH.W          R10, [R6]
497476:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49747A:  MOV             R0, R6; p
49747C:  BLX             free
497480:  STRB.W          R5, [R9]
497484:  MOVS            R0, #4; byte_count
497486:  BLX             malloc
49748A:  MOV             R6, R0
49748C:  MOVS            R1, #byte_4; void *
49748E:  STR.W           R8, [R6]
497492:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497496:  MOV             R0, R6; p
497498:  BLX             free
49749C:  LDR             R0, [R4]
49749E:  LDR             R1, [R0,#0x14]
4974A0:  MOV             R0, R4
4974A2:  BLX             R1
4974A4:  CMP.W           R0, #0x194
4974A8:  BEQ             loc_4974C2
4974AA:  LDR             R0, [R4]
4974AC:  LDR             R1, [R0,#0x14]
4974AE:  MOV             R0, R4
4974B0:  BLX             R1
4974B2:  LDR             R1, =(aErrorClassDIsN - 0x4974C0); "ERROR - class %d is not type %d seriali"...
4974B4:  MOV             R2, R0
4974B6:  ADD             R0, SP, #0xA0+var_9C
4974B8:  MOV.W           R3, #0x194
4974BC:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
4974BE:  BL              sub_5E6BC0
4974C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x4974CA)
4974C4:  LDR             R1, [SP,#0xA0+var_1C]
4974C6:  ADD             R0, PC; __stack_chk_guard_ptr
4974C8:  LDR             R0, [R0]; __stack_chk_guard
4974CA:  LDR             R0, [R0]
4974CC:  SUBS            R0, R0, R1
4974CE:  ITTT EQ
4974D0:  ADDEQ           SP, SP, #0x88
4974D2:  POPEQ.W         {R8-R10}
4974D6:  POPEQ           {R4-R7,PC}
4974D8:  BLX             __stack_chk_fail
