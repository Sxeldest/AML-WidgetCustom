; =========================================================
; Game Engine Function: _Z11NvQuatNLerpPfPKfS1_f
; Address            : 0x279822 - 0x27995C
; =========================================================

279822:  VLDR            S2, [R2]
279826:  VLDR            S0, [R2,#4]
27982A:  VLDR            S6, [R1,#4]
27982E:  VLDR            S10, [R1]
279832:  VMUL.F32        S0, S6, S0
279836:  VLDR            S4, [R2,#8]
27983A:  VMUL.F32        S6, S10, S2
27983E:  VLDR            S12, [R1,#8]
279842:  VLDR            S8, [R2,#0xC]
279846:  VMUL.F32        S4, S12, S4
27984A:  VLDR            S14, [R1,#0xC]
27984E:  VMUL.F32        S14, S14, S8
279852:  VADD.F32        S12, S6, S0
279856:  VMOV.F32        S0, #1.0
27985A:  VMOV            S6, R3
27985E:  VMUL.F32        S2, S2, S6
279862:  VADD.F32        S4, S12, S4
279866:  VSUB.F32        S8, S0, S6
27986A:  VADD.F32        S12, S4, S14
27986E:  VMUL.F32        S4, S8, S10
279872:  VCMPE.F32       S12, #0.0
279876:  VMRS            APSR_nzcv, FPSCR
27987A:  BGE             loc_2798CA
27987C:  VSUB.F32        S2, S2, S4
279880:  VSTR            S2, [R0]
279884:  VLDR            S4, [R1,#4]
279888:  VLDR            S10, [R2,#4]
27988C:  VMUL.F32        S4, S8, S4
279890:  VMUL.F32        S10, S10, S6
279894:  VSUB.F32        S4, S10, S4
279898:  VSTR            S4, [R0,#4]
27989C:  VLDR            S10, [R1,#8]
2798A0:  VLDR            S12, [R2,#8]
2798A4:  VMUL.F32        S10, S8, S10
2798A8:  VMUL.F32        S12, S12, S6
2798AC:  VSUB.F32        S10, S12, S10
2798B0:  VSTR            S10, [R0,#8]
2798B4:  VLDR            S12, [R1,#0xC]
2798B8:  VLDR            S14, [R2,#0xC]
2798BC:  VMUL.F32        S8, S8, S12
2798C0:  VMUL.F32        S6, S14, S6
2798C4:  VSUB.F32        S6, S6, S8
2798C8:  B               loc_279916
2798CA:  VADD.F32        S2, S4, S2
2798CE:  VSTR            S2, [R0]
2798D2:  VLDR            S4, [R2,#4]
2798D6:  VLDR            S10, [R1,#4]
2798DA:  VMUL.F32        S4, S4, S6
2798DE:  VMUL.F32        S10, S8, S10
2798E2:  VADD.F32        S4, S10, S4
2798E6:  VSTR            S4, [R0,#4]
2798EA:  VLDR            S10, [R2,#8]
2798EE:  VLDR            S12, [R1,#8]
2798F2:  VMUL.F32        S10, S10, S6
2798F6:  VMUL.F32        S12, S8, S12
2798FA:  VADD.F32        S10, S12, S10
2798FE:  VSTR            S10, [R0,#8]
279902:  VLDR            S12, [R2,#0xC]
279906:  VLDR            S14, [R1,#0xC]
27990A:  VMUL.F32        S6, S12, S6
27990E:  VMUL.F32        S8, S8, S14
279912:  VADD.F32        S6, S8, S6
279916:  VMUL.F32        S8, S4, S4
27991A:  VMUL.F32        S12, S2, S2
27991E:  VMUL.F32        S14, S10, S10
279922:  VADD.F32        S8, S12, S8
279926:  VMUL.F32        S12, S6, S6
27992A:  VADD.F32        S8, S8, S14
27992E:  VADD.F32        S8, S12, S8
279932:  VSQRT.F32       S8, S8
279936:  VDIV.F32        S0, S0, S8
27993A:  VMUL.F32        S2, S2, S0
27993E:  VMUL.F32        S4, S4, S0
279942:  VMUL.F32        S8, S10, S0
279946:  VMUL.F32        S0, S0, S6
27994A:  VSTR            S2, [R0]
27994E:  VSTR            S4, [R0,#4]
279952:  VSTR            S8, [R0,#8]
279956:  VSTR            S0, [R0,#0xC]
27995A:  BX              LR
