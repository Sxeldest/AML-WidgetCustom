; =========================================================
; Game Engine Function: _ZN11CWeaponInfo18GetTargetHeadRangeEv
; Address            : 0x5E4318 - 0x5E433A
; =========================================================

5E4318:  VLDR            S2, [R0,#8]
5E431C:  LDR             R0, [R0,#0x30]
5E431E:  VLDR            S0, =0.04
5E4322:  ADDS            R0, #2
5E4324:  VMUL.F32        S0, S2, S0
5E4328:  VMOV            S2, R0
5E432C:  VCVT.F32.S32    S2, S2
5E4330:  VMUL.F32        S0, S0, S2
5E4334:  VMOV            R0, S0
5E4338:  BX              LR
