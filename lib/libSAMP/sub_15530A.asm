; =========================================================
; Game Engine Function: sub_15530A
; Address            : 0x15530A - 0x155354
; =========================================================

15530A:  PUSH            {R4,R6,R7,LR}
15530C:  ADD             R7, SP, #8
15530E:  SUB             SP, SP, #0x10
155310:  MOV             R4, R1
155312:  EOR.W           R1, R3, #1
155316:  STR             R1, [SP,#0x18+var_18]
155318:  ADD.W           R1, R0, #0x14
15531C:  ADD             R0, SP, #0x18+var_10
15531E:  MOV             R3, R4
155320:  BL              sub_15C1BC
155324:  LDR             R4, [SP,#0x18+var_C]
155326:  CBZ             R4, loc_155350
155328:  ADDS            R0, R4, #4
15532A:  DMB.W           ISH
15532E:  LDREX.W         R1, [R0]
155332:  SUBS            R2, R1, #1
155334:  STREX.W         R3, R2, [R0]
155338:  CMP             R3, #0
15533A:  BNE             loc_15532E
15533C:  DMB.W           ISH
155340:  CBNZ            R1, loc_155350
155342:  LDR             R0, [R4]
155344:  LDR             R1, [R0,#8]
155346:  MOV             R0, R4
155348:  BLX             R1
15534A:  MOV             R0, R4; this
15534C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
155350:  ADD             SP, SP, #0x10
155352:  POP             {R4,R6,R7,PC}
