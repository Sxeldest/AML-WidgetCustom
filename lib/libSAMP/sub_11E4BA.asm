; =========================================================
; Game Engine Function: sub_11E4BA
; Address            : 0x11E4BA - 0x11E55A
; =========================================================

11E4BA:  PUSH            {R4-R7,LR}
11E4BC:  ADD             R7, SP, #0xC
11E4BE:  PUSH.W          {R11}
11E4C2:  SUB             SP, SP, #0x10
11E4C4:  CMP             R1, R0
11E4C6:  BEQ             loc_11E552
11E4C8:  MOV             R5, R0
11E4CA:  LDR             R0, [R0,#0x10]
11E4CC:  MOV             R4, R1
11E4CE:  CMP             R0, R5
11E4D0:  BEQ             loc_11E4DE
11E4D2:  LDR             R1, [R4,#0x10]
11E4D4:  CMP             R4, R1
11E4D6:  BEQ             loc_11E4FA
11E4D8:  STR             R1, [R5,#0x10]
11E4DA:  STR             R0, [R4,#0x10]
11E4DC:  B               loc_11E552
11E4DE:  LDR             R1, [R4,#0x10]
11E4E0:  CMP             R1, R4
11E4E2:  BEQ             loc_11E514
11E4E4:  LDR             R1, [R0]
11E4E6:  LDR             R2, [R1,#0xC]
11E4E8:  MOV             R1, R4
11E4EA:  BLX             R2
11E4EC:  LDR             R0, [R5,#0x10]
11E4EE:  LDR             R1, [R0]
11E4F0:  LDR             R1, [R1,#0x10]
11E4F2:  BLX             R1
11E4F4:  LDR             R0, [R4,#0x10]
11E4F6:  STR             R0, [R5,#0x10]
11E4F8:  B               loc_11E550
11E4FA:  LDR             R0, [R1]
11E4FC:  LDR             R2, [R0,#0xC]
11E4FE:  MOV             R0, R1
11E500:  MOV             R1, R5
11E502:  BLX             R2
11E504:  LDR             R0, [R4,#0x10]
11E506:  LDR             R1, [R0]
11E508:  LDR             R1, [R1,#0x10]
11E50A:  BLX             R1
11E50C:  LDR             R0, [R5,#0x10]
11E50E:  STR             R0, [R4,#0x10]
11E510:  STR             R5, [R5,#0x10]
11E512:  B               loc_11E552
11E514:  LDR             R1, [R0]
11E516:  LDR             R2, [R1,#0xC]
11E518:  MOV             R1, SP
11E51A:  BLX             R2
11E51C:  LDR             R0, [R5,#0x10]
11E51E:  LDR             R1, [R0]
11E520:  LDR             R1, [R1,#0x10]
11E522:  BLX             R1
11E524:  MOVS            R6, #0
11E526:  STR             R6, [R5,#0x10]
11E528:  LDR             R0, [R4,#0x10]
11E52A:  LDR             R1, [R0]
11E52C:  LDR             R2, [R1,#0xC]
11E52E:  MOV             R1, R5
11E530:  BLX             R2
11E532:  LDR             R0, [R4,#0x10]
11E534:  LDR             R1, [R0]
11E536:  LDR             R1, [R1,#0x10]
11E538:  BLX             R1
11E53A:  LDR             R0, [SP,#0x20+var_20]
11E53C:  STR             R6, [R4,#0x10]
11E53E:  STR             R5, [R5,#0x10]
11E540:  LDR             R2, [R0,#0xC]
11E542:  MOV             R0, SP
11E544:  MOV             R1, R4
11E546:  BLX             R2
11E548:  LDR             R0, [SP,#0x20+var_20]
11E54A:  LDR             R1, [R0,#0x10]
11E54C:  MOV             R0, SP
11E54E:  BLX             R1
11E550:  STR             R4, [R4,#0x10]
11E552:  ADD             SP, SP, #0x10
11E554:  POP.W           {R11}
11E558:  POP             {R4-R7,PC}
