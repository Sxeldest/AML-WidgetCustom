; =========================================================
; Game Engine Function: sub_2513E4
; Address            : 0x2513E4 - 0x2517EA
; =========================================================

2513E4:  PUSH            {R4-R7,LR}
2513E6:  ADD             R7, SP, #0xC
2513E8:  PUSH.W          {R8-R11}
2513EC:  SUB             SP, SP, #4
2513EE:  VPUSH           {D8-D15}
2513F2:  SUB             SP, SP, #8
2513F4:  MOV             R10, R1
2513F6:  LDR             R1, [R0,#0x10]
2513F8:  MOV             R9, R3
2513FA:  MOV             R11, R2
2513FC:  CMP             R1, #2
2513FE:  BEQ.W           loc_251556
251402:  CMP             R1, #1
251404:  BEQ.W           loc_251698
251408:  CMP             R1, #0
25140A:  BNE.W           loc_2517DC
25140E:  LDR.W           R8, [R0,#0x14]
251412:  CMP.W           R10, #0
251416:  BEQ.W           loc_251550
25141A:  LDR             R1, [R0,#0x18]
25141C:  MOVS            R6, #0
25141E:  STR             R1, [SP,#0x68+var_64]
251420:  VLDR            S16, [R0,#0x1C]
251424:  VLDR            S18, [R0,#0x20]
251428:  VLDR            S20, [R0,#0x24]
25142C:  VLDR            S22, [R0,#0x28]
251430:  VLDR            S24, [R0,#0x2C]
251434:  VLDR            S26, [R0,#0x30]
251438:  VLDR            S28, [R0,#0x34]
25143C:  VLDR            S30, [R0,#0x38]
251440:  VLDR            S17, [R0,#0x3C]
251444:  VLDR            S19, [R0,#0x40]
251448:  STR             R0, [SP,#0x68+var_68]
25144A:  VLDR            S21, [R0,#0x44]
25144E:  VLDR            S23, =0.000095874
251452:  LDR             R0, [SP,#0x68+var_64]
251454:  ADD.W           R1, R11, R6
251458:  ADD             R0, R8
25145A:  UXTH.W          R8, R0
25145E:  VMOV            S0, R8
251462:  VCVT.F32.U32    S0, S0
251466:  VLDR            S25, [R1]
25146A:  VMUL.F32        S0, S0, S23
25146E:  VMOV            R0, S0; x
251472:  BLX             sinf
251476:  VMOV            S0, R0
25147A:  ADD.W           R0, R9, R6
25147E:  ADD.W           R2, R0, #0x2000
251482:  ADD.W           R1, R0, #0x4000
251486:  VMUL.F32        S0, S25, S0
25148A:  VLDR            S8, [R0]
25148E:  VLDR            S10, [R2]
251492:  ADD.W           R3, R0, #0xC000
251496:  VLDR            S12, [R1]
25149A:  ADD.W           R5, R0, #0xA000
25149E:  ADD.W           R4, R0, #0x8000
2514A2:  ADDS            R6, #4
2514A4:  SUBS.W          R10, R10, #1
2514A8:  VSUB.F32        S2, S21, S0
2514AC:  VMUL.F32        S2, S19, S2
2514B0:  VADD.F32        S21, S0, S2
2514B4:  VSUB.F32        S0, S0, S21
2514B8:  VMUL.F32        S2, S16, S0
2514BC:  VMUL.F32        S4, S18, S0
2514C0:  VMUL.F32        S6, S20, S0
2514C4:  VADD.F32        S2, S8, S2
2514C8:  VADD.F32        S4, S10, S4
2514CC:  VADD.F32        S6, S12, S6
2514D0:  VMUL.F32        S8, S28, S0
2514D4:  VMUL.F32        S10, S30, S0
2514D8:  VSTR            S2, [R0]
2514DC:  VMUL.F32        S2, S22, S0
2514E0:  VSTR            S4, [R2]
2514E4:  VMUL.F32        S4, S24, S0
2514E8:  VSTR            S6, [R1]
2514EC:  ADD.W           R1, R0, #0x10000
2514F0:  ADD.W           R2, R0, #0xE000
2514F4:  ADD.W           R0, R0, #0x6000
2514F8:  VMUL.F32        S6, S26, S0
2514FC:  VLDR            S14, [R4]
251500:  VMUL.F32        S0, S17, S0
251504:  VLDR            S12, [R0]
251508:  VLDR            S1, [R5]
25150C:  VADD.F32        S2, S2, S12
251510:  VLDR            S12, [R3]
251514:  VADD.F32        S4, S4, S14
251518:  VLDR            S14, [R2]
25151C:  VADD.F32        S8, S8, S12
251520:  VLDR            S12, [R1]
251524:  VADD.F32        S10, S10, S14
251528:  VADD.F32        S6, S6, S1
25152C:  VADD.F32        S0, S0, S12
251530:  VSTR            S2, [R0]
251534:  VSTR            S4, [R4]
251538:  VSTR            S6, [R5]
25153C:  VSTR            S8, [R3]
251540:  VSTR            S10, [R2]
251544:  VSTR            S0, [R1]
251548:  BNE             loc_251452
25154A:  LDR             R0, [SP,#0x68+var_68]
25154C:  VSTR            S21, [R0,#0x44]
251550:  STR.W           R8, [R0,#0x14]
251554:  B               loc_2517DC
251556:  LDR             R2, [R0,#0x14]
251558:  CMP.W           R10, #0
25155C:  BEQ.W           loc_251694
251560:  VMOV.F32        S7, #-1.0
251564:  LDR.W           R12, [R0,#0x18]
251568:  VLDR            S0, [R0,#0x1C]
25156C:  MOV             R8, R0
25156E:  VLDR            S2, [R0,#0x20]
251572:  MOVS            R1, #0
251574:  VLDR            S4, [R0,#0x24]
251578:  VLDR            S6, [R0,#0x28]
25157C:  VLDR            S8, [R0,#0x2C]
251580:  VLDR            S10, [R0,#0x30]
251584:  VLDR            S12, [R0,#0x34]
251588:  VLDR            S14, [R0,#0x38]
25158C:  VLDR            S1, [R0,#0x3C]
251590:  VLDR            S3, [R0,#0x40]
251594:  VLDR            S5, [R0,#0x44]
251598:  ADD.W           LR, R2, R12
25159C:  SUBS.W          R10, R10, #1
2515A0:  UBFX.W          R3, LR, #0xF, #1
2515A4:  VMOV            S9, R3
2515A8:  ADD.W           R3, R11, R1
2515AC:  VCVT.F32.U32    S9, S9
2515B0:  VLDR            S11, [R3]
2515B4:  ADD.W           R3, R9, R1
2515B8:  ADD.W           R1, R1, #4
2515BC:  ADD.W           R6, R3, #0x4000
2515C0:  ADD.W           R5, R3, #0x2000
2515C4:  VLDR            S16, [R3]
2515C8:  ADD.W           R4, R3, #0xC000
2515CC:  VLDR            S18, [R5]
2515D0:  ADD.W           R0, R3, #0xA000
2515D4:  VLDR            S20, [R6]
2515D8:  ADD.W           R2, R3, #0x8000
2515DC:  VADD.F32        S9, S9, S9
2515E0:  VADD.F32        S9, S9, S7
2515E4:  VMUL.F32        S9, S11, S9
2515E8:  VSUB.F32        S5, S5, S9
2515EC:  VMUL.F32        S5, S3, S5
2515F0:  VADD.F32        S5, S9, S5
2515F4:  VSUB.F32        S9, S9, S5
2515F8:  VMUL.F32        S11, S0, S9
2515FC:  VMUL.F32        S13, S2, S9
251600:  VMUL.F32        S15, S4, S9
251604:  VADD.F32        S11, S16, S11
251608:  VADD.F32        S13, S18, S13
25160C:  VADD.F32        S15, S20, S15
251610:  VMUL.F32        S16, S12, S9
251614:  VMUL.F32        S18, S14, S9
251618:  VSTR            S11, [R3]
25161C:  VMUL.F32        S11, S6, S9
251620:  VSTR            S13, [R5]
251624:  VMUL.F32        S13, S8, S9
251628:  VSTR            S15, [R6]
25162C:  VMUL.F32        S15, S10, S9
251630:  VMUL.F32        S9, S1, S9
251634:  ADD.W           R6, R3, #0x10000
251638:  ADD.W           R5, R3, #0xE000
25163C:  ADD.W           R3, R3, #0x6000
251640:  VLDR            S22, [R2]
251644:  VLDR            S20, [R3]
251648:  VLDR            S24, [R0]
25164C:  VADD.F32        S11, S20, S11
251650:  VLDR            S20, [R4]
251654:  VADD.F32        S13, S22, S13
251658:  VLDR            S22, [R5]
25165C:  VADD.F32        S15, S24, S15
251660:  VLDR            S24, [R6]
251664:  VADD.F32        S16, S16, S20
251668:  VADD.F32        S18, S18, S22
25166C:  VADD.F32        S9, S9, S24
251670:  VSTR            S11, [R3]
251674:  VSTR            S13, [R2]
251678:  UXTH.W          R2, LR
25167C:  VSTR            S15, [R0]
251680:  VSTR            S16, [R4]
251684:  VSTR            S18, [R5]
251688:  VSTR            S9, [R6]
25168C:  BNE             loc_251598
25168E:  MOV             R0, R8
251690:  VSTR            S5, [R0,#0x44]
251694:  STR             R2, [R0,#0x14]
251696:  B               loc_2517DC
251698:  LDR.W           LR, [R0,#0x14]
25169C:  CMP.W           R10, #0
2516A0:  BEQ.W           loc_2517D8
2516A4:  VMOV.F32        S9, #-1.0
2516A8:  LDR.W           R12, [R0,#0x18]
2516AC:  VLDR            S0, [R0,#0x1C]
2516B0:  MOV             R8, R0
2516B2:  VLDR            S2, [R0,#0x20]
2516B6:  MOVS            R2, #0
2516B8:  VLDR            S4, [R0,#0x24]
2516BC:  VLDR            S6, [R0,#0x28]
2516C0:  VLDR            S8, [R0,#0x2C]
2516C4:  VLDR            S10, [R0,#0x30]
2516C8:  VLDR            S12, [R0,#0x34]
2516CC:  VLDR            S14, [R0,#0x38]
2516D0:  VLDR            S1, [R0,#0x3C]
2516D4:  VLDR            S3, [R0,#0x40]
2516D8:  VLDR            S5, [R0,#0x44]
2516DC:  VLDR            S7, =0.000030518
2516E0:  ADD.W           R0, LR, R12
2516E4:  ADD.W           R3, R11, R2
2516E8:  SUBS.W          R10, R10, #1
2516EC:  UXTH.W          LR, R0
2516F0:  VMOV            S11, LR
2516F4:  VCVT.F32.U32    S11, S11
2516F8:  VLDR            S13, [R3]
2516FC:  ADD.W           R3, R9, R2
251700:  ADD.W           R2, R2, #4
251704:  ADD.W           R5, R3, #0x2000
251708:  ADD.W           R6, R3, #0x4000
25170C:  VLDR            S18, [R3]
251710:  ADD.W           R4, R3, #0xC000
251714:  VLDR            S20, [R5]
251718:  ADD.W           R1, R3, #0xA000
25171C:  VLDR            S22, [R6]
251720:  ADD.W           R0, R3, #0x8000
251724:  VMUL.F32        S11, S11, S7
251728:  VADD.F32        S11, S11, S9
25172C:  VMUL.F32        S11, S13, S11
251730:  VSUB.F32        S5, S5, S11
251734:  VMUL.F32        S5, S3, S5
251738:  VADD.F32        S5, S11, S5
25173C:  VSUB.F32        S11, S11, S5
251740:  VMUL.F32        S13, S0, S11
251744:  VMUL.F32        S15, S2, S11
251748:  VMUL.F32        S16, S4, S11
25174C:  VADD.F32        S13, S18, S13
251750:  VADD.F32        S15, S20, S15
251754:  VADD.F32        S16, S22, S16
251758:  VMUL.F32        S18, S12, S11
25175C:  VMUL.F32        S20, S14, S11
251760:  VSTR            S13, [R3]
251764:  VMUL.F32        S13, S6, S11
251768:  VSTR            S15, [R5]
25176C:  VMUL.F32        S15, S8, S11
251770:  VSTR            S16, [R6]
251774:  ADD.W           R6, R3, #0x10000
251778:  ADD.W           R5, R3, #0xE000
25177C:  ADD.W           R3, R3, #0x6000
251780:  VMUL.F32        S16, S10, S11
251784:  VLDR            S24, [R0]
251788:  VMUL.F32        S11, S1, S11
25178C:  VLDR            S22, [R3]
251790:  VLDR            S26, [R1]
251794:  VADD.F32        S13, S22, S13
251798:  VLDR            S22, [R4]
25179C:  VADD.F32        S15, S24, S15
2517A0:  VLDR            S24, [R5]
2517A4:  VADD.F32        S18, S18, S22
2517A8:  VLDR            S22, [R6]
2517AC:  VADD.F32        S20, S20, S24
2517B0:  VADD.F32        S16, S16, S26
2517B4:  VADD.F32        S11, S11, S22
2517B8:  VSTR            S13, [R3]
2517BC:  VSTR            S15, [R0]
2517C0:  VSTR            S16, [R1]
2517C4:  VSTR            S18, [R4]
2517C8:  VSTR            S20, [R5]
2517CC:  VSTR            S11, [R6]
2517D0:  BNE             loc_2516E0
2517D2:  MOV             R0, R8
2517D4:  VSTR            S5, [R0,#0x44]
2517D8:  STR.W           LR, [R0,#0x14]
2517DC:  ADD             SP, SP, #8
2517DE:  VPOP            {D8-D15}
2517E2:  ADD             SP, SP, #4
2517E4:  POP.W           {R8-R11}
2517E8:  POP             {R4-R7,PC}
