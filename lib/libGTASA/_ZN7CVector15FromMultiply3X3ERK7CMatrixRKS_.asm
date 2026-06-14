; =========================================================
; Game Engine Function: _ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_
; Address            : 0x450A5C - 0x450AEE
; =========================================================

450A5C:  VLDR            S0, [R2]
450A60:  VLDR            S6, [R1]
450A64:  VLDR            S2, [R2,#4]
450A68:  VLDR            S8, [R1,#0x10]
450A6C:  VMUL.F32        S0, S6, S0
450A70:  VLDR            S4, [R2,#8]
450A74:  VMUL.F32        S2, S8, S2
450A78:  VLDR            S10, [R1,#0x20]
450A7C:  VMUL.F32        S4, S10, S4
450A80:  VADD.F32        S0, S0, S2
450A84:  VADD.F32        S0, S0, S4
450A88:  VSTR            S0, [R0]
450A8C:  VLDR            S0, [R2]
450A90:  VLDR            S6, [R1,#4]
450A94:  VLDR            S2, [R2,#4]
450A98:  VLDR            S8, [R1,#0x14]
450A9C:  VMUL.F32        S0, S6, S0
450AA0:  VLDR            S4, [R2,#8]
450AA4:  VMUL.F32        S2, S8, S2
450AA8:  VLDR            S10, [R1,#0x24]
450AAC:  VMUL.F32        S4, S10, S4
450AB0:  VADD.F32        S0, S0, S2
450AB4:  VADD.F32        S0, S0, S4
450AB8:  VSTR            S0, [R0,#4]
450ABC:  VLDR            S0, [R2]
450AC0:  VLDR            S6, [R1,#8]
450AC4:  VLDR            S2, [R2,#4]
450AC8:  VLDR            S8, [R1,#0x18]
450ACC:  VMUL.F32        S0, S6, S0
450AD0:  VLDR            S4, [R2,#8]
450AD4:  VMUL.F32        S2, S8, S2
450AD8:  VLDR            S10, [R1,#0x28]
450ADC:  VMUL.F32        S4, S10, S4
450AE0:  VADD.F32        S0, S0, S2
450AE4:  VADD.F32        S0, S0, S4
450AE8:  VSTR            S0, [R0,#8]
450AEC:  BX              LR
