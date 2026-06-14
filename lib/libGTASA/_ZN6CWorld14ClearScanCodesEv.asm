; =========================================================
; Game Engine Function: _ZN6CWorld14ClearScanCodesEv
; Address            : 0x428404 - 0x4284A2
; =========================================================

428404:  PUSH            {R4,R5,R7,LR}
428406:  ADD             R7, SP, #8
428408:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x428412)
42840A:  MOVS            R0, #0
42840C:  MOVS            R3, #0
42840E:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
428410:  LDR.W           R12, [R1]; CWorld::ms_aSectors ...
428414:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42841A)
428416:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
428418:  LDR             R2, [R1]; CWorld::ms_aSectors ...
42841A:  LDR.W           R1, [R12,R3,LSL#3]
42841E:  CBZ             R1, loc_42842A
428420:  LDR             R4, [R1]
428422:  STRH            R0, [R4,#0x30]
428424:  LDR             R1, [R1,#4]
428426:  CMP             R1, #0
428428:  BNE             loc_428420
42842A:  ADD.W           R1, R2, R3,LSL#3
42842E:  B               loc_428434
428430:  LDR             R4, [R1]
428432:  STRH            R0, [R4,#0x30]
428434:  LDR             R1, [R1,#4]
428436:  CMP             R1, #0
428438:  BNE             loc_428430
42843A:  ADDS            R3, #1
42843C:  CMP.W           R3, #0x3840
428440:  BNE             loc_42841A
428442:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42844A)
428444:  MOVS            R0, #0
428446:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428448:  LDR.W           R12, [R1]; CWorld::ms_aRepeatSectors ...
42844C:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x428452)
42844E:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428450:  LDR.W           LR, [R1]; CWorld::ms_aRepeatSectors ...
428454:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42845A)
428456:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428458:  LDR             R3, [R1]; CWorld::ms_aRepeatSectors ...
42845A:  MOVS            R1, #0
42845C:  B               loc_428468
42845E:  ADDS            R1, #1
428460:  CMP.W           R1, #0x100
428464:  IT EQ
428466:  POPEQ           {R4,R5,R7,PC}
428468:  ADD.W           R2, R1, R1,LSL#1
42846C:  LDR.W           R4, [R12,R2,LSL#2]
428470:  CBZ             R4, loc_42847C
428472:  LDR             R5, [R4]
428474:  STRH            R0, [R5,#0x30]
428476:  LDR             R4, [R4,#4]
428478:  CMP             R4, #0
42847A:  BNE             loc_428472
42847C:  ADD.W           R4, LR, R2,LSL#2
428480:  B               loc_428486
428482:  LDR             R5, [R4]
428484:  STRH            R0, [R5,#0x30]
428486:  LDR             R4, [R4,#4]
428488:  CMP             R4, #0
42848A:  BNE             loc_428482
42848C:  ADD.W           R2, R3, R2,LSL#2
428490:  LDR             R2, [R2,#8]
428492:  CMP             R2, #0
428494:  BEQ             loc_42845E
428496:  LDR             R4, [R2]
428498:  STRH            R0, [R4,#0x30]
42849A:  LDR             R2, [R2,#4]
42849C:  CMP             R2, #0
42849E:  BNE             loc_428496
4284A0:  B               loc_42845E
