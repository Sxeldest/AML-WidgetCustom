; =========================================================
; Game Engine Function: sub_108F30
; Address            : 0x108F30 - 0x108FB2
; =========================================================

108F30:  VLDR            S6, [R1,#0x10]
108F34:  VLDR            S12, [R2,#4]
108F38:  VLDR            S14, [R2,#8]
108F3C:  VMUL.F32        S6, S6, S12
108F40:  VLDR            S1, [R1,#0x20]
108F44:  VLDR            S0, [R1]
108F48:  VLDR            S10, [R2]
108F4C:  VLDR            S8, [R1,#0x14]
108F50:  VLDR            S3, [R1,#0x24]
108F54:  VMUL.F32        S8, S12, S8
108F58:  VLDR            S2, [R1,#4]
108F5C:  VMLA.F32        S6, S1, S14
108F60:  VLDR            S4, [R1,#8]
108F64:  VMLA.F32        S8, S3, S14
108F68:  VMLA.F32        S6, S0, S10
108F6C:  VLDR            S0, [R1,#0x30]
108F70:  VADD.F32        S0, S6, S0
108F74:  VLDR            S6, [R1,#0x18]
108F78:  VSTR            S0, [R0]
108F7C:  VLDR            S0, [R2]
108F80:  VMLA.F32        S8, S2, S0
108F84:  VLDR            S2, [R1,#0x34]
108F88:  VADD.F32        S2, S8, S2
108F8C:  VSTR            S2, [R0,#4]
108F90:  VLDR            S2, [R2,#4]
108F94:  VMUL.F32        S2, S6, S2
108F98:  VLDR            S6, [R1,#0x28]
108F9C:  VMLA.F32        S2, S6, S14
108FA0:  VMLA.F32        S2, S4, S0
108FA4:  VLDR            S0, [R1,#0x38]
108FA8:  VADD.F32        S0, S0, S2
108FAC:  VSTR            S0, [R0,#8]
108FB0:  BX              LR
