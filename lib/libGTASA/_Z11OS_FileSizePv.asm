; =========================================================
; Game Engine Function: _Z11OS_FileSizePv
; Address            : 0x26753C - 0x2675E8
; =========================================================

26753C:  PUSH            {R4-R7,LR}
26753E:  ADD             R7, SP, #0xC
267540:  PUSH.W          {R11}
267544:  MOV             R4, R0
267546:  LDR             R0, [R4,#4]; stream
267548:  CBZ             R0, loc_267556
26754A:  LDRB            R1, [R4,#9]
26754C:  CBZ             R1, loc_26756C
26754E:  MOVS            R0, #0
267550:  POP.W           {R11}
267554:  POP             {R4-R7,PC}
267556:  LDR             R6, [R4]
267558:  CBZ             R6, loc_267596
26755A:  LDRB            R0, [R4,#8]
26755C:  CBZ             R0, loc_2675A0
26755E:  LDR             R0, [R4,#0xC]
267560:  CBZ             R0, loc_2675A8
267562:  MOV             R0, R4; this
267564:  BLX             j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
267568:  LDR             R6, [R4]
26756A:  B               loc_2675A8
26756C:  BLX             ftell
267570:  MOV             R5, R0
267572:  LDR             R0, [R4,#4]; stream
267574:  MOVS            R1, #0; off
267576:  MOVS            R2, #2; whence
267578:  BLX             fseek
26757C:  LDR             R0, [R4,#4]; stream
26757E:  BLX             ftell
267582:  MOV             R6, R0
267584:  LDR             R0, [R4,#4]; stream
267586:  MOV             R1, R5; off
267588:  MOVS            R2, #0; whence
26758A:  BLX             fseek
26758E:  MOV             R0, R6
267590:  POP.W           {R11}
267594:  POP             {R4-R7,PC}
267596:  MOV.W           R0, #0xFFFFFFFF
26759A:  POP.W           {R11}
26759E:  POP             {R4-R7,PC}
2675A0:  LDR             R0, [R4,#0x18]
2675A2:  CMP.W           R0, #0xFFFFFFFF
2675A6:  BGT             loc_267550
2675A8:  LDR             R0, [R6]
2675AA:  CMP             R0, #1
2675AC:  BNE             loc_2675DA
2675AE:  LDR             R0, [R6,#4]; stream
2675B0:  BLX             ftell
2675B4:  MOV             R4, R0
2675B6:  LDR             R0, [R6,#4]; stream
2675B8:  MOVS            R1, #0; off
2675BA:  MOVS            R2, #2; whence
2675BC:  BLX             fseek
2675C0:  LDR             R0, [R6,#4]; stream
2675C2:  BLX             ftell
2675C6:  MOV             R5, R0
2675C8:  LDR             R0, [R6,#4]; stream
2675CA:  MOV             R1, R4; off
2675CC:  MOVS            R2, #0; whence
2675CE:  BLX             fseek
2675D2:  MOV             R0, R5
2675D4:  POP.W           {R11}
2675D8:  POP             {R4-R7,PC}
2675DA:  LDR             R0, [R6,#4]; asset
2675DC:  POP.W           {R11}
2675E0:  POP.W           {R4-R7,LR}
2675E4:  B.W             j_AAsset_getLength
