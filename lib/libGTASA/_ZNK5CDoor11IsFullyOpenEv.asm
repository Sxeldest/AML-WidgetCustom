; =========================================================
; Game Engine Function: _ZNK5CDoor11IsFullyOpenEv
; Address            : 0x56F2B8 - 0x56F2E8
; =========================================================

56F2B8:  VLDR            S0, [R0]
56F2BC:  VLDR            S2, [R0,#0xC]
56F2C0:  MOVS            R0, #0
56F2C2:  VABS.F32        S0, S0
56F2C6:  VMOV.F64        D17, #-0.5
56F2CA:  VCVT.F64.F32    D16, S0
56F2CE:  VABS.F32        S0, S2
56F2D2:  VADD.F64        D16, D16, D17
56F2D6:  VCVT.F64.F32    D17, S0
56F2DA:  VCMPE.F64       D16, D17
56F2DE:  VMRS            APSR_nzcv, FPSCR
56F2E2:  IT LE
56F2E4:  MOVLE           R0, #1
56F2E6:  BX              LR
