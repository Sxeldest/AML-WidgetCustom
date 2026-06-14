; =========================================================
; Game Engine Function: _Z19FindClosestPtOnLineP5RwV3dS0_S0_S0_
; Address            : 0x3696E0 - 0x36977A
; =========================================================

3696E0:  VLDR            S0, [R1]
3696E4:  VLDR            S2, [R3]
3696E8:  VLDR            S4, [R2]
3696EC:  VSUB.F32        S2, S2, S0
3696F0:  VLDR            D16, [R1,#4]
3696F4:  VSUB.F32        S4, S4, S0
3696F8:  VLDR            D17, [R3,#4]
3696FC:  VLDR            D18, [R2,#4]
369700:  VSUB.F32        D17, D17, D16
369704:  VSUB.F32        D16, D18, D16
369708:  VMUL.F32        D4, D16, D17
36970C:  VMUL.F32        S2, S4, S2
369710:  VMUL.F32        S6, S4, S4
369714:  VMUL.F32        D5, D16, D16
369718:  VADD.F32        S2, S2, S8
36971C:  VADD.F32        S6, S6, S10
369720:  VADD.F32        S2, S2, S9
369724:  VADD.F32        S6, S6, S11
369728:  VMOV.F32        S8, #1.0
36972C:  VDIV.F32        S2, S2, S6
369730:  VLDR            S6, =0.0
369734:  VMAX.F32        D16, D1, D3
369738:  VMIN.F32        D1, D16, D4
36973C:  VMUL.F32        S4, S4, S2
369740:  VADD.F32        S0, S0, S4
369744:  VSTR            S0, [R0]
369748:  VLDR            S0, [R1,#4]
36974C:  VLDR            S4, [R2,#4]
369750:  VSUB.F32        S4, S4, S0
369754:  VMUL.F32        S4, S4, S2
369758:  VADD.F32        S0, S0, S4
36975C:  VSTR            S0, [R0,#4]
369760:  VLDR            S0, [R1,#8]
369764:  VLDR            S4, [R2,#8]
369768:  VSUB.F32        S4, S4, S0
36976C:  VMUL.F32        S2, S4, S2
369770:  VADD.F32        S0, S0, S2
369774:  VSTR            S0, [R0,#8]
369778:  BX              LR
