; =========================================================
; Game Engine Function: _Z20NvTransformHomPointfPfPA4_KfPS0_
; Address            : 0x277454 - 0x277556
; =========================================================

277454:  VLDR            S0, [R2]
277458:  VLDR            S8, [R1]
27745C:  VLDR            S2, [R2,#4]
277460:  VLDR            S10, [R1,#0x10]
277464:  VMUL.F32        S0, S8, S0
277468:  VLDR            S4, [R2,#8]
27746C:  VMUL.F32        S2, S10, S2
277470:  VLDR            S12, [R1,#0x20]
277474:  VLDR            S6, [R2,#0xC]
277478:  VMUL.F32        S4, S12, S4
27747C:  VLDR            S14, [R1,#0x30]
277480:  VADD.F32        S0, S0, S2
277484:  VMUL.F32        S2, S14, S6
277488:  VADD.F32        S0, S0, S4
27748C:  VADD.F32        S0, S0, S2
277490:  VSTR            S0, [R0]
277494:  VLDR            S0, [R2]
277498:  VLDR            S8, [R1,#4]
27749C:  VLDR            S2, [R2,#4]
2774A0:  VLDR            S10, [R1,#0x14]
2774A4:  VMUL.F32        S0, S8, S0
2774A8:  VLDR            S4, [R2,#8]
2774AC:  VMUL.F32        S2, S10, S2
2774B0:  VLDR            S12, [R1,#0x24]
2774B4:  VLDR            S6, [R2,#0xC]
2774B8:  VMUL.F32        S4, S12, S4
2774BC:  VLDR            S14, [R1,#0x34]
2774C0:  VADD.F32        S0, S0, S2
2774C4:  VMUL.F32        S2, S14, S6
2774C8:  VADD.F32        S0, S0, S4
2774CC:  VADD.F32        S0, S0, S2
2774D0:  VSTR            S0, [R0,#4]
2774D4:  VLDR            S0, [R2]
2774D8:  VLDR            S8, [R1,#8]
2774DC:  VLDR            S2, [R2,#4]
2774E0:  VLDR            S10, [R1,#0x18]
2774E4:  VMUL.F32        S0, S8, S0
2774E8:  VLDR            S4, [R2,#8]
2774EC:  VMUL.F32        S2, S10, S2
2774F0:  VLDR            S12, [R1,#0x28]
2774F4:  VLDR            S6, [R2,#0xC]
2774F8:  VMUL.F32        S4, S12, S4
2774FC:  VLDR            S14, [R1,#0x38]
277500:  VADD.F32        S0, S0, S2
277504:  VMUL.F32        S2, S14, S6
277508:  VADD.F32        S0, S0, S4
27750C:  VADD.F32        S0, S0, S2
277510:  VSTR            S0, [R0,#8]
277514:  VLDR            S0, [R2]
277518:  VLDR            S8, [R1,#0xC]
27751C:  VLDR            S2, [R2,#4]
277520:  VLDR            S10, [R1,#0x1C]
277524:  VMUL.F32        S0, S8, S0
277528:  VLDR            S4, [R2,#8]
27752C:  VMUL.F32        S2, S10, S2
277530:  VLDR            S12, [R1,#0x2C]
277534:  VLDR            S6, [R2,#0xC]
277538:  VMUL.F32        S4, S12, S4
27753C:  VLDR            S14, [R1,#0x3C]
277540:  VADD.F32        S0, S0, S2
277544:  VMUL.F32        S2, S14, S6
277548:  VADD.F32        S0, S0, S4
27754C:  VADD.F32        S0, S0, S2
277550:  VSTR            S0, [R0,#0xC]
277554:  BX              LR
