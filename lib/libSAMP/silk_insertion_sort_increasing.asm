; =========================================================
; Game Engine Function: silk_insertion_sort_increasing
; Address            : 0x19649E - 0x19659E
; =========================================================

19649E:  PUSH            {R4-R7,LR}
1964A0:  ADD             R7, SP, #0xC
1964A2:  PUSH.W          {R8-R11}
1964A6:  SUB             SP, SP, #8
1964A8:  CMP             R3, #1
1964AA:  MOV.W           R6, #0
1964AE:  STR             R2, [SP,#0x24+var_20]
1964B0:  BLT             loc_196520
1964B2:  STR.W           R6, [R1,R6,LSL#2]
1964B6:  ADDS            R6, #1
1964B8:  CMP             R3, R6
1964BA:  BNE             loc_1964B2
1964BC:  CMP             R3, #1
1964BE:  MOV.W           R5, #0
1964C2:  IT GT
1964C4:  MOVGT           R5, #1
1964C6:  MOVS            R6, #0
1964C8:  CMP             R3, #2
1964CA:  BLT             loc_196520
1964CC:  ADDS            R2, R1, #4
1964CE:  ADD.W           R8, R0, #4
1964D2:  MOV.W           LR, #1
1964D6:  STR             R5, [SP,#0x24+var_24]
1964D8:  LDR.W           R10, [R0,LR,LSL#2]
1964DC:  MOV             R11, R2
1964DE:  MOV             R4, R8
1964E0:  MOV             R9, LR
1964E2:  LDR.W           R6, [R4,#-4]
1964E6:  CMP             R10, R6
1964E8:  BGE             loc_196506
1964EA:  STR.W           R6, [R4],#-4
1964EE:  MOV             R6, R11
1964F0:  LDR.W           R12, [R6,#-4]!
1964F4:  SUB.W           R9, R9, #1
1964F8:  ADD.W           R5, R9, #1
1964FC:  STR.W           R12, [R11]
196500:  CMP             R5, #1
196502:  MOV             R11, R6
196504:  BGT             loc_1964E2
196506:  STR.W           R10, [R0,R9,LSL#2]
19650A:  ADDS            R2, #4
19650C:  ADD.W           R8, R8, #4
196510:  STR.W           LR, [R1,R9,LSL#2]
196514:  ADD.W           LR, LR, #1
196518:  CMP             LR, R3
19651A:  BNE             loc_1964D8
19651C:  LDRD.W          R6, R2, [SP,#0x24+var_24]
196520:  CMP             R3, R2
196522:  BGE             loc_196596
196524:  SUB.W           R12, R3, #1
196528:  CMP             R6, #1
19652A:  BNE             loc_19657C
19652C:  ADD.W           LR, R1, R12,LSL#2
196530:  ADD.W           R9, R0, R12,LSL#2
196534:  LDR.W           R10, [R0,R3,LSL#2]
196538:  LDR.W           R4, [R0,R12,LSL#2]
19653C:  CMP             R10, R4
19653E:  BGE             loc_196574
196540:  MOV             R11, LR
196542:  MOV             R4, R9
196544:  MOV             R5, R12
196546:  LDR.W           R6, [R4,#-4]
19654A:  CMP             R10, R6
19654C:  BGE             loc_196564
19654E:  STR.W           R6, [R4],#-4
196552:  MOV             R6, R11
196554:  LDR.W           R8, [R6,#-4]!
196558:  SUBS            R5, #1
19655A:  STR.W           R8, [R11]
19655E:  CMP             R5, #0
196560:  MOV             R11, R6
196562:  BGT             loc_196546
196564:  SUBS            R4, R5, #1
196566:  MOVS            R2, #4
196568:  ADD.W           R4, R2, R4,LSL#2
19656C:  STR.W           R10, [R0,R4]
196570:  STR             R3, [R1,R4]
196572:  LDR             R2, [SP,#0x24+var_20]
196574:  ADDS            R3, #1
196576:  CMP             R3, R2
196578:  BNE             loc_196534
19657A:  B               loc_196596
19657C:  LDR.W           R6, [R0,R3,LSL#2]
196580:  LDR.W           R5, [R0,R12,LSL#2]
196584:  CMP             R6, R5
196586:  ITT LT
196588:  STRLT.W         R6, [R0,R12,LSL#2]
19658C:  STRLT.W         R3, [R1,R12,LSL#2]
196590:  ADDS            R3, #1
196592:  CMP             R2, R3
196594:  BNE             loc_19657C
196596:  ADD             SP, SP, #8
196598:  POP.W           {R8-R11}
19659C:  POP             {R4-R7,PC}
