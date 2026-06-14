; =========================================================
; Game Engine Function: sub_166474
; Address            : 0x166474 - 0x1666C0
; =========================================================

166474:  PUSH            {R4-R7,LR}
166476:  ADD             R7, SP, #0xC
166478:  PUSH.W          {R8-R10}
16647C:  VPUSH           {D8-D12}
166480:  SUB             SP, SP, #0x40; float
166482:  LDR             R5, =(dword_381B58 - 0x16648E)
166484:  MOV             R4, R2
166486:  MOVW            R3, #0x1AB8
16648A:  ADD             R5, PC; dword_381B58
16648C:  LDR             R2, [R5]
16648E:  LDR             R3, [R2,R3]
166490:  CMP             R3, R1
166492:  BNE.W           loc_1666B4
166496:  MOVW            R1, #0x1558
16649A:  LSLS            R3, R4, #0x1D
16649C:  ADD             R1, R2
16649E:  BMI             loc_1664AA
1664A0:  LDRB.W          R3, [R1,#0x5BE]
1664A4:  CMP             R3, #0
1664A6:  BNE.W           loc_1666B4
1664AA:  LDR.W           R6, [R1,#0x454]
1664AE:  LDRB.W          R3, [R6,#0x140]
1664B2:  CMP             R3, #0
1664B4:  BNE.W           loc_1666B4
1664B8:  ADD.W           R8, SP, #0x80+var_60
1664BC:  LSLS            R3, R4, #0x1C
1664BE:  ITE PL
1664C0:  VLDRPL          S16, [R1]
1664C4:  VLDRMI          S16, =0.0
1664C8:  VLD1.32         {D16-D17}, [R0]
1664CC:  MOVS            R0, #4
1664CE:  MOV             R1, R8
1664D0:  VST1.64         {D16-D17}, [R1],R0
1664D4:  VLDR            S6, [R6,#0x1D4]
1664D8:  VLDR            S10, [R1]
1664DC:  VLDR            S4, [R6,#0x1D0]
1664E0:  VMOV.F32        S8, S6
1664E4:  VLDR            S12, [SP,#0x80+var_60]
1664E8:  VCMP.F32        S10, S6
1664EC:  VLDR            S2, [R6,#0x1D8]
1664F0:  VLDR            S14, [SP,#0x80+var_58]
1664F4:  VMRS            APSR_nzcv, FPSCR
1664F8:  VCMP.F32        S12, S4
1664FC:  VLDR            S0, [R6,#0x1DC]
166500:  VLDR            S1, [SP,#0x80+var_54]
166504:  IT GE
166506:  VMOVGE.F32      S8, S10
16650A:  VMRS            APSR_nzcv, FPSCR
16650E:  VMOV.F32        S10, S4
166512:  VCMP.F32        S14, S2
166516:  IT GE
166518:  VMOVGE.F32      S10, S12
16651C:  VMRS            APSR_nzcv, FPSCR
166520:  VMOV.F32        S12, S2
166524:  VCMP.F32        S1, S0
166528:  IT MI
16652A:  VMOVMI.F32      S12, S14
16652E:  VMRS            APSR_nzcv, FPSCR
166532:  VMOV.F32        S14, S0
166536:  IT MI
166538:  VMOVMI.F32      S14, S1
16653C:  LSLS            R0, R4, #0x1F
16653E:  VSTR            S8, [R1]
166542:  VSTR            S10, [SP,#0x80+var_60]
166546:  VSTR            S12, [SP,#0x80+var_58]
16654A:  VSTR            S14, [SP,#0x80+var_54]
16654E:  BEQ.W           loc_166660
166552:  VMOV.F32        S3, #-4.0
166556:  MOVS            R0, #0
166558:  VMOV.F32        S1, #4.0
16655C:  MOVS            R1, #0
16655E:  MOV.W           R12, #0
166562:  VADD.F32        S24, S8, S3
166566:  VADD.F32        S22, S10, S3
16656A:  VADD.F32        S20, S14, S1
16656E:  VADD.F32        S18, S12, S1
166572:  VCMP.F32        S24, S6
166576:  VSTR            S24, [SP,#0x80+var_5C]
16657A:  VMRS            APSR_nzcv, FPSCR
16657E:  VCMP.F32        S22, S4
166582:  VSTR            S20, [SP,#0x80+var_54]
166586:  VSTR            S18, [SP,#0x80+var_58]
16658A:  VSTR            S22, [SP,#0x80+var_60]
16658E:  IT GE
166590:  MOVGE           R0, #1
166592:  VMRS            APSR_nzcv, FPSCR
166596:  IT GE
166598:  MOVGE           R1, #1
16659A:  ANDS            R0, R1
16659C:  VCMP.F32        S18, S2
1665A0:  MOVS            R1, #0
1665A2:  VMRS            APSR_nzcv, FPSCR
1665A6:  IT LS
1665A8:  MOVLS           R1, #1
1665AA:  VCMP.F32        S20, S0
1665AE:  ANDS            R0, R1
1665B0:  VMRS            APSR_nzcv, FPSCR
1665B4:  MOV.W           R1, #0
1665B8:  IT LS
1665BA:  MOVLS           R1, #1
1665BC:  ANDS.W          R10, R0, R1
1665C0:  BNE             loc_1665E0
1665C2:  VMOV            R1, S22; int
1665C6:  LDR.W           R0, [R6,#0x27C]; int
1665CA:  VMOV            R2, S24; int
1665CE:  STR.W           R12, [SP,#0x80+var_7C]; int
1665D2:  VMOV            R3, S18; int
1665D6:  VSTR            S20, [SP,#0x80+var_80]
1665DA:  BL              sub_172C12
1665DE:  LDR             R2, [R5]
1665E0:  VMOV.F32        S0, #1.0
1665E4:  MOVW            R0, #0x1518
1665E8:  VMOV.F32        S2, #-1.0
1665EC:  ADD             R0, R2
1665EE:  ADD.W           R1, R0, #0x36C
1665F2:  LDR.W           R9, [R6,#0x27C]
1665F6:  VLD1.32         {D16-D17}, [R1]
1665FA:  MOVS            R1, #0xC
1665FC:  VADD.F32        S4, S24, S0
166600:  VADD.F32        S0, S22, S0
166604:  VADD.F32        S6, S20, S2
166608:  VADD.F32        S2, S18, S2
16660C:  VSTR            S4, [SP,#0x80+var_64]
166610:  VSTR            S0, [SP,#0x80+var_68]
166614:  VLDR            S0, [R0]
166618:  ADD             R0, SP, #0x80+var_50
16661A:  VSTR            S2, [SP,#0x80+var_70]
16661E:  MOV             R2, R0
166620:  VSTR            S6, [SP,#0x80+var_6C]
166624:  VST1.64         {D16-D17}, [R2],R1
166628:  VLDR            S2, [R2]
16662C:  VMUL.F32        S0, S0, S2
166630:  VSTR            S0, [R2]
166634:  BL              sub_165778
166638:  MOV             R3, R0
16663A:  MOV.W           R0, #0x40000000
16663E:  MOVS            R1, #0xF
166640:  ADD             R2, SP, #0x80+var_70
166642:  STRD.W          R1, R0, [SP,#0x80+var_7C]
166646:  ADD             R1, SP, #0x80+var_68
166648:  MOV             R0, R9
16664A:  VSTR            S16, [SP,#0x80+var_80]
16664E:  BL              sub_1740F8
166652:  CMP.W           R10, #0
166656:  ITT EQ
166658:  LDREQ.W         R0, [R6,#0x27C]
16665C:  BLEQ            sub_172D44
166660:  LSLS            R0, R4, #0x1E
166662:  BPL             loc_1666B4
166664:  LDR             R0, [R5]
166666:  MOVW            R1, #0x1518
16666A:  LDR.W           R4, [R6,#0x27C]
16666E:  ADD             R0, R1
166670:  ADD.W           R1, R0, #0x36C
166674:  VLDR            S0, [R0]
166678:  ADD             R0, SP, #0x80+var_50
16667A:  VLD1.32         {D16-D17}, [R1]
16667E:  MOVS            R1, #0xC
166680:  MOV             R2, R0
166682:  VST1.64         {D16-D17}, [R2],R1
166686:  VLDR            S2, [R2]
16668A:  VMUL.F32        S0, S0, S2
16668E:  VSTR            S0, [R2]
166692:  BL              sub_165778
166696:  MOV             R3, R0
166698:  MOV.W           R0, #0x3F800000
16669C:  MOV.W           R1, #0xFFFFFFFF
1666A0:  ADD.W           R2, R8, #8
1666A4:  STRD.W          R1, R0, [SP,#0x80+var_7C]
1666A8:  MOV             R0, R4
1666AA:  MOV             R1, R8
1666AC:  VSTR            S16, [SP,#0x80+var_80]
1666B0:  BL              sub_1740F8
1666B4:  ADD             SP, SP, #0x40 ; '@'
1666B6:  VPOP            {D8-D12}
1666BA:  POP.W           {R8-R10}
1666BE:  POP             {R4-R7,PC}
