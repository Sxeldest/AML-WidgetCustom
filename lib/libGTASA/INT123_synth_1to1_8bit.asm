; =========================================================
; Game Engine Function: INT123_synth_1to1_8bit
; Address            : 0x2363A0 - 0x236844
; =========================================================

2363A0:  PUSH            {R4-R7,LR}
2363A2:  ADD             R7, SP, #0xC
2363A4:  PUSH.W          {R8-R11}
2363A8:  SUB             SP, SP, #0xC
2363AA:  MOV             R5, R2
2363AC:  MOV             R2, R0
2363AE:  STR             R3, [SP,#0x28+var_20]
2363B0:  MOVW            R12, #0xB2A8
2363B4:  MOVW            R0, #0xB2A0
2363B8:  LDR.W           LR, [R5,R12]
2363BC:  LDR             R6, [R5,R0]
2363BE:  MOVW            R0, #0x4848
2363C2:  LDR             R0, [R5,R0]
2363C4:  CBZ             R0, loc_2363EE
2363C6:  ADD.W           R0, R5, R1,LSL#8
2363CA:  MOVW            R4, #0x4850
2363CE:  ADD             R4, R0
2363D0:  MOVS            R0, #0
2363D2:  ADDS            R3, R4, R0
2363D4:  VLDR            D16, [R3]
2363D8:  ADDS            R3, R2, R0
2363DA:  ADDS            R0, #8
2363DC:  VLDR            D17, [R3]
2363E0:  CMP.W           R0, #0x100
2363E4:  VMUL.F64        D16, D17, D16
2363E8:  VSTR            D16, [R3]
2363EC:  BNE             loc_2363D2
2363EE:  ADD.W           R4, R6, LR
2363F2:  MOVW            R0, #0x4838
2363F6:  CBZ             R1, loc_236402
2363F8:  LDR.W           R10, [R5,R0]
2363FC:  ADDS            R4, #1
2363FE:  MOVS            R1, #1
236400:  B               loc_236410
236402:  LDR             R1, [R5,R0]
236404:  ADDS            R1, #0xF
236406:  AND.W           R10, R1, #0xF
23640A:  STR.W           R10, [R5,R0]
23640E:  MOVS            R1, #0
236410:  ADD.W           R0, R5, R12
236414:  STR             R0, [SP,#0x28+var_28]
236416:  ADD.W           R0, R5, R1,LSL#3
23641A:  MOVW            R1, #0x4820
23641E:  ADD             R1, R0
236420:  MOVS.W          R3, R10,LSL#31
236424:  BNE             loc_236444
236426:  MOVW            R3, #0x4824
23642A:  LDR             R1, [R1]
23642C:  LDR.W           R11, [R0,R3]
236430:  ADD.W           R0, R1, R10,LSL#3
236434:  ADD.W           R1, R11, R10,LSL#3
236438:  ADDS            R1, #8
23643A:  BLX             j_INT123_dct64
23643E:  ADD.W           R10, R10, #1
236442:  B               loc_236462
236444:  ADD.W           R3, R10, #1
236448:  LDR.W           R11, [R1]
23644C:  MOVW            R1, #0x4824
236450:  AND.W           R3, R3, #0xF
236454:  LDR             R0, [R0,R1]
236456:  ADD.W           R1, R11, R10,LSL#3
23645A:  ADD.W           R0, R0, R3,LSL#3
23645E:  BLX             j_INT123_dct64
236462:  MOVW            R0, #0x4844
236466:  MOVW            R1, #0x4A7C
23646A:  LDR             R0, [R5,R0]
23646C:  ADD.W           LR, R5, R1
236470:  VLDR            D16, =32767.0
236474:  VLDR            D17, =-32768.0
236478:  MOVS            R2, #0
23647A:  MOV             R1, R0
23647C:  RSB.W           R0, R10, #0x210
236480:  MOV             R6, R11
236482:  ADD.W           R0, R1, R0,LSL#3
236486:  STR             R0, [SP,#0x28+var_24]
236488:  RSB.W           R0, R10, #0x1F0
23648C:  ADD.W           R12, R1, R0,LSL#3
236490:  SUB.W           R0, R1, R10,LSL#3
236494:  ADD.W           R5, R0, #0x80
236498:  MOVS            R0, #0
23649A:  VLDM            R6, {D18-D21}
23649E:  VLDM            R5, {D22-D25}
2364A2:  VMUL.F64        D19, D23, D19
2364A6:  VMUL.F64        D18, D22, D18
2364AA:  VMUL.F64        D20, D24, D20
2364AE:  VSUB.F64        D18, D18, D19
2364B2:  VMUL.F64        D21, D25, D21
2364B6:  VADD.F64        D18, D18, D20
2364BA:  VLDR            D19, [R6,#0x20]
2364BE:  VLDR            D22, [R5,#0x20]
2364C2:  VSUB.F64        D18, D18, D21
2364C6:  VMUL.F64        D19, D22, D19
2364CA:  VLDR            D20, [R6,#0x28]
2364CE:  VLDR            D23, [R5,#0x28]
2364D2:  VADD.F64        D18, D18, D19
2364D6:  VMUL.F64        D20, D23, D20
2364DA:  VLDR            D21, [R6,#0x30]
2364DE:  VLDR            D22, [R5,#0x30]
2364E2:  VSUB.F64        D18, D18, D20
2364E6:  VMUL.F64        D21, D22, D21
2364EA:  VLDR            D19, [R6,#0x38]
2364EE:  VLDR            D23, [R5,#0x38]
2364F2:  VADD.F64        D18, D18, D21
2364F6:  VMUL.F64        D19, D23, D19
2364FA:  VLDR            D20, [R6,#0x40]
2364FE:  VLDR            D22, [R5,#0x40]
236502:  VSUB.F64        D18, D18, D19
236506:  VMUL.F64        D20, D22, D20
23650A:  VLDR            D21, [R6,#0x48]
23650E:  VLDR            D23, [R5,#0x48]
236512:  VADD.F64        D18, D18, D20
236516:  VMUL.F64        D21, D23, D21
23651A:  VLDR            D19, [R6,#0x50]
23651E:  VLDR            D22, [R5,#0x50]
236522:  VSUB.F64        D18, D18, D21
236526:  VMUL.F64        D19, D22, D19
23652A:  VLDR            D20, [R6,#0x58]
23652E:  VLDR            D23, [R5,#0x58]
236532:  VADD.F64        D18, D18, D19
236536:  VMUL.F64        D20, D23, D20
23653A:  VLDR            D21, [R6,#0x60]
23653E:  VLDR            D22, [R5,#0x60]
236542:  VSUB.F64        D18, D18, D20
236546:  VMUL.F64        D21, D22, D21
23654A:  VLDR            D19, [R6,#0x68]
23654E:  VLDR            D23, [R5,#0x68]
236552:  VADD.F64        D18, D18, D21
236556:  VMUL.F64        D19, D23, D19
23655A:  VLDR            D20, [R6,#0x70]
23655E:  VLDR            D22, [R5,#0x70]
236562:  VSUB.F64        D18, D18, D19
236566:  VMUL.F64        D20, D22, D20
23656A:  VLDR            D21, [R6,#0x78]
23656E:  VLDR            D23, [R5,#0x78]
236572:  VADD.F64        D18, D18, D20
236576:  VMUL.F64        D19, D23, D21
23657A:  VSUB.F64        D18, D18, D19
23657E:  VCMPE.F64       D18, D16
236582:  VMRS            APSR_nzcv, FPSCR
236586:  BLE             loc_236590
236588:  ADDS            R0, #1
23658A:  MOVW            R8, #0x7FFF
23658E:  B               loc_2365AA
236590:  VCMPE.F64       D18, D17
236594:  VMRS            APSR_nzcv, FPSCR
236598:  BGE             loc_2365A2
23659A:  ADDS            R0, #1
23659C:  MOV.W           R8, #0x8000
2365A0:  B               loc_2365AA
2365A2:  VCVT.S32.F64    S0, D18
2365A6:  VMOV            R8, S0
2365AA:  LDR.W           R9, [LR]
2365AE:  SXTH.W          R3, R8
2365B2:  ASRS            R3, R3, #3
2365B4:  ADDS            R6, #0x80
2365B6:  ADD.W           R5, R5, #0x100
2365BA:  LDRB.W          R3, [R9,R3]
2365BE:  STRB.W          R3, [R4,R2,LSL#1]
2365C2:  ADDS            R2, #1
2365C4:  CMP             R2, #0x10
2365C6:  BNE.W           loc_23649A
2365CA:  LDR             R2, [SP,#0x28+var_24]
2365CC:  ADD.W           R3, R11, #0x780
2365D0:  VLDR            D18, [R12,#0x110]
2365D4:  VLDR            D19, [R12,#0x120]
2365D8:  VLDR            D22, [R2]
2365DC:  ADD.W           R2, R11, #0x810
2365E0:  VLDR            D20, [R12,#0x130]
2365E4:  VLDR            D23, [R2]
2365E8:  ADD.W           R2, R11, #0x800
2365EC:  VLDR            D21, [R12,#0x140]
2365F0:  VLDR            D24, [R2]
2365F4:  ADD.W           R2, R11, #0x820
2365F8:  VMUL.F64        D18, D18, D23
2365FC:  VMUL.F64        D22, D22, D24
236600:  VLDR            D23, [R2]
236604:  ADD.W           R2, R11, #0x830
236608:  VADD.F64        D18, D22, D18
23660C:  VMUL.F64        D19, D19, D23
236610:  VLDR            D24, [R2]
236614:  ADD.W           R2, R11, #0x840
236618:  VADD.F64        D18, D18, D19
23661C:  VMUL.F64        D20, D20, D24
236620:  VLDR            D22, [R2]
236624:  ADD.W           R2, R11, #0x850
236628:  VADD.F64        D18, D18, D20
23662C:  VMUL.F64        D21, D21, D22
236630:  VLDR            D23, [R2]
236634:  ADD.W           R2, R11, #0x860
236638:  VLDR            D19, [R12,#0x150]
23663C:  VADD.F64        D18, D18, D21
236640:  VMUL.F64        D19, D19, D23
236644:  VLDR            D22, [R2]
236648:  ADD.W           R2, R11, #0x870
23664C:  VLDR            D21, [R12,#0x160]
236650:  VADD.F64        D18, D18, D19
236654:  VMUL.F64        D21, D21, D22
236658:  VLDR            D20, [R12,#0x170]
23665C:  VLDR            D23, [R2]
236660:  VADD.F64        D18, D18, D21
236664:  VMUL.F64        D19, D20, D23
236668:  VADD.F64        D18, D18, D19
23666C:  VCMPE.F64       D18, D16
236670:  VMRS            APSR_nzcv, FPSCR
236674:  BLE             loc_23667E
236676:  ADDS            R0, #1
236678:  MOVW            R2, #0x7FFF
23667C:  B               loc_236698
23667E:  VCMPE.F64       D18, D17
236682:  VMRS            APSR_nzcv, FPSCR
236686:  BGE             loc_236690
236688:  ADDS            R0, #1
23668A:  MOV.W           R2, #0x8000
23668E:  B               loc_236698
236690:  VCVT.S32.F64    S0, D18
236694:  VMOV            R2, S0
236698:  LDR.W           R6, [LR]
23669C:  SXTH            R2, R2
23669E:  ASRS            R2, R2, #3
2366A0:  MOVS            R5, #0
2366A2:  LDRB            R2, [R6,R2]
2366A4:  ADD.W           R6, R4, #0x22 ; '"'
2366A8:  STRB.W          R2, [R4,#0x20]
2366AC:  ADD.W           R2, R1, R10,LSL#3
2366B0:  ADDS            R4, R2, R5
2366B2:  VLDM            R3, {D18-D21}
2366B6:  ADD.W           R1, R4, #0xF70
2366BA:  VLDR            D22, [R1]
2366BE:  ADDW            R1, R4, #0xF78
2366C2:  VLDR            D23, [R1]
2366C6:  ADDW            R1, R4, #0xF68
2366CA:  VMUL.F64        D19, D22, D19
2366CE:  VNMUL.F64       D18, D23, D18
2366D2:  VLDR            D22, [R1]
2366D6:  ADD.W           R1, R4, #0xF60
2366DA:  VSUB.F64        D18, D18, D19
2366DE:  VMUL.F64        D20, D22, D20
2366E2:  VLDR            D23, [R1]
2366E6:  ADDW            R1, R4, #0xF58
2366EA:  VSUB.F64        D18, D18, D20
2366EE:  VMUL.F64        D19, D23, D21
2366F2:  VLDR            D22, [R1]
2366F6:  ADD.W           R1, R4, #0xF50
2366FA:  VLDR            D21, [R3,#0x20]
2366FE:  VSUB.F64        D18, D18, D19
236702:  VMUL.F64        D21, D22, D21
236706:  VLDR            D23, [R1]
23670A:  ADDW            R1, R4, #0xF48
23670E:  VLDR            D20, [R3,#0x28]
236712:  VSUB.F64        D18, D18, D21
236716:  VMUL.F64        D19, D23, D20
23671A:  VLDR            D22, [R1]
23671E:  ADD.W           R1, R4, #0xF40
236722:  VLDR            D21, [R3,#0x30]
236726:  VSUB.F64        D18, D18, D19
23672A:  VMUL.F64        D21, D22, D21
23672E:  VLDR            D23, [R1]
236732:  ADDW            R1, R4, #0xF38
236736:  VLDR            D20, [R3,#0x38]
23673A:  VSUB.F64        D18, D18, D21
23673E:  VMUL.F64        D19, D23, D20
236742:  VLDR            D22, [R1]
236746:  ADD.W           R1, R4, #0xF30
23674A:  VLDR            D21, [R3,#0x40]
23674E:  VSUB.F64        D18, D18, D19
236752:  VMUL.F64        D21, D22, D21
236756:  VLDR            D23, [R1]
23675A:  ADDW            R1, R4, #0xF28
23675E:  VLDR            D20, [R3,#0x48]
236762:  VSUB.F64        D18, D18, D21
236766:  VMUL.F64        D19, D23, D20
23676A:  VLDR            D22, [R1]
23676E:  ADD.W           R1, R4, #0xF20
236772:  VLDR            D21, [R3,#0x50]
236776:  VSUB.F64        D18, D18, D19
23677A:  VMUL.F64        D21, D22, D21
23677E:  VLDR            D23, [R1]
236782:  ADDW            R1, R4, #0xF18
236786:  VLDR            D20, [R3,#0x58]
23678A:  VSUB.F64        D18, D18, D21
23678E:  VMUL.F64        D19, D23, D20
236792:  VLDR            D22, [R1]
236796:  ADD.W           R1, R4, #0xF10
23679A:  VLDR            D21, [R3,#0x60]
23679E:  VSUB.F64        D18, D18, D19
2367A2:  VMUL.F64        D21, D22, D21
2367A6:  VLDR            D23, [R1]
2367AA:  ADDW            R1, R4, #0xF08
2367AE:  VLDR            D20, [R3,#0x68]
2367B2:  VSUB.F64        D18, D18, D21
2367B6:  VMUL.F64        D19, D23, D20
2367BA:  VLDR            D22, [R1]
2367BE:  ADD.W           R1, R4, #0xF00
2367C2:  VLDR            D21, [R3,#0x70]
2367C6:  VSUB.F64        D18, D18, D19
2367CA:  VMUL.F64        D21, D22, D21
2367CE:  VLDR            D20, [R3,#0x78]
2367D2:  VLDR            D23, [R1]
2367D6:  VSUB.F64        D18, D18, D21
2367DA:  VMUL.F64        D19, D23, D20
2367DE:  VSUB.F64        D18, D18, D19
2367E2:  VCMPE.F64       D18, D16
2367E6:  VMRS            APSR_nzcv, FPSCR
2367EA:  BLE             loc_2367F4
2367EC:  ADDS            R0, #1
2367EE:  MOVW            R4, #0x7FFF
2367F2:  B               loc_23680E
2367F4:  VCMPE.F64       D18, D17
2367F8:  VMRS            APSR_nzcv, FPSCR
2367FC:  BGE             loc_236806
2367FE:  ADDS            R0, #1
236800:  MOV.W           R4, #0x8000
236804:  B               loc_23680E
236806:  VCVT.S32.F64    S0, D18
23680A:  VMOV            R4, S0
23680E:  LDR.W           R1, [LR]
236812:  SXTH            R4, R4
236814:  ASRS            R4, R4, #3
236816:  SUB.W           R5, R5, #0x100
23681A:  SUBS            R3, #0x80
23681C:  CMN.W           R5, #0xF00
236820:  LDRB            R1, [R1,R4]
236822:  STRB.W          R1, [R6],#2
236826:  BNE.W           loc_2366B0
23682A:  LDR             R1, [SP,#0x28+var_20]
23682C:  CMP             R1, #0
23682E:  ITTTT NE
236830:  LDRNE           R1, [SP,#0x28+var_28]
236832:  MOVNE           R2, R1
236834:  LDRNE           R1, [R2]
236836:  ADDNE           R1, #0x40 ; '@'
236838:  IT NE
23683A:  STRNE           R1, [R2]
23683C:  ADD             SP, SP, #0xC
23683E:  POP.W           {R8-R11}
236842:  POP             {R4-R7,PC}
