; =========================================================
; Game Engine Function: _ZN10CTrainDoor7IsInUseEv
; Address            : 0x56F3AC - 0x56F3D4
; =========================================================

56F3AC:  VLDR            S0, [R0,#0xC]
56F3B0:  VLDR            S2, [R0,#0x10]
56F3B4:  VLDR            S4, =0.002
56F3B8:  VSUB.F32        S2, S2, S0
56F3BC:  VSTR            S0, [R0,#0x10]
56F3C0:  MOVS            R0, #0
56F3C2:  VABS.F32        S2, S2
56F3C6:  VCMPE.F32       S2, S4
56F3CA:  VMRS            APSR_nzcv, FPSCR
56F3CE:  IT GT
56F3D0:  MOVGT           R0, #1
56F3D2:  BX              LR
