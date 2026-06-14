; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxCentreUncachedEfPK7CVectorRS0_
; Address            : 0x4AE43C - 0x4AE4BA
; =========================================================

4AE43C:  MOVS            R3, #0
4AE43E:  VLDR            S0, =0.0
4AE442:  STRD.W          R3, R3, [R2]
4AE446:  VMOV.F32        S6, #0.25
4AE44A:  STR             R0, [R2,#8]
4AE44C:  VLDR            S2, [R1]
4AE450:  VADD.F32        S2, S2, S0
4AE454:  VSTR            S2, [R2]
4AE458:  VLDR            S4, [R1,#4]
4AE45C:  VADD.F32        S0, S4, S0
4AE460:  VSTR            S0, [R2,#4]
4AE464:  VLDR            S4, [R1,#0xC]
4AE468:  VADD.F32        S2, S4, S2
4AE46C:  VSTR            S2, [R2]
4AE470:  VLDR            S4, [R1,#0x10]
4AE474:  VADD.F32        S0, S4, S0
4AE478:  VSTR            S0, [R2,#4]
4AE47C:  VLDR            S4, [R1,#0x18]
4AE480:  VADD.F32        S2, S4, S2
4AE484:  VSTR            S2, [R2]
4AE488:  VLDR            S4, [R1,#0x1C]
4AE48C:  VADD.F32        S0, S4, S0
4AE490:  VSTR            S0, [R2,#4]
4AE494:  VLDR            S4, [R1,#0x24]
4AE498:  VADD.F32        S2, S4, S2
4AE49C:  VSTR            S2, [R2]
4AE4A0:  VMUL.F32        S2, S2, S6
4AE4A4:  VLDR            S4, [R1,#0x28]
4AE4A8:  VADD.F32        S0, S4, S0
4AE4AC:  VSTR            S2, [R2]
4AE4B0:  VMUL.F32        S0, S0, S6
4AE4B4:  VSTR            S0, [R2,#4]
4AE4B8:  BX              LR
