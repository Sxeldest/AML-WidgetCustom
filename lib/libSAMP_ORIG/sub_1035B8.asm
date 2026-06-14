; =========================================================
; Game Engine Function: sub_1035B8
; Address            : 0x1035B8 - 0x1036EE
; =========================================================

1035B8:  PUSH            {R4-R7,LR}
1035BA:  ADD             R7, SP, #0xC
1035BC:  PUSH.W          {R8-R10}
1035C0:  MOV             R4, R0
1035C2:  LDRD.W          R6, R0, [R0,#4]
1035C6:  MOV             R8, R1
1035C8:  CMP             R6, R0
1035CA:  BNE             loc_103618
1035CC:  MOV             R0, R4
1035CE:  LDR.W           R9, [R0],#0xC
1035D2:  SUB.W           R10, R6, R9
1035D6:  CMP             R9, R0
1035D8:  BEQ             loc_1035EC
1035DA:  MOV.W           R1, R10,LSL#1; size
1035DE:  MOV             R0, R9; ptr
1035E0:  BLX             realloc
1035E4:  MOV             R5, R0
1035E6:  STR             R0, [R4]
1035E8:  CBNZ            R0, loc_103604
1035EA:  B               loc_103628
1035EC:  MOV.W           R0, R10,LSL#1; size
1035F0:  BLX             malloc
1035F4:  CBZ             R0, loc_103628
1035F6:  MOV             R5, R0
1035F8:  MOV             R0, R9; src
1035FA:  MOV             R1, R6; int
1035FC:  MOV             R2, R5; dest
1035FE:  BL              sub_10370C
103602:  STR             R5, [R4]
103604:  MOV.W           R0, R10,ASR#1
103608:  MOV.W           R1, R10,ASR#2
10360C:  ADD.W           R6, R5, R1,LSL#2
103610:  ADD.W           R0, R5, R0,LSL#2
103614:  STRD.W          R6, R0, [R4,#4]
103618:  LDR.W           R0, [R8]
10361C:  ADDS            R1, R6, #4
10361E:  STR             R1, [R4,#4]
103620:  STR             R0, [R6]
103622:  POP.W           {R8-R10}
103626:  POP             {R4-R7,PC}
103628:  BLX             j__ZSt9terminatev; std::terminate(void)
10362C:  PUSH            {R4-R7,LR}
10362E:  ADD             R7, SP, #0xC
103630:  PUSH.W          {R0-R9,R11}
103634:  MOV             R5, R0
103636:  LDR             R0, =(__stack_chk_guard_ptr - 0x10363E)
103638:  MOV             R9, R1
10363A:  ADD             R0, PC; __stack_chk_guard_ptr
10363C:  LDR             R0, [R0]; __stack_chk_guard
10363E:  LDR             R0, [R0]
103640:  STR             R0, [SP,#0x58+var_3C]
103642:  LDR             R0, [R5,#8]
103644:  CBZ             R0, loc_103654
103646:  CMP             R0, #2
103648:  BEQ             loc_10365C
10364A:  CMP             R0, #1
10364C:  BNE             loc_103668
10364E:  LDR             R1, =(aN - 0x103654); "$N" ...
103650:  ADD             R1, PC; "$N"
103652:  B               loc_103658
103654:  LDR             R1, =(aT_0 - 0x10365A); "$T" ...
103656:  ADD             R1, PC; "$T"
103658:  ADDS            R2, R1, #2
10365A:  B               loc_103662
10365C:  LDR             R1, =(aTt - 0x103662); "$TT" ...
10365E:  ADD             R1, PC; "$TT"
103660:  ADDS            R2, R1, #3
103662:  MOV             R0, R9
103664:  BL              sub_FFB40
103668:  LDR             R0, [R5,#0xC]
10366A:  CBZ             R0, loc_1036B0
10366C:  SUBS            R6, R0, #1
10366E:  BEQ             loc_1036CA
103670:  SUB.W           R0, R7, #-var_31
103674:  MOVS            R1, #0
103676:  ADD.W           R8, R0, #0x15
10367A:  ADD.W           R4, R0, #0x14
10367E:  MOV             R5, R8
103680:  ORRS.W          R0, R6, R1
103684:  BEQ             loc_1036A6
103686:  MOV             R0, R6
103688:  MOVS            R2, #0xA
10368A:  MOVS            R3, #0
10368C:  BLX             sub_1096A4
103690:  ADD.W           R2, R0, R0,LSL#2
103694:  SUBS            R5, #1
103696:  SUB.W           R2, R6, R2,LSL#1
10369A:  MOV             R6, R0
10369C:  ORR.W           R2, R2, #0x30 ; '0'
1036A0:  STRB.W          R2, [R4],#-1
1036A4:  B               loc_103680
1036A6:  MOV             R0, R9
1036A8:  MOV             R1, R5
1036AA:  MOV             R2, R8
1036AC:  BL              sub_FFB40
1036B0:  LDR             R0, [SP,#0x58+var_3C]
1036B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1036B8)
1036B4:  ADD             R1, PC; __stack_chk_guard_ptr
1036B6:  LDR             R1, [R1]; __stack_chk_guard
1036B8:  LDR             R1, [R1]
1036BA:  CMP             R1, R0
1036BC:  ITTT EQ
1036BE:  ADDEQ           SP, SP, #0x20 ; ' '
1036C0:  POPEQ.W         {R8,R9,R11}
1036C4:  POPEQ           {R4-R7,PC}
1036C6:  BLX             __stack_chk_fail
1036CA:  LDR             R0, [SP,#0x58+var_3C]
1036CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1036D2)
1036CE:  ADD             R1, PC; __stack_chk_guard_ptr
1036D0:  LDR             R1, [R1]; __stack_chk_guard
1036D2:  LDR             R1, [R1]
1036D4:  CMP             R1, R0
1036D6:  ITTTT EQ
1036D8:  MOVEQ           R0, R9
1036DA:  MOVEQ           R1, #0x30 ; '0'
1036DC:  ADDEQ           SP, SP, #0x20 ; ' '
1036DE:  POPEQ.W         {R8,R9,R11}
1036E2:  ITT EQ
1036E4:  POPEQ.W         {R4-R7,LR}
1036E8:  BEQ.W           sub_FE09A
1036EC:  B               loc_1036C6
