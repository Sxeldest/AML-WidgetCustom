; =========================================================
; Game Engine Function: sub_1539B2
; Address            : 0x1539B2 - 0x153A6A
; =========================================================

1539B2:  PUSH            {R4-R7,LR}
1539B4:  ADD             R7, SP, #0xC
1539B6:  PUSH.W          {R11}
1539BA:  MOV             R4, R0
1539BC:  CMP             R1, #1
1539BE:  BNE             loc_1539C4
1539C0:  MOVS            R5, #2
1539C2:  B               loc_1539D4
1539C4:  SUBS            R0, R1, #1
1539C6:  MOV             R5, R1
1539C8:  TST             R1, R0
1539CA:  BEQ             loc_1539D4
1539CC:  MOV             R0, R5; this
1539CE:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
1539D2:  MOV             R5, R0
1539D4:  LDR             R6, [R4,#4]
1539D6:  CMP             R5, R6
1539D8:  BHI             loc_153A54
1539DA:  BCS             loc_153A64
1539DC:  VLDR            S0, [R4,#0xC]
1539E0:  VLDR            S2, [R4,#0x10]
1539E4:  VCVT.F32.U32    S0, S0
1539E8:  VDIV.F32        S0, S0, S2
1539EC:  VMOV            R0, S0; x
1539F0:  BLX             ceilf
1539F4:  VMOV            S0, R0
1539F8:  CMP             R6, #3
1539FA:  VCVT.U32.F32    S0, S0
1539FE:  VMOV            R0, S0; this
153A02:  BCC             loc_153A46
153A04:  MOV.W           R1, #0x55555555
153A08:  MOV.W           R2, #0x33333333
153A0C:  AND.W           R1, R1, R6,LSR#1
153A10:  SUBS            R1, R6, R1
153A12:  AND.W           R2, R2, R1,LSR#2
153A16:  BIC.W           R1, R1, #0xCCCCCCCC
153A1A:  ADD             R1, R2
153A1C:  MOV.W           R2, #0x1010101
153A20:  ADD.W           R1, R1, R1,LSR#4
153A24:  BIC.W           R1, R1, #0xF0F0F0F0
153A28:  MULS            R1, R2
153A2A:  LSRS            R1, R1, #0x18
153A2C:  CMP             R1, #1
153A2E:  BHI             loc_153A46
153A30:  SUBS            R1, R0, #1
153A32:  MOVS            R2, #1
153A34:  CLZ.W           R1, R1
153A38:  CMP             R0, #2
153A3A:  RSB.W           R1, R1, #0x20 ; ' '
153A3E:  IT CS
153A40:  LSLCS.W         R0, R2, R1
153A44:  B               loc_153A4A
153A46:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
153A4A:  CMP             R5, R0
153A4C:  IT CC
153A4E:  MOVCC           R5, R0
153A50:  CMP             R5, R6
153A52:  BCS             loc_153A64
153A54:  MOV             R0, R4
153A56:  MOV             R1, R5
153A58:  POP.W           {R11}
153A5C:  POP.W           {R4-R7,LR}
153A60:  B.W             sub_153A6C
153A64:  POP.W           {R11}
153A68:  POP             {R4-R7,PC}
