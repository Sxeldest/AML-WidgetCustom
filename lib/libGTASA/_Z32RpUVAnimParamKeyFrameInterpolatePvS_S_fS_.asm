; =========================================================
; Game Engine Function: _Z32RpUVAnimParamKeyFrameInterpolatePvS_S_fS_
; Address            : 0x1CA04C - 0x1CA120
; =========================================================

1CA04C:  VLDR            S0, [R1,#4]
1CA050:  VMOV            S8, R3
1CA054:  VLDR            S4, [R2,#4]
1CA058:  VLDR            S2, [R1,#8]
1CA05C:  VSUB.F32        S4, S4, S0
1CA060:  VLDR            S6, [R2,#8]
1CA064:  VSUB.F32        S0, S8, S0
1CA068:  VDIV.F32        S0, S0, S4
1CA06C:  VSUB.F32        S4, S6, S2
1CA070:  VLDR            S6, =-3.1416
1CA074:  VCMPE.F32       S4, S6
1CA078:  VMRS            APSR_nzcv, FPSCR
1CA07C:  BGE             loc_1CA084
1CA07E:  VLDR            S6, =6.2832
1CA082:  B               loc_1CA096
1CA084:  VLDR            S6, =3.1416
1CA088:  VCMPE.F32       S4, S6
1CA08C:  VMRS            APSR_nzcv, FPSCR
1CA090:  BLE             loc_1CA09A
1CA092:  VLDR            S6, =-6.2832
1CA096:  VADD.F32        S4, S4, S6
1CA09A:  VMUL.F32        S4, S0, S4
1CA09E:  VADD.F32        S2, S2, S4
1CA0A2:  VSTR            S2, [R0,#8]
1CA0A6:  VLDR            S2, [R1,#0xC]
1CA0AA:  VLDR            S4, [R2,#0xC]
1CA0AE:  VSUB.F32        S4, S4, S2
1CA0B2:  VMUL.F32        S4, S0, S4
1CA0B6:  VADD.F32        S2, S2, S4
1CA0BA:  VSTR            S2, [R0,#0xC]
1CA0BE:  VLDR            S2, [R1,#0x10]
1CA0C2:  VLDR            S4, [R2,#0x10]
1CA0C6:  VSUB.F32        S4, S4, S2
1CA0CA:  VMUL.F32        S4, S0, S4
1CA0CE:  VADD.F32        S2, S2, S4
1CA0D2:  VSTR            S2, [R0,#0x10]
1CA0D6:  VLDR            S2, [R1,#0x14]
1CA0DA:  VLDR            S4, [R2,#0x14]
1CA0DE:  VSUB.F32        S4, S4, S2
1CA0E2:  VMUL.F32        S4, S0, S4
1CA0E6:  VADD.F32        S2, S2, S4
1CA0EA:  VSTR            S2, [R0,#0x14]
1CA0EE:  VLDR            S2, [R1,#0x18]
1CA0F2:  VLDR            S4, [R2,#0x18]
1CA0F6:  VSUB.F32        S4, S4, S2
1CA0FA:  VMUL.F32        S4, S0, S4
1CA0FE:  VADD.F32        S2, S2, S4
1CA102:  VSTR            S2, [R0,#0x18]
1CA106:  VLDR            S2, [R1,#0x1C]
1CA10A:  VLDR            S4, [R2,#0x1C]
1CA10E:  VSUB.F32        S4, S4, S2
1CA112:  VMUL.F32        S0, S0, S4
1CA116:  VADD.F32        S0, S2, S0
1CA11A:  VSTR            S0, [R0,#0x1C]
1CA11E:  BX              LR
