; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser45ComputeEntityBoundingBoxSegmentPlanesUncachedEPK7CVectorRS0_PS0_Pf
; Address            : 0x4AEE34 - 0x4AEF7E
; =========================================================

4AEE34:  VLDR            S2, [R1,#4]
4AEE38:  MOV.W           R12, #0
4AEE3C:  VLDR            S6, [R0,#4]
4AEE40:  VLDR            S0, [R1]
4AEE44:  VSUB.F32        S2, S6, S2
4AEE48:  VLDR            S4, [R0]
4AEE4C:  STR.W           R12, [R2,#8]
4AEE50:  VSUB.F32        S0, S4, S0
4AEE54:  VNEG.F32        S4, S2
4AEE58:  VSTR            S4, [R2]
4AEE5C:  VSTR            S0, [R2,#4]
4AEE60:  VLDR            S4, [R0]
4AEE64:  VLDR            S6, [R0,#4]
4AEE68:  VMUL.F32        S2, S4, S2
4AEE6C:  VLDR            S8, [R0,#8]
4AEE70:  VMUL.F32        S0, S0, S6
4AEE74:  VLDR            S4, =0.0
4AEE78:  VMUL.F32        S6, S8, S4
4AEE7C:  VSUB.F32        S0, S0, S2
4AEE80:  VADD.F32        S0, S0, S6
4AEE84:  VNEG.F32        S0, S0
4AEE88:  VSTR            S0, [R3]
4AEE8C:  VLDR            S2, [R1,#4]
4AEE90:  VLDR            S8, [R0,#0x10]
4AEE94:  VLDR            S0, [R1]
4AEE98:  VSUB.F32        S2, S8, S2
4AEE9C:  VLDR            S6, [R0,#0xC]
4AEEA0:  STR.W           R12, [R2,#0x14]
4AEEA4:  VSUB.F32        S0, S6, S0
4AEEA8:  VNEG.F32        S6, S2
4AEEAC:  VSTR            S6, [R2,#0xC]
4AEEB0:  VSTR            S0, [R2,#0x10]
4AEEB4:  VLDR            S6, [R0,#0xC]
4AEEB8:  VLDR            S8, [R0,#0x10]
4AEEBC:  VMUL.F32        S2, S6, S2
4AEEC0:  VLDR            S10, [R0,#0x14]
4AEEC4:  VMUL.F32        S0, S0, S8
4AEEC8:  VMUL.F32        S6, S10, S4
4AEECC:  VSUB.F32        S0, S0, S2
4AEED0:  VADD.F32        S0, S0, S6
4AEED4:  VNEG.F32        S0, S0
4AEED8:  VSTR            S0, [R3,#4]
4AEEDC:  VLDR            S2, [R1,#4]
4AEEE0:  VLDR            S8, [R0,#0x1C]
4AEEE4:  VLDR            S0, [R1]
4AEEE8:  VSUB.F32        S2, S8, S2
4AEEEC:  VLDR            S6, [R0,#0x18]
4AEEF0:  STR.W           R12, [R2,#0x20]
4AEEF4:  VSUB.F32        S0, S6, S0
4AEEF8:  VNEG.F32        S6, S2
4AEEFC:  VSTR            S6, [R2,#0x18]
4AEF00:  VSTR            S0, [R2,#0x1C]
4AEF04:  VLDR            S6, [R0,#0x18]
4AEF08:  VLDR            S8, [R0,#0x1C]
4AEF0C:  VMUL.F32        S2, S6, S2
4AEF10:  VLDR            S10, [R0,#0x20]
4AEF14:  VMUL.F32        S0, S0, S8
4AEF18:  VMUL.F32        S6, S10, S4
4AEF1C:  VSUB.F32        S0, S0, S2
4AEF20:  VADD.F32        S0, S0, S6
4AEF24:  VNEG.F32        S0, S0
4AEF28:  VSTR            S0, [R3,#8]
4AEF2C:  VLDR            S2, [R1,#4]
4AEF30:  VLDR            S8, [R0,#0x28]
4AEF34:  VLDR            S0, [R1]
4AEF38:  VSUB.F32        S2, S8, S2
4AEF3C:  VLDR            S6, [R0,#0x24]
4AEF40:  STR.W           R12, [R2,#0x2C]
4AEF44:  VSUB.F32        S0, S6, S0
4AEF48:  VNEG.F32        S6, S2
4AEF4C:  VSTR            S6, [R2,#0x24]
4AEF50:  VSTR            S0, [R2,#0x28]
4AEF54:  VLDR            S6, [R0,#0x24]
4AEF58:  VLDR            S8, [R0,#0x28]
4AEF5C:  VMUL.F32        S2, S6, S2
4AEF60:  VLDR            S10, [R0,#0x2C]
4AEF64:  VMUL.F32        S0, S0, S8
4AEF68:  VMUL.F32        S4, S10, S4
4AEF6C:  VSUB.F32        S0, S0, S2
4AEF70:  VADD.F32        S0, S0, S4
4AEF74:  VNEG.F32        S0, S0
4AEF78:  VSTR            S0, [R3,#0xC]
4AEF7C:  BX              LR
