; =========================================================
; Game Engine Function: _ZN8CCredits16PrintCreditSpaceEfRj
; Address            : 0x462BC4 - 0x462BE6
; =========================================================

462BC4:  VMOV.F32        S0, #25.0
462BC8:  VLDR            S2, [R1]
462BCC:  VMOV            S4, R0
462BD0:  VCVT.F32.U32    S2, S2
462BD4:  VMUL.F32        S0, S4, S0
462BD8:  VADD.F32        S0, S0, S2
462BDC:  VCVT.U32.F32    S0, S0
462BE0:  VSTR            S0, [R1]
462BE4:  BX              LR
