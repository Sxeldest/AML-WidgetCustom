; =========================================================
; Game Engine Function: _Z11Multiply3x3RK7CVectorRK7CMatrix
; Address            : 0x450938 - 0x4509B2
; =========================================================

450938:  VLDR            S0, [R1]
45093C:  VLDR            S6, [R2]
450940:  VLDR            S2, [R1,#4]
450944:  VLDR            S8, [R2,#4]
450948:  VMUL.F32        S6, S6, S0
45094C:  VLDR            S4, [R1,#8]
450950:  VMUL.F32        S8, S8, S2
450954:  VLDR            S10, [R2,#8]
450958:  VMUL.F32        S10, S10, S4
45095C:  VADD.F32        S6, S6, S8
450960:  VADD.F32        S6, S6, S10
450964:  VSTR            S6, [R0]
450968:  VLDR            S6, [R2,#0x10]
45096C:  VLDR            S8, [R2,#0x14]
450970:  VMUL.F32        S6, S6, S0
450974:  VLDR            S10, [R2,#0x18]
450978:  VMUL.F32        S8, S8, S2
45097C:  VMUL.F32        S10, S10, S4
450980:  VADD.F32        S6, S6, S8
450984:  VADD.F32        S6, S6, S10
450988:  VSTR            S6, [R0,#4]
45098C:  VLDR            S6, [R2,#0x20]
450990:  VLDR            S8, [R2,#0x24]
450994:  VMUL.F32        S0, S6, S0
450998:  VLDR            S10, [R2,#0x28]
45099C:  VMUL.F32        S2, S8, S2
4509A0:  VMUL.F32        S4, S10, S4
4509A4:  VADD.F32        S0, S0, S2
4509A8:  VADD.F32        S0, S0, S4
4509AC:  VSTR            S0, [R0,#8]
4509B0:  BX              LR
