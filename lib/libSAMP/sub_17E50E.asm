; =========================================================
; Game Engine Function: sub_17E50E
; Address            : 0x17E50E - 0x17E56C
; =========================================================

17E50E:  PUSH            {R4,R6,R7,LR}
17E510:  ADD             R7, SP, #8
17E512:  LDRD.W          R1, LR, [R0,#4]
17E516:  MOV             R4, R0
17E518:  LDR             R3, [R0,#0xC]
17E51A:  MOV.W           R12, #0
17E51E:  CMP             LR, R1
17E520:  SUB.W           R0, LR, R1
17E524:  IT CC
17E526:  RSBCC.W         R12, R3, #0
17E52A:  CMP             R0, R12
17E52C:  IT EQ
17E52E:  POPEQ           {R4,R6,R7,PC}
17E530:  ADDS            R2, R1, #1
17E532:  LDR             R0, [R4]
17E534:  SUBS            R1, R2, R3
17E536:  IT NE
17E538:  MOVNE           R1, R2
17E53A:  MOV             R2, R1
17E53C:  STR             R1, [R4,#4]
17E53E:  CMP             R1, #0
17E540:  IT EQ
17E542:  MOVEQ           R2, R3
17E544:  ADD.W           R0, R0, R2,LSL#2
17E548:  LDR.W           R0, [R0,#-4]; void *
17E54C:  CBZ             R0, loc_17E558
17E54E:  BLX             j__ZdlPv; operator delete(void *)
17E552:  LDRD.W          R1, LR, [R4,#4]
17E556:  LDR             R3, [R4,#0xC]
17E558:  CMP             LR, R1
17E55A:  MOV.W           R0, #0
17E55E:  SUB.W           R2, LR, R1
17E562:  IT CC
17E564:  NEGCC           R0, R3
17E566:  CMP             R2, R0
17E568:  BNE             loc_17E530
17E56A:  POP             {R4,R6,R7,PC}
