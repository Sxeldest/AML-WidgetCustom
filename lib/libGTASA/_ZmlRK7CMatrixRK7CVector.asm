; =========================================================
; Game Engine Function: _ZmlRK7CMatrixRK7CVector
; Address            : 0x450AEE - 0x450B80
; =========================================================

450AEE:  VLDR            S0, [R1]
450AF2:  VLDR            S8, [R2]
450AF6:  VLDR            S2, [R1,#0x10]
450AFA:  VLDR            S10, [R2,#4]
450AFE:  VMUL.F32        S0, S0, S8
450B02:  VLDR            S4, [R1,#0x20]
450B06:  VMUL.F32        S2, S2, S10
450B0A:  VLDR            S12, [R2,#8]
450B0E:  VLDR            S6, [R1,#0x30]
450B12:  VMUL.F32        S4, S4, S12
450B16:  VADD.F32        S0, S0, S2
450B1A:  VADD.F32        S0, S0, S4
450B1E:  VADD.F32        S0, S6, S0
450B22:  VSTR            S0, [R0]
450B26:  VLDR            S0, [R1,#4]
450B2A:  VLDR            S2, [R1,#0x14]
450B2E:  VMUL.F32        S0, S0, S8
450B32:  VLDR            S4, [R1,#0x24]
450B36:  VMUL.F32        S2, S2, S10
450B3A:  VLDR            S6, [R1,#0x34]
450B3E:  VMUL.F32        S4, S4, S12
450B42:  VADD.F32        S0, S0, S2
450B46:  VADD.F32        S0, S0, S4
450B4A:  VADD.F32        S0, S6, S0
450B4E:  VSTR            S0, [R0,#4]
450B52:  VLDR            S0, [R1,#8]
450B56:  VLDR            S2, [R1,#0x18]
450B5A:  VMUL.F32        S0, S0, S8
450B5E:  VLDR            S4, [R1,#0x28]
450B62:  VMUL.F32        S2, S2, S10
450B66:  VLDR            S6, [R1,#0x38]
450B6A:  VMUL.F32        S4, S4, S12
450B6E:  VADD.F32        S0, S0, S2
450B72:  VADD.F32        S0, S0, S4
450B76:  VADD.F32        S0, S6, S0
450B7A:  VSTR            S0, [R0,#8]
450B7E:  BX              LR
