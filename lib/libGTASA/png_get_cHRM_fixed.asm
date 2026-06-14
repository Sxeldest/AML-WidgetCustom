; =========================================================
; Game Engine Function: png_get_cHRM_fixed
; Address            : 0x1F38D6 - 0x1F3942
; =========================================================

1F38D6:  MOV             R12, R0
1F38D8:  CMP.W           R12, #0
1F38DC:  MOV.W           R0, #0
1F38E0:  IT NE
1F38E2:  CMPNE           R1, #0
1F38E4:  BEQ             locret_1F3940
1F38E6:  LDRB.W          R0, [R1,#0x72]
1F38EA:  LSLS            R0, R0, #0x1E
1F38EC:  ITT PL
1F38EE:  MOVPL           R0, #0
1F38F0:  BXPL            LR
1F38F2:  CMP             R2, #0
1F38F4:  ITT NE
1F38F6:  LDRNE           R0, [R1,#0x44]
1F38F8:  STRNE           R0, [R2]
1F38FA:  CMP             R3, #0
1F38FC:  ITT NE
1F38FE:  LDRNE           R2, [R1,#0x48]
1F3900:  STRNE           R2, [R3]
1F3902:  LDR             R0, [SP,#arg_0]
1F3904:  LDR             R2, [SP,#arg_4]
1F3906:  CMP             R0, #0
1F3908:  ITT NE
1F390A:  LDRNE           R3, [R1,#0x2C]
1F390C:  STRNE           R3, [R0]
1F390E:  CMP             R2, #0
1F3910:  LDR             R0, [SP,#arg_8]
1F3912:  ITT NE
1F3914:  LDRNE           R3, [R1,#0x30]
1F3916:  STRNE           R3, [R2]
1F3918:  LDR             R2, [SP,#arg_C]
1F391A:  CMP             R0, #0
1F391C:  ITT NE
1F391E:  LDRNE           R3, [R1,#0x34]
1F3920:  STRNE           R3, [R0]
1F3922:  CMP             R2, #0
1F3924:  LDR             R0, [SP,#arg_10]
1F3926:  ITT NE
1F3928:  LDRNE           R3, [R1,#0x38]
1F392A:  STRNE           R3, [R2]
1F392C:  LDR             R2, [SP,#arg_14]
1F392E:  CMP             R0, #0
1F3930:  ITT NE
1F3932:  LDRNE           R3, [R1,#0x3C]
1F3934:  STRNE           R3, [R0]
1F3936:  CMP             R2, #0
1F3938:  ITT NE
1F393A:  LDRNE           R0, [R1,#0x40]
1F393C:  STRNE           R0, [R2]
1F393E:  MOVS            R0, #4
1F3940:  BX              LR
