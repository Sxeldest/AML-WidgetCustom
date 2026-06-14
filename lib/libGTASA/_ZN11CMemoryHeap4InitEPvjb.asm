; =========================================================
; Game Engine Function: _ZN11CMemoryHeap4InitEPvjb
; Address            : 0x5D237E - 0x5D2438
; =========================================================

5D237E:  PUSH            {R4-R7,LR}
5D2380:  ADD             R7, SP, #0xC
5D2382:  PUSH.W          {R11}
5D2386:  MOV             R4, R0
5D2388:  MOV.W           R0, #0xFFFFFFFF
5D238C:  MOVS            R6, #0
5D238E:  MOV.W           R12, #1
5D2392:  STRD.W          R6, R0, [R4,#0x40]
5D2396:  ADDS            R0, R1, R2
5D2398:  SUB.W           LR, R0, #0x10
5D239C:  STRB.W          R12, [R4,#0x3C]
5D23A0:  CMP             R3, #1
5D23A2:  STRD.W          R1, LR, [R4]
5D23A6:  MOVW            R1, #0xFFFF
5D23AA:  STRB.W          R12, [R0,#-0xC]
5D23AE:  MOV             R12, #0x7FFFFFFF
5D23B2:  LDR             R0, [R4,#4]
5D23B4:  STRH            R1, [R0,#6]
5D23B6:  LDR             R0, [R4,#4]
5D23B8:  STR             R6, [R0]
5D23BA:  LDRD.W          R0, R1, [R4]
5D23BE:  STR             R0, [R1,#0xC]
5D23C0:  SUB.W           R1, R2, #0x20 ; ' '
5D23C4:  LDR             R0, [R4]
5D23C6:  MOV             R2, R4
5D23C8:  STR             R1, [R0]
5D23CA:  LDR             R0, [R4]
5D23CC:  STRB            R6, [R0,#4]
5D23CE:  LDR             R0, [R4]
5D23D0:  STR             R6, [R0,#0xC]
5D23D2:  ADD.W           R0, R4, #8
5D23D6:  STR             R0, [R4,#0x34]
5D23D8:  LDR             R1, [R4]
5D23DA:  STR.W           R12, [R2,#0x20]!
5D23DE:  STR             R2, [R4,#0x18]
5D23E0:  STR             R2, [R1,#0x10]
5D23E2:  LDR             R2, [R4,#0x18]
5D23E4:  STR             R1, [R2,#0x14]
5D23E6:  STR             R0, [R1,#0x14]
5D23E8:  STR             R1, [R4,#0x18]
5D23EA:  BNE             loc_5D2432
5D23EC:  MOV             R0, R4; this
5D23EE:  MOV.W           R1, #0xF00; unsigned int
5D23F2:  STR             R6, [R4,#0x38]
5D23F4:  BLX.W           j__ZN11CMemoryHeap6MallocEj; CMemoryHeap::Malloc(uint)
5D23F8:  ADD.W           R1, R0, #0x18
5D23FC:  STR             R0, [R4,#0x38]
5D23FE:  STR             R1, [R0,#0x10]
5D2400:  MOVS            R1, #0x10
5D2402:  ADD.W           R2, R0, #0x2C ; ','
5D2406:  STM             R2!, {R0,R1,R6}
5D2408:  MOVS            R1, #0x20 ; ' '
5D240A:  STR             R6, [R0,#0x38]
5D240C:  MOVS            R0, #0x74 ; 't'
5D240E:  LDR             R2, [R4,#0x38]
5D2410:  STR             R6, [R2,R0]
5D2412:  ADD             R2, R0
5D2414:  SUB.W           R5, R2, #0x20 ; ' '
5D2418:  SUB.W           R3, R2, #0x38 ; '8'
5D241C:  STR.W           R5, [R2,#-0x28]
5D2420:  STRD.W          R3, R1, [R2,#-0xC]
5D2424:  ADDS            R1, #0x10
5D2426:  ADDS            R0, #0x3C ; '<'
5D2428:  CMP.W           R1, #0x410
5D242C:  STR.W           R6, [R2,#-4]
5D2430:  BNE             loc_5D240E
5D2432:  POP.W           {R11}
5D2436:  POP             {R4-R7,PC}
