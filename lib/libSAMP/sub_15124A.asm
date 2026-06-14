; =========================================================
; Game Engine Function: sub_15124A
; Address            : 0x15124A - 0x151302
; =========================================================

15124A:  PUSH            {R4-R7,LR}
15124C:  ADD             R7, SP, #0xC
15124E:  PUSH.W          {R11}
151252:  MOV             R4, R0
151254:  CMP             R1, #1
151256:  BNE             loc_15125C
151258:  MOVS            R5, #2
15125A:  B               loc_15126C
15125C:  SUBS            R0, R1, #1
15125E:  MOV             R5, R1
151260:  TST             R1, R0
151262:  BEQ             loc_15126C
151264:  MOV             R0, R5; this
151266:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15126A:  MOV             R5, R0
15126C:  LDR             R6, [R4,#4]
15126E:  CMP             R5, R6
151270:  BHI             loc_1512EC
151272:  BCS             loc_1512FC
151274:  VLDR            S0, [R4,#0xC]
151278:  VLDR            S2, [R4,#0x10]
15127C:  VCVT.F32.U32    S0, S0
151280:  VDIV.F32        S0, S0, S2
151284:  VMOV            R0, S0; x
151288:  BLX             ceilf
15128C:  VMOV            S0, R0
151290:  CMP             R6, #3
151292:  VCVT.U32.F32    S0, S0
151296:  VMOV            R0, S0; this
15129A:  BCC             loc_1512DE
15129C:  MOV.W           R1, #0x55555555
1512A0:  MOV.W           R2, #0x33333333
1512A4:  AND.W           R1, R1, R6,LSR#1
1512A8:  SUBS            R1, R6, R1
1512AA:  AND.W           R2, R2, R1,LSR#2
1512AE:  BIC.W           R1, R1, #0xCCCCCCCC
1512B2:  ADD             R1, R2
1512B4:  MOV.W           R2, #0x1010101
1512B8:  ADD.W           R1, R1, R1,LSR#4
1512BC:  BIC.W           R1, R1, #0xF0F0F0F0
1512C0:  MULS            R1, R2
1512C2:  LSRS            R1, R1, #0x18
1512C4:  CMP             R1, #1
1512C6:  BHI             loc_1512DE
1512C8:  SUBS            R1, R0, #1
1512CA:  MOVS            R2, #1
1512CC:  CLZ.W           R1, R1
1512D0:  CMP             R0, #2
1512D2:  RSB.W           R1, R1, #0x20 ; ' '
1512D6:  IT CS
1512D8:  LSLCS.W         R0, R2, R1
1512DC:  B               loc_1512E2
1512DE:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
1512E2:  CMP             R5, R0
1512E4:  IT CC
1512E6:  MOVCC           R5, R0
1512E8:  CMP             R5, R6
1512EA:  BCS             loc_1512FC
1512EC:  MOV             R0, R4
1512EE:  MOV             R1, R5
1512F0:  POP.W           {R11}
1512F4:  POP.W           {R4-R7,LR}
1512F8:  B.W             sub_151304
1512FC:  POP.W           {R11}
151300:  POP             {R4-R7,PC}
