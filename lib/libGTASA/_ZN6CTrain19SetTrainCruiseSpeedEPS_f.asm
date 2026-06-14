; =========================================================
; Game Engine Function: _ZN6CTrain19SetTrainCruiseSpeedEPS_f
; Address            : 0x57FEC8 - 0x57FEDA
; =========================================================

57FEC8:  VMOV            S0, R1
57FECC:  VCVT.U32.F32    S0, S0
57FED0:  VMOV            R1, S0
57FED4:  STRB.W          R1, [R0,#0x3D4]
57FED8:  BX              LR
