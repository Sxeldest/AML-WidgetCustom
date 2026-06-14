; =========================================================
; Game Engine Function: sub_17D238
; Address            : 0x17D238 - 0x17D2F2
; =========================================================

17D238:  CMP             R1, #0
17D23A:  BEQ             locret_17D2F0
17D23C:  VLDR            S2, [R0,#4]
17D240:  VLDR            S4, [R0,#8]
17D244:  VNMUL.F32       S10, S2, S2
17D248:  VLDR            S0, [R0]
17D24C:  VMUL.F32        S8, S4, S4
17D250:  VLDR            S6, [R0,#0xC]
17D254:  VMUL.F32        S12, S2, S2
17D258:  VMUL.F32        S14, S0, S6
17D25C:  VMUL.F32        S1, S2, S4
17D260:  VMUL.F32        S3, S0, S4
17D264:  VMUL.F32        S5, S2, S6
17D268:  VMUL.F32        S4, S4, S6
17D26C:  VMUL.F32        S2, S0, S2
17D270:  VMUL.F32        S6, S6, S6
17D274:  VSUB.F32        S10, S10, S8
17D278:  VSUB.F32        S7, S8, S12
17D27C:  VSUB.F32        S8, S12, S8
17D280:  VADD.F32        S9, S1, S14
17D284:  VSUB.F32        S12, S5, S3
17D288:  VSUB.F32        S14, S1, S14
17D28C:  VADD.F32        S1, S2, S4
17D290:  VSUB.F32        S2, S4, S2
17D294:  VADD.F32        S3, S3, S5
17D298:  VADD.F32        S4, S10, S6
17D29C:  VMUL.F32        S0, S0, S0
17D2A0:  VSUB.F32        S10, S7, S6
17D2A4:  VSUB.F32        S6, S8, S6
17D2A8:  VADD.F32        S8, S12, S12
17D2AC:  VADD.F32        S12, S14, S14
17D2B0:  VADD.F32        S14, S1, S1
17D2B4:  VADD.F32        S5, S9, S9
17D2B8:  VADD.F32        S1, S3, S3
17D2BC:  VADD.F32        S2, S2, S2
17D2C0:  VADD.F32        S4, S0, S4
17D2C4:  VADD.F32        S10, S0, S10
17D2C8:  VSTR            S8, [R1,#0x20]
17D2CC:  VADD.F32        S0, S0, S6
17D2D0:  VSTR            S12, [R1,#4]
17D2D4:  VSTR            S14, [R1,#0x24]
17D2D8:  VSTR            S5, [R1,#0x10]
17D2DC:  VSTR            S1, [R1,#8]
17D2E0:  VSTR            S2, [R1,#0x18]
17D2E4:  VSTR            S4, [R1,#0x28]
17D2E8:  VSTR            S10, [R1,#0x14]
17D2EC:  VSTR            S0, [R1]
17D2F0:  BX              LR
