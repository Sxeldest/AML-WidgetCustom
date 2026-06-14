; =========================================================
; Game Engine Function: _ZN11CQuaternion5SlerpERKS_S1_f
; Address            : 0x4506FC - 0x450866
; =========================================================

4506FC:  PUSH            {R4-R7,LR}
4506FE:  ADD             R7, SP, #0xC
450700:  PUSH.W          {R8}
450704:  VPUSH           {D8-D13}
450708:  MOV             R5, R2
45070A:  MOV             R6, R1
45070C:  VLDR            S16, [R5]
450710:  VMOV.F32        S22, #1.0
450714:  VLDR            S0, [R5,#4]
450718:  MOV             R4, R0
45071A:  VLDR            S6, [R6,#4]
45071E:  MOV             R8, R3
450720:  VLDR            S18, [R6]
450724:  VMUL.F32        S0, S6, S0
450728:  VLDR            S2, [R5,#8]
45072C:  VMUL.F32        S6, S18, S16
450730:  VLDR            S8, [R6,#8]
450734:  VLDR            S4, [R5,#0xC]
450738:  VMUL.F32        S2, S8, S2
45073C:  VLDR            S10, [R6,#0xC]
450740:  VMUL.F32        S4, S10, S4
450744:  VADD.F32        S0, S6, S0
450748:  VADD.F32        S0, S0, S2
45074C:  VADD.F32        S0, S0, S4
450750:  VMIN.F32        D0, D0, D11
450754:  VMOV            R0, S0; x
450758:  BLX             acosf
45075C:  VMOV            S24, R0; x
450760:  VCMP.F32        S24, #0.0
450764:  VMRS            APSR_nzcv, FPSCR
450768:  BEQ             loc_450778
45076A:  BLX             sinf
45076E:  VMOV            S0, R0
450772:  VDIV.F32        S20, S22, S0
450776:  B               loc_45077C
450778:  VLDR            S20, =0.0
45077C:  VCMP.F32        S24, #0.0
450780:  VMRS            APSR_nzcv, FPSCR
450784:  BNE             loc_450798
450786:  VSTR            S16, [R4]
45078A:  LDR             R0, [R5,#4]
45078C:  STR             R0, [R4,#4]
45078E:  LDR             R0, [R5,#8]
450790:  STR             R0, [R4,#8]
450792:  LDR             R0, [R5,#0xC]
450794:  STR             R0, [R4,#0xC]
450796:  B               loc_45085C
450798:  VLDR            S0, =1.5708
45079C:  VMOV            S26, R8
4507A0:  VCMPE.F32       S24, S0
4507A4:  VMRS            APSR_nzcv, FPSCR
4507A8:  BLE             loc_4507D6
4507AA:  VLDR            S0, =3.1416
4507AE:  VSUB.F32        S24, S0, S24
4507B2:  VSUB.F32        S0, S22, S26
4507B6:  VMUL.F32        S0, S0, S24
4507BA:  VMOV            R0, S0; x
4507BE:  BLX             sinf
4507C2:  VMUL.F32        S0, S24, S26
4507C6:  MOV             R8, R0
4507C8:  VMOV            R0, S0; x
4507CC:  BLX             sinf
4507D0:  EOR.W           R0, R0, #0x80000000
4507D4:  B               loc_4507F4
4507D6:  VSUB.F32        S0, S22, S26
4507DA:  VMUL.F32        S0, S0, S24
4507DE:  VMOV            R0, S0; x
4507E2:  BLX             sinf
4507E6:  VMUL.F32        S0, S24, S26
4507EA:  MOV             R8, R0
4507EC:  VMOV            R0, S0; x
4507F0:  BLX             sinf
4507F4:  VMOV            S0, R0
4507F8:  VMOV            S2, R8
4507FC:  VMUL.F32        S0, S20, S0
450800:  VMUL.F32        S2, S20, S2
450804:  VMUL.F32        S4, S0, S16
450808:  VMUL.F32        S6, S2, S18
45080C:  VADD.F32        S4, S6, S4
450810:  VSTR            S4, [R4]
450814:  VLDR            S4, [R5,#4]
450818:  VLDR            S6, [R6,#4]
45081C:  VMUL.F32        S4, S0, S4
450820:  VMUL.F32        S6, S2, S6
450824:  VADD.F32        S4, S6, S4
450828:  VSTR            S4, [R4,#4]
45082C:  VLDR            S4, [R5,#8]
450830:  VLDR            S6, [R6,#8]
450834:  VMUL.F32        S4, S0, S4
450838:  VMUL.F32        S6, S2, S6
45083C:  VADD.F32        S4, S6, S4
450840:  VSTR            S4, [R4,#8]
450844:  VLDR            S4, [R5,#0xC]
450848:  VLDR            S6, [R6,#0xC]
45084C:  VMUL.F32        S0, S0, S4
450850:  VMUL.F32        S2, S2, S6
450854:  VADD.F32        S0, S2, S0
450858:  VSTR            S0, [R4,#0xC]
45085C:  VPOP            {D8-D13}
450860:  POP.W           {R8}
450864:  POP             {R4-R7,PC}
