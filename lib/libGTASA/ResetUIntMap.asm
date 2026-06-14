; =========================================================
; Game Engine Function: ResetUIntMap
; Address            : 0x26154C - 0x26164C
; =========================================================

26154C:  PUSH            {R4-R7,LR}
26154E:  ADD             R7, SP, #0xC
261550:  PUSH.W          {R8}
261554:  MOV             R8, R0
261556:  ADD.W           R5, R8, #0x14
26155A:  DMB.W           ISH
26155E:  LDREX.W         R0, [R5]
261562:  ADDS            R1, R0, #1
261564:  STREX.W         R2, R1, [R5]
261568:  CMP             R2, #0
26156A:  BNE             loc_26155E
26156C:  CMP             R0, #0
26156E:  DMB.W           ISH
261572:  BNE             loc_2615B0
261574:  ADD.W           R6, R8, #0x18
261578:  MOVS            R1, #1
26157A:  DMB.W           ISH
26157E:  LDREX.W         R0, [R6]
261582:  STREX.W         R2, R1, [R6]
261586:  CMP             R2, #0
261588:  BNE             loc_26157E
26158A:  CMP             R0, #1
26158C:  DMB.W           ISH
261590:  BNE             loc_2615B0
261592:  MOVS            R4, #1
261594:  BLX             sched_yield
261598:  DMB.W           ISH
26159C:  LDREX.W         R0, [R6]
2615A0:  STREX.W         R1, R4, [R6]
2615A4:  CMP             R1, #0
2615A6:  BNE             loc_26159C
2615A8:  CMP             R0, #1
2615AA:  DMB.W           ISH
2615AE:  BEQ             loc_261594
2615B0:  ADD.W           R6, R8, #0x20 ; ' '
2615B4:  MOVS            R1, #1
2615B6:  DMB.W           ISH
2615BA:  LDREX.W         R0, [R6]
2615BE:  STREX.W         R2, R1, [R6]
2615C2:  CMP             R2, #0
2615C4:  BNE             loc_2615BA
2615C6:  CMP             R0, #1
2615C8:  DMB.W           ISH
2615CC:  BNE             loc_2615EC
2615CE:  MOVS            R4, #1
2615D0:  BLX             sched_yield
2615D4:  DMB.W           ISH
2615D8:  LDREX.W         R0, [R6]
2615DC:  STREX.W         R1, R4, [R6]
2615E0:  CMP             R1, #0
2615E2:  BNE             loc_2615D8
2615E4:  CMP             R0, #1
2615E6:  DMB.W           ISH
2615EA:  BEQ             loc_2615D0
2615EC:  LDR.W           R0, [R8]; p
2615F0:  BLX             free
2615F4:  MOVS            R0, #0
2615F6:  STRD.W          R0, R0, [R8]
2615FA:  STR.W           R0, [R8,#8]
2615FE:  DMB.W           ISH
261602:  LDREX.W         R1, [R6]
261606:  STREX.W         R1, R0, [R6]
26160A:  CMP             R1, #0
26160C:  BNE             loc_261602
26160E:  DMB.W           ISH
261612:  DMB.W           ISH
261616:  LDREX.W         R0, [R5]
26161A:  SUBS            R1, R0, #1
26161C:  STREX.W         R2, R1, [R5]
261620:  CMP             R2, #0
261622:  BNE             loc_261616
261624:  CMP             R0, #1
261626:  DMB.W           ISH
26162A:  BNE             loc_261646
26162C:  ADD.W           R0, R8, #0x18
261630:  MOVS            R1, #0
261632:  DMB.W           ISH
261636:  LDREX.W         R2, [R0]
26163A:  STREX.W         R2, R1, [R0]
26163E:  CMP             R2, #0
261640:  BNE             loc_261636
261642:  DMB.W           ISH
261646:  POP.W           {R8}
26164A:  POP             {R4-R7,PC}
