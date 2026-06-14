; =========================================================
; Game Engine Function: _Z17NvBuildLookatMatfPA4_fPKfS2_S2_
; Address            : 0x27900C - 0x27916C
; =========================================================

27900C:  VLDR            S0, [R2]
279010:  VLDR            S2, [R2,#4]
279014:  VLDR            S8, [R1,#4]
279018:  VLDR            S6, [R1]
27901C:  VSUB.F32        S8, S8, S2
279020:  VLDR            S4, [R2,#8]
279024:  VSUB.F32        S2, S6, S0
279028:  VLDR            S10, [R1,#8]
27902C:  MOVS            R2, #0
27902E:  VSUB.F32        S0, S10, S4
279032:  VMUL.F32        S4, S8, S8
279036:  VMUL.F32        S6, S2, S2
27903A:  VMUL.F32        S10, S0, S0
27903E:  VADD.F32        S4, S6, S4
279042:  VLDR            S6, [R3]
279046:  VADD.F32        S4, S4, S10
27904A:  VLDR            S10, [R3,#8]
27904E:  VSQRT.F32       S4, S4
279052:  VDIV.F32        S0, S0, S4
279056:  VDIV.F32        S2, S2, S4
27905A:  VDIV.F32        S4, S8, S4
27905E:  VLDR            S8, [R3,#4]
279062:  VMUL.F32        S12, S6, S0
279066:  VMUL.F32        S14, S10, S2
27906A:  STR             R2, [R0,#0xC]
27906C:  VMUL.F32        S1, S8, S0
279070:  STR             R2, [R0,#0x1C]
279072:  VMUL.F32        S10, S10, S4
279076:  STR             R2, [R0,#0x2C]
279078:  VMUL.F32        S8, S8, S2
27907C:  VMUL.F32        S6, S6, S4
279080:  VSUB.F32        S12, S14, S12
279084:  VSUB.F32        S10, S1, S10
279088:  VSUB.F32        S6, S6, S8
27908C:  VMUL.F32        S8, S12, S12
279090:  VMUL.F32        S14, S10, S10
279094:  VMUL.F32        S1, S6, S6
279098:  VADD.F32        S8, S14, S8
27909C:  VADD.F32        S8, S1, S8
2790A0:  VSQRT.F32       S8, S8
2790A4:  VDIV.F32        S6, S6, S8
2790A8:  VDIV.F32        S12, S12, S8
2790AC:  VDIV.F32        S8, S10, S8
2790B0:  VMUL.F32        S10, S0, S12
2790B4:  VSTR            S8, [R0]
2790B8:  VMUL.F32        S14, S4, S6
2790BC:  VMUL.F32        S1, S2, S6
2790C0:  VMUL.F32        S3, S0, S8
2790C4:  VMUL.F32        S5, S4, S8
2790C8:  VMUL.F32        S7, S2, S12
2790CC:  VSUB.F32        S10, S14, S10
2790D0:  VSUB.F32        S14, S3, S1
2790D4:  VSUB.F32        S1, S7, S5
2790D8:  VSTR            S10, [R0,#4]
2790DC:  VSTR            S2, [R0,#8]
2790E0:  VSTR            S12, [R0,#0x10]
2790E4:  VSTR            S14, [R0,#0x14]
2790E8:  VSTR            S4, [R0,#0x18]
2790EC:  VSTR            S6, [R0,#0x20]
2790F0:  VSTR            S1, [R0,#0x24]
2790F4:  VSTR            S0, [R0,#0x28]
2790F8:  VLDR            S3, [R1]
2790FC:  VLDR            S5, [R1,#4]
279100:  VMUL.F32        S8, S8, S3
279104:  VLDR            S7, [R1,#8]
279108:  VNMUL.F32       S12, S12, S5
27910C:  VMUL.F32        S6, S6, S7
279110:  VSUB.F32        S8, S12, S8
279114:  VSUB.F32        S6, S8, S6
279118:  VSTR            S6, [R0,#0x30]
27911C:  VLDR            S6, [R1]
279120:  VLDR            S8, [R1,#4]
279124:  VMUL.F32        S6, S10, S6
279128:  VLDR            S12, [R1,#8]
27912C:  VNMUL.F32       S8, S14, S8
279130:  VMUL.F32        S10, S1, S12
279134:  VSUB.F32        S6, S8, S6
279138:  VSUB.F32        S6, S6, S10
27913C:  VSTR            S6, [R0,#0x34]
279140:  VLDR            S6, [R1]
279144:  VLDR            S8, [R1,#4]
279148:  VMUL.F32        S2, S2, S6
27914C:  VLDR            S10, [R1,#8]
279150:  VNMUL.F32       S4, S4, S8
279154:  MOV.W           R1, #0x3F800000
279158:  VMUL.F32        S0, S0, S10
27915C:  STR             R1, [R0,#0x3C]
27915E:  VSUB.F32        S2, S4, S2
279162:  VSUB.F32        S0, S2, S0
279166:  VSTR            S0, [R0,#0x38]
27916A:  BX              LR
