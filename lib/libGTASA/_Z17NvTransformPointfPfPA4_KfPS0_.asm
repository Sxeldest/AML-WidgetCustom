; =========================================================
; Game Engine Function: _Z17NvTransformPointfPfPA4_KfPS0_
; Address            : 0x27736E - 0x277454
; =========================================================

27736E:  VLDR            S2, [R1,#0xC]
277372:  VLDR            S8, [R2]
277376:  VLDR            S6, [R1,#0x1C]
27737A:  VLDR            S10, [R2,#4]
27737E:  VMUL.F32        S2, S2, S8
277382:  VLDR            S12, [R2,#8]
277386:  VMUL.F32        S6, S6, S10
27738A:  VLDR            S14, [R1,#0x2C]
27738E:  VLDR            S0, [R1]
277392:  VMUL.F32        S14, S14, S12
277396:  VLDR            S4, [R1,#0x10]
27739A:  VMUL.F32        S0, S8, S0
27739E:  VMUL.F32        S4, S10, S4
2773A2:  VADD.F32        S2, S2, S6
2773A6:  VLDR            S6, [R1,#0x3C]
2773AA:  VADD.F32        S0, S0, S4
2773AE:  VLDR            S4, [R1,#0x30]
2773B2:  VADD.F32        S2, S2, S14
2773B6:  VMOV.F32        S14, #1.0
2773BA:  VADD.F32        S2, S6, S2
2773BE:  VLDR            S6, [R1,#0x20]
2773C2:  VMUL.F32        S6, S12, S6
2773C6:  VDIV.F32        S2, S14, S2
2773CA:  VADD.F32        S0, S0, S6
2773CE:  VMUL.F32        S4, S2, S4
2773D2:  VADD.F32        S0, S0, S4
2773D6:  VSTR            S0, [R0]
2773DA:  VLDR            S0, [R1,#4]
2773DE:  VLDR            S10, [R2]
2773E2:  VLDR            S4, [R1,#0x14]
2773E6:  VLDR            S12, [R2,#4]
2773EA:  VMUL.F32        S0, S0, S10
2773EE:  VLDR            S6, [R1,#0x24]
2773F2:  VMUL.F32        S4, S4, S12
2773F6:  VLDR            S14, [R2,#8]
2773FA:  VLDR            S8, [R1,#0x34]
2773FE:  VMUL.F32        S6, S6, S14
277402:  VADD.F32        S0, S0, S4
277406:  VMUL.F32        S4, S2, S8
27740A:  VADD.F32        S0, S0, S6
27740E:  VADD.F32        S0, S0, S4
277412:  VSTR            S0, [R0,#4]
277416:  VLDR            S0, [R1,#8]
27741A:  VLDR            S10, [R2]
27741E:  VLDR            S4, [R1,#0x18]
277422:  VLDR            S12, [R2,#4]
277426:  VMUL.F32        S0, S0, S10
27742A:  VLDR            S6, [R1,#0x28]
27742E:  VMUL.F32        S4, S4, S12
277432:  VLDR            S14, [R2,#8]
277436:  VLDR            S8, [R1,#0x38]
27743A:  VMUL.F32        S6, S6, S14
27743E:  VMUL.F32        S2, S2, S8
277442:  VADD.F32        S0, S0, S4
277446:  VADD.F32        S0, S0, S6
27744A:  VADD.F32        S0, S0, S2
27744E:  VSTR            S0, [R0,#8]
277452:  BX              LR
