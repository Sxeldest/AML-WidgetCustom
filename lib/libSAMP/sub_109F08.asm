; =========================================================
; Game Engine Function: sub_109F08
; Address            : 0x109F08 - 0x109F20
; =========================================================

109F08:  LDR             R0, [R0,#0xC]
109F0A:  CMP             R0, #0
109F0C:  ITTE NE
109F0E:  LDRNE.W         R0, [R0,#0x5B8]
109F12:  VMOVNE          S0, R0
109F16:  VLDREQ          S0, =0.0
109F1A:  VMOV            R0, S0
109F1E:  BX              LR
