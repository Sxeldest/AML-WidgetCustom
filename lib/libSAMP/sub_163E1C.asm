; =========================================================
; Game Engine Function: sub_163E1C
; Address            : 0x163E1C - 0x163E96
; =========================================================

163E1C:  VLDR            S6, [R1,#0x10]
163E20:  VMOV            S12, R3
163E24:  VLDR            S8, [R1,#0x14]
163E28:  VLDR            S10, [R1,#0x18]
163E2C:  VMUL.F32        S6, S6, S12
163E30:  VMUL.F32        S8, S8, S12
163E34:  VLDR            S14, [R1,#0x20]
163E38:  VMUL.F32        S10, S10, S12
163E3C:  VLDR            S12, [SP,#arg_0]
163E40:  VLDR            S1, [R1,#0x24]
163E44:  VLDR            S3, [R1,#0x28]
163E48:  VLDR            S0, [R1]
163E4C:  VMLA.F32        S6, S14, S12
163E50:  VLDR            S2, [R1,#4]
163E54:  VMLA.F32        S8, S1, S12
163E58:  VLDR            S4, [R1,#8]
163E5C:  VMLA.F32        S10, S3, S12
163E60:  VMOV            S12, R2
163E64:  VMLA.F32        S6, S0, S12
163E68:  VLDR            S0, [R1,#0x30]
163E6C:  VMLA.F32        S8, S2, S12
163E70:  VLDR            S2, [R1,#0x34]
163E74:  VMLA.F32        S10, S4, S12
163E78:  VLDR            S4, [R1,#0x38]
163E7C:  VADD.F32        S0, S0, S6
163E80:  VADD.F32        S2, S2, S8
163E84:  VADD.F32        S4, S4, S10
163E88:  VSTR            S0, [R0]
163E8C:  VSTR            S2, [R0,#4]
163E90:  VSTR            S4, [R0,#8]
163E94:  BX              LR
