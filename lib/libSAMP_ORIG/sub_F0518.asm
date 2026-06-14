; =========================================================
; Game Engine Function: sub_F0518
; Address            : 0xF0518 - 0xF06DC
; =========================================================

F0518:  PUSH            {R4-R7,LR}
F051A:  ADD             R7, SP, #0xC
F051C:  PUSH.W          {R8-R11}
F0520:  LDR.W           R10, [R7,#arg_4]
F0524:  STR             R0, [R2]
F0526:  STR.W           R3, [R10]
F052A:  LDRB            R3, [R7,#arg_C]
F052C:  LSLS            R3, R3, #0x1D
F052E:  BPL             loc_F0546
F0530:  LDR             R3, [R2]
F0532:  SUBS            R4, R1, R3
F0534:  CMP             R4, #3
F0536:  BLT             loc_F0546
F0538:  LDRB            R4, [R3]
F053A:  CMP             R4, #0xEF
F053C:  ITT EQ
F053E:  LDRBEQ          R4, [R3,#1]
F0540:  CMPEQ           R4, #0xBB
F0542:  BEQ.W           loc_F06CC
F0546:  LDR.W           R8, [R7,#arg_8]
F054A:  MOV.W           R12, #0xC0
F054E:  LDR.W           LR, [R7,#arg_0]
F0552:  B               loc_F06AA
F0554:  LDRB            R5, [R4]
F0556:  CMP             R5, R8
F0558:  BHI.W           loc_F06C8
F055C:  SXTB            R3, R5
F055E:  CMP             R3, #0
F0560:  BMI             loc_F0568
F0562:  STRH            R5, [R6]
F0564:  ADDS            R3, R4, #1
F0566:  B               loc_F069E
F0568:  CMP             R5, #0xC2
F056A:  BCC.W           loc_F06C8
F056E:  CMP             R5, #0xDF
F0570:  BHI             loc_F059E
F0572:  SUBS            R3, R1, R4
F0574:  CMP             R3, #2
F0576:  BLT.W           loc_F06D8
F057A:  LDRB            R3, [R4,#1]
F057C:  AND.W           R0, R3, #0xC0
F0580:  CMP             R0, #0x80
F0582:  BNE.W           loc_F06C8
F0586:  AND.W           R0, R5, #0x1F
F058A:  AND.W           R3, R3, #0x3F ; '?'
F058E:  ORR.W           R3, R3, R0,LSL#6
F0592:  CMP             R3, R8
F0594:  BHI.W           loc_F06C8
F0598:  STRH            R3, [R6]
F059A:  ADDS            R3, R4, #2
F059C:  B               loc_F069E
F059E:  CMP             R5, #0xEF
F05A0:  BHI             loc_F05C2
F05A2:  SUBS            R0, R1, R4
F05A4:  CMP             R0, #3
F05A6:  BLT.W           loc_F06D8
F05AA:  LDRB            R3, [R4,#1]
F05AC:  CMP             R5, #0xED
F05AE:  LDRB.W          R9, [R4,#2]
F05B2:  BEQ             loc_F05EE
F05B4:  CMP             R5, #0xE0
F05B6:  BNE             loc_F05F4
F05B8:  AND.W           R0, R3, #0xE0
F05BC:  CMP             R0, #0xA0
F05BE:  BEQ             loc_F05FC
F05C0:  B               loc_F06C8
F05C2:  CMP             R5, #0xF4
F05C4:  BHI.W           loc_F06C8
F05C8:  SUBS            R0, R1, R4
F05CA:  CMP             R0, #4
F05CC:  BLT.W           loc_F06D8
F05D0:  LDRB            R3, [R4,#1]
F05D2:  CMP             R5, #0xF4
F05D4:  LDRB.W          R9, [R4,#2]
F05D8:  LDRB.W          R11, [R4,#3]
F05DC:  BEQ             loc_F0620
F05DE:  CMP             R5, #0xF0
F05E0:  BNE             loc_F0626
F05E2:  ADD.W           R0, R3, #0x70 ; 'p'
F05E6:  UXTB            R0, R0
F05E8:  CMP             R0, #0x30 ; '0'
F05EA:  BCC             loc_F062E
F05EC:  B               loc_F06C8
F05EE:  AND.W           R0, R3, #0xE0
F05F2:  B               loc_F05F8
F05F4:  AND.W           R0, R3, #0xC0
F05F8:  CMP             R0, #0x80
F05FA:  BNE             loc_F06C8
F05FC:  AND.W           R0, R9, #0xC0
F0600:  CMP             R0, #0x80
F0602:  BNE             loc_F06C8
F0604:  AND.W           R0, R3, #0x3F ; '?'
F0608:  AND.W           R3, R9, #0x3F ; '?'
F060C:  LSLS            R0, R0, #6
F060E:  ORR.W           R0, R0, R5,LSL#12
F0612:  ADD             R3, R0
F0614:  UXTH            R0, R3
F0616:  CMP             R0, R8
F0618:  BHI             loc_F06C8
F061A:  STRH            R3, [R6]
F061C:  ADDS            R3, R4, #3
F061E:  B               loc_F069E
F0620:  AND.W           R0, R3, #0xF0
F0624:  B               loc_F062A
F0626:  AND.W           R0, R3, #0xC0
F062A:  CMP             R0, #0x80
F062C:  BNE             loc_F06C8
F062E:  AND.W           R0, R9, #0xC0
F0632:  CMP             R0, #0x80
F0634:  ITT EQ
F0636:  ANDEQ.W         R0, R11, #0xC0
F063A:  CMPEQ           R0, #0x80
F063C:  BNE             loc_F06C8
F063E:  SUB.W           R0, LR, R6
F0642:  CMP             R0, #4
F0644:  BLT             loc_F06D8
F0646:  AND.W           R5, R5, #7
F064A:  AND.W           R4, R9, #0x3F ; '?'
F064E:  LSLS            R0, R5, #0x12
F0650:  BFI.W           R0, R3, #0xC, #6
F0654:  ORR.W           R0, R0, R4,LSL#6
F0658:  AND.W           R4, R11, #0x3F ; '?'
F065C:  ADD             R0, R4
F065E:  CMP             R0, R8
F0660:  BHI             loc_F06C8
F0662:  MOV.W           R0, R9,LSL#6
F0666:  AND.W           R0, R0, #0x3C0
F066A:  ADD             R0, R4
F066C:  MOV             R4, R6
F066E:  ADD.W           R0, R0, #0xDC00
F0672:  STRH.W          R0, [R4,#2]!
F0676:  AND.W           R0, R12, R3,LSL#2
F067A:  AND.W           R3, R3, #0xF
F067E:  ORR.W           R0, R0, R5,LSL#8
F0682:  STR.W           R4, [R10]
F0686:  ORR.W           R0, R0, R3,LSL#2
F068A:  UBFX.W          R3, R9, #4, #2
F068E:  ADD             R0, R3
F0690:  ADD.W           R0, R0, #0x3FC0
F0694:  ORR.W           R0, R0, #0xD800
F0698:  STRH            R0, [R6]
F069A:  LDR             R0, [R2]
F069C:  ADDS            R3, R0, #4
F069E:  STR             R3, [R2]
F06A0:  LDR.W           R0, [R10]
F06A4:  ADDS            R0, #2
F06A6:  STR.W           R0, [R10]
F06AA:  LDR             R4, [R2]
F06AC:  CMP             R4, R1
F06AE:  ITT CC
F06B0:  LDRCC.W         R6, [R10]
F06B4:  CMPCC           R6, LR
F06B6:  BCC.W           loc_F0554
F06BA:  MOVS            R0, #0
F06BC:  CMP             R4, R1
F06BE:  IT CC
F06C0:  MOVCC           R0, #1
F06C2:  POP.W           {R8-R11}
F06C6:  POP             {R4-R7,PC}
F06C8:  MOVS            R0, #2
F06CA:  B               loc_F06C2
F06CC:  LDRB            R4, [R3,#2]
F06CE:  CMP             R4, #0xBF
F06D0:  ITT EQ
F06D2:  ADDEQ           R3, #3
F06D4:  STREQ           R3, [R2]
F06D6:  B               loc_F0546
F06D8:  MOVS            R0, #1
F06DA:  B               loc_F06C2
