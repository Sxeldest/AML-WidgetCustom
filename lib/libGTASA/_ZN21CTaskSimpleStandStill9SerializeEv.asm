; =========================================================
; Game Engine Function: _ZN21CTaskSimpleStandStill9SerializeEv
; Address            : 0x4F2320 - 0x4F2384
; =========================================================

4F2320:  PUSH            {R4-R7,LR}
4F2322:  ADD             R7, SP, #0xC
4F2324:  PUSH.W          {R11}
4F2328:  MOV             R4, R0
4F232A:  LDR             R0, [R4]
4F232C:  LDR             R1, [R0,#0x14]
4F232E:  MOV             R0, R4
4F2330:  BLX             R1
4F2332:  MOV             R5, R0
4F2334:  LDR             R0, =(UseDataFence_ptr - 0x4F233A)
4F2336:  ADD             R0, PC; UseDataFence_ptr
4F2338:  LDR             R0, [R0]; UseDataFence
4F233A:  LDRB            R0, [R0]
4F233C:  CMP             R0, #0
4F233E:  IT NE
4F2340:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2344:  MOVS            R0, #4; byte_count
4F2346:  BLX             malloc
4F234A:  MOV             R6, R0
4F234C:  MOVS            R1, #byte_4; void *
4F234E:  STR             R5, [R6]
4F2350:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F2354:  MOV             R0, R6; p
4F2356:  BLX             free
4F235A:  LDR             R0, [R4]
4F235C:  LDR             R1, [R0,#0x14]
4F235E:  MOV             R0, R4
4F2360:  BLX             R1
4F2362:  CMP             R0, #0xCB
4F2364:  ITT EQ
4F2366:  POPEQ.W         {R11}
4F236A:  POPEQ           {R4-R7,PC}
4F236C:  LDR             R0, [R4]
4F236E:  LDR             R1, [R0,#0x14]
4F2370:  MOV             R0, R4
4F2372:  BLX             R1
4F2374:  MOV             R1, R0; int
4F2376:  MOVS            R0, #0xCB; int
4F2378:  POP.W           {R11}
4F237C:  POP.W           {R4-R7,LR}
4F2380:  B.W             sub_1941D4
