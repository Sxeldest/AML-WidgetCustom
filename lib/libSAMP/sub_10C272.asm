; =========================================================
; Game Engine Function: sub_10C272
; Address            : 0x10C272 - 0x10C32A
; =========================================================

10C272:  PUSH            {R4-R7,LR}
10C274:  ADD             R7, SP, #0xC
10C276:  PUSH.W          {R11}
10C27A:  MOV             R4, R0
10C27C:  CMP             R1, #1
10C27E:  BNE             loc_10C284
10C280:  MOVS            R5, #2
10C282:  B               loc_10C294
10C284:  SUBS            R0, R1, #1
10C286:  MOV             R5, R1
10C288:  TST             R1, R0
10C28A:  BEQ             loc_10C294
10C28C:  MOV             R0, R5; this
10C28E:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
10C292:  MOV             R5, R0
10C294:  LDR             R6, [R4,#4]
10C296:  CMP             R5, R6
10C298:  BHI             loc_10C314
10C29A:  BCS             loc_10C324
10C29C:  VLDR            S0, [R4,#0xC]
10C2A0:  VLDR            S2, [R4,#0x10]
10C2A4:  VCVT.F32.U32    S0, S0
10C2A8:  VDIV.F32        S0, S0, S2
10C2AC:  VMOV            R0, S0; x
10C2B0:  BLX             ceilf
10C2B4:  VMOV            S0, R0
10C2B8:  CMP             R6, #3
10C2BA:  VCVT.U32.F32    S0, S0
10C2BE:  VMOV            R0, S0; this
10C2C2:  BCC             loc_10C306
10C2C4:  MOV.W           R1, #0x55555555
10C2C8:  MOV.W           R2, #0x33333333
10C2CC:  AND.W           R1, R1, R6,LSR#1
10C2D0:  SUBS            R1, R6, R1
10C2D2:  AND.W           R2, R2, R1,LSR#2
10C2D6:  BIC.W           R1, R1, #0xCCCCCCCC
10C2DA:  ADD             R1, R2
10C2DC:  MOV.W           R2, #0x1010101
10C2E0:  ADD.W           R1, R1, R1,LSR#4
10C2E4:  BIC.W           R1, R1, #0xF0F0F0F0
10C2E8:  MULS            R1, R2
10C2EA:  LSRS            R1, R1, #0x18
10C2EC:  CMP             R1, #1
10C2EE:  BHI             loc_10C306
10C2F0:  SUBS            R1, R0, #1
10C2F2:  MOVS            R2, #1
10C2F4:  CLZ.W           R1, R1
10C2F8:  CMP             R0, #2
10C2FA:  RSB.W           R1, R1, #0x20 ; ' '
10C2FE:  IT CS
10C300:  LSLCS.W         R0, R2, R1
10C304:  B               loc_10C30A
10C306:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
10C30A:  CMP             R5, R0
10C30C:  IT CC
10C30E:  MOVCC           R5, R0
10C310:  CMP             R5, R6
10C312:  BCS             loc_10C324
10C314:  MOV             R0, R4
10C316:  MOV             R1, R5
10C318:  POP.W           {R11}
10C31C:  POP.W           {R4-R7,LR}
10C320:  B.W             sub_10C32C
10C324:  POP.W           {R11}
10C328:  POP             {R4-R7,PC}
