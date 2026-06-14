; =========================================================
; Game Engine Function: _Z23RpHAnimKeyFrameMulRecipPvS_
; Address            : 0x1C4076 - 0x1C4192
; =========================================================

1C4076:  VLDR            S8, [R1,#8]
1C407A:  VLDR            S12, [R1,#0xC]
1C407E:  VMUL.F32        S2, S8, S8
1C4082:  VLDR            S14, [R1,#0x10]
1C4086:  VMUL.F32        S0, S12, S12
1C408A:  VLDR            S10, [R1,#0x14]
1C408E:  VMUL.F32        S4, S14, S14
1C4092:  VADD.F32        S0, S2, S0
1C4096:  VMUL.F32        S2, S10, S10
1C409A:  VADD.F32        S0, S0, S4
1C409E:  VADD.F32        S1, S2, S0
1C40A2:  VCMPE.F32       S1, #0.0
1C40A6:  VMRS            APSR_nzcv, FPSCR
1C40AA:  BLE             loc_1C40C4
1C40AC:  VMOV.F32        S0, #1.0
1C40B0:  VDIV.F32        S6, S0, S1
1C40B4:  VNMUL.F32       S0, S6, S14
1C40B8:  VNMUL.F32       S2, S6, S12
1C40BC:  VNMUL.F32       S4, S6, S8
1C40C0:  VMUL.F32        S6, S10, S6
1C40C4:  PUSH            {R7,LR}
1C40C6:  MOV             R7, SP
1C40C8:  VPUSH           {D8}
1C40CC:  VLDR            S8, [R0,#8]
1C40D0:  VLDR            S10, [R0,#0xC]
1C40D4:  VLDR            S12, [R0,#0x10]
1C40D8:  VMUL.F32        S3, S4, S8
1C40DC:  VMUL.F32        S1, S2, S10
1C40E0:  VLDR            S14, [R0,#0x14]
1C40E4:  VMUL.F32        S5, S0, S10
1C40E8:  VMUL.F32        S15, S4, S10
1C40EC:  VMUL.F32        S9, S4, S12
1C40F0:  VMUL.F32        S7, S2, S12
1C40F4:  VMUL.F32        S13, S2, S8
1C40F8:  VMUL.F32        S11, S0, S8
1C40FC:  VMUL.F32        S16, S0, S12
1C4100:  VADD.F32        S1, S3, S1
1C4104:  VMUL.F32        S8, S6, S8
1C4108:  VMUL.F32        S10, S6, S10
1C410C:  VSUB.F32        S3, S7, S5
1C4110:  VMUL.F32        S12, S6, S12
1C4114:  VSUB.F32        S5, S11, S9
1C4118:  VSUB.F32        S7, S15, S13
1C411C:  VMUL.F32        S6, S6, S14
1C4120:  VADD.F32        S1, S1, S16
1C4124:  VMUL.F32        S4, S4, S14
1C4128:  VADD.F32        S8, S8, S3
1C412C:  VMUL.F32        S2, S2, S14
1C4130:  VADD.F32        S10, S10, S5
1C4134:  VMUL.F32        S0, S0, S14
1C4138:  VADD.F32        S12, S12, S7
1C413C:  VSUB.F32        S6, S6, S1
1C4140:  VADD.F32        S4, S4, S8
1C4144:  VLDR            S8, [R0,#0x18]
1C4148:  VADD.F32        S2, S2, S10
1C414C:  VADD.F32        S0, S0, S12
1C4150:  VSTR            S6, [R0,#0x14]
1C4154:  VSTR            S4, [R0,#8]
1C4158:  VSTR            S2, [R0,#0xC]
1C415C:  VSTR            S0, [R0,#0x10]
1C4160:  VLDR            S0, [R1,#0x18]
1C4164:  VLDR            S2, [R0,#0x1C]
1C4168:  VSUB.F32        S0, S8, S0
1C416C:  VSTR            S0, [R0,#0x18]
1C4170:  VLDR            S0, [R1,#0x1C]
1C4174:  VSUB.F32        S0, S2, S0
1C4178:  VLDR            S2, [R0,#0x20]
1C417C:  VSTR            S0, [R0,#0x1C]
1C4180:  VLDR            S0, [R1,#0x20]
1C4184:  VSUB.F32        S0, S2, S0
1C4188:  VSTR            S0, [R0,#0x20]
1C418C:  VPOP            {D8}
1C4190:  POP             {R7,PC}
