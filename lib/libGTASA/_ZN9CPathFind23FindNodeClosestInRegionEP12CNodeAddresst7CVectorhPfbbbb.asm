; =========================================================
; Game Engine Function: _ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb
; Address            : 0x317480 - 0x3175F8
; =========================================================

317480:  PUSH            {R4-R7,LR}
317482:  ADD             R7, SP, #0xC
317484:  PUSH.W          {R8-R11}
317488:  SUB             SP, SP, #4
31748A:  VPUSH           {D8-D15}
31748E:  SUB             SP, SP, #0x10
317490:  STRD.W          R1, R2, [SP,#0x70+var_6C]
317494:  ADD.W           R1, R0, R2,LSL#2
317498:  STR             R0, [SP,#0x70+var_64]
31749A:  MOV             R12, R3
31749C:  LDR.W           R0, [R1,#0x804]
3174A0:  CMP             R0, #0
3174A2:  BEQ.W           loc_3175EA
3174A6:  LDR             R2, [R7,#arg_8]
3174A8:  CMP             R2, #1
3174AA:  BEQ             loc_3174BA
3174AC:  CMP             R2, #0
3174AE:  BNE             loc_3174CC
3174B0:  MOVW            R2, #0x1104
3174B4:  MOVS            R5, #0
3174B6:  ADD             R2, R1
3174B8:  B               loc_3174C4
3174BA:  MOVW            R2, #0x1104
3174BE:  LDR             R5, [R1,R2]
3174C0:  ADDW            R2, R1, #0xFE4
3174C4:  LDR             R2, [R2]
3174C6:  CMP             R5, R2
3174C8:  BGE.W           loc_3175EA
3174CC:  VMOV.F32        S22, #0.125
3174D0:  LDRD.W          R3, R6, [R7,#arg_0]
3174D4:  VMOV.F32        S24, #3.0
3174D8:  LDRD.W          LR, R11, [R7,#arg_14]
3174DC:  ADDW            R10, R1, #0x804
3174E0:  LDRD.W          R9, R4, [R7,#arg_C]
3174E4:  RSB.W           R1, R5, R5,LSL#3
3174E8:  VMOV            S16, R6
3174EC:  SUB.W           R8, R2, #1
3174F0:  EOR.W           LR, LR, #1
3174F4:  VMOV            S18, R3
3174F8:  VLDR            S26, =0.3
3174FC:  VMOV            S20, R12
317500:  VLDR            S28, =0.2
317504:  LSLS            R6, R1, #2
317506:  B               loc_317510
317508:  ADDS            R5, #1
31750A:  LDR.W           R0, [R10]
31750E:  ADDS            R6, #0x1C
317510:  ADDS            R1, R0, R6
317512:  CMP             R4, #1
317514:  BNE             loc_31751C
317516:  LDRH            R0, [R1,#0x18]
317518:  LSLS            R0, R0, #0x1A
31751A:  BMI             loc_3175E6
31751C:  LDRB            R0, [R1,#0x1A]
31751E:  LDRH            R2, [R1,#0x18]
317520:  ORR.W           R0, R2, R0,LSL#16
317524:  MOVS            R2, #0
317526:  TST.W           R0, #0x200
31752A:  IT EQ
31752C:  MOVEQ           R2, #1
31752E:  ORRS.W          R2, R2, LR
317532:  BEQ             loc_3175E6
317534:  UBFX.W          R0, R0, #7, #1
317538:  CMP             R11, R0
31753A:  BNE             loc_3175E6
31753C:  LDRSH.W         R0, [R1,#8]
317540:  LDRSH.W         R2, [R1,#0xA]
317544:  LDRSH.W         R3, [R1,#0xC]
317548:  VMOV            S2, R0
31754C:  VMOV            S0, R2
317550:  VMOV            S4, R3
317554:  VCVT.F32.S32    S0, S0
317558:  VCVT.F32.S32    S2, S2
31755C:  VCVT.F32.S32    S4, S4
317560:  VMUL.F32        S0, S0, S22
317564:  VMUL.F32        S2, S2, S22
317568:  VMUL.F32        S4, S4, S22
31756C:  VSUB.F32        S0, S0, S18
317570:  VSUB.F32        S2, S2, S20
317574:  VSUB.F32        S4, S4, S16
317578:  VABS.F32        S0, S0
31757C:  VABS.F32        S2, S2
317580:  VABS.F32        S4, S4
317584:  VADD.F32        S0, S2, S0
317588:  VMUL.F32        S2, S4, S24
31758C:  VADD.F32        S0, S0, S2
317590:  VMUL.F32        S30, S0, S26
317594:  VLDR            S0, [R9]
317598:  VCMPE.F32       S30, S0
31759C:  VMRS            APSR_nzcv, FPSCR
3175A0:  BGE             loc_3175E6
3175A2:  LDR             R0, [R7,#arg_4]
3175A4:  MOV             R2, R12
3175A6:  STR             R0, [SP,#0x70+var_70]
3175A8:  MOV             R9, R11
3175AA:  LDR             R0, [SP,#0x70+var_64]
3175AC:  MOV             R11, R12
3175AE:  LDR             R3, [R7,#arg_0]
3175B0:  MOV             R4, LR
3175B2:  BLX             j__ZN9CPathFind28CalcDistToAnyConnectingLinksEP9CPathNode7CVector; CPathFind::CalcDistToAnyConnectingLinks(CPathNode *,CVector)
3175B6:  VMOV            S0, R0
3175BA:  MOV             R12, R11
3175BC:  MOV             LR, R4
3175BE:  MOV             R11, R9
3175C0:  VMUL.F32        S0, S0, S28
3175C4:  LDRD.W          R9, R4, [R7,#arg_C]
3175C8:  VLDR            S2, [R9]
3175CC:  VADD.F32        S0, S30, S0
3175D0:  VCMPE.F32       S0, S2
3175D4:  VMRS            APSR_nzcv, FPSCR
3175D8:  BGE             loc_3175E6
3175DA:  VSTR            S0, [R9]
3175DE:  LDR             R1, [SP,#0x70+var_6C]
3175E0:  STRH            R5, [R1,#2]
3175E2:  LDR             R0, [SP,#0x70+var_68]
3175E4:  STRH            R0, [R1]
3175E6:  CMP             R8, R5
3175E8:  BNE             loc_317508
3175EA:  ADD             SP, SP, #0x10
3175EC:  VPOP            {D8-D15}
3175F0:  ADD             SP, SP, #4
3175F2:  POP.W           {R8-R11}
3175F6:  POP             {R4-R7,PC}
