; =========================================================
; Game Engine Function: _ZN9CPathFind28ThisNodeWillLeadIntoADeadEndEP9CPathNodeS1_
; Address            : 0x318420 - 0x3184B8
; =========================================================

318420:  PUSH            {R4-R7,LR}
318422:  ADD             R7, SP, #0xC
318424:  PUSH.W          {R8-R11}
318428:  LDR             R3, =(ThePaths_ptr - 0x318432)
31842A:  MOV.W           LR, #0xFFFFFFFF
31842E:  ADD             R3, PC; ThePaths_ptr
318430:  LDR.W           R12, [R3]; ThePaths
318434:  LDRH            R3, [R1,#0x18]
318436:  ANDS.W          R3, R3, #0xF
31843A:  BEQ             loc_3184A8
31843C:  LDRH            R4, [R1,#0x12]
31843E:  BIC.W           R10, R3, #0xFF000000
318442:  LDRSH.W         R5, [R1,#0x10]
318446:  MOV.W           R8, #0
31844A:  ADD.W           R4, R12, R4,LSL#2
31844E:  LDR.W           R4, [R4,#0xA44]
318452:  ADD.W           R9, R4, R5,LSL#2
318456:  MOVS            R5, #0
318458:  LDR.W           R6, [R9,R5,LSL#2]
31845C:  UXTH            R3, R6
31845E:  ADD.W           R3, R0, R3,LSL#2
318462:  LDR.W           R3, [R3,#0x804]
318466:  CBZ             R3, loc_318498
318468:  MOV.W           R11, R6,LSR#16
31846C:  MOV.W           R4, R11,LSL#3
318470:  SUB.W           R4, R4, R6,LSR#16
318474:  ADD.W           R6, R3, R4,LSL#2
318478:  CMP             R6, R2
31847A:  BEQ             loc_318498
31847C:  RSB.W           R4, R11, R11,LSL#3
318480:  ADD.W           R3, R3, R4,LSL#2
318484:  LDRB            R3, [R3,#0x1A]
318486:  LSLS            R3, R3, #0x10
318488:  ADD.W           R3, LR, R3,LSR#20
31848C:  CMP             R3, #0xA
31848E:  BCC             loc_318498
318490:  CMP.W           R8, #0
318494:  MOV             R8, R6
318496:  BNE             loc_3184B0
318498:  ADDS            R5, #1
31849A:  CMP             R5, R10
31849C:  BLT             loc_318458
31849E:  MOV             R2, R1
3184A0:  CMP.W           R8, #0
3184A4:  MOV             R1, R8
3184A6:  BNE             loc_318434
3184A8:  MOVS            R0, #1
3184AA:  POP.W           {R8-R11}
3184AE:  POP             {R4-R7,PC}
3184B0:  MOVS            R0, #0
3184B2:  POP.W           {R8-R11}
3184B6:  POP             {R4-R7,PC}
