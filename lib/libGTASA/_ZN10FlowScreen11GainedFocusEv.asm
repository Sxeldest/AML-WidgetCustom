; =========================================================
; Game Engine Function: _ZN10FlowScreen11GainedFocusEv
; Address            : 0x29D144 - 0x29D152
; =========================================================

29D144:  VLDR            S0, [R0,#0x30]
29D148:  VCVT.F32.S32    S0, S0
29D14C:  VSTR            S0, [R0,#0x34]
29D150:  BX              LR
