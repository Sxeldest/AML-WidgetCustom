; =========================================================
; Game Engine Function: sub_15F074
; Address            : 0x15F074 - 0x15F12C
; =========================================================

15F074:  PUSH            {R4-R7,LR}
15F076:  ADD             R7, SP, #0xC
15F078:  PUSH.W          {R11}
15F07C:  MOV             R4, R0
15F07E:  CMP             R1, #1
15F080:  BNE             loc_15F086
15F082:  MOVS            R5, #2
15F084:  B               loc_15F096
15F086:  SUBS            R0, R1, #1
15F088:  MOV             R5, R1
15F08A:  TST             R1, R0
15F08C:  BEQ             loc_15F096
15F08E:  MOV             R0, R5; this
15F090:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15F094:  MOV             R5, R0
15F096:  LDR             R6, [R4,#4]
15F098:  CMP             R5, R6
15F09A:  BHI             loc_15F116
15F09C:  BCS             loc_15F126
15F09E:  VLDR            S0, [R4,#0xC]
15F0A2:  VLDR            S2, [R4,#0x10]
15F0A6:  VCVT.F32.U32    S0, S0
15F0AA:  VDIV.F32        S0, S0, S2
15F0AE:  VMOV            R0, S0; x
15F0B2:  BLX             ceilf
15F0B6:  VMOV            S0, R0
15F0BA:  CMP             R6, #3
15F0BC:  VCVT.U32.F32    S0, S0
15F0C0:  VMOV            R0, S0; this
15F0C4:  BCC             loc_15F108
15F0C6:  MOV.W           R1, #0x55555555
15F0CA:  MOV.W           R2, #0x33333333
15F0CE:  AND.W           R1, R1, R6,LSR#1
15F0D2:  SUBS            R1, R6, R1
15F0D4:  AND.W           R2, R2, R1,LSR#2
15F0D8:  BIC.W           R1, R1, #0xCCCCCCCC
15F0DC:  ADD             R1, R2
15F0DE:  MOV.W           R2, #0x1010101
15F0E2:  ADD.W           R1, R1, R1,LSR#4
15F0E6:  BIC.W           R1, R1, #0xF0F0F0F0
15F0EA:  MULS            R1, R2
15F0EC:  LSRS            R1, R1, #0x18
15F0EE:  CMP             R1, #1
15F0F0:  BHI             loc_15F108
15F0F2:  SUBS            R1, R0, #1
15F0F4:  MOVS            R2, #1
15F0F6:  CLZ.W           R1, R1
15F0FA:  CMP             R0, #2
15F0FC:  RSB.W           R1, R1, #0x20 ; ' '
15F100:  IT CS
15F102:  LSLCS.W         R0, R2, R1
15F106:  B               loc_15F10C
15F108:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15F10C:  CMP             R5, R0
15F10E:  IT CC
15F110:  MOVCC           R5, R0
15F112:  CMP             R5, R6
15F114:  BCS             loc_15F126
15F116:  MOV             R0, R4
15F118:  MOV             R1, R5
15F11A:  POP.W           {R11}
15F11E:  POP.W           {R4-R7,LR}
15F122:  B.W             sub_15F12C
15F126:  POP.W           {R11}
15F12A:  POP             {R4-R7,PC}
