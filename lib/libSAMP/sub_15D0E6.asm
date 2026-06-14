; =========================================================
; Game Engine Function: sub_15D0E6
; Address            : 0x15D0E6 - 0x15D19E
; =========================================================

15D0E6:  PUSH            {R4-R7,LR}
15D0E8:  ADD             R7, SP, #0xC
15D0EA:  PUSH.W          {R11}
15D0EE:  MOV             R4, R0
15D0F0:  CMP             R1, #1
15D0F2:  BNE             loc_15D0F8
15D0F4:  MOVS            R5, #2
15D0F6:  B               loc_15D108
15D0F8:  SUBS            R0, R1, #1
15D0FA:  MOV             R5, R1
15D0FC:  TST             R1, R0
15D0FE:  BEQ             loc_15D108
15D100:  MOV             R0, R5; this
15D102:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15D106:  MOV             R5, R0
15D108:  LDR             R6, [R4,#4]
15D10A:  CMP             R5, R6
15D10C:  BHI             loc_15D188
15D10E:  BCS             loc_15D198
15D110:  VLDR            S0, [R4,#0xC]
15D114:  VLDR            S2, [R4,#0x10]
15D118:  VCVT.F32.U32    S0, S0
15D11C:  VDIV.F32        S0, S0, S2
15D120:  VMOV            R0, S0; x
15D124:  BLX             ceilf
15D128:  VMOV            S0, R0
15D12C:  CMP             R6, #3
15D12E:  VCVT.U32.F32    S0, S0
15D132:  VMOV            R0, S0; this
15D136:  BCC             loc_15D17A
15D138:  MOV.W           R1, #0x55555555
15D13C:  MOV.W           R2, #0x33333333
15D140:  AND.W           R1, R1, R6,LSR#1
15D144:  SUBS            R1, R6, R1
15D146:  AND.W           R2, R2, R1,LSR#2
15D14A:  BIC.W           R1, R1, #0xCCCCCCCC
15D14E:  ADD             R1, R2
15D150:  MOV.W           R2, #0x1010101
15D154:  ADD.W           R1, R1, R1,LSR#4
15D158:  BIC.W           R1, R1, #0xF0F0F0F0
15D15C:  MULS            R1, R2
15D15E:  LSRS            R1, R1, #0x18
15D160:  CMP             R1, #1
15D162:  BHI             loc_15D17A
15D164:  SUBS            R1, R0, #1
15D166:  MOVS            R2, #1
15D168:  CLZ.W           R1, R1
15D16C:  CMP             R0, #2
15D16E:  RSB.W           R1, R1, #0x20 ; ' '
15D172:  IT CS
15D174:  LSLCS.W         R0, R2, R1
15D178:  B               loc_15D17E
15D17A:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15D17E:  CMP             R5, R0
15D180:  IT CC
15D182:  MOVCC           R5, R0
15D184:  CMP             R5, R6
15D186:  BCS             loc_15D198
15D188:  MOV             R0, R4
15D18A:  MOV             R1, R5
15D18C:  POP.W           {R11}
15D190:  POP.W           {R4-R7,LR}
15D194:  B.W             sub_15D1A0
15D198:  POP.W           {R11}
15D19C:  POP             {R4-R7,PC}
