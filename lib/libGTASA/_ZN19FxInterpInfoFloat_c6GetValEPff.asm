; =========================================================
; Game Engine Function: _ZN19FxInterpInfoFloat_c6GetValEPff
; Address            : 0x36C47C - 0x36C5B4
; =========================================================

36C47C:  PUSH            {R4,R6,R7,LR}
36C47E:  ADD             R7, SP, #8
36C480:  LDRSB.W         R12, [R0,#5]
36C484:  CMP.W           R12, #1
36C488:  BNE             loc_36C4AE
36C48A:  LDRSB.W         R2, [R0,#6]
36C48E:  CMP             R2, #1
36C490:  BLT.W           locret_36C5B2
36C494:  MOVS            R2, #0
36C496:  LDR             R3, [R0,#0xC]
36C498:  LDR.W           R3, [R3,R2,LSL#2]
36C49C:  LDR             R3, [R3]
36C49E:  STR.W           R3, [R1,R2,LSL#2]
36C4A2:  ADDS            R2, #1
36C4A4:  LDRSB.W         R3, [R0,#6]
36C4A8:  CMP             R2, R3
36C4AA:  BLT             loc_36C496
36C4AC:  B               locret_36C5B2
36C4AE:  VMOV            S0, R2
36C4B2:  LDRB            R2, [R0,#4]
36C4B4:  CBZ             R2, loc_36C4E4
36C4B6:  LDR             R2, [R0,#8]
36C4B8:  VLDR            S4, =0.0039062
36C4BC:  ADD.W           R2, R2, R12,LSL#1
36C4C0:  LDRH.W          R2, [R2,#-2]
36C4C4:  VMOV            S2, R2
36C4C8:  VCVT.F32.U32    S2, S2
36C4CC:  VMUL.F32        S2, S2, S4
36C4D0:  VDIV.F32        S4, S0, S2
36C4D4:  VCVT.S32.F32    S4, S4
36C4D8:  VCVT.F32.S32    S4, S4
36C4DC:  VMUL.F32        S2, S2, S4
36C4E0:  VSUB.F32        S0, S0, S2
36C4E4:  CMP.W           R12, #2
36C4E8:  BLT             loc_36C51E
36C4EA:  MOVS            R3, #0
36C4EC:  LDR.W           LR, [R0,#8]
36C4F0:  MOVS            R2, #4
36C4F2:  VLDR            S2, =0.0039062
36C4F6:  ADD.W           R4, LR, R3,LSL#1
36C4FA:  LDRH            R4, [R4,#2]
36C4FC:  VMOV            S4, R4
36C500:  VCVT.F32.U32    S4, S4
36C504:  VMUL.F32        S4, S4, S2
36C508:  VCMPE.F32       S0, S4
36C50C:  VMRS            APSR_nzcv, FPSCR
36C510:  BLT             loc_36C560
36C512:  ADDS            R4, R3, #1
36C514:  ADDS            R3, #2
36C516:  ADDS            R2, #4
36C518:  CMP             R3, R12
36C51A:  MOV             R3, R4
36C51C:  BLT             loc_36C4F6
36C51E:  LDRSB.W         R2, [R0,#6]
36C522:  CMP             R2, #1
36C524:  BLT             locret_36C5B2
36C526:  LDR             R2, [R0,#0xC]
36C528:  LDR             R2, [R2]
36C52A:  ADD.W           R2, R2, R12,LSL#2
36C52E:  LDR.W           R2, [R2,#-4]
36C532:  STR             R2, [R1]
36C534:  LDRSB.W         R2, [R0,#6]
36C538:  CMP             R2, #2
36C53A:  BLT             locret_36C5B2
36C53C:  MOVS            R2, #1
36C53E:  LDR             R3, [R0,#0xC]
36C540:  LDRSB.W         R4, [R0,#5]
36C544:  LDR.W           R3, [R3,R2,LSL#2]
36C548:  ADD.W           R3, R3, R4,LSL#2
36C54C:  LDR.W           R3, [R3,#-4]
36C550:  STR.W           R3, [R1,R2,LSL#2]
36C554:  ADDS            R2, #1
36C556:  LDRSB.W         R3, [R0,#6]
36C55A:  CMP             R2, R3
36C55C:  BLT             loc_36C53E
36C55E:  B               locret_36C5B2
36C560:  LDRH.W          R3, [LR,R3,LSL#1]
36C564:  VMOV            S6, R3
36C568:  VCVT.F32.U32    S6, S6
36C56C:  LDRSB.W         R3, [R0,#6]
36C570:  CMP             R3, #1
36C572:  IT LT
36C574:  POPLT           {R4,R6,R7,PC}
36C576:  VMUL.F32        S2, S6, S2
36C57A:  MOVS            R3, #0
36C57C:  VSUB.F32        S4, S4, S2
36C580:  VSUB.F32        S0, S0, S2
36C584:  VDIV.F32        S0, S0, S4
36C588:  LDR             R4, [R0,#0xC]
36C58A:  LDR.W           R4, [R4,R3,LSL#2]
36C58E:  ADDS            R3, #1
36C590:  ADD             R4, R2
36C592:  VLDR            S2, [R4,#-4]
36C596:  VLDR            S4, [R4]
36C59A:  VSUB.F32        S4, S4, S2
36C59E:  VMUL.F32        S4, S0, S4
36C5A2:  VADD.F32        S2, S2, S4
36C5A6:  VSTM            R1!, {S2}
36C5AA:  LDRSB.W         R4, [R0,#6]
36C5AE:  CMP             R3, R4
36C5B0:  BLT             loc_36C588
36C5B2:  POP             {R4,R6,R7,PC}
