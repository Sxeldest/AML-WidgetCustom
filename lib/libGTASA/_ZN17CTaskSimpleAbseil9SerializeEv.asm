; =========================================================
; Game Engine Function: _ZN17CTaskSimpleAbseil9SerializeEv
; Address            : 0x4982B8 - 0x49837E
; =========================================================

4982B8:  PUSH            {R4-R7,LR}
4982BA:  ADD             R7, SP, #0xC
4982BC:  PUSH.W          {R8-R10}
4982C0:  SUB             SP, SP, #0x88
4982C2:  MOV             R4, R0
4982C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x4982CA)
4982C6:  ADD             R0, PC; __stack_chk_guard_ptr
4982C8:  LDR             R0, [R0]; __stack_chk_guard
4982CA:  LDR             R0, [R0]
4982CC:  STR             R0, [SP,#0xA0+var_1C]
4982CE:  LDR             R0, [R4]
4982D0:  LDR             R1, [R0,#0x14]
4982D2:  MOV             R0, R4
4982D4:  BLX             R1
4982D6:  MOV             R8, R0
4982D8:  LDR             R0, =(UseDataFence_ptr - 0x4982DE)
4982DA:  ADD             R0, PC; UseDataFence_ptr
4982DC:  LDR             R0, [R0]; UseDataFence
4982DE:  LDRB            R5, [R0]
4982E0:  CBZ             R5, loc_498324
4982E2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4982EE)
4982E4:  MOVS            R3, #0
4982E6:  LDR             R1, =(UseDataFence_ptr - 0x4982F0)
4982E8:  LDR             R2, =(DataFence_ptr - 0x4982F2)
4982EA:  ADD             R0, PC; currentSaveFenceCount_ptr
4982EC:  ADD             R1, PC; UseDataFence_ptr
4982EE:  ADD             R2, PC; DataFence_ptr
4982F0:  LDR             R0, [R0]; currentSaveFenceCount
4982F2:  LDR.W           R9, [R1]; UseDataFence
4982F6:  LDR             R1, [R2]; DataFence
4982F8:  LDR             R2, [R0]
4982FA:  STRB.W          R3, [R9]
4982FE:  LDRH            R1, [R1]
498300:  ADDS            R3, R2, #1
498302:  STR             R3, [R0]
498304:  MOVS            R0, #2; byte_count
498306:  ADD.W           R10, R2, R1
49830A:  BLX             malloc
49830E:  MOV             R6, R0
498310:  MOVS            R1, #(stderr+2); void *
498312:  STRH.W          R10, [R6]
498316:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49831A:  MOV             R0, R6; p
49831C:  BLX             free
498320:  STRB.W          R5, [R9]
498324:  MOVS            R0, #4; byte_count
498326:  BLX             malloc
49832A:  MOV             R6, R0
49832C:  MOVS            R1, #byte_4; void *
49832E:  STR.W           R8, [R6]
498332:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498336:  MOV             R0, R6; p
498338:  BLX             free
49833C:  LDR             R0, [R4]
49833E:  LDR             R1, [R0,#0x14]
498340:  MOV             R0, R4
498342:  BLX             R1
498344:  MOVW            R1, #0x1A7
498348:  CMP             R0, R1
49834A:  BEQ             loc_498364
49834C:  LDR             R0, [R4]
49834E:  LDR             R1, [R0,#0x14]
498350:  MOV             R0, R4
498352:  BLX             R1
498354:  LDR             R1, =(aErrorClassDIsN - 0x498362); "ERROR - class %d is not type %d seriali"...
498356:  MOV             R2, R0
498358:  ADD             R0, SP, #0xA0+var_9C
49835A:  MOVW            R3, #0x1A7
49835E:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
498360:  BL              sub_5E6BC0
498364:  LDR             R0, =(__stack_chk_guard_ptr - 0x49836C)
498366:  LDR             R1, [SP,#0xA0+var_1C]
498368:  ADD             R0, PC; __stack_chk_guard_ptr
49836A:  LDR             R0, [R0]; __stack_chk_guard
49836C:  LDR             R0, [R0]
49836E:  SUBS            R0, R0, R1
498370:  ITTT EQ
498372:  ADDEQ           SP, SP, #0x88
498374:  POPEQ.W         {R8-R10}
498378:  POPEQ           {R4-R7,PC}
49837A:  BLX             __stack_chk_fail
