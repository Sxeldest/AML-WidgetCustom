; =========================================================
; Game Engine Function: _ZN8CAESound15UpdateFrequencyEv
; Address            : 0x3A7D34 - 0x3A7D48
; =========================================================

3A7D34:  VLDR            S0, [R0,#0x20]
3A7D38:  VCMP.F32        S0, #0.0
3A7D3C:  VMRS            APSR_nzcv, FPSCR
3A7D40:  ITT EQ
3A7D42:  LDREQ           R1, [R0,#0x1C]
3A7D44:  STREQ           R1, [R0,#0x64]
3A7D46:  BX              LR
