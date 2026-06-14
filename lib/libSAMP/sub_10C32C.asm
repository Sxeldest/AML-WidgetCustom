; =========================================================
; Game Engine Function: sub_10C32C
; Address            : 0x10C32C - 0x10C460
; =========================================================

10C32C:  PUSH            {R4-R7,LR}
10C32E:  ADD             R7, SP, #0xC
10C330:  PUSH.W          {R8-R11}
10C334:  SUB             SP, SP, #4
10C336:  MOV             R4, R0
10C338:  CMP             R1, #0
10C33A:  BEQ             loc_10C3BA
10C33C:  MOV             R10, R1
10C33E:  CMP.W           R1, #0x40000000
10C342:  BCS.W           loc_10C458
10C346:  MOV.W           R0, R10,LSL#2; unsigned int
10C34A:  BLX             j__Znwj; operator new(uint)
10C34E:  MOV             R1, R0
10C350:  LDR             R0, [R4]; void *
10C352:  STR             R1, [R4]
10C354:  CBZ             R0, loc_10C35A
10C356:  BLX             j__ZdlPv; operator delete(void *)
10C35A:  MOVS            R0, #0
10C35C:  MOVS            R1, #0
10C35E:  STR.W           R10, [R4,#4]
10C362:  LDR             R2, [R4]
10C364:  STR.W           R0, [R2,R1,LSL#2]
10C368:  ADDS            R1, #1
10C36A:  CMP             R10, R1
10C36C:  BNE             loc_10C362
10C36E:  MOV             R6, R4
10C370:  LDR.W           R11, [R6,#8]!
10C374:  CMP.W           R11, #0
10C378:  BEQ             loc_10C450
10C37A:  MOV.W           R0, #0x55555555
10C37E:  MOV.W           R1, #0x33333333
10C382:  AND.W           R0, R0, R10,LSR#1
10C386:  LDR.W           R8, [R11,#4]
10C38A:  SUB.W           R0, R10, R0
10C38E:  AND.W           R1, R1, R0,LSR#2
10C392:  BIC.W           R0, R0, #0xCCCCCCCC
10C396:  ADD             R0, R1
10C398:  MOV.W           R1, #0x1010101
10C39C:  ADD.W           R0, R0, R0,LSR#4
10C3A0:  BIC.W           R0, R0, #0xF0F0F0F0
10C3A4:  MULS            R0, R1
10C3A6:  MOV.W           R9, R0,LSR#24
10C3AA:  CMP.W           R9, #1
10C3AE:  BHI             loc_10C3CA
10C3B0:  SUB.W           R0, R10, #1
10C3B4:  AND.W           R8, R8, R0
10C3B8:  B               loc_10C3D8
10C3BA:  LDR             R0, [R4]; void *
10C3BC:  MOVS            R5, #0
10C3BE:  STR             R5, [R4]
10C3C0:  CBZ             R0, loc_10C3C6
10C3C2:  BLX             j__ZdlPv; operator delete(void *)
10C3C6:  STR             R5, [R4,#4]
10C3C8:  B               loc_10C450
10C3CA:  CMP             R8, R10
10C3CC:  BCC             loc_10C3D8
10C3CE:  MOV             R0, R8
10C3D0:  MOV             R1, R10
10C3D2:  BLX             sub_221798
10C3D6:  MOV             R8, R1
10C3D8:  LDR             R0, [R4]
10C3DA:  STR.W           R6, [R0,R8,LSL#2]
10C3DE:  LDR.W           R6, [R11]
10C3E2:  CBZ             R6, loc_10C450
10C3E4:  SUB.W           R12, R10, #1
10C3E8:  LDR             R0, [R6,#4]
10C3EA:  CMP.W           R9, #1
10C3EE:  BHI             loc_10C3F6
10C3F0:  AND.W           R0, R0, R12
10C3F4:  B               loc_10C406
10C3F6:  CMP             R0, R10
10C3F8:  BCC             loc_10C406
10C3FA:  MOV             R1, R10
10C3FC:  MOV             R5, R12
10C3FE:  BLX             sub_221798
10C402:  MOV             R12, R5
10C404:  MOV             R0, R1
10C406:  CMP             R0, R8
10C408:  BNE             loc_10C40E
10C40A:  MOV             R11, R6
10C40C:  B               loc_10C448
10C40E:  LDR             R1, [R4]
10C410:  LDR.W           R2, [R1,R0,LSL#2]
10C414:  CMP             R2, #0
10C416:  MOV             R2, R6
10C418:  BEQ             loc_10C440
10C41A:  MOV             R1, R2
10C41C:  LDR             R2, [R2]
10C41E:  CBZ             R2, loc_10C428
10C420:  LDRH            R3, [R2,#8]
10C422:  LDRH            R5, [R6,#8]
10C424:  CMP             R5, R3
10C426:  BEQ             loc_10C41A
10C428:  STR.W           R2, [R11]
10C42C:  LDR             R2, [R4]
10C42E:  LDR.W           R2, [R2,R0,LSL#2]
10C432:  LDR             R2, [R2]
10C434:  STR             R2, [R1]
10C436:  LDR             R1, [R4]
10C438:  LDR.W           R0, [R1,R0,LSL#2]
10C43C:  STR             R6, [R0]
10C43E:  B               loc_10C448
10C440:  STR.W           R11, [R1,R0,LSL#2]
10C444:  MOV             R11, R6
10C446:  MOV             R8, R0
10C448:  LDR.W           R6, [R11]
10C44C:  CMP             R6, #0
10C44E:  BNE             loc_10C3E8
10C450:  ADD             SP, SP, #4
10C452:  POP.W           {R8-R11}
10C456:  POP             {R4-R7,PC}
10C458:  LDR             R0, =(aAllocatorTAllo - 0x10C45E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
10C45A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
10C45C:  BL              sub_DC8D4
