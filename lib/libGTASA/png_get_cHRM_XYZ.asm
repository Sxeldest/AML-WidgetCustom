; =========================================================
; Game Engine Function: png_get_cHRM_XYZ
; Address            : 0x1F3760 - 0x1F3854
; =========================================================

1F3760:  MOV             R12, R0
1F3762:  CMP.W           R12, #0
1F3766:  MOV.W           R0, #0
1F376A:  IT NE
1F376C:  CMPNE           R1, #0
1F376E:  BEQ             locret_1F3852
1F3770:  LDRB.W          R0, [R1,#0x72]
1F3774:  LSLS            R0, R0, #0x1E
1F3776:  ITT PL
1F3778:  MOVPL           R0, #0
1F377A:  BXPL            LR
1F377C:  CBZ             R2, loc_1F3792
1F377E:  VLDR            S0, [R1,#0x4C]
1F3782:  VLDR            D17, =0.00001
1F3786:  VCVT.F64.S32    D16, S0
1F378A:  VMUL.F64        D16, D16, D17
1F378E:  VSTR            D16, [R2]
1F3792:  LDR             R0, [SP,#arg_0]
1F3794:  CBZ             R3, loc_1F37AA
1F3796:  VLDR            S0, [R1,#0x50]
1F379A:  VLDR            D17, =0.00001
1F379E:  VCVT.F64.S32    D16, S0
1F37A2:  VMUL.F64        D16, D16, D17
1F37A6:  VSTR            D16, [R3]
1F37AA:  LDR             R2, [SP,#arg_4]
1F37AC:  CBZ             R0, loc_1F37C2
1F37AE:  VLDR            S0, [R1,#0x54]
1F37B2:  VLDR            D17, =0.00001
1F37B6:  VCVT.F64.S32    D16, S0
1F37BA:  VMUL.F64        D16, D16, D17
1F37BE:  VSTR            D16, [R0]
1F37C2:  LDR             R0, [SP,#arg_8]
1F37C4:  CBZ             R2, loc_1F37DA
1F37C6:  VLDR            S0, [R1,#0x58]
1F37CA:  VLDR            D17, =0.00001
1F37CE:  VCVT.F64.S32    D16, S0
1F37D2:  VMUL.F64        D16, D16, D17
1F37D6:  VSTR            D16, [R2]
1F37DA:  LDR             R2, [SP,#arg_C]
1F37DC:  CBZ             R0, loc_1F37F2
1F37DE:  VLDR            S0, [R1,#0x5C]
1F37E2:  VLDR            D17, =0.00001
1F37E6:  VCVT.F64.S32    D16, S0
1F37EA:  VMUL.F64        D16, D16, D17
1F37EE:  VSTR            D16, [R0]
1F37F2:  LDR             R0, [SP,#arg_10]
1F37F4:  CBZ             R2, loc_1F380A
1F37F6:  VLDR            S0, [R1,#0x60]
1F37FA:  VLDR            D17, =0.00001
1F37FE:  VCVT.F64.S32    D16, S0
1F3802:  VMUL.F64        D16, D16, D17
1F3806:  VSTR            D16, [R2]
1F380A:  LDR             R2, [SP,#arg_14]
1F380C:  CBZ             R0, loc_1F3822
1F380E:  VLDR            S0, [R1,#0x64]
1F3812:  VLDR            D17, =0.00001
1F3816:  VCVT.F64.S32    D16, S0
1F381A:  VMUL.F64        D16, D16, D17
1F381E:  VSTR            D16, [R0]
1F3822:  LDR             R0, [SP,#arg_18]
1F3824:  CBZ             R2, loc_1F383A
1F3826:  VLDR            S0, [R1,#0x68]
1F382A:  VLDR            D17, =0.00001
1F382E:  VCVT.F64.S32    D16, S0
1F3832:  VMUL.F64        D16, D16, D17
1F3836:  VSTR            D16, [R2]
1F383A:  CBZ             R0, loc_1F3850
1F383C:  VLDR            S0, [R1,#0x6C]
1F3840:  VLDR            D17, =0.00001
1F3844:  VCVT.F64.S32    D16, S0
1F3848:  VMUL.F64        D16, D16, D17
1F384C:  VSTR            D16, [R0]
1F3850:  MOVS            R0, #4
1F3852:  BX              LR
