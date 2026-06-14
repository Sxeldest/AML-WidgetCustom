; =========================================================
; Game Engine Function: _ZN11CTheScripts26AddToInvisibilitySwapArrayEP7CEntityb
; Address            : 0x348504 - 0x34858A
; =========================================================

348504:  PUSH            {R4,R6,R7,LR}
348506:  ADD             R7, SP, #8
348508:  LDRB.W          R2, [R0,#0x32]
34850C:  CBZ             R2, loc_348510
34850E:  POP             {R4,R6,R7,PC}
348510:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x34851C)
348512:  MOV.W           LR, #0
348516:  MOVS            R3, #0
348518:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
34851A:  LDR.W           R12, [R2]; CTheScripts::InvisibilitySettingArray ...
34851E:  LDR.W           R4, [R12,LR,LSL#2]
348522:  MOVS            R2, #0
348524:  CMP             R4, R0
348526:  IT NE
348528:  MOVNE           R2, #1
34852A:  ADD             R3, R2
34852C:  UXTH.W          LR, R3
348530:  CMP.W           LR, #0x13
348534:  BHI             loc_34853A
348536:  CMP             R4, R0
348538:  BNE             loc_34851E
34853A:  CMP             R4, R0
34853C:  BEQ             loc_348578
34853E:  CMP             R1, #0
348540:  BNE             locret_34850E
348542:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x34854C)
348544:  MOVS            R1, #0
348546:  MOVS            R3, #0
348548:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
34854A:  LDR.W           R12, [R2]; CTheScripts::InvisibilitySettingArray ...
34854E:  LDR.W           R2, [R12,R1,LSL#2]
348552:  CMP             R2, #0
348554:  MOV             R1, R2
348556:  IT NE
348558:  MOVNE           R1, #1
34855A:  ADD             R3, R1
34855C:  UXTH            R1, R3
34855E:  CMP             R1, #0x13
348560:  BHI             loc_348566
348562:  CMP             R2, #0
348564:  BNE             loc_34854E
348566:  CMP             R2, #0
348568:  IT NE
34856A:  POPNE           {R4,R6,R7,PC}
34856C:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x348572)
34856E:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
348570:  LDR             R2, [R2]; CTheScripts::InvisibilitySettingArray ...
348572:  STR.W           R0, [R2,R1,LSL#2]
348576:  POP             {R4,R6,R7,PC}
348578:  CMP             R1, #1
34857A:  BNE             locret_34850E
34857C:  LDR             R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x348584)
34857E:  MOVS            R1, #0
348580:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
348582:  LDR             R0, [R0]; CTheScripts::InvisibilitySettingArray ...
348584:  STR.W           R1, [R0,LR,LSL#2]
348588:  POP             {R4,R6,R7,PC}
