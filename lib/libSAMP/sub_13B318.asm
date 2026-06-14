; =========================================================
; Game Engine Function: sub_13B318
; Address            : 0x13B318 - 0x13B44C
; =========================================================

13B318:  PUSH            {R4-R7,LR}
13B31A:  ADD             R7, SP, #0xC
13B31C:  PUSH.W          {R8-R11}
13B320:  SUB             SP, SP, #4
13B322:  MOV             R4, R0
13B324:  CMP             R1, #0
13B326:  BEQ             loc_13B3A6
13B328:  MOV             R10, R1
13B32A:  CMP.W           R1, #0x40000000
13B32E:  BCS.W           loc_13B444
13B332:  MOV.W           R0, R10,LSL#2; unsigned int
13B336:  BLX             j__Znwj; operator new(uint)
13B33A:  MOV             R1, R0
13B33C:  LDR             R0, [R4]; void *
13B33E:  STR             R1, [R4]
13B340:  CBZ             R0, loc_13B346
13B342:  BLX             j__ZdlPv; operator delete(void *)
13B346:  MOVS            R0, #0
13B348:  MOVS            R1, #0
13B34A:  STR.W           R10, [R4,#4]
13B34E:  LDR             R2, [R4]
13B350:  STR.W           R0, [R2,R1,LSL#2]
13B354:  ADDS            R1, #1
13B356:  CMP             R10, R1
13B358:  BNE             loc_13B34E
13B35A:  MOV             R6, R4
13B35C:  LDR.W           R11, [R6,#8]!
13B360:  CMP.W           R11, #0
13B364:  BEQ             loc_13B43C
13B366:  MOV.W           R0, #0x55555555
13B36A:  MOV.W           R1, #0x33333333
13B36E:  AND.W           R0, R0, R10,LSR#1
13B372:  LDR.W           R8, [R11,#4]
13B376:  SUB.W           R0, R10, R0
13B37A:  AND.W           R1, R1, R0,LSR#2
13B37E:  BIC.W           R0, R0, #0xCCCCCCCC
13B382:  ADD             R0, R1
13B384:  MOV.W           R1, #0x1010101
13B388:  ADD.W           R0, R0, R0,LSR#4
13B38C:  BIC.W           R0, R0, #0xF0F0F0F0
13B390:  MULS            R0, R1
13B392:  MOV.W           R9, R0,LSR#24
13B396:  CMP.W           R9, #1
13B39A:  BHI             loc_13B3B6
13B39C:  SUB.W           R0, R10, #1
13B3A0:  AND.W           R8, R8, R0
13B3A4:  B               loc_13B3C4
13B3A6:  LDR             R0, [R4]; void *
13B3A8:  MOVS            R5, #0
13B3AA:  STR             R5, [R4]
13B3AC:  CBZ             R0, loc_13B3B2
13B3AE:  BLX             j__ZdlPv; operator delete(void *)
13B3B2:  STR             R5, [R4,#4]
13B3B4:  B               loc_13B43C
13B3B6:  CMP             R8, R10
13B3B8:  BCC             loc_13B3C4
13B3BA:  MOV             R0, R8
13B3BC:  MOV             R1, R10
13B3BE:  BLX             sub_221798
13B3C2:  MOV             R8, R1
13B3C4:  LDR             R0, [R4]
13B3C6:  STR.W           R6, [R0,R8,LSL#2]
13B3CA:  LDR.W           R6, [R11]
13B3CE:  CBZ             R6, loc_13B43C
13B3D0:  SUB.W           R12, R10, #1
13B3D4:  LDR             R0, [R6,#4]
13B3D6:  CMP.W           R9, #1
13B3DA:  BHI             loc_13B3E2
13B3DC:  AND.W           R0, R0, R12
13B3E0:  B               loc_13B3F2
13B3E2:  CMP             R0, R10
13B3E4:  BCC             loc_13B3F2
13B3E6:  MOV             R1, R10
13B3E8:  MOV             R5, R12
13B3EA:  BLX             sub_221798
13B3EE:  MOV             R12, R5
13B3F0:  MOV             R0, R1
13B3F2:  CMP             R0, R8
13B3F4:  BNE             loc_13B3FA
13B3F6:  MOV             R11, R6
13B3F8:  B               loc_13B434
13B3FA:  LDR             R1, [R4]
13B3FC:  LDR.W           R2, [R1,R0,LSL#2]
13B400:  CMP             R2, #0
13B402:  MOV             R2, R6
13B404:  BEQ             loc_13B42C
13B406:  MOV             R1, R2
13B408:  LDR             R2, [R2]
13B40A:  CBZ             R2, loc_13B414
13B40C:  LDRH            R3, [R2,#8]
13B40E:  LDRH            R5, [R6,#8]
13B410:  CMP             R5, R3
13B412:  BEQ             loc_13B406
13B414:  STR.W           R2, [R11]
13B418:  LDR             R2, [R4]
13B41A:  LDR.W           R2, [R2,R0,LSL#2]
13B41E:  LDR             R2, [R2]
13B420:  STR             R2, [R1]
13B422:  LDR             R1, [R4]
13B424:  LDR.W           R0, [R1,R0,LSL#2]
13B428:  STR             R6, [R0]
13B42A:  B               loc_13B434
13B42C:  STR.W           R11, [R1,R0,LSL#2]
13B430:  MOV             R11, R6
13B432:  MOV             R8, R0
13B434:  LDR.W           R6, [R11]
13B438:  CMP             R6, #0
13B43A:  BNE             loc_13B3D4
13B43C:  ADD             SP, SP, #4
13B43E:  POP.W           {R8-R11}
13B442:  POP             {R4-R7,PC}
13B444:  LDR             R0, =(aAllocatorTAllo - 0x13B44A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13B446:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13B448:  BL              sub_DC8D4
