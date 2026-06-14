; =========================================================
; Game Engine Function: sub_155D34
; Address            : 0x155D34 - 0x155D54
; =========================================================

155D34:  LDR             R0, [R0,#0x5C]
155D36:  CBZ             R0, loc_155D50
155D38:  LDR             R0, [R0]
155D3A:  VLDR            S0, =100.0
155D3E:  VLDR            S2, [R0,#0x14]
155D42:  VMUL.F32        S0, S2, S0
155D46:  VCVT.S32.F32    S0, S0
155D4A:  VMOV            R0, S0
155D4E:  BX              LR
155D50:  MOVS            R0, #0
155D52:  BX              LR
