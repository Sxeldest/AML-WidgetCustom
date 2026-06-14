; =========================================================
; Game Engine Function: _Z18CalculateMapLimitsPfS_S_S_
; Address            : 0x2A97E8 - 0x2A9864
; =========================================================

2A97E8:  LDR.W           R12, =(gMobileMenu_ptr - 0x2A97F4)
2A97EC:  VLDR            S10, =1.8
2A97F0:  ADD             R12, PC; gMobileMenu_ptr
2A97F2:  LDR.W           R12, [R12]; gMobileMenu
2A97F6:  VLDR            S0, [R12,#0x58]
2A97FA:  VLDR            S2, [R12,#0x60]
2A97FE:  VSUB.F32        S0, S2, S0
2A9802:  VSTR            S0, [R0]
2A9806:  VLDR            S0, [R12,#0x58]
2A980A:  VLDR            S2, [R12,#0x60]
2A980E:  LDR             R0, =(RsGlobal_ptr - 0x2A9818)
2A9810:  VADD.F32        S0, S2, S0
2A9814:  ADD             R0, PC; RsGlobal_ptr
2A9816:  LDR             R0, [R0]; RsGlobal
2A9818:  VSTR            S0, [R1]
2A981C:  VLDR            S0, [R12,#0x58]
2A9820:  VLDR            S2, [R12,#0x5C]
2A9824:  VSUB.F32        S0, S2, S0
2A9828:  VSTR            S0, [R2]
2A982C:  VLDR            S0, [R0,#4]
2A9830:  VLDR            S2, [R0,#8]
2A9834:  VCVT.F32.S32    S4, S2
2A9838:  VCVT.F32.S32    S6, S0
2A983C:  VLDR            S2, [R12,#0x58]
2A9840:  VLDR            S0, [R12,#0x5C]
2A9844:  VDIV.F32        S8, S6, S4
2A9848:  VCMPE.F32       S8, S10
2A984C:  VMRS            APSR_nzcv, FPSCR
2A9850:  BGT             loc_2A985A
2A9852:  VMUL.F32        S2, S2, S6
2A9856:  VDIV.F32        S2, S2, S4
2A985A:  VADD.F32        S0, S0, S2
2A985E:  VSTR            S0, [R3]
2A9862:  BX              LR
