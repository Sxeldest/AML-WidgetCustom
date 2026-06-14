; =========================================================
; Game Engine Function: sub_1074A4
; Address            : 0x1074A4 - 0x1076FE
; =========================================================

1074A4:  PUSH            {R4-R7,LR}
1074A6:  ADD             R7, SP, #0xC
1074A8:  PUSH.W          {R8-R11}
1074AC:  SUB             SP, SP, #0x1C
1074AE:  STR             R3, [SP,#0x38+var_30]
1074B0:  MOV             R6, R1
1074B2:  LDR             R1, =(aAxl - 0x1074BE); "AXL" ...
1074B4:  MOV             R11, R0
1074B6:  LDR             R3, =(aObjectSnapshot - 0x1074C2); "Object snapshot: %d" ...
1074B8:  MOVS            R0, #4; prio
1074BA:  ADD             R1, PC; "AXL"
1074BC:  STR             R2, [SP,#0x38+var_20]
1074BE:  ADD             R3, PC; "Object snapshot: %d"
1074C0:  MOV             R2, R3; fmt
1074C2:  MOV             R3, R6
1074C4:  BLX             __android_log_print
1074C8:  LDR             R0, =(off_234AE8 - 0x1074D8)
1074CA:  MOV.W           R1, #0x100
1074CE:  MOVS            R2, #0x20 ; ' '
1074D0:  MOVW            R3, #0x505
1074D4:  ADD             R0, PC; off_234AE8
1074D6:  LDR             R0, [R0]; off_2636C4
1074D8:  LDR             R5, [R0]
1074DA:  MOV.W           R0, #0x100
1074DE:  BLX             R5
1074E0:  MOV             R4, R0
1074E2:  LDR             R0, =(off_23494C - 0x1074EC)
1074E4:  MOVW            R1, #:lower16:(loc_1DB83C+1)
1074E8:  ADD             R0, PC; off_23494C
1074EA:  MOVT            R1, #:upper16:(loc_1DB83C+1)
1074EE:  LDR.W           R9, [R0]; dword_23DF24
1074F2:  LDR.W           R0, [R9]
1074F6:  ADD             R1, R0
1074F8:  MOV             R0, R4
1074FA:  BLX             R1
1074FC:  MOV             R8, R0
1074FE:  CMP             R4, #0
107500:  BEQ.W           loc_1076F4
107504:  CMP.W           R8, #0
107508:  BEQ.W           loc_1076F4
10750C:  MOVW            R0, #0xC2E
107510:  MOV             R10, R6
107512:  CMP             R6, R0
107514:  IT EQ
107516:  MOVWEQ          R10, #0x48C7
10751A:  MOVW            R0, #0x55D
10751E:  CMP             R6, R0
107520:  IT EQ
107522:  MOVWEQ          R10, #0x48C7
107526:  BIC.W           R0, R6, #1
10752A:  CMP.W           R0, #0xDE0
10752E:  IT EQ
107530:  MOVWEQ          R10, #0x48C7
107534:  MOV             R0, R10
107536:  BL              sub_F9C94
10753A:  MOV             R6, R0
10753C:  CBNZ            R0, loc_107554
10753E:  MOV             R0, R10
107540:  BL              sub_F9CBC
107544:  BL              sub_F9CCC
107548:  MOV             R0, R10
10754A:  MOVS            R1, #0xC8
10754C:  BL              sub_F9CD8
107550:  CMP             R0, #0
107552:  BEQ             loc_1075D4
107554:  MOV             R0, R10
107556:  BL              sub_108DC8
10755A:  CMP             R0, #0
10755C:  BEQ.W           loc_1076F4
107560:  MOV             R5, R0
107562:  MOV             R0, R10
107564:  STR             R6, [SP,#0x38+var_34]
107566:  BL              sub_108E24
10756A:  MOV             R6, R0
10756C:  MOVS            R0, #0
10756E:  ADD             R1, SP, #0x38+var_2C
107570:  STR             R0, [SP,#0x38+var_24]
107572:  STRD.W          R0, R0, [SP,#0x38+var_2C]
107576:  MOV             R0, R10
107578:  BL              sub_108E64
10757C:  STR             R5, [SP,#0x38+var_38]
10757E:  LDR             R5, [R5,#4]
107580:  CMP             R5, #0
107582:  BEQ             loc_107636
107584:  VMOV.F32        S4, #-2.25
107588:  VLDR            S6, =-0.1
10758C:  VMOV            S2, R6
107590:  VLDR            S0, [R7,#arg_0]
107594:  VLDR            S8, =50.0
107598:  ADD             R1, SP, #0x38+var_2C
10759A:  MOV             R0, R5
10759C:  MOVS            R2, #1
10759E:  VMLA.F32        S6, S2, S4
1075A2:  VLDR            S2, [SP,#0x38+var_2C]
1075A6:  VLDR            S4, [SP,#0x38+var_24]
1075AA:  VNEG.F32        S2, S2
1075AE:  VSUB.F32        S4, S8, S4
1075B2:  VMUL.F32        S0, S6, S0
1075B6:  VSTR            S2, [SP,#0x38+var_2C]
1075BA:  VSTR            S4, [SP,#0x38+var_24]
1075BE:  VSTR            S0, [SP,#0x38+var_28]
1075C2:  BL              sub_1090FC
1075C6:  MOVW            R0, #0x48C7
1075CA:  CMP             R10, R0
1075CC:  BNE             loc_1075E6
1075CE:  VLDR            S0, =180.0
1075D2:  B               loc_10762A
1075D4:  LDR             R1, =(aAxl - 0x1075E0); "AXL" ...
1075D6:  MOVS            R0, #5; prio
1075D8:  LDR             R2, =(aCanTLoadModelD_0 - 0x1075E2); "Can't load model %d for object snapshot" ...
1075DA:  MOV             R3, R10
1075DC:  ADD             R1, PC; "AXL"
1075DE:  ADD             R2, PC; "Can't load model %d for object snapshot"
1075E0:  BLX             __android_log_print
1075E4:  B               loc_1076F4
1075E6:  LDR             R6, [SP,#0x38+var_30]
1075E8:  VLDR            S0, [R6]
1075EC:  VCMP.F32        S0, #0.0
1075F0:  VMRS            APSR_nzcv, FPSCR
1075F4:  BEQ             loc_107602
1075F6:  VMOV            R2, S0
1075FA:  MOV             R0, R5
1075FC:  MOVS            R1, #0
1075FE:  BL              sub_109118
107602:  VLDR            S0, [R6,#4]
107606:  VCMP.F32        S0, #0.0
10760A:  VMRS            APSR_nzcv, FPSCR
10760E:  BEQ             loc_10761C
107610:  VMOV            R2, S0
107614:  MOV             R0, R5
107616:  MOVS            R1, #1
107618:  BL              sub_109118
10761C:  VLDR            S0, [R6,#8]
107620:  VCMP.F32        S0, #0.0
107624:  VMRS            APSR_nzcv, FPSCR
107628:  BEQ             loc_107636
10762A:  VMOV            R2, S0
10762E:  MOV             R0, R5
107630:  MOVS            R1, #2
107632:  BL              sub_109118
107636:  LDR.W           R0, [R11]
10763A:  MOV             R2, #0x5D61F9
107642:  STR             R4, [R0,#0x60]
107644:  LDR.W           R1, [R9]
107648:  LDR.W           R0, [R11]
10764C:  ADD             R1, R2
10764E:  BLX             R1
107650:  LDR.W           R1, [R9]
107654:  MOVW            R2, #:lower16:(off_1D5D70+1)
107658:  LDR.W           R0, [R11]
10765C:  MOVT            R2, #:upper16:(off_1D5D70+1)
107660:  ADDS            R3, R1, R2
107662:  ADD             R1, SP, #0x38+var_20
107664:  MOVS            R2, #3
107666:  BLX             R3
107668:  LDR             R0, =(off_234A88 - 0x10766E)
10766A:  ADD             R0, PC; off_234A88
10766C:  LDR             R1, [R0]; off_2636B8
10766E:  LDR.W           R0, [R11]
107672:  LDR             R1, [R1]
107674:  BLX             R1
107676:  LDR.W           R0, [R11,#4]
10767A:  BL              sub_10914C
10767E:  LDR             R0, =(off_234A8C - 0x107686)
107680:  MOVS            R1, #1
107682:  ADD             R0, PC; off_234A8C
107684:  LDR             R4, [R0]; off_263758
107686:  MOVS            R0, #6
107688:  LDR             R2, [R4]
10768A:  BLX             R2
10768C:  LDR             R2, [R4]
10768E:  MOVS            R0, #8
107690:  MOVS            R1, #1
107692:  BLX             R2
107694:  LDR             R2, [R4]
107696:  MOVS            R0, #7
107698:  MOVS            R1, #2
10769A:  BLX             R2
10769C:  LDR             R2, [R4]
10769E:  MOVS            R0, #0x1E
1076A0:  MOVS            R1, #0
1076A2:  BLX             R2
1076A4:  LDR             R2, [R4]
1076A6:  MOVS            R0, #0x14
1076A8:  MOVS            R1, #0
1076AA:  BLX             R2
1076AC:  LDR             R2, [R4]
1076AE:  MOVS            R0, #0xE
1076B0:  MOVS            R1, #0
1076B2:  BLX             R2
1076B4:  LDR.W           R0, [R9]
1076B8:  MOV             R1, #0x5D0BC1
1076C0:  ADD             R0, R1
1076C2:  BLX             R0
1076C4:  LDR             R4, [SP,#0x38+var_38]
1076C6:  MOV             R0, R4
1076C8:  BL              sub_108DF8
1076CC:  LDR             R0, =(off_234A90 - 0x1076D2)
1076CE:  ADD             R0, PC; off_234A90
1076D0:  LDR             R1, [R0]; off_2636BC
1076D2:  LDR.W           R0, [R11]
1076D6:  LDR             R1, [R1]
1076D8:  BLX             R1
1076DA:  LDR.W           R0, [R11,#4]
1076DE:  BL              sub_109174
1076E2:  MOV             R0, R4
1076E4:  BL              sub_108EA0
1076E8:  LDR             R0, [SP,#0x38+var_34]
1076EA:  CBNZ            R0, loc_1076F4
1076EC:  MOV             R0, R10
1076EE:  MOVS            R1, #0
1076F0:  BL              sub_F9D44
1076F4:  MOV             R0, R8
1076F6:  ADD             SP, SP, #0x1C
1076F8:  POP.W           {R8-R11}
1076FC:  POP             {R4-R7,PC}
