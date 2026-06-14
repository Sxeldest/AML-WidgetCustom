; =========================================================
; Game Engine Function: _ZN6CTrain13SetTrainSpeedEPS_f
; Address            : 0x57FE9C - 0x57FEC2
; =========================================================

57FE9C:  VMOV            S2, R1
57FEA0:  VLDR            S0, =50.0
57FEA4:  LDRB.W          R1, [R0,#0x5CC]
57FEA8:  ADD.W           R0, R0, #0x5B8
57FEAC:  VDIV.F32        S0, S2, S0
57FEB0:  LSLS            R1, R1, #0x19
57FEB2:  VSTR            S0, [R0]
57FEB6:  ITT PL
57FEB8:  VNEGPL.F32      S0, S0
57FEBC:  VSTRPL          S0, [R0]
57FEC0:  BX              LR
