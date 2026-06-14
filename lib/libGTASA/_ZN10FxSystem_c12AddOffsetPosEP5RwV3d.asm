; =========================================================
; Game Engine Function: _ZN10FxSystem_c12AddOffsetPosEP5RwV3d
; Address            : 0x36E55E - 0x36E594
; =========================================================

36E55E:  VLDR            S0, [R0,#0x44]
36E562:  VLDR            S6, [R1]
36E566:  VLDR            S2, [R0,#0x48]
36E56A:  VADD.F32        S0, S6, S0
36E56E:  VLDR            S4, [R0,#0x4C]
36E572:  VSTR            S0, [R0,#0x44]
36E576:  VLDR            S0, [R1,#4]
36E57A:  VADD.F32        S0, S0, S2
36E57E:  VSTR            S0, [R0,#0x48]
36E582:  VLDR            S0, [R1,#8]
36E586:  VADD.F32        S0, S0, S4
36E58A:  VSTR            S0, [R0,#0x4C]
36E58E:  ADDS            R0, #0x14
36E590:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
