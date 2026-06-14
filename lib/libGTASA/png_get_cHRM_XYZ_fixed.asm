; =========================================================
; Game Engine Function: png_get_cHRM_XYZ_fixed
; Address            : 0x1F3860 - 0x1F38D6
; =========================================================

1F3860:  MOV             R12, R0
1F3862:  CMP.W           R12, #0
1F3866:  MOV.W           R0, #0
1F386A:  IT NE
1F386C:  CMPNE           R1, #0
1F386E:  BEQ             locret_1F38D4
1F3870:  LDRB.W          R0, [R1,#0x72]
1F3874:  LSLS            R0, R0, #0x1E
1F3876:  ITT PL
1F3878:  MOVPL           R0, #0
1F387A:  BXPL            LR
1F387C:  CMP             R2, #0
1F387E:  ITT NE
1F3880:  LDRNE           R0, [R1,#0x4C]
1F3882:  STRNE           R0, [R2]
1F3884:  CMP             R3, #0
1F3886:  LDR             R0, [SP,#arg_0]
1F3888:  ITT NE
1F388A:  LDRNE           R2, [R1,#0x50]
1F388C:  STRNE           R2, [R3]
1F388E:  LDR             R2, [SP,#arg_4]
1F3890:  CMP             R0, #0
1F3892:  ITT NE
1F3894:  LDRNE           R3, [R1,#0x54]
1F3896:  STRNE           R3, [R0]
1F3898:  LDR             R0, [SP,#arg_8]
1F389A:  CMP             R2, #0
1F389C:  ITT NE
1F389E:  LDRNE           R3, [R1,#0x58]
1F38A0:  STRNE           R3, [R2]
1F38A2:  CMP             R0, #0
1F38A4:  LDR             R2, [SP,#arg_C]
1F38A6:  ITT NE
1F38A8:  LDRNE           R3, [R1,#0x5C]
1F38AA:  STRNE           R3, [R0]
1F38AC:  LDR             R0, [SP,#arg_10]
1F38AE:  CMP             R2, #0
1F38B0:  ITT NE
1F38B2:  LDRNE           R3, [R1,#0x60]
1F38B4:  STRNE           R3, [R2]
1F38B6:  CMP             R0, #0
1F38B8:  LDR             R2, [SP,#arg_14]
1F38BA:  ITT NE
1F38BC:  LDRNE           R3, [R1,#0x64]
1F38BE:  STRNE           R3, [R0]
1F38C0:  LDR             R0, [SP,#arg_18]
1F38C2:  CMP             R2, #0
1F38C4:  ITT NE
1F38C6:  LDRNE           R3, [R1,#0x68]
1F38C8:  STRNE           R3, [R2]
1F38CA:  CMP             R0, #0
1F38CC:  ITT NE
1F38CE:  LDRNE           R1, [R1,#0x6C]
1F38D0:  STRNE           R1, [R0]
1F38D2:  MOVS            R0, #4
1F38D4:  BX              LR
