; =========================================================
; Game Engine Function: _Z21NvQuatConvertTo3x3MatPA3_fPKf
; Address            : 0x279306 - 0x27939C
; =========================================================

279306:  VLDR            S0, [R1]
27930A:  VMOV.F32        S14, #1.0
27930E:  VLDR            S2, [R1,#4]
279312:  VADD.F32        S12, S0, S0
279316:  VLDR            S4, [R1,#8]
27931A:  VADD.F32        S8, S2, S2
27931E:  VLDR            S6, [R1,#0xC]
279322:  VADD.F32        S10, S4, S4
279326:  VMUL.F32        S0, S0, S12
27932A:  VMUL.F32        S1, S2, S8
27932E:  VMUL.F32        S5, S8, S6
279332:  VMUL.F32        S3, S10, S6
279336:  VMUL.F32        S2, S12, S2
27933A:  VMUL.F32        S7, S12, S4
27933E:  VMUL.F32        S6, S12, S6
279342:  VMUL.F32        S8, S8, S4
279346:  VMUL.F32        S4, S4, S10
27934A:  VSUB.F32        S10, S14, S1
27934E:  VSUB.F32        S0, S14, S0
279352:  VSUB.F32        S12, S2, S3
279356:  VADD.F32        S2, S2, S3
27935A:  VADD.F32        S14, S7, S5
27935E:  VSUB.F32        S3, S8, S6
279362:  VADD.F32        S6, S8, S6
279366:  VSUB.F32        S10, S10, S4
27936A:  VSUB.F32        S4, S0, S4
27936E:  VSUB.F32        S8, S7, S5
279372:  VSUB.F32        S0, S0, S1
279376:  VSTR            S10, [R0]
27937A:  VSTR            S12, [R0,#4]
27937E:  VSTR            S14, [R0,#8]
279382:  VSTR            S2, [R0,#0xC]
279386:  VSTR            S4, [R0,#0x10]
27938A:  VSTR            S3, [R0,#0x14]
27938E:  VSTR            S8, [R0,#0x18]
279392:  VSTR            S6, [R0,#0x1C]
279396:  VSTR            S0, [R0,#0x20]
27939A:  BX              LR
