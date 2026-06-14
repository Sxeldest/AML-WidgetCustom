; =========================================================
; Game Engine Function: png_get_cHRM
; Address            : 0x1F3678 - 0x1F3754
; =========================================================

1F3678:  MOV             R12, R0
1F367A:  CMP.W           R12, #0
1F367E:  MOV.W           R0, #0
1F3682:  IT NE
1F3684:  CMPNE           R1, #0
1F3686:  BEQ             locret_1F3752
1F3688:  LDRB.W          R0, [R1,#0x72]
1F368C:  LSLS            R0, R0, #0x1E
1F368E:  ITT PL
1F3690:  MOVPL           R0, #0
1F3692:  BXPL            LR
1F3694:  CBZ             R2, loc_1F36AA
1F3696:  VLDR            S0, [R1,#0x44]
1F369A:  VLDR            D17, =0.00001
1F369E:  VCVT.F64.S32    D16, S0
1F36A2:  VMUL.F64        D16, D16, D17
1F36A6:  VSTR            D16, [R2]
1F36AA:  LDR             R0, [SP,#arg_0]
1F36AC:  CBZ             R3, loc_1F36C2
1F36AE:  VLDR            S0, [R1,#0x48]
1F36B2:  VLDR            D17, =0.00001
1F36B6:  VCVT.F64.S32    D16, S0
1F36BA:  VMUL.F64        D16, D16, D17
1F36BE:  VSTR            D16, [R3]
1F36C2:  LDR             R2, [SP,#arg_4]
1F36C4:  CBZ             R0, loc_1F36DA
1F36C6:  VLDR            S0, [R1,#0x2C]
1F36CA:  VLDR            D17, =0.00001
1F36CE:  VCVT.F64.S32    D16, S0
1F36D2:  VMUL.F64        D16, D16, D17
1F36D6:  VSTR            D16, [R0]
1F36DA:  LDR             R0, [SP,#arg_8]
1F36DC:  CBZ             R2, loc_1F36F2
1F36DE:  VLDR            S0, [R1,#0x30]
1F36E2:  VLDR            D17, =0.00001
1F36E6:  VCVT.F64.S32    D16, S0
1F36EA:  VMUL.F64        D16, D16, D17
1F36EE:  VSTR            D16, [R2]
1F36F2:  LDR             R2, [SP,#arg_C]
1F36F4:  CBZ             R0, loc_1F370A
1F36F6:  VLDR            S0, [R1,#0x34]
1F36FA:  VLDR            D17, =0.00001
1F36FE:  VCVT.F64.S32    D16, S0
1F3702:  VMUL.F64        D16, D16, D17
1F3706:  VSTR            D16, [R0]
1F370A:  LDR             R0, [SP,#arg_10]
1F370C:  CBZ             R2, loc_1F3722
1F370E:  VLDR            S0, [R1,#0x38]
1F3712:  VLDR            D17, =0.00001
1F3716:  VCVT.F64.S32    D16, S0
1F371A:  VMUL.F64        D16, D16, D17
1F371E:  VSTR            D16, [R2]
1F3722:  LDR             R2, [SP,#arg_14]
1F3724:  CBZ             R0, loc_1F373A
1F3726:  VLDR            S0, [R1,#0x3C]
1F372A:  VLDR            D17, =0.00001
1F372E:  VCVT.F64.S32    D16, S0
1F3732:  VMUL.F64        D16, D16, D17
1F3736:  VSTR            D16, [R0]
1F373A:  CBZ             R2, loc_1F3750
1F373C:  VLDR            S0, [R1,#0x40]
1F3740:  VLDR            D17, =0.00001
1F3744:  VCVT.F64.S32    D16, S0
1F3748:  VMUL.F64        D16, D16, D17
1F374C:  VSTR            D16, [R2]
1F3750:  MOVS            R0, #4
1F3752:  BX              LR
