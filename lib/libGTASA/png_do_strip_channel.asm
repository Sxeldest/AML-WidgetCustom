; =========================================================
; Game Engine Function: png_do_strip_channel
; Address            : 0x2034D4 - 0x203634
; =========================================================

2034D4:  PUSH            {R4,R5,R7,LR}
2034D6:  ADD             R7, SP, #8
2034D8:  LDR.W           R12, [R0,#4]
2034DC:  LDRB            R4, [R0,#0xA]
2034DE:  ADD.W           R3, R1, R12
2034E2:  CMP             R4, #4
2034E4:  BEQ             loc_20352C
2034E6:  CMP             R4, #2
2034E8:  BNE.W           locret_203632
2034EC:  LDRB            R4, [R0,#9]
2034EE:  CMP             R4, #0x10
2034F0:  BEQ             loc_20357C
2034F2:  CMP             R4, #8
2034F4:  BNE.W           locret_203632
2034F8:  ADDS            R4, R1, #1
2034FA:  CMP             R2, #0
2034FC:  MOV             LR, R1
2034FE:  ITT EQ
203500:  MOVEQ           LR, R4
203502:  ADDEQ           R4, R1, #2
203504:  CMP             R4, R3
203506:  BCS             loc_203528
203508:  SUB.W           R2, R12, #1
20350C:  SUBS            R2, R2, R4
20350E:  ADD.W           R12, R1, R2
203512:  MOVS            R2, #1
203514:  ADD.W           R12, R2, R12,LSR#1
203518:  MOV             R2, LR
20351A:  LDRB.W          R5, [R4],#2
20351E:  STRB.W          R5, [R2],#1
203522:  CMP             R4, R3
203524:  BCC             loc_20351A
203526:  ADD             LR, R12
203528:  MOVS            R2, #8
20352A:  B               loc_2035BA
20352C:  LDRB            R4, [R0,#9]
20352E:  CMP             R4, #0x10
203530:  BEQ             loc_2035CA
203532:  CMP             R4, #8
203534:  IT NE
203536:  POPNE           {R4,R5,R7,PC}
203538:  CMP             R2, #0
20353A:  MOV             LR, R1
20353C:  ADD.W           R2, R1, #1
203540:  IT EQ
203542:  ADDEQ.W         LR, LR, #3
203546:  IT EQ
203548:  ADDEQ           R2, R1, #4
20354A:  CMP             R2, R3
20354C:  BCS             loc_203578
20354E:  SUB.W           R5, R12, #1
203552:  MOV             R4, LR
203554:  SUBS            R5, R5, R2
203556:  ADD             R5, R1
203558:  LSRS            R5, R5, #2
20355A:  ADD.W           R5, R5, R5,LSL#1
20355E:  ADD.W           R12, R5, #3
203562:  LDRB            R5, [R2]
203564:  STRB            R5, [R4]
203566:  LDRB            R5, [R2,#1]
203568:  STRB            R5, [R4,#1]
20356A:  LDRB            R5, [R2,#2]
20356C:  ADDS            R2, #4
20356E:  STRB            R5, [R4,#2]
203570:  ADDS            R4, #3
203572:  CMP             R2, R3
203574:  BCC             loc_203562
203576:  ADD             LR, R12
203578:  MOVS            R2, #0x18
20357A:  B               loc_20361C
20357C:  ADDS            R4, R1, #2
20357E:  CMP             R2, #0
203580:  MOV             LR, R1
203582:  ITT EQ
203584:  MOVEQ           LR, R4
203586:  ADDEQ           R4, R1, #4
203588:  CMP             R4, R3
20358A:  BCS             loc_2035B8
20358C:  SUB.W           R2, R12, #1
203590:  MOVW            R5, #0xFFFE
203594:  SUBS            R2, R2, R4
203596:  MOVT            R5, #0x7FFF
20359A:  ADD             R2, R1
20359C:  AND.W           R2, R5, R2,LSR#1
2035A0:  ADD.W           R12, R2, #2
2035A4:  MOV             R2, LR
2035A6:  LDRB            R5, [R4]
2035A8:  STRB            R5, [R2]
2035AA:  LDRB            R5, [R4,#1]
2035AC:  ADDS            R4, #4
2035AE:  STRB            R5, [R2,#1]
2035B0:  ADDS            R2, #2
2035B2:  CMP             R4, R3
2035B4:  BCC             loc_2035A6
2035B6:  ADD             LR, R12
2035B8:  MOVS            R2, #0x10
2035BA:  MOVS            R3, #1
2035BC:  STRB            R3, [R0,#0xA]
2035BE:  LDRB            R3, [R0,#8]
2035C0:  STRB            R2, [R0,#0xB]
2035C2:  CMP             R3, #4
2035C4:  BNE             loc_20362C
2035C6:  MOVS            R2, #0
2035C8:  B               loc_20362A
2035CA:  CMP             R2, #0
2035CC:  MOV             LR, R1
2035CE:  ADD.W           R2, R1, #2
2035D2:  IT EQ
2035D4:  ADDEQ.W         LR, LR, #6
2035D8:  IT EQ
2035DA:  ADDEQ.W         R2, R1, #8
2035DE:  CMP             R2, R3
2035E0:  BCS             loc_20361A
2035E2:  SUB.W           R5, R12, #1
2035E6:  MOVS            R4, #6
2035E8:  SUBS            R5, R5, R2
2035EA:  ADD             R5, R1
2035EC:  LSRS            R5, R5, #3
2035EE:  ADD.W           R5, R5, R5,LSL#1
2035F2:  ADD.W           R12, R4, R5,LSL#1
2035F6:  MOV             R4, LR
2035F8:  LDRB            R5, [R2]
2035FA:  STRB            R5, [R4]
2035FC:  LDRB            R5, [R2,#1]
2035FE:  STRB            R5, [R4,#1]
203600:  LDRB            R5, [R2,#2]
203602:  STRB            R5, [R4,#2]
203604:  LDRB            R5, [R2,#3]
203606:  STRB            R5, [R4,#3]
203608:  LDRB            R5, [R2,#4]
20360A:  STRB            R5, [R4,#4]
20360C:  LDRB            R5, [R2,#5]
20360E:  ADDS            R2, #8
203610:  STRB            R5, [R4,#5]
203612:  ADDS            R4, #6
203614:  CMP             R2, R3
203616:  BCC             loc_2035F8
203618:  ADD             LR, R12
20361A:  MOVS            R2, #0x30 ; '0'
20361C:  MOVS            R3, #3
20361E:  STRB            R3, [R0,#0xA]
203620:  LDRB            R3, [R0,#8]
203622:  STRB            R2, [R0,#0xB]
203624:  CMP             R3, #6
203626:  BNE             loc_20362C
203628:  MOVS            R2, #2
20362A:  STRB            R2, [R0,#8]
20362C:  SUB.W           R1, LR, R1
203630:  STR             R1, [R0,#4]
203632:  POP             {R4,R5,R7,PC}
