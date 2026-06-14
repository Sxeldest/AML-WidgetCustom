; =========================================================
; Game Engine Function: sub_9681C
; Address            : 0x9681C - 0x96A8E
; =========================================================

9681C:  PUSH            {R4-R7,LR}
9681E:  ADD             R7, SP, #0xC
96820:  PUSH.W          {R8}
96824:  VPUSH           {D8-D9}
96828:  SUB             SP, SP, #0x38
9682A:  MOV             R8, R0
9682C:  LDR             R0, =(dword_1ACF68 - 0x96838)
9682E:  MOV             R5, R1
96830:  MOVW            R1, #0x15B0
96834:  ADD             R0, PC; dword_1ACF68
96836:  VLDR            S0, =0.0
9683A:  LDR             R6, [R0]
9683C:  LDR             R0, =(__stack_chk_guard_ptr - 0x96842)
9683E:  ADD             R0, PC; __stack_chk_guard_ptr
96840:  LDR             R0, [R0]; __stack_chk_guard
96842:  LDR             R0, [R0]
96844:  STR             R0, [SP,#0x58+var_24]
96846:  MOVW            R0, #0x15B4
9684A:  ADD             R0, R6
9684C:  VLDR            S12, [R6,#0x14]
96850:  VLDR            S10, [R6,#0x10]
96854:  VLDR            S2, [R0]
96858:  ADDS            R0, R6, R1
9685A:  MOVW            R1, #0x1554
9685E:  ADDS            R4, R6, R1
96860:  VLDR            S4, [R0]
96864:  VADD.F32        S6, S2, S2
96868:  VNEG.F32        S2, S2
9686C:  VADD.F32        S8, S4, S4
96870:  VNEG.F32        S4, S4
96874:  VCMP.F32        S12, S6
96878:  VMOV.F32        S6, S0
9687C:  VMRS            APSR_nzcv, FPSCR
96880:  IT GT
96882:  VMOVGT.F32      S6, S2
96886:  VCMP.F32        S10, S8
9688A:  VMOV.F32        S2, S0
9688E:  VMRS            APSR_nzcv, FPSCR
96892:  IT GT
96894:  VMOVGT.F32      S2, S4
96898:  VADD.F32        S4, S12, S6
9689C:  VADD.F32        S8, S10, S2
968A0:  LDR             R0, [R5,#8]
968A2:  VSUB.F32        S6, S0, S6
968A6:  VSUB.F32        S2, S0, S2
968AA:  LSLS            R1, R0, #3
968AC:  VSTR            S4, [SP,#0x58+var_28]
968B0:  VSTR            S8, [SP,#0x58+var_2C]
968B4:  VSTR            S6, [SP,#0x58+var_30]
968B8:  VSTR            S2, [SP,#0x58+var_34]
968BC:  BMI             loc_968D2
968BE:  LSLS            R1, R0, #5
968C0:  BMI             loc_9693E
968C2:  LSLS            R0, R0, #6
968C4:  BMI.W           loc_969E4
968C8:  LDRD.W          R0, R1, [R5,#0xC]
968CC:  STRD.W          R0, R1, [R8]
968D0:  B               loc_969C6
968D2:  LDR.W           R0, [R4,#0x43C]
968D6:  LDR.W           R1, [R4,#0x444]
968DA:  ADD.W           R0, R1, R0,LSL#2
968DE:  LDR.W           R0, [R0,#-8]
968E2:  LDRB.W          R1, [R0,#0x142]
968E6:  CMP             R1, #0
968E8:  BEQ             loc_96970
968EA:  VMOV.F32        S4, S0
968EE:  LDR             R1, [R0,#8]
968F0:  VLDR            S2, [R0,#0x10]
968F4:  LSLS            R2, R1, #0x1F
968F6:  BNE             loc_9690C
968F8:  VLDR            S4, [R4]
968FC:  VLDR            S6, [R4,#0x378]
96900:  VADD.F32        S4, S4, S4
96904:  VLDR            S8, [R0,#0x274]
96908:  VMLA.F32        S4, S6, S8
9690C:  VADD.F32        S2, S2, S4
96910:  LSLS            R1, R1, #0x15
96912:  BPL             loc_96930
96914:  VLDR            S0, [R4]
96918:  VLDR            S4, [R4,#0x378]
9691C:  VLDR            S8, [R0,#0x274]
96920:  VADD.F32        S0, S0, S0
96924:  VLDR            S6, [R0,#0x148]
96928:  VMLA.F32        S6, S4, S8
9692C:  VADD.F32        S0, S0, S6
96930:  VADD.F32        S6, S2, S0
96934:  VLDR            S4, =3.4028e38
96938:  VLDR            S0, =-3.4028e38
9693C:  B               loc_96998
9693E:  VMOV.F32        S0, #1.0
96942:  VLDR            S6, [R5,#0x10]
96946:  VMOV.F32        S2, #-1.0
9694A:  VLDR            S4, [R5,#0xC]
9694E:  VADD.F32        S8, S6, S0
96952:  VADD.F32        S6, S6, S2
96956:  VADD.F32        S0, S4, S0
9695A:  VADD.F32        S2, S4, S2
9695E:  VSTR            S8, [SP,#0x58+var_38]
96962:  VSTR            S6, [SP,#0x58+var_40]
96966:  VSTR            S0, [SP,#0x58+var_3C]
9696A:  VSTR            S2, [SP,#0x58+var_44]
9696E:  B               loc_969A8
96970:  VLDR            S2, [R0,#0xC]
96974:  VLDR            S4, [R0,#0x14]
96978:  VLDR            S0, [R4,#0x14]
9697C:  VADD.F32        S4, S2, S4
96980:  VLDR            S6, [R0,#0x70]
96984:  VSUB.F32        S4, S4, S0
96988:  VADD.F32        S0, S0, S2
9698C:  VLDR            S2, =-3.4028e38
96990:  VSUB.F32        S4, S4, S6
96994:  VLDR            S6, =3.4028e38
96998:  VSTR            S6, [SP,#0x58+var_38]
9699C:  VSTR            S4, [SP,#0x58+var_3C]
969A0:  VSTR            S2, [SP,#0x58+var_40]
969A4:  VSTR            S0, [SP,#0x58+var_44]
969A8:  ADD             R1, SP, #0x58+var_44
969AA:  ADD             R2, SP, #0x58+var_34
969AC:  MOVS            R0, #0
969AE:  ADD.W           R3, R5, #0xA0
969B2:  STRD.W          R2, R1, [SP,#0x58+var_58]
969B6:  ADD.W           R1, R5, #0xC
969BA:  ADD.W           R2, R5, #0x14
969BE:  STR             R0, [SP,#0x58+var_50]
969C0:  MOV             R0, R8
969C2:  BL              sub_98C8C
969C6:  LDR             R0, [SP,#0x58+var_24]
969C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x969CE)
969CA:  ADD             R1, PC; __stack_chk_guard_ptr
969CC:  LDR             R1, [R1]; __stack_chk_guard
969CE:  LDR             R1, [R1]
969D0:  CMP             R1, R0
969D2:  ITTTT EQ
969D4:  ADDEQ           SP, SP, #0x38 ; '8'
969D6:  VPOPEQ          {D8-D9}
969DA:  POPEQ.W         {R8}
969DE:  POPEQ           {R4-R7,PC}
969E0:  BLX             __stack_chk_fail
969E4:  ADD             R0, SP, #0x58+var_4C
969E6:  VLDR            S16, [R4,#0x64]
969EA:  BL              sub_98718
969EE:  LDRB.W          R0, [R4,#0x5C2]
969F2:  CBZ             R0, loc_96A66
969F4:  VMOV.F32        S0, #24.0
969F8:  VLDR            S18, [SP,#0x58+var_48]
969FC:  VMUL.F32        S2, S16, S0
96A00:  VLDR            S16, [SP,#0x58+var_4C]
96A04:  VADD.F32        S0, S2, S18
96A08:  VADD.F32        S2, S2, S16
96A0C:  VMOV.F32        S4, #-8.0
96A10:  ADD             R1, SP, #0x58+var_44
96A12:  VMOV.F32        S6, #-16.0
96A16:  ADD             R2, SP, #0x58+var_34
96A18:  STRD.W          R2, R1, [SP,#0x58+var_58]
96A1C:  MOVS            R0, #0
96A1E:  ADD.W           R2, R5, #0x14
96A22:  ADD.W           R3, R5, #0xA0
96A26:  ADD             R1, SP, #0x58+var_4C
96A28:  STR             R0, [SP,#0x58+var_50]
96A2A:  MOV             R0, R8
96A2C:  VSTR            S0, [SP,#0x58+var_38]
96A30:  VSTR            S2, [SP,#0x58+var_3C]
96A34:  VADD.F32        S4, S18, S4
96A38:  VADD.F32        S6, S16, S6
96A3C:  VSTR            S4, [SP,#0x58+var_40]
96A40:  VSTR            S6, [SP,#0x58+var_44]
96A44:  BL              sub_98C8C
96A48:  LDR.W           R0, [R5,#0xA0]
96A4C:  ADDS            R0, #1
96A4E:  BNE             loc_969C6
96A50:  VMOV.F32        S0, #2.0
96A54:  VADD.F32        S2, S18, S0
96A58:  VADD.F32        S0, S16, S0
96A5C:  VSTR            S2, [R8,#4]
96A60:  VSTR            S0, [R8]
96A64:  B               loc_969C6
96A66:  LDRB.W          R0, [R4,#0x5C3]
96A6A:  CMP             R0, #0
96A6C:  BEQ             loc_969F4
96A6E:  LDRB            R0, [R6,#8]
96A70:  LSLS            R0, R0, #0x1D
96A72:  BMI             loc_969F4
96A74:  VMOV.F32        S0, #8.0
96A78:  VLDR            S18, [SP,#0x58+var_48]
96A7C:  VMOV.F32        S2, #16.0
96A80:  VLDR            S16, [SP,#0x58+var_4C]
96A84:  VADD.F32        S0, S18, S0
96A88:  VADD.F32        S2, S16, S2
96A8C:  B               loc_96A0C
