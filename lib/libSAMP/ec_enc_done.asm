; =========================================================
; Game Engine Function: ec_enc_done
; Address            : 0x19552C - 0x195766
; =========================================================

19552C:  PUSH            {R4-R7,LR}
19552E:  ADD             R7, SP, #0xC
195530:  PUSH.W          {R8-R11}
195534:  SUB             SP, SP, #0xC
195536:  MOV             R4, R0
195538:  MOV             R0, #0x7FFFFFFF
19553C:  LDRD.W          R3, R1, [R4,#0x1C]
195540:  CLZ.W           R8, R3
195544:  ADD             R3, R1
195546:  LSR.W           R0, R0, R8
19554A:  ADDS            R2, R0, R1
19554C:  ORR.W           R6, R2, R0
195550:  CMP             R6, R3
195552:  BCS             loc_195562
195554:  CMP.W           R8, #0
195558:  BEQ.W           loc_195752
19555C:  BIC.W           R1, R2, R0
195560:  B               loc_19556E
195562:  ADD.W           R1, R1, R0,LSR#1
195566:  ADD.W           R8, R8, #1
19556A:  BIC.W           R1, R1, R0,LSR#1
19556E:  MVN.W           R0, R8
195572:  CMN.W           R0, #9
195576:  IT LE
195578:  MOVLE           R0, #0xFFFFFFF7
19557C:  MOVW            R9, #0xFF00
195580:  ADD             R0, R8
195582:  ADD.W           R10, R4, #0x28 ; '('
195586:  ADDS            R0, #8
195588:  MOV.W           LR, #0xFF
19558C:  MOVT            R9, #0x7FFF
195590:  BIC.W           R0, R0, #7
195594:  STR             R0, [SP,#0x28+var_24]
195596:  STR.W           R8, [SP,#0x28+var_20]
19559A:  CMP.W           LR, R1,LSR#23
19559E:  BNE             loc_1955A8
1955A0:  LDR             R0, [R4,#0x24]
1955A2:  ADDS            R0, #1
1955A4:  STR             R0, [R4,#0x24]
1955A6:  B               loc_195618
1955A8:  LDR.W           R2, [R10]
1955AC:  MOV.W           R11, R1,LSR#31
1955B0:  CMP             R2, #0
1955B2:  BLT             loc_1955D8
1955B4:  LDRD.W          R6, R3, [R4,#4]
1955B8:  LDR             R0, [R4,#0x18]
1955BA:  ADD             R3, R0
1955BC:  CMP             R3, R6
1955BE:  BCS             loc_1955CE
1955C0:  LDR             R3, [R4]
1955C2:  ADDS            R6, R0, #1
1955C4:  STR             R6, [R4,#0x18]
1955C6:  ADD             R2, R11
1955C8:  STRB            R2, [R3,R0]
1955CA:  MOVS            R0, #0
1955CC:  B               loc_1955D2
1955CE:  MOV.W           R0, #0xFFFFFFFF
1955D2:  LDR             R2, [R4,#0x2C]
1955D4:  ORRS            R0, R2
1955D6:  STR             R0, [R4,#0x2C]
1955D8:  LDR             R6, [R4,#0x24]
1955DA:  MOV.W           R12, R1,LSR#23
1955DE:  CBZ             R6, loc_195610
1955E0:  ADD.W           R3, R11, #0xFF
1955E4:  LDRD.W          R2, R5, [R4,#4]
1955E8:  LDR             R0, [R4,#0x18]
1955EA:  ADD             R5, R0
1955EC:  CMP             R5, R2
1955EE:  BCS             loc_1955FE
1955F0:  LDR             R2, [R4]
1955F2:  ADDS            R5, R0, #1
1955F4:  STR             R5, [R4,#0x18]
1955F6:  STRB            R3, [R2,R0]
1955F8:  MOVS            R0, #0
1955FA:  LDR             R6, [R4,#0x24]
1955FC:  B               loc_195602
1955FE:  MOV.W           R0, #0xFFFFFFFF
195602:  LDR             R2, [R4,#0x2C]
195604:  SUBS            R6, #1
195606:  STR             R6, [R4,#0x24]
195608:  ORR.W           R0, R0, R2
19560C:  STR             R0, [R4,#0x2C]
19560E:  BNE             loc_1955E4
195610:  UXTB.W          R0, R12
195614:  STR.W           R0, [R10]
195618:  AND.W           R1, R9, R1,LSL#8
19561C:  SUBS.W          R8, R8, #8
195620:  BGT             loc_19559A
195622:  LDR             R0, [SP,#0x28+var_20]
195624:  LDR             R1, [SP,#0x28+var_24]
195626:  SUBS            R0, #8
195628:  SUB.W           R8, R0, R1
19562C:  LDR.W           R1, [R10]
195630:  CMP.W           R1, #0xFFFFFFFF
195634:  BLE             loc_19564E
195636:  LDRD.W          R2, R3, [R4,#4]
19563A:  LDR             R0, [R4,#0x18]
19563C:  ADD             R3, R0
19563E:  CMP             R3, R2
195640:  BCS             loc_195654
195642:  LDR             R2, [R4]
195644:  ADDS            R3, R0, #1
195646:  STR             R3, [R4,#0x18]
195648:  STRB            R1, [R2,R0]
19564A:  MOVS            R0, #0
19564C:  B               loc_195658
19564E:  LDR             R1, [R4,#0x24]
195650:  CBNZ            R1, loc_195666
195652:  B               loc_19569A
195654:  MOV.W           R0, #0xFFFFFFFF
195658:  LDR             R1, [R4,#0x24]
19565A:  LDR             R2, [R4,#0x2C]
19565C:  CMP             R1, #0
19565E:  ORR.W           R0, R0, R2
195662:  STR             R0, [R4,#0x2C]
195664:  BEQ             loc_195694
195666:  MOVS            R2, #0xFF
195668:  LDRD.W          R3, R6, [R4,#4]
19566C:  LDR             R0, [R4,#0x18]
19566E:  ADD             R6, R0
195670:  CMP             R6, R3
195672:  BCS             loc_195682
195674:  LDR             R1, [R4]
195676:  ADDS            R3, R0, #1
195678:  STR             R3, [R4,#0x18]
19567A:  STRB            R2, [R1,R0]
19567C:  MOVS            R0, #0
19567E:  LDR             R1, [R4,#0x24]
195680:  B               loc_195686
195682:  MOV.W           R0, #0xFFFFFFFF
195686:  LDR             R3, [R4,#0x2C]
195688:  SUBS            R1, #1
19568A:  STR             R1, [R4,#0x24]
19568C:  ORR.W           R0, R0, R3
195690:  STR             R0, [R4,#0x2C]
195692:  BNE             loc_195668
195694:  MOVS            R0, #0
195696:  STR.W           R0, [R10]
19569A:  LDRD.W          R6, R9, [R4,#0xC]
19569E:  CMP.W           R9, #7
1956A2:  BLE             loc_1956FC
1956A4:  MVN.W           R0, R9
1956A8:  CMN.W           R0, #0x10
1956AC:  IT LE
1956AE:  MOVLE           R0, #0xFFFFFFF0
1956B2:  ADD.W           R1, R9, #8
1956B6:  ADD             R0, R9
1956B8:  ADD.W           R5, R4, #0x2C ; ','
1956BC:  ADDS            R0, #8
1956BE:  BIC.W           R12, R0, #7
1956C2:  LDRD.W          R2, R3, [R4,#4]
1956C6:  LDR             R0, [R4,#0x18]
1956C8:  ADD             R0, R3
1956CA:  CMP             R0, R2
1956CC:  BCS             loc_1956DC
1956CE:  ADDS            R0, R3, #1
1956D0:  STR             R0, [R4,#8]
1956D2:  LDR             R3, [R4]
1956D4:  SUBS            R0, R2, R0
1956D6:  MOVS            R2, #0
1956D8:  STRB            R6, [R3,R0]
1956DA:  B               loc_1956E0
1956DC:  MOV.W           R2, #0xFFFFFFFF
1956E0:  LDR             R0, [R5]
1956E2:  SUBS            R1, #8
1956E4:  LSRS            R6, R6, #8
1956E6:  CMP             R1, #0xF
1956E8:  ORR.W           R2, R2, R0
1956EC:  STR             R2, [R5]
1956EE:  BGT             loc_1956C2
1956F0:  SUB.W           R0, R9, #8
1956F4:  SUB.W           R9, R0, R12
1956F8:  CBNZ            R2, loc_19575E
1956FA:  B               loc_195704
1956FC:  MOV             R5, R4
1956FE:  LDR.W           R2, [R5,#0x2C]!
195702:  CBNZ            R2, loc_19575E
195704:  LDM.W           R4, {R0-R2}
195708:  LDR             R3, [R4,#0x18]
19570A:  SUBS            R1, R1, R3
19570C:  ADD             R0, R3; int
19570E:  SUBS            R1, R1, R2; n
195710:  BLX             sub_22178C
195714:  CMP.W           R9, #1
195718:  BLT             loc_19575E
19571A:  LDRD.W          R1, R0, [R4,#4]
19571E:  CMP             R0, R1
195720:  BCS             loc_195758
195722:  RSB.W           R2, R8, #0
195726:  CMP             R9, R2
195728:  BLE             loc_195744
19572A:  LDR             R3, [R4,#0x18]
19572C:  ADD             R3, R0
19572E:  CMP             R3, R1
195730:  ITTTT CS
195732:  MOVCS.W         R3, #0xFFFFFFFF
195736:  STRCS           R3, [R5]
195738:  MOVCS           R3, #1
19573A:  LSLCS.W         R2, R3, R2
19573E:  ITT CS
195740:  SUBCS           R2, #1
195742:  ANDCS           R6, R2
195744:  SUBS            R1, #1
195746:  LDR             R2, [R4]
195748:  SUBS            R0, R1, R0
19574A:  LDRB            R1, [R2,R0]
19574C:  ORRS            R1, R6
19574E:  STRB            R1, [R2,R0]
195750:  B               loc_19575E
195752:  ADD.W           R10, R4, #0x28 ; '('
195756:  B               loc_19562C
195758:  MOV.W           R0, #0xFFFFFFFF
19575C:  STR             R0, [R5]
19575E:  ADD             SP, SP, #0xC
195760:  POP.W           {R8-R11}
195764:  POP             {R4-R7,PC}
