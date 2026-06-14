; =========================================================
; Game Engine Function: _ZN22CTaskSimpleHitFromBack9SerializeEv
; Address            : 0x4972E0 - 0x4973A6
; =========================================================

4972E0:  PUSH            {R4-R7,LR}
4972E2:  ADD             R7, SP, #0xC
4972E4:  PUSH.W          {R8-R10}
4972E8:  SUB             SP, SP, #0x88
4972EA:  MOV             R4, R0
4972EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x4972F2)
4972EE:  ADD             R0, PC; __stack_chk_guard_ptr
4972F0:  LDR             R0, [R0]; __stack_chk_guard
4972F2:  LDR             R0, [R0]
4972F4:  STR             R0, [SP,#0xA0+var_1C]
4972F6:  LDR             R0, [R4]
4972F8:  LDR             R1, [R0,#0x14]
4972FA:  MOV             R0, R4
4972FC:  BLX             R1
4972FE:  MOV             R8, R0
497300:  LDR             R0, =(UseDataFence_ptr - 0x497306)
497302:  ADD             R0, PC; UseDataFence_ptr
497304:  LDR             R0, [R0]; UseDataFence
497306:  LDRB            R5, [R0]
497308:  CBZ             R5, loc_49734C
49730A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497316)
49730C:  MOVS            R3, #0
49730E:  LDR             R1, =(UseDataFence_ptr - 0x497318)
497310:  LDR             R2, =(DataFence_ptr - 0x49731A)
497312:  ADD             R0, PC; currentSaveFenceCount_ptr
497314:  ADD             R1, PC; UseDataFence_ptr
497316:  ADD             R2, PC; DataFence_ptr
497318:  LDR             R0, [R0]; currentSaveFenceCount
49731A:  LDR.W           R9, [R1]; UseDataFence
49731E:  LDR             R1, [R2]; DataFence
497320:  LDR             R2, [R0]
497322:  STRB.W          R3, [R9]
497326:  LDRH            R1, [R1]
497328:  ADDS            R3, R2, #1
49732A:  STR             R3, [R0]
49732C:  MOVS            R0, #2; byte_count
49732E:  ADD.W           R10, R2, R1
497332:  BLX             malloc
497336:  MOV             R6, R0
497338:  MOVS            R1, #(stderr+2); void *
49733A:  STRH.W          R10, [R6]
49733E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497342:  MOV             R0, R6; p
497344:  BLX             free
497348:  STRB.W          R5, [R9]
49734C:  MOVS            R0, #4; byte_count
49734E:  BLX             malloc
497352:  MOV             R6, R0
497354:  MOVS            R1, #byte_4; void *
497356:  STR.W           R8, [R6]
49735A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49735E:  MOV             R0, R6; p
497360:  BLX             free
497364:  LDR             R0, [R4]
497366:  LDR             R1, [R0,#0x14]
497368:  MOV             R0, R4
49736A:  BLX             R1
49736C:  MOVW            R1, #0x193
497370:  CMP             R0, R1
497372:  BEQ             loc_49738C
497374:  LDR             R0, [R4]
497376:  LDR             R1, [R0,#0x14]
497378:  MOV             R0, R4
49737A:  BLX             R1
49737C:  LDR             R1, =(aErrorClassDIsN - 0x49738A); "ERROR - class %d is not type %d seriali"...
49737E:  MOV             R2, R0
497380:  ADD             R0, SP, #0xA0+var_9C
497382:  MOVW            R3, #0x193
497386:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497388:  BL              sub_5E6BC0
49738C:  LDR             R0, =(__stack_chk_guard_ptr - 0x497394)
49738E:  LDR             R1, [SP,#0xA0+var_1C]
497390:  ADD             R0, PC; __stack_chk_guard_ptr
497392:  LDR             R0, [R0]; __stack_chk_guard
497394:  LDR             R0, [R0]
497396:  SUBS            R0, R0, R1
497398:  ITTT EQ
49739A:  ADDEQ           SP, SP, #0x88
49739C:  POPEQ.W         {R8-R10}
4973A0:  POPEQ           {R4-R7,PC}
4973A2:  BLX             __stack_chk_fail
