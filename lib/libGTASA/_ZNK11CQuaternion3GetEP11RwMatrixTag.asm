; =========================================================
; Game Engine Function: _ZNK11CQuaternion3GetEP11RwMatrixTag
; Address            : 0x450296 - 0x450330
; =========================================================

450296:  VLDR            S0, [R0]
45029A:  VLDR            S2, [R0,#4]
45029E:  VLDR            S4, [R0,#8]
4502A2:  VADD.F32        S12, S0, S0
4502A6:  VADD.F32        S10, S2, S2
4502AA:  VLDR            S6, [R0,#0xC]
4502AE:  VADD.F32        S8, S4, S4
4502B2:  VMUL.F32        S5, S0, S12
4502B6:  VMUL.F32        S14, S2, S10
4502BA:  VMUL.F32        S4, S4, S8
4502BE:  VMUL.F32        S3, S0, S10
4502C2:  VMUL.F32        S1, S6, S8
4502C6:  VMUL.F32        S10, S10, S6
4502CA:  VMUL.F32        S6, S12, S6
4502CE:  VMUL.F32        S0, S0, S8
4502D2:  VMUL.F32        S2, S2, S8
4502D6:  VADD.F32        S12, S14, S4
4502DA:  VMOV.F32        S8, #1.0
4502DE:  VADD.F32        S4, S5, S4
4502E2:  VADD.F32        S14, S5, S14
4502E6:  VSUB.F32        S7, S3, S1
4502EA:  VADD.F32        S5, S0, S10
4502EE:  VADD.F32        S1, S3, S1
4502F2:  VSUB.F32        S3, S2, S6
4502F6:  VADD.F32        S2, S2, S6
4502FA:  VSUB.F32        S6, S8, S12
4502FE:  VSUB.F32        S4, S8, S4
450302:  VSUB.F32        S0, S0, S10
450306:  VSUB.F32        S8, S8, S14
45030A:  VSTR            S6, [R1]
45030E:  VSTR            S1, [R1,#4]
450312:  VSTR            S0, [R1,#8]
450316:  VSTR            S7, [R1,#0x10]
45031A:  VSTR            S4, [R1,#0x14]
45031E:  VSTR            S2, [R1,#0x18]
450322:  VSTR            S5, [R1,#0x20]
450326:  VSTR            S3, [R1,#0x24]
45032A:  VSTR            S8, [R1,#0x28]
45032E:  BX              LR
