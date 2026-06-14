; =========================================================
; Game Engine Function: sub_15F4FA
; Address            : 0x15F4FA - 0x15F5B2
; =========================================================

15F4FA:  PUSH            {R4-R7,LR}
15F4FC:  ADD             R7, SP, #0xC
15F4FE:  PUSH.W          {R11}
15F502:  MOV             R4, R0
15F504:  CMP             R1, #1
15F506:  BNE             loc_15F50C
15F508:  MOVS            R5, #2
15F50A:  B               loc_15F51C
15F50C:  SUBS            R0, R1, #1
15F50E:  MOV             R5, R1
15F510:  TST             R1, R0
15F512:  BEQ             loc_15F51C
15F514:  MOV             R0, R5; this
15F516:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15F51A:  MOV             R5, R0
15F51C:  LDR             R6, [R4,#4]
15F51E:  CMP             R5, R6
15F520:  BHI             loc_15F59C
15F522:  BCS             loc_15F5AC
15F524:  VLDR            S0, [R4,#0xC]
15F528:  VLDR            S2, [R4,#0x10]
15F52C:  VCVT.F32.U32    S0, S0
15F530:  VDIV.F32        S0, S0, S2
15F534:  VMOV            R0, S0; x
15F538:  BLX             ceilf
15F53C:  VMOV            S0, R0
15F540:  CMP             R6, #3
15F542:  VCVT.U32.F32    S0, S0
15F546:  VMOV            R0, S0; this
15F54A:  BCC             loc_15F58E
15F54C:  MOV.W           R1, #0x55555555
15F550:  MOV.W           R2, #0x33333333
15F554:  AND.W           R1, R1, R6,LSR#1
15F558:  SUBS            R1, R6, R1
15F55A:  AND.W           R2, R2, R1,LSR#2
15F55E:  BIC.W           R1, R1, #0xCCCCCCCC
15F562:  ADD             R1, R2
15F564:  MOV.W           R2, #0x1010101
15F568:  ADD.W           R1, R1, R1,LSR#4
15F56C:  BIC.W           R1, R1, #0xF0F0F0F0
15F570:  MULS            R1, R2
15F572:  LSRS            R1, R1, #0x18
15F574:  CMP             R1, #1
15F576:  BHI             loc_15F58E
15F578:  SUBS            R1, R0, #1
15F57A:  MOVS            R2, #1
15F57C:  CLZ.W           R1, R1
15F580:  CMP             R0, #2
15F582:  RSB.W           R1, R1, #0x20 ; ' '
15F586:  IT CS
15F588:  LSLCS.W         R0, R2, R1
15F58C:  B               loc_15F592
15F58E:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15F592:  CMP             R5, R0
15F594:  IT CC
15F596:  MOVCC           R5, R0
15F598:  CMP             R5, R6
15F59A:  BCS             loc_15F5AC
15F59C:  MOV             R0, R4
15F59E:  MOV             R1, R5
15F5A0:  POP.W           {R11}
15F5A4:  POP.W           {R4-R7,LR}
15F5A8:  B.W             sub_15F5B4
15F5AC:  POP.W           {R11}
15F5B0:  POP             {R4-R7,PC}
