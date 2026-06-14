; =========================================================
; Game Engine Function: sub_151304
; Address            : 0x151304 - 0x151438
; =========================================================

151304:  PUSH            {R4-R7,LR}
151306:  ADD             R7, SP, #0xC
151308:  PUSH.W          {R8-R11}
15130C:  SUB             SP, SP, #4
15130E:  MOV             R4, R0
151310:  CMP             R1, #0
151312:  BEQ             loc_151392
151314:  MOV             R10, R1
151316:  CMP.W           R1, #0x40000000
15131A:  BCS.W           loc_151430
15131E:  MOV.W           R0, R10,LSL#2; unsigned int
151322:  BLX             j__Znwj; operator new(uint)
151326:  MOV             R1, R0
151328:  LDR             R0, [R4]; void *
15132A:  STR             R1, [R4]
15132C:  CBZ             R0, loc_151332
15132E:  BLX             j__ZdlPv; operator delete(void *)
151332:  MOVS            R0, #0
151334:  MOVS            R1, #0
151336:  STR.W           R10, [R4,#4]
15133A:  LDR             R2, [R4]
15133C:  STR.W           R0, [R2,R1,LSL#2]
151340:  ADDS            R1, #1
151342:  CMP             R10, R1
151344:  BNE             loc_15133A
151346:  MOV             R6, R4
151348:  LDR.W           R11, [R6,#8]!
15134C:  CMP.W           R11, #0
151350:  BEQ             loc_151428
151352:  MOV.W           R0, #0x55555555
151356:  MOV.W           R1, #0x33333333
15135A:  AND.W           R0, R0, R10,LSR#1
15135E:  LDR.W           R8, [R11,#4]
151362:  SUB.W           R0, R10, R0
151366:  AND.W           R1, R1, R0,LSR#2
15136A:  BIC.W           R0, R0, #0xCCCCCCCC
15136E:  ADD             R0, R1
151370:  MOV.W           R1, #0x1010101
151374:  ADD.W           R0, R0, R0,LSR#4
151378:  BIC.W           R0, R0, #0xF0F0F0F0
15137C:  MULS            R0, R1
15137E:  MOV.W           R9, R0,LSR#24
151382:  CMP.W           R9, #1
151386:  BHI             loc_1513A2
151388:  SUB.W           R0, R10, #1
15138C:  AND.W           R8, R8, R0
151390:  B               loc_1513B0
151392:  LDR             R0, [R4]; void *
151394:  MOVS            R5, #0
151396:  STR             R5, [R4]
151398:  CBZ             R0, loc_15139E
15139A:  BLX             j__ZdlPv; operator delete(void *)
15139E:  STR             R5, [R4,#4]
1513A0:  B               loc_151428
1513A2:  CMP             R8, R10
1513A4:  BCC             loc_1513B0
1513A6:  MOV             R0, R8
1513A8:  MOV             R1, R10
1513AA:  BLX             sub_221798
1513AE:  MOV             R8, R1
1513B0:  LDR             R0, [R4]
1513B2:  STR.W           R6, [R0,R8,LSL#2]
1513B6:  LDR.W           R6, [R11]
1513BA:  CBZ             R6, loc_151428
1513BC:  SUB.W           R12, R10, #1
1513C0:  LDR             R0, [R6,#4]
1513C2:  CMP.W           R9, #1
1513C6:  BHI             loc_1513CE
1513C8:  AND.W           R0, R0, R12
1513CC:  B               loc_1513DE
1513CE:  CMP             R0, R10
1513D0:  BCC             loc_1513DE
1513D2:  MOV             R1, R10
1513D4:  MOV             R5, R12
1513D6:  BLX             sub_221798
1513DA:  MOV             R12, R5
1513DC:  MOV             R0, R1
1513DE:  CMP             R0, R8
1513E0:  BNE             loc_1513E6
1513E2:  MOV             R11, R6
1513E4:  B               loc_151420
1513E6:  LDR             R1, [R4]
1513E8:  LDR.W           R2, [R1,R0,LSL#2]
1513EC:  CMP             R2, #0
1513EE:  MOV             R2, R6
1513F0:  BEQ             loc_151418
1513F2:  MOV             R1, R2
1513F4:  LDR             R2, [R2]
1513F6:  CBZ             R2, loc_151400
1513F8:  LDRH            R3, [R2,#8]
1513FA:  LDRH            R5, [R6,#8]
1513FC:  CMP             R5, R3
1513FE:  BEQ             loc_1513F2
151400:  STR.W           R2, [R11]
151404:  LDR             R2, [R4]
151406:  LDR.W           R2, [R2,R0,LSL#2]
15140A:  LDR             R2, [R2]
15140C:  STR             R2, [R1]
15140E:  LDR             R1, [R4]
151410:  LDR.W           R0, [R1,R0,LSL#2]
151414:  STR             R6, [R0]
151416:  B               loc_151420
151418:  STR.W           R11, [R1,R0,LSL#2]
15141C:  MOV             R11, R6
15141E:  MOV             R8, R0
151420:  LDR.W           R6, [R11]
151424:  CMP             R6, #0
151426:  BNE             loc_1513C0
151428:  ADD             SP, SP, #4
15142A:  POP.W           {R8-R11}
15142E:  POP             {R4-R7,PC}
151430:  LDR             R0, =(aAllocatorTAllo - 0x151436); "allocator<T>::allocate(size_t n) 'n' ex"... ...
151432:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
151434:  BL              sub_DC8D4
