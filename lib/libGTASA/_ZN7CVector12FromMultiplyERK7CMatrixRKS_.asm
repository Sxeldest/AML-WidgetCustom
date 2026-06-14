; =========================================================
; Game Engine Function: _ZN7CVector12FromMultiplyERK7CMatrixRKS_
; Address            : 0x4509B2 - 0x450A5C
; =========================================================

4509B2:  VLDR            S0, [R1]
4509B6:  VLDR            S8, [R2]
4509BA:  VLDR            S2, [R1,#0x10]
4509BE:  VMUL.F32        S0, S0, S8
4509C2:  VLDR            S6, [R1,#0x30]
4509C6:  VLDR            S10, [R2,#4]
4509CA:  VLDR            S4, [R1,#0x20]
4509CE:  VMUL.F32        S2, S2, S10
4509D2:  VLDR            S12, [R2,#8]
4509D6:  VMUL.F32        S4, S4, S12
4509DA:  VADD.F32        S0, S6, S0
4509DE:  VADD.F32        S0, S0, S2
4509E2:  VADD.F32        S0, S0, S4
4509E6:  VSTR            S0, [R0]
4509EA:  VLDR            S0, [R1,#4]
4509EE:  VLDR            S8, [R2]
4509F2:  VLDR            S2, [R1,#0x14]
4509F6:  VMUL.F32        S0, S0, S8
4509FA:  VLDR            S6, [R1,#0x34]
4509FE:  VLDR            S10, [R2,#4]
450A02:  VLDR            S4, [R1,#0x24]
450A06:  VMUL.F32        S2, S2, S10
450A0A:  VLDR            S12, [R2,#8]
450A0E:  VMUL.F32        S4, S4, S12
450A12:  VADD.F32        S0, S6, S0
450A16:  VADD.F32        S0, S0, S2
450A1A:  VADD.F32        S0, S0, S4
450A1E:  VSTR            S0, [R0,#4]
450A22:  VLDR            S0, [R1,#8]
450A26:  VLDR            S8, [R2]
450A2A:  VLDR            S2, [R1,#0x18]
450A2E:  VMUL.F32        S0, S0, S8
450A32:  VLDR            S6, [R1,#0x38]
450A36:  VLDR            S10, [R2,#4]
450A3A:  VLDR            S4, [R1,#0x28]
450A3E:  VMUL.F32        S2, S2, S10
450A42:  VLDR            S12, [R2,#8]
450A46:  VMUL.F32        S4, S4, S12
450A4A:  VADD.F32        S0, S6, S0
450A4E:  VADD.F32        S0, S0, S2
450A52:  VADD.F32        S0, S0, S4
450A56:  VSTR            S0, [R0,#8]
450A5A:  BX              LR
