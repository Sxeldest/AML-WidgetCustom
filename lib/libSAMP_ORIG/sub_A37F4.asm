; =========================================================
; Game Engine Function: sub_A37F4
; Address            : 0xA37F4 - 0xA3970
; =========================================================

A37F4:  PUSH            {R4-R7,LR}
A37F6:  ADD             R7, SP, #0xC
A37F8:  PUSH.W          {R8-R11}
A37FC:  SUB             SP, SP, #4
A37FE:  VPUSH           {D8-D13}
A3802:  SUB             SP, SP, #0x10
A3804:  MOV             R5, R0
A3806:  LDR             R0, =(__stack_chk_guard_ptr - 0xA380E)
A3808:  CMP             R2, R3
A380A:  ADD             R0, PC; __stack_chk_guard_ptr
A380C:  LDR             R0, [R0]; __stack_chk_guard
A380E:  LDR             R0, [R0]
A3810:  STR             R0, [SP,#0x60+var_54]
A3812:  BCS.W           loc_A394C
A3816:  VLDR            S0, [R7,#arg_0]
A381A:  VMOV            S2, R1
A381E:  VLDR            S18, =0.0
A3822:  ADD.W           R9, R5, #0xC
A3826:  VDIV.F32        S16, S0, S2
A382A:  ADD.W           R8, SP, #0x60+var_58
A382E:  MOVS            R0, #0
A3830:  MOV             R4, R3
A3832:  MOV.W           R11, #1
A3836:  MOV             R10, R2
A3838:  STR             R0, [SP,#0x60+var_5C]
A383A:  VMOV.F32        S26, S18
A383E:  VLDR            S20, =-0.0
A3842:  VMOV.F32        S22, S18
A3846:  VMOV.F32        S24, S18
A384A:  B               loc_A3860
A384C:  VMOV.F32        S24, S18
A3850:  MOV.W           R11, #1
A3854:  VMOV.F32        S22, S18
A3858:  VMOV.F32        S26, S18
A385C:  CMP             R2, R4
A385E:  BCS             loc_A394C
A3860:  LDRSB.W         R0, [R2]
A3864:  MOV             R6, R2
A3866:  CMP             R0, #0
A3868:  UXTB            R1, R0
A386A:  STR             R1, [SP,#0x60+var_58]
A386C:  BMI             loc_A3874
A386E:  ADDS            R2, R6, #1
A3870:  CBNZ            R1, loc_A3886
A3872:  B               loc_A394A
A3874:  MOV             R0, R8
A3876:  MOV             R1, R6
A3878:  MOV             R2, R4
A387A:  BL              sub_88448
A387E:  LDR             R1, [SP,#0x60+var_58]
A3880:  ADDS            R2, R6, R0
A3882:  CMP             R1, #0
A3884:  BEQ             loc_A394A
A3886:  CMP             R1, #0x1F
A3888:  BHI             loc_A3892
A388A:  CMP             R1, #0xA
A388C:  BEQ             loc_A384C
A388E:  CMP             R1, #0xD
A3890:  BEQ             loc_A385C
A3892:  LDR             R0, [R5]
A3894:  LDR             R3, [R5,#8]
A3896:  CMP             R1, R0
A3898:  MOV             R0, R9
A389A:  IT LT
A389C:  ADDLT.W         R0, R3, R1,LSL#2
A38A0:  VLDR            S0, [R0]
A38A4:  CMP             R1, #9
A38A6:  IT NE
A38A8:  CMPNE.W         R1, #0x3000
A38AC:  BNE             loc_A38EA
A38AE:  VMOV.F32        S2, S20
A38B2:  ANDS.W          R0, R11, #1
A38B6:  ITT NE
A38B8:  VMOVNE.F32      S2, S26
A38BC:  VMOVNE.F32      S26, S18
A38C0:  VADD.F32        S24, S24, S2
A38C4:  VADD.F32        S26, S26, S0
A38C8:  IT NE
A38CA:  MOVNE           R10, R6
A38CC:  MOV.W           R11, #0
A38D0:  VADD.F32        S0, S24, S22
A38D4:  CMP.W           R11, #0
A38D8:  IT NE
A38DA:  MOVNE.W         R11, #1
A38DE:  VCMP.F32        S0, S16
A38E2:  VMRS            APSR_nzcv, FPSCR
A38E6:  BLT             loc_A385C
A38E8:  B               loc_A3936
A38EA:  CMP             R1, #0x20 ; ' '
A38EC:  BEQ             loc_A38AE
A38EE:  VADD.F32        S22, S22, S0
A38F2:  MOVS.W          R0, R11,LSL#31
A38F6:  BEQ             loc_A38FC
A38F8:  MOV             R10, R2
A38FA:  B               loc_A3910
A38FC:  VADD.F32        S0, S26, S22
A3900:  STR.W           R10, [SP,#0x60+var_5C]
A3904:  VMOV.F32        S22, S18
A3908:  VMOV.F32        S26, S18
A390C:  VADD.F32        S24, S24, S0
A3910:  SUB.W           R0, R1, #0x21 ; '!'
A3914:  MOVW            R3, #0xD7FC
A3918:  CMP             R0, #0x1E
A391A:  BIC.W           R0, R0, #0x80000000
A391E:  MOVT            R3, #0x3BFF
A3922:  MOV.W           R1, #0
A3926:  LSR.W           R0, R3, R0
A392A:  IT HI
A392C:  MOVHI           R1, #1
A392E:  ORRS            R0, R1
A3930:  AND.W           R11, R0, #1
A3934:  B               loc_A38D0
A3936:  LDR             R0, [SP,#0x60+var_5C]
A3938:  VCMP.F32        S22, S16
A393C:  CMP             R0, #0
A393E:  IT NE
A3940:  MOVNE           R10, R0
A3942:  VMRS            APSR_nzcv, FPSCR
A3946:  IT MI
A3948:  MOVMI           R6, R10
A394A:  MOV             R2, R6
A394C:  LDR             R0, [SP,#0x60+var_54]
A394E:  LDR             R1, =(__stack_chk_guard_ptr - 0xA3954)
A3950:  ADD             R1, PC; __stack_chk_guard_ptr
A3952:  LDR             R1, [R1]; __stack_chk_guard
A3954:  LDR             R1, [R1]
A3956:  CMP             R1, R0
A3958:  ITTTT EQ
A395A:  MOVEQ           R0, R2
A395C:  ADDEQ           SP, SP, #0x10
A395E:  VPOPEQ          {D8-D13}
A3962:  ADDEQ           SP, SP, #4
A3964:  ITT EQ
A3966:  POPEQ.W         {R8-R11}
A396A:  POPEQ           {R4-R7,PC}
A396C:  BLX             __stack_chk_fail
