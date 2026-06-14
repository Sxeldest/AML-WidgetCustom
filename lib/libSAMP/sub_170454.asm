; =========================================================
; Game Engine Function: sub_170454
; Address            : 0x170454 - 0x1706EC
; =========================================================

170454:  PUSH            {R4-R7,LR}
170456:  ADD             R7, SP, #0xC
170458:  PUSH.W          {R8-R11}
17045C:  SUB             SP, SP, #4
17045E:  VPUSH           {D8}
170462:  LDR.W           R12, [R7,#arg_0]
170466:  VLDR            S2, [R2,#4]
17046A:  VLDR            S0, [R2]
17046E:  VLDR            S10, [R12,#0xC]
170472:  VLDR            S8, [R12,#8]
170476:  VSUB.F32        S14, S10, S2
17047A:  VLDR            S5, [R1,#4]
17047E:  VSUB.F32        S1, S8, S0
170482:  VLDR            S3, [R1]
170486:  VLDR            S6, [R12,#4]
17048A:  VMOV.F32        S12, S5
17048E:  VLDR            S4, [R12]
170492:  LDRD.W          LR, R4, [R7,#arg_4]
170496:  VCMP.F32        S5, S14
17049A:  VMRS            APSR_nzcv, FPSCR
17049E:  VCMP.F32        S3, S1
1704A2:  IT GT
1704A4:  VMOVGT.F32      S12, S14
1704A8:  VMRS            APSR_nzcv, FPSCR
1704AC:  VMOV.F32        S14, S3
1704B0:  VCMP.F32        S5, S6
1704B4:  IT GT
1704B6:  VMOVGT.F32      S14, S1
1704BA:  VMRS            APSR_nzcv, FPSCR
1704BE:  VCMP.F32        S3, S4
1704C2:  IT MI
1704C4:  VMOVMI.F32      S12, S6
1704C8:  VMRS            APSR_nzcv, FPSCR
1704CC:  IT MI
1704CE:  VMOVMI.F32      S14, S4
1704D2:  LDR.W           R11, [R3]
1704D6:  CMP             R4, #1
1704D8:  BNE             loc_1705B8
1704DA:  LDR             R4, =(unk_91DC0 - 0x1704F0)
1704DC:  ADDS.W          R5, R11, #1
1704E0:  VLDR            S3, [LR,#4]
1704E4:  MOV             R5, #0xFFFFFFFC
1704E8:  VLDR            S1, [LR,#8]
1704EC:  ADD             R4, PC; unk_91DC0
1704EE:  VSUB.F32        S7, S3, S2
1704F2:  LDR.W           R8, [LR]
1704F6:  VSUB.F32        S9, S1, S0
1704FA:  LDR.W           R9, [LR,#0xC]
1704FE:  VLDR            S13, =0.0
170502:  MOV.W           R10, #0
170506:  VMOV            S11, R8
17050A:  IT NE
17050C:  SUBNE           R4, #4
17050E:  VMOV            S5, R9
170512:  IT NE
170514:  MOVNE           R5, #0xFFFFFFFB
170518:  ADDS            R6, R5, #5
17051A:  MOV             R6, R4
17051C:  IT EQ
17051E:  MOVEQ           R6, R3
170520:  LDR             R6, [R6]
170522:  BEQ             loc_170528
170524:  CMP             R6, R11
170526:  BEQ             loc_1705B0
170528:  VMOV.F32        S15, S13
17052C:  CMP             R6, #3; switch 4 cases
17052E:  VMOV.F32        S16, S13
170532:  STRD.W          R10, R10, [R0]
170536:  BHI             def_17053C; jumptable 0017053C default case
170538:  ADR.W           R2, jpt_17053C
17053C:  TBB.W           [PC,R6]; switch jump
170540:  DCB 2; jump table for switch statement
170541:  DCB 9
170542:  DCB 0x10
170543:  DCB 0x19
170544:  STR.W           R9, [R0,#4]; jumptable 0017053C case 0
170548:  VMOV.F32        S15, S5
17054C:  VSTR            S9, [R0]
170550:  B               loc_17056C
170552:  VSTR            S7, [R0,#4]; jumptable 0017053C case 1
170556:  VMOV.F32        S15, S7
17055A:  STR.W           R8, [R0]
17055E:  B               loc_17057A
170560:  VMOV.F32        S15, S7; jumptable 0017053C case 2
170564:  VSTR            S9, [R0]
170568:  VSTR            S7, [R0,#4]
17056C:  VMOV.F32        S16, S9
170570:  B               def_17053C; jumptable 0017053C default case
170572:  STRD.W          R8, R9, [R0]; jumptable 0017053C case 3
170576:  VMOV.F32        S15, S5
17057A:  VMOV.F32        S16, S11
17057E:  VCMP.F32        S16, S4; jumptable 0017053C default case
170582:  VMRS            APSR_nzcv, FPSCR
170586:  ITT GE
170588:  VCMPGE.F32      S15, S6
17058C:  VMRSGE          APSR_nzcv, FPSCR
170590:  BLT             loc_1705B0
170592:  VADD.F32        S16, S0, S16
170596:  VCMP.F32        S16, S8
17059A:  VMRS            APSR_nzcv, FPSCR
17059E:  ITTT LS
1705A0:  VADDLS.F32      S15, S2, S15
1705A4:  VCMPLS.F32      S15, S10
1705A8:  VMRSLS          APSR_nzcv, FPSCR
1705AC:  BLS.W           loc_1706E8
1705B0:  ADDS            R4, #4
1705B2:  ADDS            R5, #1
1705B4:  BCC             loc_170518
1705B6:  B               loc_1705C4
1705B8:  VLDR            S3, [LR,#4]
1705BC:  VLDR            S1, [LR,#8]
1705C0:  VLDR            S5, [LR,#0xC]
1705C4:  LDR             R4, =(unk_BB50C - 0x1705D2)
1705C6:  MOV             R5, #0xFFFFFFFC
1705CA:  ADDS.W          R2, R11, #1
1705CE:  ADD             R4, PC; unk_BB50C
1705D0:  IT NE
1705D2:  SUBNE           R4, #4
1705D4:  IT NE
1705D6:  MOVNE           R5, #0xFFFFFFFB
1705DA:  ADDS            R2, R5, #5
1705DC:  MOV             R2, R4
1705DE:  IT EQ
1705E0:  MOVEQ           R2, R3
1705E2:  LDR             R6, [R2]
1705E4:  BEQ             loc_1705EA
1705E6:  CMP             R6, R11
1705E8:  BEQ             loc_170638
1705EA:  CMP             R6, #1
1705EC:  VMOV.F32        S7, S4
1705F0:  MOV             R2, LR
1705F2:  IT EQ
1705F4:  VMOVEQ.F32      S7, S1
1705F8:  CMP             R6, #0
1705FA:  IT NE
1705FC:  ADDNE.W         R2, R12, #8
170600:  VLDR            S9, [R2]
170604:  VSUB.F32        S7, S9, S7
170608:  VCMP.F32        S7, S0
17060C:  VMRS            APSR_nzcv, FPSCR
170610:  BMI             loc_170638
170612:  VMOV.F32        S7, S6
170616:  CMP             R6, #3
170618:  IT EQ
17061A:  VMOVEQ.F32      S7, S5
17061E:  VMOV.F32        S9, S10
170622:  CMP             R6, #2
170624:  IT EQ
170626:  VMOVEQ.F32      S9, S3
17062A:  VSUB.F32        S7, S9, S7
17062E:  VCMP.F32        S7, S2
170632:  VMRS            APSR_nzcv, FPSCR
170636:  BPL             loc_1706A8
170638:  ADDS            R4, #4
17063A:  ADDS            R5, #1
17063C:  BCC             loc_1705DA
17063E:  MOV.W           R2, #0xFFFFFFFF
170642:  STR             R2, [R3]
170644:  VLDR            S14, [R1,#4]
170648:  VLDR            S12, [R1]
17064C:  VADD.F32        S14, S2, S14
170650:  VADD.F32        S12, S0, S12
170654:  VCMP.F32        S14, S10
170658:  VMRS            APSR_nzcv, FPSCR
17065C:  IT MI
17065E:  VMOVMI.F32      S10, S14
170662:  VCMP.F32        S12, S8
170666:  VSUB.F32        S2, S10, S2
17066A:  VMRS            APSR_nzcv, FPSCR
17066E:  IT MI
170670:  VMOVMI.F32      S8, S12
170674:  VSUB.F32        S0, S8, S0
170678:  VCMP.F32        S2, S6
17067C:  VMRS            APSR_nzcv, FPSCR
170680:  VCMP.F32        S0, S4
170684:  IT GE
170686:  VMOVGE.F32      S6, S2
17068A:  VMRS            APSR_nzcv, FPSCR
17068E:  IT GE
170690:  VMOVGE.F32      S4, S0
170694:  VSTR            S4, [R0]
170698:  VSTR            S6, [R0,#4]
17069C:  VPOP            {D8}
1706A0:  ADD             SP, SP, #4
1706A2:  POP.W           {R8-R11}
1706A6:  POP             {R4-R7,PC}
1706A8:  CMP             R6, #1
1706AA:  VLDR            S4, [LR]
1706AE:  VLDR            S6, [LR,#4]
1706B2:  VLDR            S8, [LR,#0xC]
1706B6:  IT EQ
1706B8:  VMOVEQ.F32      S14, S1
1706BC:  CMP             R6, #3
1706BE:  IT EQ
1706C0:  VMOVEQ.F32      S12, S8
1706C4:  CMP             R6, #0
1706C6:  VSUB.F32        S0, S4, S0
1706CA:  IT EQ
1706CC:  VMOVEQ.F32      S14, S0
1706D0:  VSUB.F32        S2, S6, S2
1706D4:  CMP             R6, #2
1706D6:  IT EQ
1706D8:  VMOVEQ.F32      S12, S2
1706DC:  STR             R6, [R3]
1706DE:  VSTR            S14, [R0]
1706E2:  VSTR            S12, [R0,#4]
1706E6:  B               loc_17069C
1706E8:  STR             R6, [R3]
1706EA:  B               loc_17069C
