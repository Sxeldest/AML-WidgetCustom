; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollower13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x516544 - 0x51657C
; =========================================================

516544:  PUSH            {R4,R6,R7,LR}
516546:  ADD             R7, SP, #8
516548:  LDR             R0, [R0,#8]
51654A:  MOV             R4, R1
51654C:  CBZ             R0, loc_516560
51654E:  LDR             R1, [R0]
516550:  LDR.W           R12, [R1,#0x1C]
516554:  MOV             R1, R4
516556:  BLX             R12
516558:  CMP             R0, #1
51655A:  ITT NE
51655C:  MOVNE           R0, #0
51655E:  POPNE           {R4,R6,R7,PC}
516560:  LDR.W           R0, [R4,#0x48C]
516564:  LDR.W           R1, [R4,#0x490]
516568:  BIC.W           R0, R0, #0x400000
51656C:  STR.W           R0, [R4,#0x48C]
516570:  MOVS            R0, #1
516572:  BIC.W           R1, R1, #0x10000
516576:  STR.W           R1, [R4,#0x490]
51657A:  POP             {R4,R6,R7,PC}
