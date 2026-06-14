; =========================================================
; Game Engine Function: _Z22jpeg_gen_optimal_tableP20jpeg_compress_structP9JHUFF_TBLPl
; Address            : 0x477518 - 0x47771E
; =========================================================

477518:  PUSH            {R4-R7,LR}
47751A:  ADD             R7, SP, #0xC
47751C:  PUSH.W          {R8-R11}
477520:  SUB.W           SP, SP, #0x840
477524:  SUB             SP, SP, #4
477526:  STRD.W          R0, R1, [SP,#0x860+var_860]
47752A:  VMOV.I32        Q8, #0
47752E:  LDR             R0, =(__stack_chk_guard_ptr - 0x477540)
477530:  SUB.W           R9, R7, #-var_48
477534:  ADD.W           R8, SP, #0x860+var_450
477538:  MOVW            R1, #0x404
47753C:  ADD             R0, PC; __stack_chk_guard_ptr
47753E:  MOV             R11, R2
477540:  LDR             R0, [R0]; __stack_chk_guard
477542:  LDR             R0, [R0]
477544:  STR.W           R0, [R7,#var_20]
477548:  MOV             R0, R9
47754A:  VST1.64         {D16-D17}, [R0]!
47754E:  VST1.64         {D16-D17}, [R0]
477552:  MOVS            R0, #0
477554:  STRB.W          R0, [R7,#var_28]
477558:  MOV             R0, R8
47755A:  BLX             j___aeabi_memclr8
47755E:  ADD.W           R10, SP, #0x860+var_858
477562:  MOVW            R1, #0x404
477566:  MOVS            R2, #0xFF
477568:  MOV             R0, R10
47756A:  BLX             j___aeabi_memset8_1
47756E:  MOVS            R0, #1
477570:  MOVW            R12, #0x101
477574:  STR.W           R0, [R11,#0x400]
477578:  B               loc_4775BC
47757A:  LDR.W           R0, [R11,R2,LSL#2]
47757E:  LDR.W           R3, [R11,R1,LSL#2]
477582:  ADD             R0, R3
477584:  STR.W           R0, [R11,R1,LSL#2]
477588:  MOVS            R0, #0
47758A:  STR.W           R0, [R11,R2,LSL#2]
47758E:  MOV             R0, R1
477590:  LDR.W           R1, [R8,R0,LSL#2]
477594:  ADDS            R1, #1
477596:  STR.W           R1, [R8,R0,LSL#2]
47759A:  LDR.W           R1, [R10,R0,LSL#2]
47759E:  CMP.W           R1, #0xFFFFFFFF
4775A2:  BGT             loc_47758E
4775A4:  STR.W           R2, [R10,R0,LSL#2]
4775A8:  LDR.W           R0, [R8,R2,LSL#2]
4775AC:  ADDS            R0, #1
4775AE:  STR.W           R0, [R8,R2,LSL#2]
4775B2:  LDR.W           R2, [R10,R2,LSL#2]
4775B6:  CMP.W           R2, #0xFFFFFFFF
4775BA:  BGT             loc_4775A8
4775BC:  MOVW            LR, #0xCA00
4775C0:  MOV.W           R1, #0xFFFFFFFF
4775C4:  MOVT            LR, #0x3B9A
4775C8:  MOVS            R0, #0
4775CA:  MOV             R2, LR
4775CC:  LDR.W           R5, [R11,R0,LSL#2]
4775D0:  MOVS            R4, #0
4775D2:  MOVS            R6, #0
4775D4:  CMP             R5, R2
4775D6:  IT GT
4775D8:  MOVGT           R4, #1
4775DA:  CMP             R5, #0
4775DC:  IT EQ
4775DE:  MOVEQ           R6, #1
4775E0:  ORRS            R6, R4
4775E2:  ITT EQ
4775E4:  MOVEQ           R2, R5
4775E6:  MOVEQ           R1, R0
4775E8:  ADDS            R0, #1
4775EA:  CMP             R0, R12
4775EC:  BNE             loc_4775CC
4775EE:  MOV.W           R2, #0xFFFFFFFF
4775F2:  MOVS            R0, #0
4775F4:  LDR.W           R6, [R11,R0,LSL#2]
4775F8:  CMP             R1, R0
4775FA:  MOV.W           R5, #0
4775FE:  IT EQ
477600:  MOVEQ           R5, #1
477602:  CMP             R6, LR
477604:  MOV.W           R4, #0
477608:  MOV.W           R3, #0
47760C:  IT GT
47760E:  MOVGT           R4, #1
477610:  CMP             R6, #0
477612:  IT EQ
477614:  MOVEQ           R3, #1
477616:  ORRS            R3, R4
477618:  ORRS            R3, R5
47761A:  ITT EQ
47761C:  MOVEQ           LR, R6
47761E:  MOVEQ           R2, R0
477620:  ADDS            R0, #1
477622:  CMP             R0, R12
477624:  BNE             loc_4775F4
477626:  CMP.W           R2, #0xFFFFFFFF
47762A:  BGT             loc_47757A
47762C:  LDR             R4, [SP,#0x860+var_860]
47762E:  MOV             R6, #0xFFFFFBFC
477636:  MOV.W           R10, #0x27 ; '''
47763A:  ADD.W           R0, R8, R6
47763E:  LDR.W           R11, [R0,#0x404]
477642:  CMP.W           R11, #0
477646:  BEQ             loc_477666
477648:  CMP.W           R11, #0x21 ; '!'
47764C:  BLT             loc_47765C
47764E:  LDR             R0, [R4]
477650:  STR.W           R10, [R0,#0x14]
477654:  LDR             R0, [R4]
477656:  LDR             R1, [R0]
477658:  MOV             R0, R4
47765A:  BLX             R1
47765C:  LDRB.W          R0, [R9,R11]
477660:  ADDS            R0, #1
477662:  STRB.W          R0, [R9,R11]
477666:  ADDS            R6, #4
477668:  BNE             loc_47763A
47766A:  SUB.W           R12, R9, #1
47766E:  MOVS            R1, #0x20 ; ' '
477670:  LDRB.W          R6, [R9,R1]
477674:  CBZ             R6, loc_4776AC
477676:  ADD.W           R0, R12, R1
47767A:  SUBS            R2, R1, #1
47767C:  MOV             R3, R0
47767E:  LDRB.W          R5, [R3,#-1]!
477682:  CMP             R5, #0
477684:  BEQ             loc_47767E
477686:  ADDS            R6, #0xFE
477688:  STRB.W          R6, [R9,R1]
47768C:  LDRB.W          R6, [R9,R2]
477690:  ADDS            R6, #1
477692:  STRB.W          R6, [R9,R2]
477696:  LDRB            R6, [R3]
477698:  LDRB            R5, [R3,#1]
47769A:  SUBS            R6, #1
47769C:  ADDS            R5, #2
47769E:  STRB            R5, [R3,#1]
4776A0:  STRB            R6, [R3]
4776A2:  LDRB.W          R6, [R9,R1]
4776A6:  CMP             R6, #0
4776A8:  BNE             loc_47767C
4776AA:  B               loc_4776AE
4776AC:  SUBS            R2, R1, #1
4776AE:  CMP             R1, #0x11
4776B0:  MOV             R1, R2
4776B2:  BGT             loc_477670
4776B4:  ADD.W           R0, R9, #0x10
4776B8:  LDRB.W          R1, [R0],#-1
4776BC:  CMP             R1, #0
4776BE:  BEQ             loc_4776B8
4776C0:  LDR             R6, [SP,#0x860+var_85C]
4776C2:  SUBS            R1, #1
4776C4:  STRB            R1, [R0,#1]
4776C6:  VLD1.8          {D16-D17}, [R9]!
4776CA:  MOV             R0, R6
4776CC:  VST1.8          {D16-D17}, [R0]!
4776D0:  LDRB.W          R1, [R9]
4776D4:  STRB            R1, [R0]
4776D6:  MOVS            R0, #0
4776D8:  MOVS            R1, #1
4776DA:  MOVS            R2, #0
4776DC:  LDR.W           R3, [R8,R2,LSL#2]
4776E0:  CMP             R3, R1
4776E2:  ITTT EQ
4776E4:  ADDEQ           R3, R6, R0
4776E6:  STRBEQ          R2, [R3,#0x11]
4776E8:  ADDEQ           R0, #1
4776EA:  ADDS            R2, #1
4776EC:  CMP.W           R2, #0x100
4776F0:  BNE             loc_4776DC
4776F2:  ADDS            R1, #1
4776F4:  CMP             R1, #0x21 ; '!'
4776F6:  BNE             loc_4776DA
4776F8:  MOVS            R0, #0
4776FA:  STRB.W          R0, [R6,#0x111]
4776FE:  LDR             R0, =(__stack_chk_guard_ptr - 0x477708)
477700:  LDR.W           R1, [R7,#var_20]
477704:  ADD             R0, PC; __stack_chk_guard_ptr
477706:  LDR             R0, [R0]; __stack_chk_guard
477708:  LDR             R0, [R0]
47770A:  SUBS            R0, R0, R1
47770C:  ITTTT EQ
47770E:  ADDEQ.W         SP, SP, #0x840
477712:  ADDEQ           SP, SP, #4
477714:  POPEQ.W         {R8-R11}
477718:  POPEQ           {R4-R7,PC}
47771A:  BLX             __stack_chk_fail
