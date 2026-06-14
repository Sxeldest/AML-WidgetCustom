; =========================================================
; Game Engine Function: sub_15352E
; Address            : 0x15352E - 0x1535E6
; =========================================================

15352E:  PUSH            {R4-R7,LR}
153530:  ADD             R7, SP, #0xC
153532:  PUSH.W          {R11}
153536:  MOV             R4, R0
153538:  CMP             R1, #1
15353A:  BNE             loc_153540
15353C:  MOVS            R5, #2
15353E:  B               loc_153550
153540:  SUBS            R0, R1, #1
153542:  MOV             R5, R1
153544:  TST             R1, R0
153546:  BEQ             loc_153550
153548:  MOV             R0, R5; this
15354A:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15354E:  MOV             R5, R0
153550:  LDR             R6, [R4,#4]
153552:  CMP             R5, R6
153554:  BHI             loc_1535D0
153556:  BCS             loc_1535E0
153558:  VLDR            S0, [R4,#0xC]
15355C:  VLDR            S2, [R4,#0x10]
153560:  VCVT.F32.U32    S0, S0
153564:  VDIV.F32        S0, S0, S2
153568:  VMOV            R0, S0; x
15356C:  BLX             ceilf
153570:  VMOV            S0, R0
153574:  CMP             R6, #3
153576:  VCVT.U32.F32    S0, S0
15357A:  VMOV            R0, S0; this
15357E:  BCC             loc_1535C2
153580:  MOV.W           R1, #0x55555555
153584:  MOV.W           R2, #0x33333333
153588:  AND.W           R1, R1, R6,LSR#1
15358C:  SUBS            R1, R6, R1
15358E:  AND.W           R2, R2, R1,LSR#2
153592:  BIC.W           R1, R1, #0xCCCCCCCC
153596:  ADD             R1, R2
153598:  MOV.W           R2, #0x1010101
15359C:  ADD.W           R1, R1, R1,LSR#4
1535A0:  BIC.W           R1, R1, #0xF0F0F0F0
1535A4:  MULS            R1, R2
1535A6:  LSRS            R1, R1, #0x18
1535A8:  CMP             R1, #1
1535AA:  BHI             loc_1535C2
1535AC:  SUBS            R1, R0, #1
1535AE:  MOVS            R2, #1
1535B0:  CLZ.W           R1, R1
1535B4:  CMP             R0, #2
1535B6:  RSB.W           R1, R1, #0x20 ; ' '
1535BA:  IT CS
1535BC:  LSLCS.W         R0, R2, R1
1535C0:  B               loc_1535C6
1535C2:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
1535C6:  CMP             R5, R0
1535C8:  IT CC
1535CA:  MOVCC           R5, R0
1535CC:  CMP             R5, R6
1535CE:  BCS             loc_1535E0
1535D0:  MOV             R0, R4
1535D2:  MOV             R1, R5
1535D4:  POP.W           {R11}
1535D8:  POP.W           {R4-R7,LR}
1535DC:  B.W             sub_1535E8
1535E0:  POP.W           {R11}
1535E4:  POP             {R4-R7,PC}
