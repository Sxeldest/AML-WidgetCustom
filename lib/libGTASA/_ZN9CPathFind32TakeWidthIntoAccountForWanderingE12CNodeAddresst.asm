; =========================================================
; Game Engine Function: _ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst
; Address            : 0x319298 - 0x319356
; =========================================================

319298:  PUSH            {R4,R6,R7,LR}
31929A:  ADD             R7, SP, #8
31929C:  VLDR            S0, =0.0
3192A0:  UXTH.W          R12, R2
3192A4:  MOVW            LR, #0xFFFF
3192A8:  CMP             R12, LR
3192AA:  BEQ             loc_319340
3192AC:  VMOV.F32        S2, S0
3192B0:  ADD.W           R1, R1, R12,LSL#2
3192B4:  VMOV.F32        S4, S0
3192B8:  LDR.W           R12, [R1,#0x804]
3192BC:  CMP.W           R12, #0
3192C0:  BEQ             loc_319348
3192C2:  LSRS            R1, R2, #0x10
3192C4:  VMOV.F32        S0, #0.125
3192C8:  LSLS            R1, R1, #3
3192CA:  VLDR            S10, =0.00775
3192CE:  SUB.W           R1, R1, R2,LSR#16
3192D2:  SXTH            R2, R3
3192D4:  ADD.W           R1, R12, R1,LSL#2
3192D8:  LDRSH.W         R12, [R1,#8]
3192DC:  LDRSH.W         R3, [R1,#0xA]
3192E0:  LDRSH.W         LR, [R1,#0xC]
3192E4:  LDRB            R1, [R1,#0x16]
3192E6:  UBFX.W          R4, R2, #4, #4
3192EA:  AND.W           R2, R2, #0xF
3192EE:  SUBS            R4, #7
3192F0:  SUBS            R2, #7
3192F2:  VMOV            S2, R3
3192F6:  SMULBB.W        R3, R4, R1
3192FA:  VMOV            S4, R12
3192FE:  SMULBB.W        R1, R2, R1
319302:  VCVT.F32.S32    S2, S2
319306:  VMOV            S12, LR
31930A:  VMOV            S6, R3
31930E:  VMOV            S8, R1
319312:  VCVT.F32.S32    S6, S6
319316:  VCVT.F32.S32    S4, S4
31931A:  VCVT.F32.S32    S8, S8
31931E:  VCVT.F32.S32    S12, S12
319322:  VMUL.F32        S2, S2, S0
319326:  VMUL.F32        S6, S6, S10
31932A:  VMUL.F32        S14, S4, S0
31932E:  VMUL.F32        S8, S8, S10
319332:  VMUL.F32        S4, S12, S0
319336:  VADD.F32        S2, S2, S6
31933A:  VADD.F32        S0, S14, S8
31933E:  B               loc_319348
319340:  VMOV.F32        S2, S0
319344:  VMOV.F32        S4, S0
319348:  VSTR            S0, [R0]
31934C:  VSTR            S2, [R0,#4]
319350:  VSTR            S4, [R0,#8]
319354:  POP             {R4,R6,R7,PC}
