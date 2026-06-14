; =========================================================
; Game Engine Function: sub_A77E0
; Address            : 0xA77E0 - 0xA7C78
; =========================================================

A77E0:  PUSH            {R4-R7,LR}
A77E2:  ADD             R7, SP, #0xC
A77E4:  PUSH.W          {R8-R11}
A77E8:  SUB             SP, SP, #4
A77EA:  VPUSH           {D8-D11}
A77EE:  SUB             SP, SP, #0xA0
A77F0:  MOV             R8, R0
A77F2:  LDR             R0, =(off_114D5C - 0xA77FE)
A77F4:  MOV             R5, R2
A77F6:  MOVW            R2, #0x19AC
A77FA:  ADD             R0, PC; off_114D5C
A77FC:  LDR             R4, [R0]; dword_1ACF68
A77FE:  LDR.W           R11, [R4]
A7802:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xA780A)
A7806:  ADD             R0, PC; __stack_chk_guard_ptr
A7808:  LDR             R0, [R0]; __stack_chk_guard
A780A:  LDR             R0, [R0]
A780C:  STR             R0, [SP,#0xE0+var_44]
A780E:  MOVW            R0, #0x1A10
A7812:  LDR.W           R9, [R11,R0]
A7816:  LDR.W           R6, [R11,R2]
A781A:  BIC.W           R2, R9, #0x10
A781E:  STR.W           R2, [R11,R0]
A7822:  MOVS            R0, #1
A7824:  STRB.W          R0, [R6,#0x7C]
A7828:  LDRB.W          R0, [R6,#0x7F]
A782C:  CBZ             R0, loc_A7832
A782E:  MOVS            R4, #0
A7830:  B               loc_A7C54
A7832:  MOVW            R0, #0x1550
A7836:  STR             R1, [SP,#0xE0+var_BC]
A7838:  ADD             R0, R11
A783A:  STR             R0, [SP,#0xE0+var_B0]
A783C:  MOV             R0, R6
A783E:  MOV             R1, R8
A7840:  MOVS            R2, #0
A7842:  BL              sub_8AAD4
A7846:  VLDR            S20, =0.0
A784A:  STR             R0, [SP,#0xE0+var_B4]
A784C:  ANDS.W          R0, R5, #0x20 ; ' '
A7850:  VMOV.F32        S18, S20
A7854:  STR             R0, [SP,#0xE0+var_C0]
A7856:  BNE             loc_A7860
A7858:  BL              sub_978A8
A785C:  VMOV            S18, R0
A7860:  MOVS            R0, #0
A7862:  MOV             R1, R8; int
A7864:  MOVT            R0, #0xBF80
A7868:  MOVS            R2, #0; int
A786A:  STR             R0, [SP,#0xE0+var_E0]; float
A786C:  ADD             R0, SP, #0xE0+var_5C; int
A786E:  MOVS            R3, #1; int
A7870:  STR             R4, [SP,#0xE0+var_C4]
A7872:  BL              sub_899BC
A7876:  BL              sub_97224
A787A:  LDR             R1, [SP,#0xE0+var_B0]
A787C:  VMOV            S8, R0
A7880:  VLDR            S6, [SP,#0xE0+var_58]
A7884:  VMOV.F32        S16, S18
A7888:  VLDR            S2, [SP,#0xE0+var_5C]
A788C:  ANDS.W          R0, R5, #0x40 ; '@'
A7890:  VLDR            S0, [R1,#4]
A7894:  ADD             R4, SP, #0xE0+var_80
A7896:  STR             R0, [SP,#0xE0+var_B8]
A7898:  IT EQ
A789A:  VMOVEQ.F32      S16, S8
A789E:  VADD.F32        S4, S0, S0
A78A2:  VLDR            S8, [R6,#0xCC]
A78A6:  LDRD.W          R0, R2, [R6,#0xC8]
A78AA:  VCMP.F32        S2, #0.0
A78AE:  STRD.W          R0, R2, [SP,#0xE0+var_70]
A78B2:  VMRS            APSR_nzcv, FPSCR
A78B6:  VADD.F32        S6, S4, S6
A78BA:  VLDR            S4, [R6,#0xC8]
A78BE:  VADD.F32        S4, S16, S4
A78C2:  VADD.F32        S6, S6, S8
A78C6:  VMOV.F32        S8, S20
A78CA:  VSTR            S4, [SP,#0xE0+var_68]
A78CE:  VSTR            S6, [SP,#0xE0+var_64]
A78D2:  ITTT GT
A78D4:  LDRGT           R1, [SP,#0xE0+var_B0]
A78D6:  VLDRGT          S8, [R1,#0x18]
A78DA:  VADDGT.F32      S8, S2, S8
A78DE:  VADD.F32        S2, S6, S20
A78E2:  VMOV            R1, S0
A78E6:  STRD.W          R0, R2, [SP,#0xE0+var_80]
A78EA:  VADD.F32        S0, S8, S4
A78EE:  MOV             R0, R4
A78F0:  VSTR            S2, [SP,#0xE0+var_74]
A78F4:  VSTR            S0, [SP,#0xE0+var_78]
A78F8:  BL              sub_8B2C0
A78FC:  LDR.W           R10, [SP,#0xE0+var_B4]
A7900:  ADD             R2, SP, #0xE0+var_70
A7902:  MOV             R0, R4
A7904:  MOV             R1, R10
A7906:  BL              sub_8B314
A790A:  MOVS            R4, #0
A790C:  CMP             R0, #0
A790E:  BEQ.W           loc_A7C54
A7912:  STR             R4, [SP,#0xE0+var_E0]
A7914:  ADD             R4, SP, #0xE0+var_70
A7916:  SUB.W           R2, R7, #-var_81
A791A:  SUB.W           R3, R7, #-var_82
A791E:  MOV             R0, R4
A7920:  MOV             R1, R10
A7922:  STR             R5, [SP,#0xE0+var_C8]
A7924:  BL              sub_A634C
A7928:  STR             R0, [SP,#0xE0+var_CC]
A792A:  MOV             R0, R10
A792C:  BL              sub_98474
A7930:  LDRB.W          R1, [R7,#var_81]
A7934:  MOV             R5, R0
A7936:  MOVS            R0, #8
A7938:  CMP             R1, #0
A793A:  MOV.W           R1, #0x3F800000
A793E:  IT EQ
A7940:  MOVEQ           R0, #7
A7942:  BL              sub_88C10
A7946:  STR             R0, [SP,#0xE0+var_D0]
A7948:  MOV             R0, R4
A794A:  MOV             R1, R10
A794C:  MOVS            R2, #1
A794E:  VLDR            S22, [SP,#0xE0+var_70]
A7952:  VLDR            S20, [SP,#0xE0+var_68]
A7956:  BL              sub_8A1F8
A795A:  VSUB.F32        S20, S20, S18
A795E:  VCMP.F32        S22, S20
A7962:  VMRS            APSR_nzcv, FPSCR
A7966:  IT GE
A7968:  VMOVGE.F32      S20, S22
A796C:  LDR             R0, [SP,#0xE0+var_B8]
A796E:  LDR             R4, [SP,#0xE0+var_C0]
A7970:  CBNZ            R0, loc_A799A
A7972:  LDR             R2, [SP,#0xE0+var_B0]
A7974:  CMP             R4, #0
A7976:  LDR             R1, [SP,#0xE0+var_64]
A7978:  STR             R1, [SP,#0xE0+var_50]
A797A:  MOV.W           R1, #0xF
A797E:  VSTR            S20, [SP,#0xE0+s]
A7982:  LDR.W           R0, [R6,#0x27C]; int
A7986:  LDR             R2, [R2,#8]
A7988:  IT EQ
A798A:  MOVEQ           R1, #5
A798C:  LDR             R3, [SP,#0xE0+var_D0]; int
A798E:  STRD.W          R2, R1, [SP,#0xE0+var_E0]; float
A7992:  ADD             R1, SP, #0xE0+var_70; int
A7994:  ADD             R2, SP, #0xE0+s; int
A7996:  BL              sub_9D624
A799A:  CMP             R4, #0
A799C:  BNE             loc_A7A26
A799E:  ADD             R0, SP, #0xE0+var_70
A79A0:  MOV.W           R1, #0x3F800000
A79A4:  ADDS            R0, #8
A79A6:  STR             R0, [SP,#0xE0+var_C0]
A79A8:  LDRB.W          R0, [R7,#var_81]
A79AC:  MOV.W           R10, #0x3F800000
A79B0:  LSLS            R0, R0, #0x1F
A79B2:  MOV.W           R0, #0x15
A79B6:  IT NE
A79B8:  MOVNE           R0, #0x16
A79BA:  CMP             R5, #0
A79BC:  IT NE
A79BE:  MOVNE           R0, #0x16
A79C0:  BL              sub_88C10
A79C4:  STR             R0, [SP,#0xE0+var_D4]
A79C6:  MOVS            R0, #0
A79C8:  MOV.W           R1, #0x3F800000
A79CC:  BL              sub_88C10
A79D0:  LDR             R1, [SP,#0xE0+var_6C]
A79D2:  VCMP.F32        S16, S18
A79D6:  STR             R1, [SP,#0xE0+var_50]
A79D8:  MOVS            R1, #0xA
A79DA:  STR             R0, [SP,#0xE0+var_D0]
A79DC:  VMRS            APSR_nzcv, FPSCR
A79E0:  LDR.W           R0, [R6,#0x27C]; int
A79E4:  VSTR            S20, [SP,#0xE0+s]
A79E8:  IT LS
A79EA:  MOVLS           R1, #0xF
A79EC:  LDR             R4, [SP,#0xE0+var_B0]
A79EE:  LDR             R3, [SP,#0xE0+var_D4]; int
A79F0:  LDR             R2, [R4,#8]
A79F2:  STRD.W          R2, R1, [SP,#0xE0+var_E0]; float
A79F6:  ADD             R1, SP, #0xE0+s; int
A79F8:  LDR             R2, [SP,#0xE0+var_C0]; int
A79FA:  BL              sub_9D624
A79FE:  VLDR            S0, [R4,#4]
A7A02:  MOVS            R3, #3
A7A04:  VLDR            S2, [SP,#0xE0+var_6C]
A7A08:  VADD.F32        S4, S20, S0
A7A0C:  LDR.W           R0, [R6,#0x27C]
A7A10:  VADD.F32        S0, S0, S2
A7A14:  STRD.W          R3, R10, [SP,#0xE0+var_E0]
A7A18:  LDR             R3, [SP,#0xE0+var_D0]
A7A1A:  VMOV            R1, S4
A7A1E:  VMOV            R2, S0
A7A22:  BL              sub_8A0BC
A7A26:  ADD             R3, SP, #0xE0+var_70
A7A28:  LDR             R4, [SP,#0xE0+var_B0]
A7A2A:  LDM             R3, {R0-R3}; int
A7A2C:  LDR             R4, [R4,#8]
A7A2E:  STR             R4, [SP,#0xE0+var_E0]; float
A7A30:  BL              sub_89E08
A7A34:  LDR             R2, [SP,#0xE0+var_BC]; int
A7A36:  LDR.W           R10, [SP,#0xE0+var_C8]
A7A3A:  CBZ             R2, loc_A7A82
A7A3C:  LDR             R0, [SP,#0xE0+var_B8]
A7A3E:  CBNZ            R0, loc_A7A82
A7A40:  LDR             R0, [SP,#0xE0+var_B0]
A7A42:  ADD             R1, SP, #0xE0+var_8C
A7A44:  VLDR            S0, [SP,#0xE0+var_70]
A7A48:  MOVS            R3, #0; int
A7A4A:  VLDR            S2, [SP,#0xE0+var_6C]
A7A4E:  VLDR            S4, [R0]
A7A52:  VLDR            S6, [R0,#4]
A7A56:  VADD.F32        S0, S0, S4
A7A5A:  LDR             R0, [SP,#0xE0+var_64]
A7A5C:  VADD.F32        S2, S2, S6
A7A60:  STR             R0, [SP,#0xE0+var_98]
A7A62:  MOVS            R0, #0
A7A64:  VSTR            S20, [SP,#0xE0+var_9C]
A7A68:  STRD.W          R0, R1, [SP,#0xE0+var_E0]; int
A7A6C:  ADD             R1, SP, #0xE0+var_9C; int
A7A6E:  STRD.W          R0, R0, [SP,#0xE0+var_8C]
A7A72:  STR             R0, [SP,#0xE0+var_D8]; int
A7A74:  ADD             R0, SP, #0xE0+s; int
A7A76:  VSTR            S0, [SP,#0xE0+s]
A7A7A:  VSTR            S2, [SP,#0xE0+var_50]
A7A7E:  BL              sub_89A94
A7A82:  VLDR            S0, [SP,#0xE0+var_5C]
A7A86:  MOVW            R0, #0x1A44
A7A8A:  ADD.W           R4, R11, R0
A7A8E:  VCMP.F32        S0, #0.0
A7A92:  VMRS            APSR_nzcv, FPSCR
A7A96:  BLE             loc_A7AC6
A7A98:  LDR             R0, [SP,#0xE0+var_B0]
A7A9A:  MOVS            R2, #1
A7A9C:  VLDR            S0, [SP,#0xE0+var_6C]
A7AA0:  MOVS            R3, #0; int
A7AA2:  VLDR            S2, [SP,#0xE0+var_68]
A7AA6:  VLDR            S4, [R0,#4]
A7AAA:  VLDR            S6, [R0,#0x18]
A7AAE:  VADD.F32        S0, S0, S4
A7AB2:  STR             R2, [SP,#0xE0+var_E0]; int
A7AB4:  VADD.F32        S2, S2, S6
A7AB8:  MOV             R2, R8; s
A7ABA:  VMOV            R1, S0; int
A7ABE:  VMOV            R0, S2; int
A7AC2:  BL              sub_89110
A7AC6:  LDR             R0, [SP,#0xE0+var_CC]
A7AC8:  CBZ             R0, loc_A7AD0
A7ACA:  LDR             R0, [SP,#0xE0+var_B4]
A7ACC:  CBNZ            R5, loc_A7AF6
A7ACE:  B               loc_A7AE6
A7AD0:  LDR             R1, [R4,#0x78]
A7AD2:  LDR             R0, [SP,#0xE0+var_B4]
A7AD4:  SUBS            R1, R1, R0
A7AD6:  IT NE
A7AD8:  MOVNE           R1, #1
A7ADA:  ORRS            R1, R5
A7ADC:  BEQ             loc_A7AE6
A7ADE:  CMP             R5, #0
A7AE0:  BEQ.W           loc_A782E
A7AE4:  B               loc_A7AF6
A7AE6:  LDR.W           R1, [R6,#0x130]
A7AEA:  CMP             R1, #0
A7AEC:  IT EQ
A7AEE:  STREQ.W         R0, [R6,#0x30C]
A7AF2:  BL              sub_984A4
A7AF6:  ADD.W           R6, R11, #0x1520
A7AFA:  ANDS.W          R0, R9, #0x10
A7AFE:  BNE             loc_A7B2A
A7B00:  TST.W           R10, #0x1E
A7B04:  IT EQ
A7B06:  ORREQ.W         R10, R10, #4
A7B0A:  MOVS.W          R0, R10,LSL#29
A7B0E:  BMI             loc_A7B50
A7B10:  MOVS.W          R0, R10,LSL#30
A7B14:  BMI             loc_A7B56
A7B16:  MOVS.W          R0, R10,LSL#28
A7B1A:  BMI             loc_A7B64
A7B1C:  MOVS            R0, #0
A7B1E:  VLDR            S0, =3.4028e38
A7B22:  STR             R0, [SP,#0xE0+var_50]
A7B24:  VSTR            S16, [SP,#0xE0+s]
A7B28:  B               loc_A7B94
A7B2A:  VLDR            S0, [R4]
A7B2E:  VCMP.F32        S0, S16
A7B32:  VMRS            APSR_nzcv, FPSCR
A7B36:  IT GE
A7B38:  VMOVGE.F32      S16, S0
A7B3C:  LDR             R1, [SP,#0xE0+var_B0]
A7B3E:  VSTR            S16, [R4]
A7B42:  LDR.W           R0, [R1,#0x4C0]
A7B46:  ORR.W           R0, R0, #0x10
A7B4A:  STR.W           R0, [R1,#0x4C0]
A7B4E:  B               loc_A7BAE
A7B50:  VMOV.F32        S0, #8.0
A7B54:  B               loc_A7B68
A7B56:  VMOV.F32        S0, #4.0
A7B5A:  B               loc_A7B68
A7B5C:  DCD off_114D5C - 0xA77FE
A7B60:  DCFS 0.0
A7B64:  VMOV.F32        S0, #20.0
A7B68:  LDR             R0, [SP,#0xE0+var_C4]
A7B6A:  MOVS            R1, #0
A7B6C:  STR             R1, [SP,#0xE0+var_50]
A7B6E:  VSTR            S16, [SP,#0xE0+s]
A7B72:  LDR             R0, [R0]
A7B74:  ADD.W           R0, R0, #0x1520
A7B78:  VLDR            S4, [R0,#0x44]
A7B7C:  VLDR            S6, [R0,#0x3A8]
A7B80:  VLDR            S2, [R0]
A7B84:  VADD.F32        S6, S6, S4
A7B88:  VADD.F32        S2, S2, S2
A7B8C:  VNMLS.F32       S4, S6, S0
A7B90:  VADD.F32        S0, S2, S4
A7B94:  MOVW            R0, #0xFFFF
A7B98:  ADD             R1, SP, #0xE0+var_9C
A7B9A:  MOVT            R0, #0x7F7F
A7B9E:  MOVS            R2, #0
A7BA0:  STR             R0, [SP,#0xE0+var_9C]
A7BA2:  ADD             R0, SP, #0xE0+s
A7BA4:  MOVS            R3, #0
A7BA6:  VSTR            S0, [SP,#0xE0+var_98]
A7BAA:  BL              sub_97734
A7BAE:  LDR             R3, [R4,#0x64]
A7BB0:  ADD             R4, SP, #0xE0+s
A7BB2:  LDR             R2, =(aCombo02d - 0xA7BBC); "##Combo_%02d" ...
A7BB4:  MOVS            R1, #0x10
A7BB6:  MOV             R0, R4; s
A7BB8:  ADD             R2, PC; "##Combo_%02d"
A7BBA:  BL              sub_886C0
A7BBE:  MOV             R0, R4
A7BC0:  BL              sub_96288
A7BC4:  CMP             R0, #0
A7BC6:  ITTT NE
A7BC8:  MOVNE           R4, R0
A7BCA:  LDRBNE.W        R0, [R0,#0x7B]
A7BCE:  CMPNE           R0, #0
A7BD0:  BEQ             loc_A7C22
A7BD2:  ADD             R0, SP, #0xE0+var_8C
A7BD4:  MOV             R1, R4
A7BD6:  BL              sub_96334
A7BDA:  ADD             R5, SP, #0xE0+var_9C
A7BDC:  MOVS.W          R0, R10,LSL#31
A7BE0:  ITT NE
A7BE2:  MOVNE           R0, #0
A7BE4:  STRNE.W         R0, [R4,#0xA0]
A7BE8:  MOV             R1, R4
A7BEA:  MOV             R0, R5
A7BEC:  BL              sub_99094
A7BF0:  LDR             R1, [SP,#0xE0+var_64]
A7BF2:  ADD.W           R3, R4, #0xA0
A7BF6:  LDR             R0, [SP,#0xE0+var_70]
A7BF8:  ADD             R4, SP, #0xE0+var_A4
A7BFA:  ADD             R2, SP, #0xE0+var_8C
A7BFC:  STR             R5, [SP,#0xE0+var_E0]
A7BFE:  STRD.W          R0, R1, [SP,#0xE0+var_AC]
A7C02:  MOVS            R0, #1
A7C04:  ADD             R1, SP, #0xE0+var_70
A7C06:  STRD.W          R1, R0, [SP,#0xE0+var_DC]
A7C0A:  ADD             R1, SP, #0xE0+var_AC
A7C0C:  MOV             R0, R4
A7C0E:  BL              sub_98C8C
A7C12:  MOVS            R0, #0
A7C14:  ADD             R2, SP, #0xE0+var_AC
A7C16:  STRD.W          R0, R0, [SP,#0xE0+var_AC]
A7C1A:  MOV             R0, R4
A7C1C:  MOVS            R1, #0
A7C1E:  BL              sub_976E0
A7C22:  LDR             R0, [SP,#0xE0+var_B0]
A7C24:  LDR             R1, [R6]
A7C26:  LDR             R0, [R0]
A7C28:  STRD.W          R0, R1, [SP,#0xE0+var_9C]
A7C2C:  ADD             R1, SP, #0xE0+var_9C
A7C2E:  MOVS            R0, #1
A7C30:  BL              sub_96058
A7C34:  MOVW            R2, #0x143
A7C38:  ADD             R0, SP, #0xE0+s
A7C3A:  MOVT            R2, #0x400
A7C3E:  MOVS            R1, #0
A7C40:  BL              sub_8FD20
A7C44:  MOV             R4, R0
A7C46:  MOVS            R0, #1
A7C48:  BL              sub_9618C
A7C4C:  CMP             R4, #0
A7C4E:  IT EQ
A7C50:  BLEQ            sub_989E8
A7C54:  LDR             R0, [SP,#0xE0+var_44]
A7C56:  LDR             R1, =(__stack_chk_guard_ptr - 0xA7C5C)
A7C58:  ADD             R1, PC; __stack_chk_guard_ptr
A7C5A:  LDR             R1, [R1]; __stack_chk_guard
A7C5C:  LDR             R1, [R1]
A7C5E:  CMP             R1, R0
A7C60:  ITTTT EQ
A7C62:  MOVEQ           R0, R4
A7C64:  ADDEQ           SP, SP, #0xA0
A7C66:  VPOPEQ          {D8-D11}
A7C6A:  ADDEQ           SP, SP, #4
A7C6C:  ITT EQ
A7C6E:  POPEQ.W         {R8-R11}
A7C72:  POPEQ           {R4-R7,PC}
A7C74:  BLX             __stack_chk_fail
