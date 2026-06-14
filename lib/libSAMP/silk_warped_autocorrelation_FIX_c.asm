; =========================================================
; Game Engine Function: silk_warped_autocorrelation_FIX_c
; Address            : 0x1AE610 - 0x1AE82A
; =========================================================

1AE610:  PUSH            {R4-R7,LR}
1AE612:  ADD             R7, SP, #0xC
1AE614:  PUSH.W          {R8-R11}
1AE618:  SUB             SP, SP, #0x14C
1AE61A:  STRD.W          R1, R0, [SP,#0x168+var_164]
1AE61E:  ADD.W           R11, SP, #0x168+var_88
1AE622:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AE62E)
1AE624:  MOVS            R1, #0x64 ; 'd'; n
1AE626:  MOV             R8, R3
1AE628:  MOV             R4, R2
1AE62A:  ADD             R0, PC; __stack_chk_guard_ptr
1AE62C:  LDR             R0, [R0]; __stack_chk_guard
1AE62E:  LDR             R0, [R0]
1AE630:  STR             R0, [SP,#0x168+var_20]
1AE632:  MOV             R0, R11; int
1AE634:  BLX             sub_22178C
1AE638:  ADD             R0, SP, #0x168+var_150; int
1AE63A:  MOVS            R1, #0xC8; n
1AE63C:  BLX             sub_22178C
1AE640:  LDRD.W          R5, R12, [R7,#arg_0]
1AE644:  CMP             R5, #1
1AE646:  BLT             loc_1AE73C
1AE648:  ADD             R0, SP, #0x168+var_150
1AE64A:  CMP.W           R12, #1
1AE64E:  ADD.W           R6, R0, R12,LSL#3
1AE652:  BLT             loc_1AE714
1AE654:  SXTH.W          LR, R8
1AE658:  MOV.W           R10, #0
1AE65C:  MOVS            R1, #0
1AE65E:  STRD.W          R6, R4, [SP,#0x168+var_15C]
1AE662:  STR             R1, [SP,#0x168+var_154]
1AE664:  MOVS            R5, #0
1AE666:  LDRSH.W         R1, [R4,R1,LSL#1]
1AE66A:  MOV.W           R8, R1,LSL#13
1AE66E:  ADD             R1, SP, #0x168+var_150
1AE670:  STR.W           R8, [R11,R5,LSL#2]
1AE674:  ADD.W           R4, R11, R5,LSL#2
1AE678:  ADDS            R5, #2
1AE67A:  LDR.W           R9, [SP,#0x168+var_88]
1AE67E:  LDRD.W          R3, R2, [R1]
1AE682:  SMULL.W         R6, R0, R9, R8
1AE686:  LSRS            R6, R6, #0x10
1AE688:  ORR.W           R6, R6, R0,LSL#16
1AE68C:  ASRS            R0, R0, #0x10
1AE68E:  ADDS            R3, R3, R6
1AE690:  LDR             R6, [R4,#4]
1AE692:  ADCS            R0, R2
1AE694:  STR             R3, [R1]
1AE696:  SUB.W           R2, R6, R8
1AE69A:  STR             R0, [R1,#4]
1AE69C:  SMLABT.W        R3, LR, R2, R10
1AE6A0:  UXTH            R2, R2
1AE6A2:  MUL.W           R2, R2, LR
1AE6A6:  LDR.W           R10, [R4,#8]
1AE6AA:  ADD.W           R0, R3, R2,ASR#16
1AE6AE:  STR             R0, [R4,#4]
1AE6B0:  LDR             R4, [SP,#0x168+var_88]
1AE6B2:  SUB.W           R2, R10, R0
1AE6B6:  UXTH            R3, R2
1AE6B8:  SMLABT.W        R2, LR, R2, R6
1AE6BC:  SMULL.W         R0, R4, R4, R0
1AE6C0:  MUL.W           R8, R3, LR
1AE6C4:  LDRD.W          R6, R3, [R1,#8]
1AE6C8:  LSRS            R0, R0, #0x10
1AE6CA:  ORR.W           R0, R0, R4,LSL#16
1AE6CE:  ASRS            R4, R4, #0x10
1AE6D0:  ADDS            R0, R0, R6
1AE6D2:  STR             R0, [R1,#8]
1AE6D4:  ADC.W           R0, R4, R3
1AE6D8:  STR             R0, [R1,#0xC]
1AE6DA:  ADD.W           R8, R2, R8,ASR#16
1AE6DE:  ADDS            R1, #0x10
1AE6E0:  CMP             R5, R12
1AE6E2:  BLT             loc_1AE670
1AE6E4:  STR.W           R8, [R11,R12,LSL#2]
1AE6E8:  LDR.W           R10, [SP,#0x168+var_88]
1AE6EC:  LDR             R6, [SP,#0x168+var_15C]
1AE6EE:  LDR             R4, [SP,#0x168+var_158]
1AE6F0:  SMULL.W         R0, R1, R10, R8
1AE6F4:  LDRD.W          R2, R3, [R6]
1AE6F8:  LSRS            R0, R0, #0x10
1AE6FA:  ORR.W           R0, R0, R1,LSL#16
1AE6FE:  ASRS            R1, R1, #0x10
1AE700:  ADDS            R0, R0, R2
1AE702:  ADCS            R1, R3
1AE704:  STRD.W          R0, R1, [R6]
1AE708:  LDR             R1, [SP,#0x168+var_154]
1AE70A:  LDR             R0, [R7,#arg_0]
1AE70C:  ADDS            R1, #1
1AE70E:  CMP             R1, R0
1AE710:  BNE             loc_1AE662
1AE712:  B               loc_1AE73C
1AE714:  LDRD.W          R1, R2, [R6]
1AE718:  LDRSH.W         R0, [R4],#2
1AE71C:  LSLS            R0, R0, #0xD
1AE71E:  STR.W           R0, [R11,R12,LSL#2]
1AE722:  LDR             R3, [SP,#0x168+var_88]
1AE724:  SMULL.W         R0, R3, R3, R0
1AE728:  LSRS            R0, R0, #0x10
1AE72A:  ORR.W           R0, R0, R3,LSL#16
1AE72E:  ASRS            R3, R3, #0x10
1AE730:  ADDS            R1, R1, R0
1AE732:  ADCS            R2, R3
1AE734:  SUBS            R5, #1
1AE736:  BNE             loc_1AE718
1AE738:  STRD.W          R1, R2, [R6]
1AE73C:  LDRD.W          R3, R6, [SP,#0x168+var_150]
1AE740:  CMP             R6, #0
1AE742:  ITEE NE
1AE744:  CLZNE.W         R2, R6
1AE748:  CLZEQ.W         R0, R3
1AE74C:  ADDEQ.W         R2, R0, #0x20 ; ' '
1AE750:  LDR             R4, [SP,#0x168+var_160]
1AE752:  MOV             R0, #0xFFFFFFF6
1AE756:  SUB.W           R1, R2, #0x23 ; '#'
1AE75A:  CMN.W           R1, #0x16
1AE75E:  IT LE
1AE760:  MOVLE           R1, #0xFFFFFFEA
1AE764:  CMP             R2, #0x37 ; '7'
1AE766:  IT GT
1AE768:  MOVGT           R1, #0x14
1AE76A:  LDR             R2, [SP,#0x168+var_164]
1AE76C:  CMP.W           R1, #0xFFFFFFFF
1AE770:  SUB.W           R0, R0, R1
1AE774:  STR             R0, [R2]
1AE776:  BLE             loc_1AE7B8
1AE778:  CMP.W           R12, #0
1AE77C:  BLT             loc_1AE810
1AE77E:  SUB.W           R2, R1, #0x20 ; ' '
1AE782:  LSL.W           R0, R3, R1
1AE786:  CMP             R2, #0
1AE788:  IT GE
1AE78A:  MOVGE           R0, #0
1AE78C:  CMP.W           R12, #0
1AE790:  STR             R0, [R4]
1AE792:  BEQ             loc_1AE810
1AE794:  ADD             R0, SP, #0x168+var_150
1AE796:  ADDS            R6, R4, #4
1AE798:  ADD.W           R3, R0, #8
1AE79C:  LDR             R0, [R3]
1AE79E:  CMP             R2, #0
1AE7A0:  ADD.W           R3, R3, #8
1AE7A4:  LSL.W           R0, R0, R1
1AE7A8:  IT GE
1AE7AA:  MOVGE           R0, #0
1AE7AC:  SUBS.W          R12, R12, #1
1AE7B0:  STR.W           R0, [R6],#4
1AE7B4:  BNE             loc_1AE79C
1AE7B6:  B               loc_1AE810
1AE7B8:  CMP.W           R12, #0
1AE7BC:  BLT             loc_1AE810
1AE7BE:  NEGS            R2, R1
1AE7C0:  LSR.W           R0, R3, R2
1AE7C4:  RSB.W           R3, R2, #0x20 ; ' '
1AE7C8:  LSL.W           R5, R6, R3
1AE7CC:  ORRS            R0, R5
1AE7CE:  MOV             R5, #0xFFFFFFE0
1AE7D2:  SUBS            R1, R5, R1
1AE7D4:  CMP             R1, #0
1AE7D6:  IT GE
1AE7D8:  ASRGE.W         R0, R6, R1
1AE7DC:  CMP.W           R12, #0
1AE7E0:  STR             R0, [R4]
1AE7E2:  BEQ             loc_1AE810
1AE7E4:  ADD             R0, SP, #0x168+var_150
1AE7E6:  ADDS            R6, R4, #4
1AE7E8:  ADD.W           R1, R0, #8
1AE7EC:  LDRD.W          R0, R5, [R1]
1AE7F0:  ADDS            R1, #8
1AE7F2:  LSL.W           R4, R5, R3
1AE7F6:  LSRS            R0, R2
1AE7F8:  ORRS            R0, R4
1AE7FA:  SUB.W           R4, R2, #0x20 ; ' '
1AE7FE:  CMP             R4, #0
1AE800:  IT GE
1AE802:  ASRGE.W         R0, R5, R4
1AE806:  SUBS.W          R12, R12, #1
1AE80A:  STR.W           R0, [R6],#4
1AE80E:  BNE             loc_1AE7EC
1AE810:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AE818)
1AE812:  LDR             R1, [SP,#0x168+var_20]
1AE814:  ADD             R0, PC; __stack_chk_guard_ptr
1AE816:  LDR             R0, [R0]; __stack_chk_guard
1AE818:  LDR             R0, [R0]
1AE81A:  SUBS            R0, R0, R1
1AE81C:  ITTT EQ
1AE81E:  ADDEQ           SP, SP, #0x14C
1AE820:  POPEQ.W         {R8-R11}
1AE824:  POPEQ           {R4-R7,PC}
1AE826:  BLX             __stack_chk_fail
