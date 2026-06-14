; =========================================================
; Game Engine Function: sub_13915A
; Address            : 0x13915A - 0x139212
; =========================================================

13915A:  PUSH            {R4-R7,LR}
13915C:  ADD             R7, SP, #0xC
13915E:  PUSH.W          {R11}
139162:  MOV             R4, R0
139164:  CMP             R1, #1
139166:  BNE             loc_13916C
139168:  MOVS            R5, #2
13916A:  B               loc_13917C
13916C:  SUBS            R0, R1, #1
13916E:  MOV             R5, R1
139170:  TST             R1, R0
139172:  BEQ             loc_13917C
139174:  MOV             R0, R5; this
139176:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
13917A:  MOV             R5, R0
13917C:  LDR             R6, [R4,#4]
13917E:  CMP             R5, R6
139180:  BHI             loc_1391FC
139182:  BCS             loc_13920C
139184:  VLDR            S0, [R4,#0xC]
139188:  VLDR            S2, [R4,#0x10]
13918C:  VCVT.F32.U32    S0, S0
139190:  VDIV.F32        S0, S0, S2
139194:  VMOV            R0, S0; x
139198:  BLX             ceilf
13919C:  VMOV            S0, R0
1391A0:  CMP             R6, #3
1391A2:  VCVT.U32.F32    S0, S0
1391A6:  VMOV            R0, S0; this
1391AA:  BCC             loc_1391EE
1391AC:  MOV.W           R1, #0x55555555
1391B0:  MOV.W           R2, #0x33333333
1391B4:  AND.W           R1, R1, R6,LSR#1
1391B8:  SUBS            R1, R6, R1
1391BA:  AND.W           R2, R2, R1,LSR#2
1391BE:  BIC.W           R1, R1, #0xCCCCCCCC
1391C2:  ADD             R1, R2
1391C4:  MOV.W           R2, #0x1010101
1391C8:  ADD.W           R1, R1, R1,LSR#4
1391CC:  BIC.W           R1, R1, #0xF0F0F0F0
1391D0:  MULS            R1, R2
1391D2:  LSRS            R1, R1, #0x18
1391D4:  CMP             R1, #1
1391D6:  BHI             loc_1391EE
1391D8:  SUBS            R1, R0, #1
1391DA:  MOVS            R2, #1
1391DC:  CLZ.W           R1, R1
1391E0:  CMP             R0, #2
1391E2:  RSB.W           R1, R1, #0x20 ; ' '
1391E6:  IT CS
1391E8:  LSLCS.W         R0, R2, R1
1391EC:  B               loc_1391F2
1391EE:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
1391F2:  CMP             R5, R0
1391F4:  IT CC
1391F6:  MOVCC           R5, R0
1391F8:  CMP             R5, R6
1391FA:  BCS             loc_13920C
1391FC:  MOV             R0, R4
1391FE:  MOV             R1, R5
139200:  POP.W           {R11}
139204:  POP.W           {R4-R7,LR}
139208:  B.W             sub_139214
13920C:  POP.W           {R11}
139210:  POP             {R4-R7,PC}
