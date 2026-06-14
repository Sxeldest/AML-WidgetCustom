; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation10SetBlendToEff
; Address            : 0x38A02A - 0x38A044
; =========================================================

38A02A:  VLDR            S0, [R0,#0x18]
38A02E:  VMOV            S2, R1
38A032:  VSUB.F32        S0, S2, S0
38A036:  VMOV            S2, R2
38A03A:  VMUL.F32        S0, S0, S2
38A03E:  VSTR            S0, [R0,#0x1C]
38A042:  BX              LR
