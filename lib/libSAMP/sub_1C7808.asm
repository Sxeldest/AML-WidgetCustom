; =========================================================
; Game Engine Function: sub_1C7808
; Address            : 0x1C7808 - 0x1C82E0
; =========================================================

1C7808:  PUSH            {R4-R11,LR}
1C780C:  ADD             R11, SP, #0x1C
1C7810:  SUB             SP, SP, #4
1C7814:  VPUSH           {D8-D15}
1C7818:  SUB             SP, SP, #0xA0
1C781C:  STR             R3, [SP,#0x100+var_F8]
1C7820:  MOV             R3, R0
1C7824:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C7838)
1C7828:  LDR             R7, [R11,#arg_0]
1C782C:  LDR             LR, [R11,#arg_4]
1C7830:  LDR             R0, [PC,R0]; __stack_chk_guard
1C7834:  LDR             R0, [R0]
1C7838:  STR             R0, [R11,#var_68]
1C783C:  MOVW            R0, #0x12E8
1C7840:  LDR             R0, [R3,R0]
1C7844:  LDR             R8, [R3,#0xD0]
1C7848:  STR             R0, [SP,#0x100+var_94]
1C784C:  LDR             R5, [R7]
1C7850:  CMP             R8, #0
1C7854:  STR             R3, [SP,#0x100+var_B4]
1C7858:  STR             R1, [SP,#0x100+var_FC]
1C785C:  BEQ             loc_1C7EFC
1C7860:  ADD             R0, R1, #0x148
1C7864:  VMOV            S0, R5
1C7868:  ADD             R0, R0, #0x28800
1C786C:  STR             R0, [SP,#0x100+var_AC]
1C7870:  ADD             R0, R1, #0x144
1C7874:  STR             R5, [SP,#0x100+var_A4]
1C7878:  ADD             R0, R0, #0x28800
1C787C:  STR             R0, [SP,#0x100+var_B0]
1C7880:  ADD             R0, R1, #0x940
1C7884:  VMOV.F32        S4, #0.5
1C7888:  ADD             R0, R0, #0x28000
1C788C:  STR             R0, [SP,#0x100+var_B8]
1C7890:  ADD             R0, R1, #0x13C
1C7894:  VMOV.F32        S6, #-2.5
1C7898:  ADD             R0, R0, #0x28800
1C789C:  STR             R0, [SP,#0x100+var_BC]
1C78A0:  ADD             R0, R1, #0x138
1C78A4:  VMOV.F32        S8, #1.5
1C78A8:  ADD             R0, R0, #0x28800
1C78AC:  STR             R0, [SP,#0x100+var_C0]
1C78B0:  ADD             R0, R1, #0x134
1C78B4:  VMOV.F32        S10, #-0.5
1C78B8:  ADD             R0, R0, #0x28800
1C78BC:  STR             R0, [SP,#0x100+var_C4]
1C78C0:  ADD             R0, R1, #0x930
1C78C4:  MOV             R10, #0
1C78C8:  ADD             R0, R0, #0x28000
1C78CC:  STR             R0, [SP,#0x100+var_C8]
1C78D0:  ADD             R0, R1, #0x12C
1C78D4:  RSB             R12, R8, #0
1C78D8:  ADD             R0, R0, #0x28800
1C78DC:  STR             R0, [SP,#0x100+var_CC]
1C78E0:  ADD             R0, R1, #0x128
1C78E4:  ADD             R0, R0, #0x28800
1C78E8:  STR             R0, [SP,#0x100+var_D0]
1C78EC:  ADD             R0, R1, #0x124
1C78F0:  ADD             R0, R0, #0x28800
1C78F4:  STR             R0, [SP,#0x100+var_D4]
1C78F8:  ADD             R0, R1, #0x920
1C78FC:  ADD             R0, R0, #0x28000
1C7900:  STR             R0, [SP,#0x100+var_D8]
1C7904:  ADD             R0, R1, #0x11C
1C7908:  ADD             R0, R0, #0x28800
1C790C:  STR             R0, [SP,#0x100+var_DC]
1C7910:  ADD             R0, R1, #0x118
1C7914:  ADD             R0, R0, #0x28800
1C7918:  STR             R0, [SP,#0x100+var_E0]
1C791C:  ADD             R0, R1, #0x114
1C7920:  ADD             R0, R0, #0x28800
1C7924:  STR             R0, [SP,#0x100+var_E4]
1C7928:  ADD             R0, R1, #0x910
1C792C:  ADD             R0, R0, #0x28000
1C7930:  STR             R0, [SP,#0x100+var_E8]
1C7934:  ADD             R0, R1, #0x10C
1C7938:  ADD             R0, R0, #0x28800
1C793C:  STR             R0, [SP,#0x100+var_EC]
1C7940:  ADD             R0, R1, #0x108
1C7944:  ADD             R0, R0, #0x28800
1C7948:  STR             R0, [SP,#0x100+var_F0]
1C794C:  ADD             R0, R1, #0x104
1C7950:  ADD             R0, R0, #0x28800
1C7954:  STR             R0, [SP,#0x100+var_F4]
1C7958:  MOVW            R0, #0x1E90
1C795C:  ADD             R6, R3, R0
1C7960:  ADD             R0, R1, #0xD8
1C7964:  STR             R0, [SP,#0x100+var_A8]
1C7968:  MOV             R0, R8,LSL#1
1C796C:  STR             R0, [SP,#0x100+var_98]
1C7970:  VCVT.F32.S32    S2, S0
1C7974:  VLDR            S0, =0.000061035
1C7978:  STR             R12, [SP,#0x100+var_A0]
1C797C:  VMUL.F32        S2, S2, S0
1C7980:  ADD             R0, R10, R10,LSL#3
1C7984:  MOV             R5, R8
1C7988:  MOVW            R1, #0x1D4C
1C798C:  STR             LR, [SP,#0x100+var_9C]
1C7990:  ADD             R0, R3, R0,LSL#2
1C7994:  MOV             R12, R6
1C7998:  ADD             R8, R0, R1
1C799C:  ADD             R1, SP, #0x100+var_90
1C79A0:  LDM             R8!, {R3,R4,R7,LR}
1C79A4:  STM             R1!, {R3,R4,R7,LR}
1C79A8:  LDR             LR, [SP,#0x100+var_9C]
1C79AC:  LDM             R8, {R0,R3,R4,R6,R7}
1C79B0:  MOV             R8, R5
1C79B4:  CMP             LR, #0
1C79B8:  STM             R1, {R0,R3,R4,R6,R7}
1C79BC:  MOV             R6, R12
1C79C0:  LDR             R5, [SP,#0x100+var_98]
1C79C4:  BNE             loc_1C7B50
1C79C8:  ADD             R0, R2, R10,LSL#2
1C79CC:  ADD             R3, R0, R8,LSL#2
1C79D0:  ADD             R1, R0, R5,LSL#2
1C79D4:  VLDR            S12, [R0]
1C79D8:  VLDR            S14, [R3]
1C79DC:  LDR             R3, [SP,#0x100+var_A0]
1C79E0:  VMUL.F32        S11, S12, S6
1C79E4:  VLDR            S3, [R1]
1C79E8:  VSUB.F32        S5, S12, S14
1C79EC:  VADD.F32        S13, S14, S14
1C79F0:  MOVW            R1, #0x1E94
1C79F4:  ADD             R0, R0, R3,LSL#2
1C79F8:  VMUL.F32        S9, S3, S4
1C79FC:  VMUL.F32        S3, S3, S10
1C7A00:  VLDR            S1, [R0]
1C7A04:  VMUL.F32        S14, S14, S4
1C7A08:  LDR             R0, [SP,#0x100+var_B4]
1C7A0C:  VMUL.F32        S7, S1, S10
1C7A10:  VADD.F32        S1, S11, S1
1C7A14:  ADD             R0, R0, R10,LSL#3
1C7A18:  VMUL.F32        S5, S5, S8
1C7A1C:  ADD             R1, R0, R1
1C7A20:  VADD.F32        S9, S9, S7
1C7A24:  VADD.F32        S1, S1, S13
1C7A28:  VADD.F32        S14, S14, S7
1C7A2C:  VADD.F32        S5, S9, S5
1C7A30:  VADD.F32        S1, S1, S3
1C7A34:  VMUL.F32        S5, S5, S2
1C7A38:  VADD.F32        S1, S1, S5
1C7A3C:  VMUL.F32        S1, S1, S2
1C7A40:  VADD.F32        S14, S14, S1
1C7A44:  VLDR            S1, [R6]
1C7A48:  VMUL.F32        S14, S14, S2
1C7A4C:  VADD.F32        S12, S14, S12
1C7A50:  VLDR            S14, [R1]
1C7A54:  MOVW            R1, #0x1E98
1C7A58:  ADD             R0, R0, R1
1C7A5C:  VSUB.F32        S14, S14, S12
1C7A60:  VMUL.F32        S14, S14, S1
1C7A64:  VADD.F32        S12, S14, S12
1C7A68:  VLDR            S14, [R0]
1C7A6C:  LDR             R0, [SP,#0x100+var_F4]
1C7A70:  VSUB.F32        S14, S14, S12
1C7A74:  VMUL.F32        S14, S14, S1
1C7A78:  VLDR            S1, [R0]
1C7A7C:  VADD.F32        S12, S14, S12
1C7A80:  VLDR            S14, [SP,#0x100+var_90]
1C7A84:  VMUL.F32        S14, S14, S12
1C7A88:  VSUB.F32        S14, S1, S14
1C7A8C:  VSTR            S14, [R0]
1C7A90:  VLDR            S14, [SP,#0x100+var_8C]
1C7A94:  LDR             R0, [SP,#0x100+var_F0]
1C7A98:  VMUL.F32        S14, S14, S12
1C7A9C:  VLDR            S1, [R0]
1C7AA0:  VSUB.F32        S14, S1, S14
1C7AA4:  VSTR            S14, [R0]
1C7AA8:  VLDR            S14, [SP,#0x100+var_88]
1C7AAC:  LDR             R0, [SP,#0x100+var_EC]
1C7AB0:  VMUL.F32        S14, S14, S12
1C7AB4:  VLDR            S1, [R0]
1C7AB8:  VSUB.F32        S14, S1, S14
1C7ABC:  VSTR            S14, [R0]
1C7AC0:  VLDR            S14, [SP,#0x100+var_84]
1C7AC4:  LDR             R0, [SP,#0x100+var_E8]
1C7AC8:  VMUL.F32        S14, S14, S12
1C7ACC:  VLDR            S1, [R0]
1C7AD0:  VSUB.F32        S14, S1, S14
1C7AD4:  VSTR            S14, [R0]
1C7AD8:  VLDR            S14, [SP,#0x100+var_80]
1C7ADC:  LDR             R0, [SP,#0x100+var_E4]
1C7AE0:  VMUL.F32        S14, S14, S12
1C7AE4:  VLDR            S1, [R0]
1C7AE8:  VSUB.F32        S14, S1, S14
1C7AEC:  VSTR            S14, [R0]
1C7AF0:  VLDR            S14, [SP,#0x100+var_7C]
1C7AF4:  LDR             R0, [SP,#0x100+var_E0]
1C7AF8:  VMUL.F32        S14, S14, S12
1C7AFC:  VLDR            S1, [R0]
1C7B00:  VSUB.F32        S14, S1, S14
1C7B04:  VSTR            S14, [R0]
1C7B08:  VLDR            S14, [SP,#0x100+var_78]
1C7B0C:  LDR             R0, [SP,#0x100+var_DC]
1C7B10:  VMUL.F32        S14, S14, S12
1C7B14:  VLDR            S1, [R0]
1C7B18:  VSUB.F32        S14, S1, S14
1C7B1C:  VSTR            S14, [R0]
1C7B20:  VLDR            S14, [SP,#0x100+var_74]
1C7B24:  LDR             R0, [SP,#0x100+var_D8]
1C7B28:  VMUL.F32        S14, S14, S12
1C7B2C:  VLDR            S1, [R0]
1C7B30:  VSUB.F32        S14, S1, S14
1C7B34:  VSTR            S14, [R0]
1C7B38:  VLDR            S14, [SP,#0x100+var_70]
1C7B3C:  LDR             R0, [SP,#0x100+var_D4]
1C7B40:  VMUL.F32        S12, S14, S12
1C7B44:  VLDR            S14, [R0]
1C7B48:  VSUB.F32        S12, S14, S12
1C7B4C:  VSTR            S12, [R0]
1C7B50:  LDR             R7, [R11,#arg_C]
1C7B54:  CMP             R7, #0
1C7B58:  BEQ             loc_1C7D30
1C7B5C:  LDR             R0, [SP,#0x100+var_B4]
1C7B60:  MOV             R1, LR
1C7B64:  MOVW            R3, #0x1E94
1C7B68:  ADD             R1, R1, R1,LSL#3
1C7B6C:  ADD             R0, R0, R10,LSL#3
1C7B70:  MOV             R9, R10
1C7B74:  ADD             LR, R0, R3
1C7B78:  LDR             R0, [SP,#0x100+var_A8]
1C7B7C:  MOV             R3, R7
1C7B80:  LDR             R7, [SP,#0x100+var_A4]
1C7B84:  LDR             R10, [SP,#0x100+var_A0]
1C7B88:  ADD             R1, R0, R1,LSL#2
1C7B8C:  VLDR            S12, [SP,#0x100+var_90]
1C7B90:  MOV             R4, #0
1C7B94:  VLDR            S14, [SP,#0x100+var_8C]
1C7B98:  VLDR            S1, [SP,#0x100+var_88]
1C7B9C:  VLDR            S3, [SP,#0x100+var_84]
1C7BA0:  VLDR            S5, [SP,#0x100+var_70]
1C7BA4:  VLDR            S7, [SP,#0x100+var_74]
1C7BA8:  VLDR            S9, [SP,#0x100+var_78]
1C7BAC:  VLDR            S11, [SP,#0x100+var_7C]
1C7BB0:  VLDR            S13, [SP,#0x100+var_80]
1C7BB4:  MUL             R6, R4, R8
1C7BB8:  SUBS            R3, R3, #1
1C7BBC:  ADD             R6, R2, R6,LSL#2
1C7BC0:  ADD             R6, R6, R9,LSL#2
1C7BC4:  ADD             R0, R6, R5,LSL#2
1C7BC8:  ADD             R5, R6, R10,LSL#2
1C7BCC:  VLDR            S15, [R6]
1C7BD0:  ADD             R6, R6, R8,LSL#2
1C7BD4:  VLDR            S18, [R5]
1C7BD8:  VLDR            S16, [R6]
1C7BDC:  VMUL.F32        S20, S15, S6
1C7BE0:  VLDR            S22, [R0]
1C7BE4:  VMUL.F32        S26, S18, S10
1C7BE8:  VSUB.F32        S24, S15, S16
1C7BEC:  LDR             R5, [SP,#0x100+var_98]
1C7BF0:  VMUL.F32        S28, S22, S4
1C7BF4:  MOV             R6, R12
1C7BF8:  VADD.F32        S30, S16, S16
1C7BFC:  VMUL.F32        S22, S22, S10
1C7C00:  VMUL.F32        S16, S16, S4
1C7C04:  VADD.F32        S18, S20, S18
1C7C08:  VMOV            S20, R7
1C7C0C:  VMUL.F32        S24, S24, S8
1C7C10:  VCVT.F32.S32    S20, S20
1C7C14:  VADD.F32        S28, S28, S26
1C7C18:  VADD.F32        S16, S16, S26
1C7C1C:  VADD.F32        S18, S18, S30
1C7C20:  VMUL.F32        S20, S20, S0
1C7C24:  VADD.F32        S24, S28, S24
1C7C28:  VADD.F32        S18, S18, S22
1C7C2C:  VMUL.F32        S22, S24, S20
1C7C30:  VADD.F32        S18, S18, S22
1C7C34:  VMUL.F32        S18, S18, S20
1C7C38:  VADD.F32        S16, S16, S18
1C7C3C:  VLDR            S18, [LR,#4]
1C7C40:  VMUL.F32        S16, S16, S20
1C7C44:  VLDR            S20, [R6]
1C7C48:  VADD.F32        S15, S16, S15
1C7C4C:  VLDR            S16, [LR]
1C7C50:  VSUB.F32        S16, S16, S15
1C7C54:  VMUL.F32        S16, S16, S20
1C7C58:  VADD.F32        S15, S16, S15
1C7C5C:  VSUB.F32        S16, S18, S15
1C7C60:  VMUL.F32        S16, S16, S20
1C7C64:  VADD.F32        S16, S16, S15
1C7C68:  VSTM            LR, {S15-S16}
1C7C6C:  VMUL.F32        S20, S12, S16
1C7C70:  VMUL.F32        S18, S1, S16
1C7C74:  VLDR            S17, [R1,#-0x20]
1C7C78:  VMUL.F32        S22, S9, S16
1C7C7C:  VLDR            S21, [R1,#-0x18]
1C7C80:  VMUL.F32        S24, S7, S16
1C7C84:  VLDR            S29, [R1,#-8]
1C7C88:  VMUL.F32        S26, S14, S16
1C7C8C:  VLDR            S19, [R1,#-0x1C]
1C7C90:  VMUL.F32        S28, S3, S16
1C7C94:  VLDR            S23, [R1,#-0x14]
1C7C98:  VMUL.F32        S15, S13, S16
1C7C9C:  VLDR            S25, [R1,#-0x10]
1C7CA0:  VMUL.F32        S30, S11, S16
1C7CA4:  VLDR            S27, [R1,#-0xC]
1C7CA8:  VMUL.F32        S16, S5, S16
1C7CAC:  VLDR            S31, [R1,#-4]
1C7CB0:  VADD.F32        S20, S17, S20
1C7CB4:  VLDR            S17, [R1]
1C7CB8:  VADD.F32        S18, S21, S18
1C7CBC:  VADD.F32        S26, S19, S26
1C7CC0:  VADD.F32        S28, S23, S28
1C7CC4:  VADD.F32        S15, S25, S15
1C7CC8:  VADD.F32        S30, S27, S30
1C7CCC:  VADD.F32        S16, S17, S16
1C7CD0:  VADD.F32        S22, S29, S22
1C7CD4:  VSTR            S20, [R1,#-0x20]
1C7CD8:  VADD.F32        S24, S31, S24
1C7CDC:  VSTR            S26, [R1,#-0x1C]
1C7CE0:  VSTR            S18, [R1,#-0x18]
1C7CE4:  VSTR            S28, [R1,#-0x14]
1C7CE8:  VSTR            S15, [R1,#-0x10]
1C7CEC:  VSTR            S30, [R1,#-0xC]
1C7CF0:  VSTR            S22, [R1,#-8]
1C7CF4:  VSTR            S24, [R1,#-4]
1C7CF8:  VSTR            S16, [R1]
1C7CFC:  ADD             R1, R1, #0x24 ; '$'
1C7D00:  LDR             R0, [SP,#0x100+var_94]
1C7D04:  ADD             R7, R7, R0
1C7D08:  ADD             R4, R4, R7,LSR#14
1C7D0C:  BFC             R7, #0xE, #0x12
1C7D10:  BNE             loc_1C7BB4
1C7D14:  LDR             LR, [SP,#0x100+var_9C]
1C7D18:  MOV             R10, R9
1C7D1C:  LDR             R0, [R11,#arg_C]
1C7D20:  LDR             R3, [SP,#0x100+var_B4]
1C7D24:  ADD             LR, LR, R0
1C7D28:  B               loc_1C7D3C
1C7D2C:  DCFS 0.000061035
1C7D30:  MOV             R4, #0
1C7D34:  LDR             R7, [SP,#0x100+var_A4]
1C7D38:  LDR             R3, [SP,#0x100+var_B4]
1C7D3C:  LDR             R0, [R11,#arg_8]
1C7D40:  LDR             R12, [SP,#0x100+var_A0]
1C7D44:  CMP             LR, R0
1C7D48:  BNE             loc_1C7EE4
1C7D4C:  MUL             R0, R4, R8
1C7D50:  ADD             R0, R2, R0,LSL#2
1C7D54:  ADD             R0, R0, R10,LSL#2
1C7D58:  ADD             R1, R0, R5,LSL#2
1C7D5C:  ADD             R3, R0, R12,LSL#2
1C7D60:  VLDR            S12, [R0]
1C7D64:  ADD             R0, R0, R8,LSL#2
1C7D68:  VLDR            S1, [R3]
1C7D6C:  VLDR            S14, [R0]
1C7D70:  VMUL.F32        S3, S12, S6
1C7D74:  VLDR            S5, [R1]
1C7D78:  VMUL.F32        S9, S1, S10
1C7D7C:  VSUB.F32        S7, S12, S14
1C7D80:  LDR             R3, [SP,#0x100+var_B4]
1C7D84:  VMUL.F32        S11, S5, S4
1C7D88:  MOVW            R1, #0x1E94
1C7D8C:  VADD.F32        S13, S14, S14
1C7D90:  ADD             R0, R3, R10,LSL#3
1C7D94:  VMUL.F32        S5, S5, S10
1C7D98:  ADD             R1, R0, R1
1C7D9C:  VMUL.F32        S14, S14, S4
1C7DA0:  VADD.F32        S1, S3, S1
1C7DA4:  VMOV            S3, R7
1C7DA8:  VMUL.F32        S7, S7, S8
1C7DAC:  VCVT.F32.S32    S3, S3
1C7DB0:  VADD.F32        S11, S11, S9
1C7DB4:  VADD.F32        S14, S14, S9
1C7DB8:  VADD.F32        S1, S1, S13
1C7DBC:  VMUL.F32        S3, S3, S0
1C7DC0:  VADD.F32        S7, S11, S7
1C7DC4:  VADD.F32        S1, S1, S5
1C7DC8:  VMUL.F32        S5, S7, S3
1C7DCC:  VADD.F32        S1, S1, S5
1C7DD0:  VMUL.F32        S1, S1, S3
1C7DD4:  VADD.F32        S14, S14, S1
1C7DD8:  VLDR            S1, [R6]
1C7DDC:  VMUL.F32        S14, S14, S3
1C7DE0:  VADD.F32        S12, S14, S12
1C7DE4:  VLDR            S14, [R1]
1C7DE8:  MOVW            R1, #0x1E98
1C7DEC:  ADD             R0, R0, R1
1C7DF0:  VSUB.F32        S14, S14, S12
1C7DF4:  VMUL.F32        S14, S14, S1
1C7DF8:  VADD.F32        S12, S14, S12
1C7DFC:  VLDR            S14, [R0]
1C7E00:  LDR             R0, [SP,#0x100+var_D0]
1C7E04:  VSUB.F32        S14, S14, S12
1C7E08:  VMUL.F32        S14, S14, S1
1C7E0C:  VLDR            S1, [R0]
1C7E10:  VADD.F32        S12, S14, S12
1C7E14:  VLDR            S14, [SP,#0x100+var_90]
1C7E18:  VMUL.F32        S14, S14, S12
1C7E1C:  VADD.F32        S14, S1, S14
1C7E20:  VSTR            S14, [R0]
1C7E24:  VLDR            S14, [SP,#0x100+var_8C]
1C7E28:  LDR             R0, [SP,#0x100+var_CC]
1C7E2C:  VMUL.F32        S14, S14, S12
1C7E30:  VLDR            S1, [R0]
1C7E34:  VADD.F32        S14, S1, S14
1C7E38:  VSTR            S14, [R0]
1C7E3C:  VLDR            S14, [SP,#0x100+var_88]
1C7E40:  LDR             R0, [SP,#0x100+var_C8]
1C7E44:  VMUL.F32        S14, S14, S12
1C7E48:  VLDR            S1, [R0]
1C7E4C:  VADD.F32        S14, S1, S14
1C7E50:  VSTR            S14, [R0]
1C7E54:  VLDR            S14, [SP,#0x100+var_84]
1C7E58:  LDR             R0, [SP,#0x100+var_C4]
1C7E5C:  VMUL.F32        S14, S14, S12
1C7E60:  VLDR            S1, [R0]
1C7E64:  VADD.F32        S14, S1, S14
1C7E68:  VSTR            S14, [R0]
1C7E6C:  VLDR            S14, [SP,#0x100+var_80]
1C7E70:  LDR             R0, [SP,#0x100+var_C0]
1C7E74:  VMUL.F32        S14, S14, S12
1C7E78:  VLDR            S1, [R0]
1C7E7C:  VADD.F32        S14, S1, S14
1C7E80:  VSTR            S14, [R0]
1C7E84:  VLDR            S14, [SP,#0x100+var_7C]
1C7E88:  LDR             R0, [SP,#0x100+var_BC]
1C7E8C:  VMUL.F32        S14, S14, S12
1C7E90:  VLDR            S1, [R0]
1C7E94:  VADD.F32        S14, S1, S14
1C7E98:  VSTR            S14, [R0]
1C7E9C:  VLDR            S14, [SP,#0x100+var_78]
1C7EA0:  LDR             R0, [SP,#0x100+var_B8]
1C7EA4:  VMUL.F32        S14, S14, S12
1C7EA8:  VLDR            S1, [R0]
1C7EAC:  VADD.F32        S14, S1, S14
1C7EB0:  VSTR            S14, [R0]
1C7EB4:  VLDR            S14, [SP,#0x100+var_74]
1C7EB8:  LDR             R0, [SP,#0x100+var_B0]
1C7EBC:  VMUL.F32        S14, S14, S12
1C7EC0:  VLDR            S1, [R0]
1C7EC4:  VADD.F32        S14, S1, S14
1C7EC8:  VSTR            S14, [R0]
1C7ECC:  VLDR            S14, [SP,#0x100+var_70]
1C7ED0:  LDR             R0, [SP,#0x100+var_AC]
1C7ED4:  VMUL.F32        S12, S14, S12
1C7ED8:  VLDR            S14, [R0]
1C7EDC:  VADD.F32        S12, S14, S12
1C7EE0:  VSTR            S12, [R0]
1C7EE4:  LDR             R9, [R11,#arg_C]
1C7EE8:  ADD             R10, R10, #1
1C7EEC:  CMP             R10, R8
1C7EF0:  SUB             LR, LR, R9
1C7EF4:  BNE             loc_1C7980
1C7EF8:  B               loc_1C7F04
1C7EFC:  MOV             R4, #0
1C7F00:  MOV             R7, R5
1C7F04:  LDR             R0, [SP,#0x100+var_FC]
1C7F08:  LDR             R0, [R0,#0x38]
1C7F0C:  STR             R0, [SP,#0x100+var_BC]
1C7F10:  CMP             R0, #0
1C7F14:  BEQ             loc_1C82A0
1C7F18:  VMOV.F32        S2, #0.5
1C7F1C:  RSB             R3, R8, #0
1C7F20:  VMOV.F32        S4, #-2.5
1C7F24:  VLDR            S0, =0.000061035
1C7F28:  VMOV.F32        S6, #1.5
1C7F2C:  MOV             R0, R8,LSL#1
1C7F30:  VMOV.F32        S8, #-0.5
1C7F34:  MOV             R5, #0
1C7F38:  MOVW            R12, #0x1EE8
1C7F3C:  STR             R0, [SP,#0x100+var_C0]
1C7F40:  ADD             R0, R5, R5,LSL#1
1C7F44:  LDR             R6, [SP,#0x100+var_B4]
1C7F48:  ADD             R1, R6, R0,LSL#4
1C7F4C:  MOVW            R0, #0x1EDC
1C7F50:  LDR             R0, [R1,R0]
1C7F54:  STR             R5, [SP,#0x100+var_B8]
1C7F58:  CMP             R0, #0
1C7F5C:  BEQ             loc_1C828C
1C7F60:  LDR             R9, [R11,#arg_C]
1C7F64:  CMP             R8, #0
1C7F68:  BEQ             loc_1C828C
1C7F6C:  MOVW            R7, #0x40CC
1C7F70:  ADD             R4, R0, R7
1C7F74:  MOVW            R7, #0x1EE0
1C7F78:  STR             R4, [SP,#0x100+var_AC]
1C7F7C:  ADD             R7, R1, R7
1C7F80:  MOV             R10, #0
1C7F84:  VLDR            S10, [R7]
1C7F88:  MOVW            R7, #0x40C8
1C7F8C:  ADD             R4, R0, R7
1C7F90:  LDR             R7, [R11,#arg_0]
1C7F94:  STR             R4, [SP,#0x100+var_B0]
1C7F98:  ADD             R0, R0, #0xC8
1C7F9C:  LDR             R4, [R7]
1C7FA0:  MOVW            R7, #0x1EE4
1C7FA4:  STR             R4, [SP,#0x100+var_A0]
1C7FA8:  VMOV            S12, R4
1C7FAC:  ADD             R4, R1, R7
1C7FB0:  VCVT.F32.S32    S12, S12
1C7FB4:  LDR             R5, [SP,#0x100+var_C0]
1C7FB8:  STR             R4, [SP,#0x100+var_98]
1C7FBC:  STR             R0, [SP,#0x100+var_A8]
1C7FC0:  STR             R1, [SP,#0x100+var_A4]
1C7FC4:  VMUL.F32        S12, S12, S0
1C7FC8:  CMP             LR, #0
1C7FCC:  BEQ             loc_1C80F4
1C7FD0:  CMP             R9, #0
1C7FD4:  BEQ             loc_1C81A4
1C7FD8:  LDR             R0, [SP,#0x100+var_A8]
1C7FDC:  ADD             R7, R1, R10,LSL#2
1C7FE0:  STR             LR, [SP,#0x100+var_9C]
1C7FE4:  MOV             R4, #0
1C7FE8:  ADD             R0, R0, LR,LSL#2
1C7FEC:  ADD             LR, R7, R12
1C7FF0:  LDR             R7, [SP,#0x100+var_A0]
1C7FF4:  MOV             R12, R3
1C7FF8:  MOV             R3, R8
1C7FFC:  MOV             R1, R5
1C8000:  MOV             R8, R9
1C8004:  MUL             R5, R4, R3
1C8008:  SUBS            R8, R8, #1
1C800C:  ADD             R5, R2, R5,LSL#2
1C8010:  ADD             R5, R5, R10,LSL#2
1C8014:  ADD             R6, R5, R1,LSL#2
1C8018:  ADD             R9, R5, R12,LSL#2
1C801C:  VLDR            S14, [R5]
1C8020:  ADD             R5, R5, R3,LSL#2
1C8024:  VLDR            S3, [R9]
1C8028:  VLDR            S1, [R5]
1C802C:  VMUL.F32        S5, S14, S4
1C8030:  VLDR            S7, [R6]
1C8034:  VMUL.F32        S11, S3, S8
1C8038:  VSUB.F32        S9, S14, S1
1C803C:  VMUL.F32        S13, S7, S2
1C8040:  VADD.F32        S15, S1, S1
1C8044:  VMUL.F32        S7, S7, S8
1C8048:  VMUL.F32        S1, S1, S2
1C804C:  VADD.F32        S3, S5, S3
1C8050:  VMOV            S5, R7
1C8054:  VMUL.F32        S9, S9, S6
1C8058:  VCVT.F32.S32    S5, S5
1C805C:  LDR             R5, [SP,#0x100+var_98]
1C8060:  VADD.F32        S13, S13, S11
1C8064:  VADD.F32        S1, S1, S11
1C8068:  VADD.F32        S3, S3, S15
1C806C:  VMUL.F32        S5, S5, S0
1C8070:  VADD.F32        S9, S13, S9
1C8074:  VADD.F32        S3, S3, S7
1C8078:  VMUL.F32        S7, S9, S5
1C807C:  VADD.F32        S3, S3, S7
1C8080:  VMUL.F32        S3, S3, S5
1C8084:  VADD.F32        S1, S1, S3
1C8088:  VLDR            S3, [R5]
1C808C:  VMUL.F32        S1, S1, S5
1C8090:  VADD.F32        S14, S1, S14
1C8094:  VLDR            S1, [LR]
1C8098:  VSUB.F32        S1, S1, S14
1C809C:  VMUL.F32        S1, S1, S3
1C80A0:  VADD.F32        S14, S1, S14
1C80A4:  VMUL.F32        S1, S14, S10
1C80A8:  VSTR            S14, [LR]
1C80AC:  VLDR            S14, [R0]
1C80B0:  VADD.F32        S14, S1, S14
1C80B4:  VSTR            S14, [R0]
1C80B8:  ADD             R0, R0, #4
1C80BC:  LDR             R5, [SP,#0x100+var_94]
1C80C0:  ADD             R7, R7, R5
1C80C4:  ADD             R4, R4, R7,LSR#14
1C80C8:  BFC             R7, #0xE, #0x12
1C80CC:  BNE             loc_1C8004
1C80D0:  LDR             R9, [R11,#arg_C]
1C80D4:  MOV             R5, R1
1C80D8:  LDR             LR, [SP,#0x100+var_9C]
1C80DC:  MOV             R8, R3
1C80E0:  LDR             R1, [SP,#0x100+var_A4]
1C80E4:  MOV             R3, R12
1C80E8:  ADD             LR, LR, R9
1C80EC:  MOVW            R12, #0x1EE8
1C80F0:  B               loc_1C81AC
1C80F4:  ADD             R0, R2, R10,LSL#2
1C80F8:  MOV             LR, #0
1C80FC:  ADD             R7, R0, R5,LSL#2
1C8100:  ADD             R6, R0, R8,LSL#2
1C8104:  VLDR            S14, [R0]
1C8108:  ADD             R0, R0, R3,LSL#2
1C810C:  VLDR            S1, [R6]
1C8110:  VLDR            S3, [R0]
1C8114:  VMUL.F32        S13, S14, S4
1C8118:  VLDR            S5, [R7]
1C811C:  VSUB.F32        S7, S14, S1
1C8120:  VMUL.F32        S9, S3, S8
1C8124:  ADD             R0, R1, R10,LSL#2
1C8128:  VMUL.F32        S11, S5, S2
1C812C:  ADD             R0, R0, R12
1C8130:  VADD.F32        S15, S1, S1
1C8134:  VMUL.F32        S5, S5, S8
1C8138:  VMUL.F32        S1, S1, S2
1C813C:  VADD.F32        S3, S13, S3
1C8140:  VMUL.F32        S7, S7, S6
1C8144:  VADD.F32        S11, S11, S9
1C8148:  VADD.F32        S1, S1, S9
1C814C:  VADD.F32        S3, S3, S15
1C8150:  VADD.F32        S7, S11, S7
1C8154:  VADD.F32        S3, S3, S5
1C8158:  VMUL.F32        S7, S7, S12
1C815C:  VADD.F32        S3, S3, S7
1C8160:  VMUL.F32        S3, S3, S12
1C8164:  VADD.F32        S1, S1, S3
1C8168:  VMUL.F32        S1, S1, S12
1C816C:  VADD.F32        S14, S1, S14
1C8170:  VLDR            S1, [R0]
1C8174:  LDR             R0, [SP,#0x100+var_98]
1C8178:  VLDR            S3, [R0]
1C817C:  LDR             R0, [SP,#0x100+var_B0]
1C8180:  VSUB.F32        S1, S14, S1
1C8184:  VMUL.F32        S1, S1, S3
1C8188:  VSUB.F32        S14, S1, S14
1C818C:  VLDR            S1, [R0]
1C8190:  VMUL.F32        S14, S14, S10
1C8194:  VADD.F32        S14, S1, S14
1C8198:  VSTR            S14, [R0]
1C819C:  CMP             R9, #0
1C81A0:  BNE             loc_1C7FD8
1C81A4:  MOV             R4, #0
1C81A8:  LDR             R7, [SP,#0x100+var_A0]
1C81AC:  LDR             R0, [R11,#arg_8]
1C81B0:  CMP             LR, R0
1C81B4:  BNE             loc_1C827C
1C81B8:  MUL             R0, R4, R8
1C81BC:  MOV             R12, R5
1C81C0:  ADD             R0, R2, R0,LSL#2
1C81C4:  ADD             R0, R0, R10,LSL#2
1C81C8:  ADD             R6, R0, R5,LSL#2
1C81CC:  ADD             R5, R0, R3,LSL#2
1C81D0:  VLDR            S14, [R0]
1C81D4:  ADD             R0, R0, R8,LSL#2
1C81D8:  VLDR            S3, [R5]
1C81DC:  MOV             R5, R12
1C81E0:  VLDR            S1, [R0]
1C81E4:  VMUL.F32        S5, S14, S4
1C81E8:  VLDR            S7, [R6]
1C81EC:  VMUL.F32        S11, S3, S8
1C81F0:  VSUB.F32        S9, S14, S1
1C81F4:  ADD             R0, R1, R10,LSL#2
1C81F8:  VMUL.F32        S13, S7, S2
1C81FC:  MOVW            R12, #0x1EE8
1C8200:  VADD.F32        S15, S1, S1
1C8204:  ADD             R0, R0, R12
1C8208:  VMUL.F32        S7, S7, S8
1C820C:  VMUL.F32        S1, S1, S2
1C8210:  VADD.F32        S3, S5, S3
1C8214:  VMOV            S5, R7
1C8218:  VMUL.F32        S9, S9, S6
1C821C:  VCVT.F32.S32    S5, S5
1C8220:  VADD.F32        S13, S13, S11
1C8224:  VADD.F32        S1, S1, S11
1C8228:  VADD.F32        S3, S3, S15
1C822C:  VMUL.F32        S5, S5, S0
1C8230:  VADD.F32        S9, S13, S9
1C8234:  VADD.F32        S3, S3, S7
1C8238:  VMUL.F32        S7, S9, S5
1C823C:  VADD.F32        S3, S3, S7
1C8240:  VMUL.F32        S3, S3, S5
1C8244:  VADD.F32        S1, S1, S3
1C8248:  VMUL.F32        S1, S1, S5
1C824C:  VADD.F32        S14, S1, S14
1C8250:  VLDR            S1, [R0]
1C8254:  LDR             R0, [SP,#0x100+var_98]
1C8258:  VLDR            S3, [R0]
1C825C:  LDR             R0, [SP,#0x100+var_AC]
1C8260:  VSUB.F32        S1, S1, S14
1C8264:  VMUL.F32        S1, S1, S3
1C8268:  VADD.F32        S14, S1, S14
1C826C:  VLDR            S1, [R0]
1C8270:  VMUL.F32        S14, S14, S10
1C8274:  VADD.F32        S14, S14, S1
1C8278:  VSTR            S14, [R0]
1C827C:  ADD             R10, R10, #1
1C8280:  SUB             LR, LR, R9
1C8284:  CMP             R10, R8
1C8288:  BNE             loc_1C7FC8
1C828C:  LDR             R5, [SP,#0x100+var_B8]
1C8290:  LDR             R0, [SP,#0x100+var_BC]
1C8294:  ADD             R5, R5, #1
1C8298:  CMP             R5, R0
1C829C:  BCC             loc_1C7F40
1C82A0:  LDR             R1, [SP,#0x100+var_F8]
1C82A4:  LDR             R0, [R1]
1C82A8:  ADD             R0, R0, R4
1C82AC:  STR             R0, [R1]
1C82B0:  LDR             R0, [R11,#arg_0]
1C82B4:  STR             R7, [R0]
1C82B8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C82C8)
1C82BC:  LDR             R1, [R11,#var_68]
1C82C0:  LDR             R0, [PC,R0]; __stack_chk_guard
1C82C4:  LDR             R0, [R0]
1C82C8:  SUBS            R0, R0, R1
1C82CC:  SUBEQ           SP, R11, #0x60 ; '`'
1C82D0:  VPOPEQ          {D8-D15}
1C82D4:  ADDEQ           SP, SP, #4
1C82D8:  POPEQ           {R4-R11,PC}
1C82DC:  BL              __stack_chk_fail
