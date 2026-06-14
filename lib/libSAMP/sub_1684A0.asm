; =========================================================
; Game Engine Function: sub_1684A0
; Address            : 0x1684A0 - 0x168730
; =========================================================

1684A0:  PUSH            {R4-R7,LR}
1684A2:  ADD             R7, SP, #0xC
1684A4:  PUSH.W          {R8-R11}
1684A8:  SUB             SP, SP, #4
1684AA:  LDR             R0, =(dword_381B58 - 0x1684B8)
1684AC:  MOVW            R1, #0x1570
1684B0:  MOV.W           R9, #0
1684B4:  ADD             R0, PC; dword_381B58
1684B6:  LDR.W           R10, [R0]
1684BA:  MOVW            R0, #0x19B8
1684BE:  ADD.W           R8, R10, R1
1684C2:  LDR.W           R0, [R10,R0]
1684C6:  CBZ             R0, loc_1684D0
1684C8:  LDRB            R1, [R0,#9]
1684CA:  LSLS            R1, R1, #0x1E
1684CC:  IT PL
1684CE:  MOVPL           R9, R0
1684D0:  LDRD.W          R0, R1, [R8]
1684D4:  LDRB.W          R2, [R10,#0xAF]
1684D8:  MOV             R11, R1
1684DA:  MOV             LR, R0
1684DC:  CBZ             R2, loc_168512
1684DE:  VMOV.F32        S4, #4.0
1684E2:  VMOV            S0, R1
1684E6:  VMOV            S2, R0
1684EA:  VCMP.F32        S0, S4
1684EE:  VMRS            APSR_nzcv, FPSCR
1684F2:  VMOV.F32        S6, S4
1684F6:  VCMP.F32        S2, S4
1684FA:  IT GE
1684FC:  VMOVGE.F32      S6, S0
168500:  VMRS            APSR_nzcv, FPSCR
168504:  IT GE
168506:  VMOVGE.F32      S4, S2
16850A:  VMOV            R11, S6
16850E:  VMOV            LR, S4
168512:  LDR.W           R5, [R8,#0x3FC]
168516:  CMP             R5, #1
168518:  BLT             loc_1685B0
16851A:  LDR.W           R2, [R8,#0x404]
16851E:  MOV             R12, #0x1000042
168526:  SUBS            R6, R2, #4
168528:  LDR.W           R2, [R6,R5,LSL#2]
16852C:  LDRB.W          R4, [R2,#0x7A]
168530:  CBZ             R4, loc_1685A8
168532:  LDRB.W          R4, [R2,#0x81]
168536:  CBNZ            R4, loc_1685A8
168538:  LDR             R4, [R2,#8]
16853A:  LSLS            R3, R4, #0x16
16853C:  BMI             loc_1685A8
16853E:  ANDS.W          R3, R4, R12
168542:  VLDR            S2, [R2,#0x1E0]
168546:  MOV             R3, R0
168548:  MOV             R4, R1
16854A:  IT EQ
16854C:  MOVEQ           R3, LR
16854E:  VMOV            S0, R3
168552:  VSUB.F32        S4, S2, S0
168556:  VLDR            S2, [R10,#0xE0]
16855A:  IT EQ
16855C:  MOVEQ           R4, R11
16855E:  VCMP.F32        S2, S4
168562:  VMRS            APSR_nzcv, FPSCR
168566:  BLT             loc_1685A8
168568:  VMOV            S4, R4
16856C:  VLDR            S6, [R2,#0x1E4]
168570:  VSUB.F32        S8, S6, S4
168574:  VLDR            S6, [R10,#0xE4]
168578:  VCMP.F32        S6, S8
16857C:  VMRS            APSR_nzcv, FPSCR
168580:  BLT             loc_1685A8
168582:  VLDR            S8, [R2,#0x1E8]
168586:  VADD.F32        S0, S8, S0
16858A:  VCMP.F32        S2, S0
16858E:  VMRS            APSR_nzcv, FPSCR
168592:  ITTTT MI
168594:  VLDRMI          S0, [R2,#0x1EC]
168598:  VADDMI.F32      S0, S0, S4
16859C:  VCMPMI.F32      S6, S0
1685A0:  VMRSMI          APSR_nzcv, FPSCR
1685A4:  BMI.W           loc_168722
1685A8:  SUBS            R5, #1
1685AA:  ADDS            R2, R5, #1
1685AC:  CMP             R2, #1
1685AE:  BHI             loc_168528
1685B0:  CMP.W           R9, #0
1685B4:  STR.W           R9, [R8,#0x440]
1685B8:  BEQ             loc_1685C0
1685BA:  LDR.W           R6, [R9,#0x2FC]
1685BE:  B               loc_1685C6
1685C0:  MOV.W           R9, #0
1685C4:  MOVS            R6, #0
1685C6:  MOVW            R5, #0x2F34
1685CA:  STR.W           R6, [R8,#0x444]
1685CE:  BL              sub_1683BC
1685D2:  CBZ             R0, loc_1685F6
1685D4:  CBZ             R6, loc_1685F6
1685D6:  LDR.W           R1, [R6,#0x2FC]
1685DA:  CMP             R1, R0
1685DC:  BEQ             loc_1685F6
1685DE:  CMP             R6, R0
1685E0:  BEQ             loc_1685F6
1685E2:  LDR.W           R6, [R6,#0x2F8]
1685E6:  CMP             R6, #0
1685E8:  BNE             loc_1685DE
1685EA:  MOV.W           R9, #0
1685EE:  STR.W           R9, [R8,#0x440]
1685F2:  STR.W           R9, [R8,#0x444]
1685F6:  LDR.W           R12, [R10,#8]
1685FA:  ADD.W           LR, R10, R5
1685FE:  MOVS            R3, #0
168600:  MOV.W           R6, #0xFFFFFFFF
168604:  MOVS            R2, #0
168606:  MOVS.W          R1, R12,LSL#27
16860A:  ITTT MI
16860C:  MOVMI.W         R9, #0
168610:  STRMI.W         R9, [R8,#0x440]
168614:  STRMI.W         R9, [R8,#0x444]
168618:  ADD.W           R1, R10, #0x3B0
16861C:  ADD.W           R5, R10, R2
168620:  LDRB.W          R4, [R5,#0x3D8]
168624:  CBZ             R4, loc_16863E
168626:  CMP.W           R9, #0
16862A:  BEQ             loc_168630
16862C:  MOVS            R4, #1
16862E:  B               loc_16863A
168630:  LDR.W           R4, [R8,#0x52C]
168634:  CMP             R4, #0
168636:  IT NE
168638:  MOVNE           R4, #1
16863A:  STRB.W          R4, [R5,#0x3E7]
16863E:  LDRB.W          R4, [R5,#0xE8]
168642:  AND.W           R3, R3, #1
168646:  ORRS.W          R5, R4, R3
16864A:  MOV             R3, R5
16864C:  IT NE
16864E:  MOVNE           R3, #1
168650:  CBZ             R4, loc_168672
168652:  ADDS            R4, R6, #1
168654:  BEQ             loc_168670
168656:  ADD.W           R4, R10, R6,LSL#3
16865A:  VLDR            D17, [R1]
16865E:  VLDR            D16, [R4,#0x3B0]
168662:  VCMP.F64        D17, D16
168666:  VMRS            APSR_nzcv, FPSCR
16866A:  IT MI
16866C:  MOVMI           R6, R2
16866E:  B               loc_168672
168670:  MOV             R6, R2
168672:  ADDS            R2, #1
168674:  ADDS            R1, #8
168676:  CMP             R2, #5
168678:  BNE             loc_16861C
16867A:  ADDS            R1, R6, #1
16867C:  BEQ             loc_16868E
16867E:  ADD.W           R1, R10, R6
168682:  LDRB.W          R1, [R1,#0x3E7]
168686:  CMP             R1, #0
168688:  IT NE
16868A:  MOVNE           R1, #1
16868C:  B               loc_168690
16868E:  MOVS            R1, #1
168690:  LDRB.W          R2, [R8,#0x7A8]
168694:  CMP             R2, #0
168696:  ITTE NE
168698:  LDRBNE.W        R2, [R8,#0x7AC]
16869C:  UBFXNE.W        R2, R2, #4, #1
1686A0:  MOVEQ           R2, #0
1686A2:  ORRS            R2, R1
1686A4:  ITTT EQ
1686A6:  MOVEQ.W         R9, #0
1686AA:  STREQ.W         R9, [R8,#0x440]
1686AE:  STREQ.W         R9, [R8,#0x444]
1686B2:  LDR.W           R2, [LR]
1686B6:  ADDS            R3, R2, #1
1686B8:  BNE             loc_1686CE
1686BA:  CBZ             R1, loc_1686CA
1686BC:  CMP.W           R9, #0
1686C0:  MOV.W           R2, #1
1686C4:  IT EQ
1686C6:  CMPEQ           R5, #0
1686C8:  BNE             loc_1686D4
1686CA:  LDR.W           R2, [R8,#0x52C]
1686CE:  CMP             R2, #0
1686D0:  IT NE
1686D2:  MOVNE           R2, #1
1686D4:  LDR.W           R1, [LR,#4]
1686D8:  STRB.W          R2, [R10,#0x354]
1686DC:  ADDS            R2, R1, #1
1686DE:  BEQ             loc_1686E4
1686E0:  CMP             R1, #0
1686E2:  B               loc_1686EA
1686E4:  LDR.W           R1, [R8,#0x460]
1686E8:  ORRS            R1, R0
1686EA:  IT NE
1686EC:  MOVNE           R1, #1
1686EE:  LDR.W           R0, [LR,#8]
1686F2:  MOVS            R2, #0
1686F4:  LDRB.W          R3, [R10,#0x359]
1686F8:  SUBS            R0, #1
1686FA:  CMN.W           R0, #2
1686FE:  AND.W           R0, R12, #9
168702:  IT CC
168704:  MOVCC           R2, #1
168706:  STRB.W          R2, [R10,#0x356]
16870A:  CMP             R0, #1
16870C:  IT NE
16870E:  MOVNE           R0, R1
168710:  CMP             R3, #0
168712:  IT EQ
168714:  MOVEQ           R0, R1
168716:  STRB.W          R0, [R10,#0x355]
16871A:  ADD             SP, SP, #4
16871C:  POP.W           {R8-R11}
168720:  POP             {R4-R7,PC}
168722:  CMP.W           R9, #0
168726:  IT EQ
168728:  MOVEQ           R9, R2
16872A:  STR.W           R9, [R8,#0x440]
16872E:  B               loc_1685BA
