; =========================================================
; Game Engine Function: mpg123_position
; Address            : 0x234350 - 0x234590
; =========================================================

234350:  PUSH            {R4-R7,LR}
234352:  ADD             R7, SP, #0xC
234354:  PUSH.W          {R8-R11}
234358:  SUB             SP, SP, #4
23435A:  VPUSH           {D8-D9}
23435E:  MOV             R5, R0
234360:  MOV             R8, R3
234362:  CMP             R5, #0
234364:  BEQ             loc_234422
234366:  MOVW            R0, #0xB2E0
23436A:  LDR             R0, [R5,R0]
23436C:  CMP             R0, #0
23436E:  BEQ             loc_234422
234370:  LDR             R3, =(unk_5F11C0 - 0x234380)
234372:  MOVW            R6, #0x92E8
234376:  LDR             R4, [R5,R6]
234378:  MOVW            R9, #0x92D8
23437C:  ADD             R3, PC; unk_5F11C0
23437E:  LDR.W           R12, =(unk_5F58EC - 0x23439A)
234382:  MOVW            R11, #0x92C8
234386:  LDR.W           R6, [R5,R9]
23438A:  VMOV.I32        D8, #0
23438E:  LDR.W           R3, [R3,R4,LSL#2]
234392:  LDR.W           R4, [R5,R11]
234396:  ADD             R12, PC; unk_5F58EC
234398:  ADD.W           R6, R12, R6,LSL#2
23439C:  MOVW            R12, #0x9314
2343A0:  LSLS            R3, R4
2343A2:  CMP             R2, #1
2343A4:  VMOV            S2, R3
2343A8:  VLDR            S0, [R6]
2343AC:  VCVT.F64.S32    D16, S2
2343B0:  VCVT.F64.S32    D17, S0
2343B4:  LDR.W           R3, [R5,R12]
2343B8:  ADD.W           R10, R3, R1
2343BC:  BLT             loc_234408
2343BE:  MOVW            R1, #0xB2BC
2343C2:  LDR             R1, [R5,R1]
2343C4:  CMP             R1, #1
2343C6:  ITTT GE
2343C8:  MOVWGE          R6, #0xB2B8
2343CC:  LDRGE           R6, [R5,R6]
2343CE:  CMPGE           R6, #1
2343D0:  BLT             loc_234408
2343D2:  VMOV            S0, R1
2343D6:  MOVW            R1, #0xB2B0
2343DA:  VCVT.F64.S32    D18, S0
2343DE:  VMOV            S0, R2
2343E2:  VCVT.F64.S32    D19, S0
2343E6:  VDIV.F64        D18, D19, D18
2343EA:  VMOV            S0, R6
2343EE:  VCVT.F64.S32    D19, S0
2343F2:  LDRB            R1, [R5,R1]
2343F4:  LSLS            R1, R1, #0x19
2343F6:  VDIV.F64        D18, D18, D19
2343FA:  VMOV.F64        D19, #0.5
2343FE:  VMUL.F64        D8, D18, D19
234402:  IT PL
234404:  VMOVPL.F64      D8, D18
234408:  VDIV.F64        D9, D17, D16
23440C:  MOVW            R1, #0x9368
234410:  LDR             R1, [R5,R1]
234412:  CBZ             R1, loc_234428
234414:  CMP             R1, R3
234416:  BLT             loc_234428
234418:  SUBS.W          R0, R1, R10
23441C:  IT LE
23441E:  MOVLE           R0, #0
234420:  B               loc_234516
234422:  MOV.W           R0, #0xFFFFFFFF
234426:  B               loc_234584
234428:  MOVW            R1, #0xB2E4
23442C:  LDR             R2, [R5,R1]
23442E:  CMP             R2, #0
234430:  BLT             loc_23448A
234432:  ADDS            R6, R5, R1
234434:  LDR             R1, [R0,#0x24]
234436:  MOV             R0, R5
234438:  ADD.W           R4, R5, R12
23443C:  BLX             R1
23443E:  MOVW            R1, #0x9370
234442:  ADD             R1, R5
234444:  VLDR            D16, [R1]
234448:  VCMP.F64        D16, #0.0
23444C:  VMRS            APSR_nzcv, FPSCR
234450:  BNE             loc_2344E4
234452:  ADD.W           R2, R5, R9
234456:  ADD.W           R1, R5, R11
23445A:  LDR             R2, [R2]
23445C:  SUBS            R3, R2, #2
23445E:  CMP             R3, #2
234460:  BCS             loc_23448E
234462:  LDR             R1, [R1]
234464:  MOV             LR, R4
234466:  LDR.W           R12, =(unk_5F1040 - 0x234478)
23446A:  MOVW            R4, #0x92E4
23446E:  LDR             R4, [R5,R4]
234470:  ADD.W           R3, R1, R1,LSL#1
234474:  ADD             R12, PC; unk_5F1040
234476:  VLDR            D16, =144000.0
23447A:  ADD.W           R3, R12, R3,LSL#6
23447E:  ADD.W           R2, R3, R2,LSL#6
234482:  ADD.W           R2, R2, R4,LSL#2
234486:  SUBS            R2, #0x40 ; '@'
234488:  B               loc_2344B0
23448A:  MOVS            R0, #0
23448C:  B               loc_234516
23448E:  CMP             R2, #1
234490:  BNE             loc_2344E0
234492:  LDR             R1, [R1]
234494:  MOVW            R3, #0x92E4
234498:  LDR             R2, =(unk_5F1040 - 0x2344A6)
23449A:  MOV             LR, R4
23449C:  LDR             R3, [R5,R3]
23449E:  ADD.W           R4, R1, R1,LSL#1
2344A2:  ADD             R2, PC; unk_5F1040
2344A4:  VLDR            D16, =48000.0
2344A8:  ADD.W           R2, R2, R4,LSL#6
2344AC:  ADD.W           R2, R2, R3,LSL#2
2344B0:  VLDR            S0, [R2]
2344B4:  MOVW            R3, #0x92E8
2344B8:  ADD             R3, R5
2344BA:  LDR             R2, =(unk_5F11C0 - 0x2344C8)
2344BC:  VCVT.F64.S32    D17, S0
2344C0:  MOV             R4, LR
2344C2:  LDR             R3, [R3]
2344C4:  ADD             R2, PC; unk_5F11C0
2344C6:  LDR.W           R2, [R2,R3,LSL#2]
2344CA:  LSL.W           R1, R2, R1
2344CE:  VMUL.F64        D16, D16, D17
2344D2:  VMOV            S0, R1
2344D6:  VCVT.F64.S32    D17, S0
2344DA:  VDIV.F64        D16, D16, D17
2344DE:  B               loc_2344E4
2344E0:  VMOV.F64        D16, #1.0
2344E4:  LDR             R1, [R6]
2344E6:  SUBS            R0, R1, R0
2344E8:  VMOV            S0, R0
2344EC:  VCVT.F64.S32    D17, S0
2344F0:  VDIV.F64        D16, D17, D16
2344F4:  VCVT.S32.F64    S0, D16
2344F8:  LDR             R1, [R4]
2344FA:  CMP             R10, R1
2344FC:  VMOV            R0, S0
234500:  BEQ             loc_234516
234502:  BGE             loc_23450C
234504:  SUB.W           R1, R1, R10
234508:  ADD             R0, R1
23450A:  B               loc_234516
23450C:  SUB.W           R1, R10, R1
234510:  SUBS            R0, R0, R1
234512:  IT LT
234514:  MOVLT           R0, #0
234516:  VMOV            S0, R0
23451A:  CMP             R0, #0
23451C:  MOV.W           R3, #0
234520:  VMOV.I32        D18, #0
234524:  VCVT.F64.S32    D16, S0
234528:  MOV.W           R2, #0
23452C:  LDR             R1, [R7,#arg_0]
23452E:  VMUL.F64        D16, D9, D16
234532:  VADD.F64        D16, D8, D16
234536:  VCMPE.F64       D16, #0.0
23453A:  VMOV            S0, R10
23453E:  VCVT.F64.S32    D17, S0
234542:  IT LT
234544:  MOVLT           R3, #1
234546:  VMRS            APSR_nzcv, FPSCR
23454A:  IT LT
23454C:  MOVLT           R2, #1
23454E:  ORRS            R2, R3
234550:  ITT NE
234552:  VMOVNE.F64      D16, D18
234556:  MOVNE           R0, #0
234558:  CMP.W           R8, #0
23455C:  IT NE
23455E:  STRNE.W         R10, [R8]
234562:  CMP             R1, #0
234564:  LDR             R2, [R7,#arg_4]
234566:  IT NE
234568:  STRNE           R0, [R1]
23456A:  LDR             R0, [R7,#arg_8]
23456C:  CBZ             R2, loc_23457A
23456E:  VMUL.F64        D17, D9, D17
234572:  VSUB.F64        D17, D17, D8
234576:  VSTR            D17, [R2]
23457A:  CMP             R0, #0
23457C:  IT NE
23457E:  VSTRNE          D16, [R0]
234582:  MOVS            R0, #0
234584:  VPOP            {D8-D9}
234588:  ADD             SP, SP, #4
23458A:  POP.W           {R8-R11}
23458E:  POP             {R4-R7,PC}
