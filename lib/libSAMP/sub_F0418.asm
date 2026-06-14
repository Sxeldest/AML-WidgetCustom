; =========================================================
; Game Engine Function: sub_F0418
; Address            : 0xF0418 - 0xF05E2
; =========================================================

F0418:  PUSH            {R4-R7,LR}
F041A:  ADD             R7, SP, #0xC
F041C:  PUSH.W          {R8-R11}
F0420:  SUB             SP, SP, #4
F0422:  LDR             R0, [R0,#0xC]
F0424:  LDRD.W          R4, R1, [R0,#0x14]
F0428:  CMP             R1, #0
F042A:  LDR             R0, [R0,#0x1C]
F042C:  IT EQ
F042E:  MOVEQ           R1, #7
F0430:  SUBS            R0, R0, R1
F0432:  MOVW            R1, #0x76B
F0436:  ADDS            R6, R4, R1
F0438:  MOV.W           R10, R4,ASR#31
F043C:  ADD.W           R0, R0, #0xB
F0440:  ADC.W           R5, R10, #0
F0444:  MOVW            R1, #0x76C
F0448:  ADDS.W          R8, R4, R1
F044C:  ADC.W           R9, R10, #0
F0450:  CMP             R0, #6
F0452:  BGT             loc_F0510
F0454:  MOV             R0, R6
F0456:  MOV             R1, R5
F0458:  MOV             R2, #0xFFFFFF9C
F045C:  MOV.W           R3, #0xFFFFFFFF
F0460:  BLX             sub_221404
F0464:  ASRS            R2, R5, #0x1F
F0466:  ADDS.W          R2, R6, R2,LSR#30
F046A:  ADC.W           R3, R5, #0
F046E:  LSRS            R2, R2, #2
F0470:  ORR.W           R2, R2, R3,LSL#30
F0474:  ASRS            R3, R3, #2
F0476:  ADDS            R2, R2, R6
F0478:  ADCS            R3, R5
F047A:  ADDS.W          R8, R2, R0
F047E:  ADC.W           R9, R3, R1
F0482:  MOV             R0, R6
F0484:  MOV             R1, R5
F0486:  MOV.W           R2, #0x190
F048A:  MOVS            R3, #0
F048C:  BLX             sub_221404
F0490:  ADDS.W          R0, R0, R8
F0494:  ADC.W           R1, R1, R9
F0498:  MOVS            R2, #7
F049A:  MOVS            R3, #0
F049C:  BLX             sub_221404
F04A0:  EOR.W           R0, R2, #4
F04A4:  MOV             R2, #0xFFFFFF9C
F04A8:  ORR.W           R8, R0, R3
F04AC:  MOVW            R0, #0x76A
F04B0:  ADDS            R4, R4, R0
F04B2:  ADC.W           R5, R10, #0
F04B6:  MOV.W           R3, #0xFFFFFFFF
F04BA:  ADDS.W          R0, R4, R5,LSR#30
F04BE:  ADC.W           R1, R5, #0
F04C2:  LSRS            R0, R0, #2
F04C4:  ORR.W           R0, R0, R1,LSL#30
F04C8:  ASRS            R1, R1, #2
F04CA:  ADDS            R6, R0, R4
F04CC:  ADC.W           R9, R1, R5
F04D0:  MOV             R0, R4
F04D2:  MOV             R1, R5
F04D4:  BLX             sub_221404
F04D8:  ADDS            R6, R6, R0
F04DA:  ADC.W           R9, R9, R1
F04DE:  MOV             R0, R4
F04E0:  MOV             R1, R5
F04E2:  MOV.W           R2, #0x190
F04E6:  MOVS            R3, #0
F04E8:  BLX             sub_221404
F04EC:  ADDS            R0, R0, R6
F04EE:  ADC.W           R1, R1, R9
F04F2:  MOVS            R2, #7
F04F4:  MOVS            R3, #0
F04F6:  BLX             sub_221404
F04FA:  EOR.W           R0, R2, #3
F04FE:  MOVS            R4, #0x34 ; '4'
F0500:  ORRS            R0, R3
F0502:  IT EQ
F0504:  MOVEQ           R4, #0x35 ; '5'
F0506:  CMP.W           R8, #0
F050A:  IT EQ
F050C:  MOVEQ           R4, #0x35 ; '5'
F050E:  B               loc_F05D8
F0510:  MOVW            R1, #0x2493
F0514:  MOV             R2, #0xFFFFFF9C
F0518:  MOVT            R1, #0x9249
F051C:  MOV.W           R3, #0xFFFFFFFF
F0520:  SMMLA.W         R0, R1, R0, R0
F0524:  ASRS            R1, R0, #2
F0526:  ADD.W           R4, R1, R0,LSR#31
F052A:  MOV             R0, R6
F052C:  MOV             R1, R5
F052E:  BLX             sub_221404
F0532:  ASRS            R2, R5, #0x1F
F0534:  ADDS.W          R2, R6, R2,LSR#30
F0538:  ADC.W           R3, R5, #0
F053C:  LSRS            R2, R2, #2
F053E:  ORR.W           R2, R2, R3,LSL#30
F0542:  ASRS            R3, R3, #2
F0544:  ADDS            R2, R2, R6
F0546:  ADCS            R3, R5
F0548:  ADDS.W          R10, R2, R0
F054C:  ADC.W           R11, R3, R1
F0550:  MOV             R0, R6
F0552:  MOV             R1, R5
F0554:  MOV.W           R2, #0x190
F0558:  MOVS            R3, #0
F055A:  BLX             sub_221404
F055E:  ADDS.W          R0, R0, R10
F0562:  ADC.W           R1, R1, R11
F0566:  MOVS            R2, #7
F0568:  MOVS            R3, #0
F056A:  BLX             sub_221404
F056E:  EOR.W           R0, R2, #3
F0572:  MOVS            R5, #0x34 ; '4'
F0574:  ORRS            R0, R3
F0576:  MOV             R1, R9
F0578:  MOV             R0, R8
F057A:  MOV             R2, #0xFFFFFF9C
F057E:  MOV.W           R3, #0xFFFFFFFF
F0582:  IT EQ
F0584:  MOVEQ           R5, #0x35 ; '5'
F0586:  BLX             sub_221404
F058A:  MOV.W           R2, R9,ASR#31
F058E:  ADDS.W          R2, R8, R2,LSR#30
F0592:  ADC.W           R3, R9, #0
F0596:  LSRS            R2, R2, #2
F0598:  ORR.W           R2, R2, R3,LSL#30
F059C:  ASRS            R3, R3, #2
F059E:  ADDS.W          R2, R2, R8
F05A2:  ADC.W           R3, R3, R9
F05A6:  ADDS            R6, R2, R0
F05A8:  ADC.W           R10, R3, R1
F05AC:  MOV             R0, R8
F05AE:  MOV             R1, R9
F05B0:  MOV.W           R2, #0x190
F05B4:  MOVS            R3, #0
F05B6:  BLX             sub_221404
F05BA:  ADDS            R0, R0, R6
F05BC:  ADC.W           R1, R1, R10
F05C0:  MOVS            R2, #7
F05C2:  MOVS            R3, #0
F05C4:  BLX             sub_221404
F05C8:  EOR.W           R0, R2, #4
F05CC:  ORRS            R0, R3
F05CE:  IT EQ
F05D0:  MOVEQ           R5, #0x35 ; '5'
F05D2:  CMP             R4, R5
F05D4:  IT HI
F05D6:  MOVHI           R4, #1
F05D8:  MOV             R0, R4
F05DA:  ADD             SP, SP, #4
F05DC:  POP.W           {R8-R11}
F05E0:  POP             {R4-R7,PC}
