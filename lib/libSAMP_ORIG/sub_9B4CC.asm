; =========================================================
; Game Engine Function: sub_9B4CC
; Address            : 0x9B4CC - 0x9B590
; =========================================================

9B4CC:  PUSH            {R4,R5,R7,LR}
9B4CE:  ADD             R7, SP, #8
9B4D0:  LDR             R1, =(dword_1ACF68 - 0x9B4DA)
9B4D2:  MOVW            R2, #0x1AF4
9B4D6:  ADD             R1, PC; dword_1ACF68
9B4D8:  LDR             R1, [R1]
9B4DA:  LDR             R2, [R1,R2]
9B4DC:  LDRB            R3, [R2,#0xB]
9B4DE:  LSLS            R3, R3, #0x1C
9B4E0:  IT MI
9B4E2:  POPMI           {R4,R5,R7,PC}
9B4E4:  MOVW            R3, #0x1978
9B4E8:  ADD             R1, R3
9B4EA:  LDR.W           LR, [R1]
9B4EE:  SUB.W           R5, LR, #1
9B4F2:  MOV             R3, R5
9B4F4:  ADDS            R4, R3, #1
9B4F6:  CMP             R4, #1
9B4F8:  BLT             loc_9B512
9B4FA:  LDR             R4, [R1,#8]
9B4FC:  LDR.W           R4, [R4,R3,LSL#2]
9B500:  SUBS            R3, #1
9B502:  CMP             R4, R2
9B504:  BNE             loc_9B4F4
9B506:  ADD.W           R12, R3, #1
9B50A:  ADDS.W          R2, R12, R0
9B50E:  BPL             loc_9B52E
9B510:  B               loc_9B51C
9B512:  MOV.W           R12, #0xFFFFFFFF
9B516:  ADDS.W          R2, R12, R0
9B51A:  BPL             loc_9B52E
9B51C:  CMP.W           R0, #0xFFFFFFFF
9B520:  BLE             loc_9B550
9B522:  MOVS            R5, #0
9B524:  B               loc_9B560
9B526:  ADD             R2, R0
9B528:  CMP.W           R2, #0xFFFFFFFF
9B52C:  BLE             loc_9B51C
9B52E:  CMP             R2, LR
9B530:  BGE             loc_9B51C
9B532:  LDR             R3, [R1,#8]
9B534:  LDR.W           R4, [R3,R2,LSL#2]
9B538:  LDRB.W          R3, [R4,#0x7A]
9B53C:  CMP             R3, #0
9B53E:  BEQ             loc_9B526
9B540:  LDR.W           R3, [R4,#0x2FC]
9B544:  CMP             R3, R4
9B546:  BNE             loc_9B526
9B548:  LDRB            R3, [R4,#0xA]
9B54A:  LSLS            R3, R3, #0x1C
9B54C:  BMI             loc_9B526
9B54E:  B               loc_9B584
9B550:  CMP.W           LR, #1
9B554:  BGE             loc_9B560
9B556:  B               loc_9B588
9B558:  ADD             R5, R0
9B55A:  CMP.W           R5, #0xFFFFFFFF
9B55E:  BLE             loc_9B588
9B560:  CMP             R12, R5
9B562:  BEQ             loc_9B588
9B564:  CMP             R5, LR
9B566:  BGE             loc_9B588
9B568:  LDR             R2, [R1,#8]
9B56A:  LDR.W           R4, [R2,R5,LSL#2]
9B56E:  LDRB.W          R2, [R4,#0x7A]
9B572:  CMP             R2, #0
9B574:  BEQ             loc_9B558
9B576:  LDR.W           R2, [R4,#0x2FC]
9B57A:  CMP             R2, R4
9B57C:  BNE             loc_9B558
9B57E:  LDRB            R2, [R4,#0xA]
9B580:  LSLS            R2, R2, #0x1C
9B582:  BMI             loc_9B558
9B584:  STRD.W          R4, R4, [R1,#0x17C]
9B588:  MOVS            R0, #0
9B58A:  STRB.W          R0, [R1,#0x190]
9B58E:  POP             {R4,R5,R7,PC}
