; =========================================================
; Game Engine Function: sub_8B314
; Address            : 0x8B314 - 0x8B6EC
; =========================================================

8B314:  PUSH            {R4-R7,LR}
8B316:  ADD             R7, SP, #0xC
8B318:  PUSH.W          {R8-R11}
8B31C:  SUB             SP, SP, #4
8B31E:  VPUSH           {D8-D11}
8B322:  SUB             SP, SP, #0x10
8B324:  LDR             R3, =(dword_1ACF68 - 0x8B332)
8B326:  MOVW            R11, #0x19AC
8B32A:  MOV             R5, R1
8B32C:  MOV             R10, R0
8B32E:  ADD             R3, PC; dword_1ACF68
8B330:  LDR.W           R8, [R3]
8B334:  ADD.W           R4, R8, R11
8B338:  LDR.W           R6, [R8,R11]
8B33C:  CBZ             R1, loc_8B374
8B33E:  LDR.W           R1, [R4,#0x10C]
8B342:  MOV             R9, R2
8B344:  LDR.W           R0, [R6,#0x134]
8B348:  LDR.W           R2, [R6,#0x13C]
8B34C:  CMP             R1, R5
8B34E:  ORR.W           R0, R0, R2
8B352:  STR.W           R0, [R6,#0x13C]
8B356:  BEQ             loc_8B35E
8B358:  LDRB.W          R0, [R4,#0x16C]
8B35C:  CBZ             R0, loc_8B374
8B35E:  LDR.W           LR, [R4,#0x108]
8B362:  STR             R3, [SP,#0x50+var_44]
8B364:  LDR.W           R2, [R6,#0x304]
8B368:  LDR.W           R3, [LR,#0x304]
8B36C:  CMP             R3, R2
8B36E:  LDR             R3, [SP,#0x50+var_44]
8B370:  BEQ.W           loc_8B4B2
8B374:  STR.W           R5, [R6,#0x108]
8B378:  MOVS            R0, #0xC
8B37A:  MOV             R2, R10
8B37C:  ADD.W           R1, R6, #0x110
8B380:  VLD1.32         {D16-D17}, [R2],R0
8B384:  LDR             R0, [R3]
8B386:  MOVS            R3, #0
8B388:  VST1.32         {D16-D17}, [R1]
8B38C:  LDR.W           R1, [R0,R11]
8B390:  VLDR            S2, [R2]
8B394:  STR.W           R3, [R6,#0x10C]
8B398:  STR.W           R3, [R4,#0xBC]
8B39C:  MOVW            R3, #0x1570
8B3A0:  VLDR            S0, [R1,#0x214]
8B3A4:  ADDS            R2, R0, R3
8B3A6:  VCMP.F32        S0, S2
8B3AA:  VMRS            APSR_nzcv, FPSCR
8B3AE:  BPL             loc_8B3E6
8B3B0:  VLDR            S4, [R10,#4]
8B3B4:  VLDR            S6, [R1,#0x21C]
8B3B8:  VCMP.F32        S6, S4
8B3BC:  VMRS            APSR_nzcv, FPSCR
8B3C0:  BLE             loc_8B3E6
8B3C2:  VLDR            S4, [R10,#8]
8B3C6:  VLDR            S6, [R1,#0x210]
8B3CA:  VCMP.F32        S6, S4
8B3CE:  VMRS            APSR_nzcv, FPSCR
8B3D2:  BPL             loc_8B3E6
8B3D4:  VLDR            S4, [R10]
8B3D8:  VLDR            S6, [R1,#0x218]
8B3DC:  VCMP.F32        S6, S4
8B3E0:  VMRS            APSR_nzcv, FPSCR
8B3E4:  BGT             loc_8B3FC
8B3E6:  CBZ             R5, loc_8B3F0
8B3E8:  LDR.W           R3, [R2,#0x460]
8B3EC:  CMP             R3, R5
8B3EE:  BEQ             loc_8B3FC
8B3F0:  MOVW            R3, #0x2D20
8B3F4:  ADD             R3, R0
8B3F6:  LDRB            R3, [R3]
8B3F8:  CMP             R3, #0
8B3FA:  BEQ             loc_8B4A2
8B3FC:  VLDR            S4, [R10]
8B400:  VLDR            S6, [R1,#0x210]
8B404:  VCMP.F32        S4, S6
8B408:  VMRS            APSR_nzcv, FPSCR
8B40C:  IT GE
8B40E:  VMOVGE.F32      S6, S4
8B412:  VLDR            S4, [R2]
8B416:  VSUB.F32        S8, S6, S4
8B41A:  VLDR            S6, [R0,#0xE0]
8B41E:  VCMP.F32        S6, S8
8B422:  VMRS            APSR_nzcv, FPSCR
8B426:  BGE             loc_8B42C
8B428:  MOVS            R0, #1
8B42A:  B               loc_8B4A4
8B42C:  VLDR            S14, [R10,#4]
8B430:  VLDR            S8, [R1,#0x21C]
8B434:  VCMP.F32        S14, S0
8B438:  VLDR            S10, [R2,#4]
8B43C:  VMRS            APSR_nzcv, FPSCR
8B440:  VCMP.F32        S2, S8
8B444:  VLDR            S1, [R10,#8]
8B448:  VLDR            S12, [R1,#0x218]
8B44C:  IT GE
8B44E:  VMOVGE.F32      S0, S14
8B452:  VMRS            APSR_nzcv, FPSCR
8B456:  IT MI
8B458:  VMOVMI.F32      S8, S2
8B45C:  VSUB.F32        S2, S0, S10
8B460:  VCMP.F32        S1, S12
8B464:  VMRS            APSR_nzcv, FPSCR
8B468:  IT MI
8B46A:  VMOVMI.F32      S12, S1
8B46E:  VLDR            S0, [R0,#0xE4]
8B472:  MOVS            R0, #1
8B474:  VCMP.F32        S0, S2
8B478:  VMRS            APSR_nzcv, FPSCR
8B47C:  BLT             loc_8B4A4
8B47E:  VADD.F32        S2, S12, S4
8B482:  VCMP.F32        S6, S2
8B486:  VMRS            APSR_nzcv, FPSCR
8B48A:  ITTTT MI
8B48C:  VADDMI.F32      S2, S8, S10
8B490:  VCMPMI.F32      S0, S2
8B494:  VMRSMI          APSR_nzcv, FPSCR
8B498:  MOVMI           R0, #1
8B49A:  IT MI
8B49C:  STRMI.W         R0, [R6,#0x10C]
8B4A0:  B               loc_8B4A4
8B4A2:  MOVS            R0, #0
8B4A4:  ADD             SP, SP, #0x10
8B4A6:  VPOP            {D8-D11}
8B4AA:  ADD             SP, SP, #4
8B4AC:  POP.W           {R8-R11}
8B4B0:  POP             {R4-R7,PC}
8B4B2:  CMP             R6, LR
8B4B4:  BEQ             loc_8B4C6
8B4B6:  LDR             R2, [R6,#8]
8B4B8:  LDR.W           R3, [LR,#8]
8B4BC:  ORRS            R2, R3
8B4BE:  LDR             R3, [SP,#0x50+var_44]
8B4C0:  LSLS            R2, R2, #8
8B4C2:  BPL.W           loc_8B374
8B4C6:  VLDR            S0, [R6,#0xC]
8B4CA:  CMP.W           R9, #0
8B4CE:  VLDR            S2, [R6,#0x10]
8B4D2:  IT EQ
8B4D4:  MOVEQ           R9, R10
8B4D6:  VLDR            S4, [R9]
8B4DA:  VLDR            S6, [R9,#4]
8B4DE:  VLDR            S8, [R9,#8]
8B4E2:  VSUB.F32        S22, S4, S0
8B4E6:  VLDR            S10, [R9,#0xC]
8B4EA:  VSUB.F32        S20, S6, S2
8B4EE:  VSUB.F32        S18, S8, S0
8B4F2:  LDRB.W          R3, [R4,#0x16D]
8B4F6:  VSUB.F32        S16, S10, S2
8B4FA:  LDR.W           R12, [R6,#0x16C]
8B4FE:  CBZ             R3, loc_8B550
8B500:  LDR.W           R3, [R6,#0x130]
8B504:  LDR.W           R2, [R4,#0x160]
8B508:  CMP             R2, R3
8B50A:  BNE             loc_8B550
8B50C:  MOVS.W          R2, R12,LSL#27
8B510:  BMI             loc_8B536
8B512:  LDRB.W          R2, [R4,#0x185]
8B516:  MOVS            R3, #0
8B518:  VSTR            S22, [R4,#0x174]
8B51C:  VSTR            S20, [R4,#0x178]
8B520:  VSTR            S18, [R4,#0x17C]
8B524:  VSTR            S16, [R4,#0x180]
8B528:  STR.W           R5, [R4,#0x170]
8B52C:  STRB.W          R3, [R4,#0x16D]
8B530:  STRB.W          R2, [R4,#0x16C]
8B534:  B               loc_8B550
8B536:  LDR.W           R2, [R4,#0x170]
8B53A:  CBNZ            R2, loc_8B550
8B53C:  VSTR            S22, [R4,#0x174]
8B540:  VSTR            S20, [R4,#0x178]
8B544:  VSTR            S18, [R4,#0x17C]
8B548:  VSTR            S16, [R4,#0x180]
8B54C:  STR.W           R5, [R4,#0x170]
8B550:  CMP             R1, R5
8B552:  BNE             loc_8B56C
8B554:  LDRB.W          R1, [R4,#0x188]
8B558:  LDR             R3, [SP,#0x50+var_44]
8B55A:  LSLS            R1, R1, #0x1B
8B55C:  BPL.W           loc_8B6B6
8B560:  ANDS.W          R1, R12, #0xC
8B564:  BEQ             loc_8B576
8B566:  B               loc_8B6B6
8B568:  DCD dword_1ACF68 - 0x8B332
8B56C:  LDR             R3, [SP,#0x50+var_44]
8B56E:  TST.W           R12, #0xC
8B572:  BNE.W           loc_8B6B6
8B576:  MOVW            R1, #0x2CE0
8B57A:  LDRB.W          R2, [R4,#0x185]
8B57E:  ADD.W           R12, R8, R1
8B582:  MOVW            R1, #0x1B98
8B586:  ADD.W           R0, R8, R1
8B58A:  CMP             R6, LR
8B58C:  MOVW            R1, #0x1B48
8B590:  IT EQ
8B592:  ADDEQ.W         R0, R8, R1; int
8B596:  CBZ             R2, loc_8B5CA
8B598:  LDM.W           R9, {R1-R3,LR}; int
8B59C:  STR.W           R12, [SP,#0x50+var_48]
8B5A0:  STRD.W          LR, R0, [SP,#0x50+var_50]; float
8B5A4:  BL              sub_9AF40
8B5A8:  LDRD.W          R1, R12, [SP,#0x50+var_4C]
8B5AC:  LDR             R3, [SP,#0x50+var_44]
8B5AE:  CBZ             R0, loc_8B5CA
8B5B0:  LDR.W           R0, [R12]
8B5B4:  STR             R5, [R1]
8B5B6:  STR             R6, [R1,#8]
8B5B8:  VSTR            S22, [R1,#0x18]
8B5BC:  VSTR            S20, [R1,#0x1C]
8B5C0:  VSTR            S18, [R1,#0x20]
8B5C4:  VSTR            S16, [R1,#0x24]
8B5C8:  STR             R0, [R1,#4]
8B5CA:  LDRB.W          R0, [R4,#0x188]
8B5CE:  LSLS            R0, R0, #0x1A
8B5D0:  BPL             loc_8B6B6
8B5D2:  VLDR            S0, [R9,#4]
8B5D6:  VLDR            S10, [R6,#0x21C]
8B5DA:  VCMP.F32        S0, S10
8B5DE:  VMRS            APSR_nzcv, FPSCR
8B5E2:  BPL             loc_8B6B6
8B5E4:  VLDR            S2, [R9,#0xC]
8B5E8:  VLDR            S8, [R6,#0x214]
8B5EC:  VCMP.F32        S2, S8
8B5F0:  VMRS            APSR_nzcv, FPSCR
8B5F4:  BLE             loc_8B6B6
8B5F6:  VLDR            S4, [R9]
8B5FA:  VLDR            S6, [R6,#0x218]
8B5FE:  VCMP.F32        S4, S6
8B602:  VMRS            APSR_nzcv, FPSCR
8B606:  BPL             loc_8B6B6
8B608:  VLDR            S6, [R9,#8]
8B60C:  VLDR            S12, [R6,#0x210]
8B610:  VCMP.F32        S6, S12
8B614:  VMRS            APSR_nzcv, FPSCR
8B618:  BLE             loc_8B6B6
8B61A:  VCMP.F32        S0, S10
8B61E:  VMRS            APSR_nzcv, FPSCR
8B622:  VMOV.F32        S12, S0
8B626:  VCMP.F32        S2, S10
8B62A:  IT GT
8B62C:  VMOVGT.F32      S12, S10
8B630:  VMOV.F32        S14, S2
8B634:  VMRS            APSR_nzcv, FPSCR
8B638:  IT GT
8B63A:  VMOVGT.F32      S14, S10
8B63E:  VSUB.F32        S10, S2, S0
8B642:  VCMP.F32        S0, S8
8B646:  VMRS            APSR_nzcv, FPSCR
8B64A:  VCMP.F32        S2, S8
8B64E:  IT MI
8B650:  VMOVMI.F32      S12, S8
8B654:  VMRS            APSR_nzcv, FPSCR
8B658:  IT MI
8B65A:  VMOVMI.F32      S14, S8
8B65E:  VLDR            S8, =0.7
8B662:  VMUL.F32        S8, S10, S8
8B666:  VSUB.F32        S10, S14, S12
8B66A:  VCMP.F32        S10, S8
8B66E:  VMRS            APSR_nzcv, FPSCR
8B672:  BLT             loc_8B6B6
8B674:  MOVW            R0, #0x1B70
8B678:  VMOV            R2, S0; int
8B67C:  VMOV            R1, S4; int
8B680:  ADD             R8, R0
8B682:  VMOV            R3, S6; int
8B686:  MOV             R9, R12
8B688:  VMOV            R0, S2
8B68C:  STR             R0, [SP,#0x50+var_50]; float
8B68E:  MOV             R0, R8; int
8B690:  BL              sub_9AF40
8B694:  LDR             R3, [SP,#0x50+var_44]
8B696:  CBZ             R0, loc_8B6B6
8B698:  LDR.W           R0, [R9]
8B69C:  MOV             R1, R9
8B69E:  VSTR            S22, [R8,#0x18]
8B6A2:  VSTR            S20, [R8,#0x1C]
8B6A6:  VSTR            S18, [R8,#0x20]
8B6AA:  VSTR            S16, [R8,#0x24]
8B6AE:  STRD.W          R5, R0, [R8]
8B6B2:  STR.W           R6, [R8,#8]
8B6B6:  LDR.W           R0, [R4,#0x10C]
8B6BA:  CMP             R0, R5
8B6BC:  BNE.W           loc_8B374
8B6C0:  LDR.W           R0, [R6,#0x130]
8B6C4:  MOVS            R2, #1
8B6C6:  LDR.W           R1, [R6,#0x168]
8B6CA:  STR.W           R6, [R4,#0x108]
8B6CE:  STRB.W          R2, [R4,#0x168]
8B6D2:  STRD.W          R0, R1, [R4,#0x160]
8B6D6:  ADD.W           R0, R6, R0,LSL#4
8B6DA:  VSTR            S22, [R0,#0x314]
8B6DE:  VSTR            S20, [R0,#0x318]
8B6E2:  VSTR            S18, [R0,#0x31C]
8B6E6:  VSTR            S16, [R0,#0x320]
8B6EA:  B               loc_8B374
