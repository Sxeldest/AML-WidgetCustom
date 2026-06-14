; =========================================================
; Game Engine Function: sub_15D5CE
; Address            : 0x15D5CE - 0x15D686
; =========================================================

15D5CE:  PUSH            {R4-R7,LR}
15D5D0:  ADD             R7, SP, #0xC
15D5D2:  PUSH.W          {R11}
15D5D6:  MOV             R4, R0
15D5D8:  CMP             R1, #1
15D5DA:  BNE             loc_15D5E0
15D5DC:  MOVS            R5, #2
15D5DE:  B               loc_15D5F0
15D5E0:  SUBS            R0, R1, #1
15D5E2:  MOV             R5, R1
15D5E4:  TST             R1, R0
15D5E6:  BEQ             loc_15D5F0
15D5E8:  MOV             R0, R5; this
15D5EA:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15D5EE:  MOV             R5, R0
15D5F0:  LDR             R6, [R4,#4]
15D5F2:  CMP             R5, R6
15D5F4:  BHI             loc_15D670
15D5F6:  BCS             loc_15D680
15D5F8:  VLDR            S0, [R4,#0xC]
15D5FC:  VLDR            S2, [R4,#0x10]
15D600:  VCVT.F32.U32    S0, S0
15D604:  VDIV.F32        S0, S0, S2
15D608:  VMOV            R0, S0; x
15D60C:  BLX             ceilf
15D610:  VMOV            S0, R0
15D614:  CMP             R6, #3
15D616:  VCVT.U32.F32    S0, S0
15D61A:  VMOV            R0, S0; this
15D61E:  BCC             loc_15D662
15D620:  MOV.W           R1, #0x55555555
15D624:  MOV.W           R2, #0x33333333
15D628:  AND.W           R1, R1, R6,LSR#1
15D62C:  SUBS            R1, R6, R1
15D62E:  AND.W           R2, R2, R1,LSR#2
15D632:  BIC.W           R1, R1, #0xCCCCCCCC
15D636:  ADD             R1, R2
15D638:  MOV.W           R2, #0x1010101
15D63C:  ADD.W           R1, R1, R1,LSR#4
15D640:  BIC.W           R1, R1, #0xF0F0F0F0
15D644:  MULS            R1, R2
15D646:  LSRS            R1, R1, #0x18
15D648:  CMP             R1, #1
15D64A:  BHI             loc_15D662
15D64C:  SUBS            R1, R0, #1
15D64E:  MOVS            R2, #1
15D650:  CLZ.W           R1, R1
15D654:  CMP             R0, #2
15D656:  RSB.W           R1, R1, #0x20 ; ' '
15D65A:  IT CS
15D65C:  LSLCS.W         R0, R2, R1
15D660:  B               loc_15D666
15D662:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15D666:  CMP             R5, R0
15D668:  IT CC
15D66A:  MOVCC           R5, R0
15D66C:  CMP             R5, R6
15D66E:  BCS             loc_15D680
15D670:  MOV             R0, R4
15D672:  MOV             R1, R5
15D674:  POP.W           {R11}
15D678:  POP.W           {R4-R7,LR}
15D67C:  B.W             sub_15D688
15D680:  POP.W           {R11}
15D684:  POP             {R4-R7,PC}
