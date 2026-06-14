; =========================================================
; Game Engine Function: _ZN6CCarAI34FindPoliceCarMissionForWantedLevelEv
; Address            : 0x2E6532 - 0x2E6588
; =========================================================

2E6532:  PUSH            {R7,LR}
2E6534:  MOV             R7, SP
2E6536:  MOV.W           R0, #0xFFFFFFFF; int
2E653A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E653E:  LDR             R0, [R0,#0x2C]
2E6540:  SUBS            R1, R0, #4
2E6542:  CMP             R1, #3
2E6544:  BCS             loc_2E6558
2E6546:  BLX             rand
2E654A:  MOV             R1, R0
2E654C:  MOVS            R0, #2
2E654E:  TST.W           R1, #3
2E6552:  IT EQ
2E6554:  MOVEQ           R0, #4
2E6556:  POP             {R7,PC}
2E6558:  CMP             R0, #3
2E655A:  BEQ             loc_2E6576
2E655C:  CMP             R0, #2
2E655E:  ITT NE
2E6560:  MOVNE           R0, #4
2E6562:  POPNE           {R7,PC}
2E6564:  BLX             rand
2E6568:  AND.W           R1, R0, #3
2E656C:  MOVS            R0, #4
2E656E:  CMP             R1, #3
2E6570:  IT EQ
2E6572:  MOVEQ           R0, #2
2E6574:  POP             {R7,PC}
2E6576:  BLX             rand
2E657A:  AND.W           R1, R0, #2
2E657E:  MOVS            R0, #2
2E6580:  CMP             R1, #2
2E6582:  IT CC
2E6584:  MOVCC           R0, #4
2E6586:  POP             {R7,PC}
