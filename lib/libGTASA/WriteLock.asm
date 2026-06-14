; =========================================================
; Game Engine Function: WriteLock
; Address            : 0x240388 - 0x24042A
; =========================================================

240388:  PUSH            {R4-R7,LR}
24038A:  ADD             R7, SP, #0xC
24038C:  PUSH.W          {R11}
240390:  MOV             R4, R0
240392:  ADDS            R0, R4, #4
240394:  DMB.W           ISH
240398:  LDREX.W         R1, [R0]
24039C:  ADDS            R2, R1, #1
24039E:  STREX.W         R3, R2, [R0]
2403A2:  CMP             R3, #0
2403A4:  BNE             loc_240398
2403A6:  CMP             R1, #0
2403A8:  DMB.W           ISH
2403AC:  BNE             loc_2403EA
2403AE:  ADD.W           R5, R4, #8
2403B2:  MOVS            R1, #1
2403B4:  DMB.W           ISH
2403B8:  LDREX.W         R0, [R5]
2403BC:  STREX.W         R2, R1, [R5]
2403C0:  CMP             R2, #0
2403C2:  BNE             loc_2403B8
2403C4:  CMP             R0, #1
2403C6:  DMB.W           ISH
2403CA:  BNE             loc_2403EA
2403CC:  MOVS            R6, #1
2403CE:  BLX             sched_yield
2403D2:  DMB.W           ISH
2403D6:  LDREX.W         R0, [R5]
2403DA:  STREX.W         R1, R6, [R5]
2403DE:  CMP             R1, #0
2403E0:  BNE             loc_2403D6
2403E2:  CMP             R0, #1
2403E4:  DMB.W           ISH
2403E8:  BEQ             loc_2403CE
2403EA:  ADDS            R4, #0x10
2403EC:  MOVS            R1, #1
2403EE:  DMB.W           ISH
2403F2:  LDREX.W         R0, [R4]
2403F6:  STREX.W         R2, R1, [R4]
2403FA:  CMP             R2, #0
2403FC:  BNE             loc_2403F2
2403FE:  CMP             R0, #1
240400:  DMB.W           ISH
240404:  BNE             loc_240424
240406:  MOVS            R5, #1
240408:  BLX             sched_yield
24040C:  DMB.W           ISH
240410:  LDREX.W         R0, [R4]
240414:  STREX.W         R1, R5, [R4]
240418:  CMP             R1, #0
24041A:  BNE             loc_240410
24041C:  CMP             R0, #1
24041E:  DMB.W           ISH
240422:  BEQ             loc_240408
240424:  POP.W           {R11}
240428:  POP             {R4-R7,PC}
