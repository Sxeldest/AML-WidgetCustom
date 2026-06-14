; =========================================================
; Game Engine Function: sub_84538
; Address            : 0x84538 - 0x845F0
; =========================================================

84538:  PUSH            {R4-R7,LR}
8453A:  ADD             R7, SP, #0xC
8453C:  PUSH.W          {R11}
84540:  MOV             R4, R0
84542:  CMP             R1, #1
84544:  BNE             loc_8454A
84546:  MOVS            R5, #2
84548:  B               loc_8455A
8454A:  SUBS            R0, R1, #1
8454C:  MOV             R5, R1
8454E:  TST             R1, R0
84550:  BEQ             loc_8455A
84552:  MOV             R0, R5; this
84554:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
84558:  MOV             R5, R0
8455A:  LDR             R6, [R4,#4]
8455C:  CMP             R5, R6
8455E:  BHI             loc_845DA
84560:  BCS             loc_845EA
84562:  VLDR            S0, [R4,#0xC]
84566:  VLDR            S2, [R4,#0x10]
8456A:  VCVT.F32.U32    S0, S0
8456E:  VDIV.F32        S0, S0, S2
84572:  VMOV            R0, S0; x
84576:  BLX             ceilf
8457A:  VMOV            S0, R0
8457E:  CMP             R6, #3
84580:  VCVT.U32.F32    S0, S0
84584:  VMOV            R0, S0; this
84588:  BCC             loc_845CC
8458A:  MOV.W           R1, #0x55555555
8458E:  MOV.W           R2, #0x33333333
84592:  AND.W           R1, R1, R6,LSR#1
84596:  SUBS            R1, R6, R1
84598:  AND.W           R2, R2, R1,LSR#2
8459C:  BIC.W           R1, R1, #0xCCCCCCCC
845A0:  ADD             R1, R2
845A2:  MOV.W           R2, #0x1010101
845A6:  ADD.W           R1, R1, R1,LSR#4
845AA:  BIC.W           R1, R1, #0xF0F0F0F0
845AE:  MULS            R1, R2
845B0:  LSRS            R1, R1, #0x18
845B2:  CMP             R1, #1
845B4:  BHI             loc_845CC
845B6:  SUBS            R1, R0, #1
845B8:  MOVS            R2, #1
845BA:  CLZ.W           R1, R1
845BE:  CMP             R0, #2
845C0:  RSB.W           R1, R1, #0x20 ; ' '
845C4:  IT CS
845C6:  LSLCS.W         R0, R2, R1
845CA:  B               loc_845D0
845CC:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
845D0:  CMP             R5, R0
845D2:  IT CC
845D4:  MOVCC           R5, R0
845D6:  CMP             R5, R6
845D8:  BCS             loc_845EA
845DA:  MOV             R0, R4
845DC:  MOV             R1, R5
845DE:  POP.W           {R11}
845E2:  POP.W           {R4-R7,LR}
845E6:  B.W             sub_8461C
845EA:  POP.W           {R11}
845EE:  POP             {R4-R7,PC}
