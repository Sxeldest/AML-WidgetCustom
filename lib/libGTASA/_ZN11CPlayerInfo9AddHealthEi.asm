; =========================================================
; Game Engine Function: _ZN11CPlayerInfo9AddHealthEi
; Address            : 0x40C296 - 0x40C2C6
; =========================================================

40C296:  VMOV            S0, R1
40C29A:  VCVT.F32.S32    S0, S0
40C29E:  LDR             R1, [R0]
40C2A0:  LDRB.W          R0, [R0,#0x14F]
40C2A4:  ADDW            R1, R1, #0x544
40C2A8:  VLDR            S2, [R1]
40C2AC:  VMOV            S4, R0
40C2B0:  VCVT.F32.U32    S4, S4
40C2B4:  VADD.F32        S0, S2, S0
40C2B8:  VMIN.F32        D16, D0, D2
40C2BC:  VMAX.F32        D0, D1, D16
40C2C0:  VSTR            S0, [R1]
40C2C4:  BX              LR
