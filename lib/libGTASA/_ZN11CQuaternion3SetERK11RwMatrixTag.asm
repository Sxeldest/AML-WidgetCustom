; =========================================================
; Game Engine Function: _ZN11CQuaternion3SetERK11RwMatrixTag
; Address            : 0x44FFB0 - 0x450160
; =========================================================

44FFB0:  VLDR            S2, [R1]
44FFB4:  VLDR            S4, [R1,#0x14]
44FFB8:  VLDR            S0, [R1,#0x28]
44FFBC:  VADD.F32        S6, S2, S4
44FFC0:  VADD.F32        S6, S6, S0
44FFC4:  VCMPE.F32       S6, #0.0
44FFC8:  VMRS            APSR_nzcv, FPSCR
44FFCC:  BGE             loc_45005A
44FFCE:  VSUB.F32        S6, S2, S4
44FFD2:  VSUB.F32        S6, S6, S0
44FFD6:  VCMPE.F32       S6, #0.0
44FFDA:  VMRS            APSR_nzcv, FPSCR
44FFDE:  BGE             loc_4500AC
44FFE0:  VSUB.F32        S6, S4, S2
44FFE4:  VSUB.F32        S6, S6, S0
44FFE8:  VCMPE.F32       S6, #0.0
44FFEC:  VMRS            APSR_nzcv, FPSCR
44FFF0:  BGE.W           loc_450106
44FFF4:  VNEG.F32        S2, S2
44FFF8:  VSUB.F32        S2, S2, S4
44FFFC:  VMOV.F32        S4, #1.0
450000:  VADD.F32        S0, S2, S0
450004:  VMOV.F32        S2, #0.5
450008:  VADD.F32        S0, S0, S4
45000C:  VSQRT.F32       S0, S0
450010:  VDIV.F32        S4, S2, S0
450014:  VMUL.F32        S0, S0, S2
450018:  VSTR            S0, [R0,#8]
45001C:  VLDR            S0, [R1,#4]
450020:  VLDR            S2, [R1,#0x10]
450024:  VSUB.F32        S0, S0, S2
450028:  VMUL.F32        S0, S4, S0
45002C:  VSTR            S0, [R0,#0xC]
450030:  VLDR            S0, [R1,#8]
450034:  VLDR            S2, [R1,#0x20]
450038:  VADD.F32        S0, S2, S0
45003C:  VMUL.F32        S0, S4, S0
450040:  VSTR            S0, [R0]
450044:  VLDR            S0, [R1,#0x18]
450048:  VLDR            S2, [R1,#0x24]
45004C:  VADD.F32        S0, S2, S0
450050:  VMUL.F32        S0, S4, S0
450054:  VSTR            S0, [R0,#4]
450058:  BX              LR
45005A:  VMOV.F32        S0, #1.0
45005E:  VMOV.F32        S2, #0.5
450062:  VADD.F32        S0, S6, S0
450066:  VSQRT.F32       S0, S0
45006A:  VDIV.F32        S4, S2, S0
45006E:  VMUL.F32        S0, S0, S2
450072:  VSTR            S0, [R0,#0xC]
450076:  VLDR            S0, [R1,#0x18]
45007A:  VLDR            S2, [R1,#0x24]
45007E:  VSUB.F32        S0, S0, S2
450082:  VMUL.F32        S0, S4, S0
450086:  VSTR            S0, [R0]
45008A:  VLDR            S0, [R1,#8]
45008E:  VLDR            S2, [R1,#0x20]
450092:  VSUB.F32        S0, S2, S0
450096:  VMUL.F32        S0, S4, S0
45009A:  VSTR            S0, [R0,#4]
45009E:  VLDR            S0, [R1,#4]
4500A2:  VLDR            S2, [R1,#0x10]
4500A6:  VSUB.F32        S0, S0, S2
4500AA:  B               loc_450156
4500AC:  VMOV.F32        S0, #1.0
4500B0:  VMOV.F32        S2, #0.5
4500B4:  VADD.F32        S0, S6, S0
4500B8:  VSQRT.F32       S0, S0
4500BC:  VDIV.F32        S4, S2, S0
4500C0:  VMUL.F32        S0, S0, S2
4500C4:  VSTR            S0, [R0]
4500C8:  VLDR            S0, [R1,#4]
4500CC:  VLDR            S2, [R1,#0x10]
4500D0:  VADD.F32        S0, S2, S0
4500D4:  VMUL.F32        S0, S4, S0
4500D8:  VSTR            S0, [R0,#4]
4500DC:  VLDR            S0, [R1,#8]
4500E0:  VLDR            S2, [R1,#0x20]
4500E4:  VADD.F32        S0, S2, S0
4500E8:  VMUL.F32        S0, S4, S0
4500EC:  VSTR            S0, [R0,#8]
4500F0:  VLDR            S0, [R1,#0x18]
4500F4:  VLDR            S2, [R1,#0x24]
4500F8:  VSUB.F32        S0, S0, S2
4500FC:  VMUL.F32        S0, S4, S0
450100:  VSTR            S0, [R0,#0xC]
450104:  BX              LR
450106:  VMOV.F32        S0, #1.0
45010A:  VMOV.F32        S2, #0.5
45010E:  VADD.F32        S0, S6, S0
450112:  VSQRT.F32       S0, S0
450116:  VDIV.F32        S4, S2, S0
45011A:  VMUL.F32        S0, S0, S2
45011E:  VSTR            S0, [R0,#4]
450122:  VLDR            S0, [R1,#8]
450126:  VLDR            S2, [R1,#0x20]
45012A:  VSUB.F32        S0, S2, S0
45012E:  VMUL.F32        S0, S4, S0
450132:  VSTR            S0, [R0,#0xC]
450136:  VLDR            S0, [R1,#4]
45013A:  VLDR            S2, [R1,#0x10]
45013E:  VSUB.F32        S0, S2, S0
450142:  VMUL.F32        S0, S4, S0
450146:  VSTR            S0, [R0]
45014A:  VLDR            S0, [R1,#0x18]
45014E:  VLDR            S2, [R1,#0x24]
450152:  VADD.F32        S0, S2, S0
450156:  VMUL.F32        S0, S4, S0
45015A:  VSTR            S0, [R0,#8]
45015E:  BX              LR
