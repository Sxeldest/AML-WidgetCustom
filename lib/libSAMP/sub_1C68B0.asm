; =========================================================
; Game Engine Function: sub_1C68B0
; Address            : 0x1C68B0 - 0x1C6FFC
; =========================================================

1C68B0:  PUSH            {R4-R11,LR}
1C68B4:  ADD             R11, SP, #0x1C
1C68B8:  SUB             SP, SP, #4
1C68BC:  VPUSH           {D8-D15}
1C68C0:  SUB             SP, SP, #0x88
1C68C4:  MOV             LR, R0
1C68C8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C68DC)
1C68CC:  STR             R3, [SP,#0xE8+var_E4]
1C68D0:  LDR             R3, [R11,#arg_0]
1C68D4:  LDR             R0, [PC,R0]; __stack_chk_guard
1C68D8:  LDR             R6, [R11,#arg_C]
1C68DC:  LDR             R10, [R11,#arg_4]
1C68E0:  LDR             R0, [R0]
1C68E4:  STR             R0, [R11,#var_64]
1C68E8:  MOVW            R0, #0x12E8
1C68EC:  LDR             R8, [LR,R0]
1C68F0:  LDR             R5, [LR,#0xD0]
1C68F4:  LDR             R0, [R3]
1C68F8:  CMP             R5, #0
1C68FC:  STR             LR, [SP,#0xE8+var_9C]
1C6900:  STR             R0, [SP,#0xE8+var_8C]
1C6904:  STR             R1, [SP,#0xE8+var_E8]
1C6908:  BEQ             loc_1C6DE0
1C690C:  ADD             R0, R1, #0x148
1C6910:  MOV             R12, #0
1C6914:  ADD             R0, R0, #0x28800
1C6918:  STR             R0, [SP,#0xE8+var_98]
1C691C:  ADD             R0, R1, #0x144
1C6920:  ADD             R0, R0, #0x28800
1C6924:  STR             R0, [SP,#0xE8+var_A0]
1C6928:  ADD             R0, R1, #0x940
1C692C:  ADD             R0, R0, #0x28000
1C6930:  STR             R0, [SP,#0xE8+var_A4]
1C6934:  ADD             R0, R1, #0x13C
1C6938:  ADD             R0, R0, #0x28800
1C693C:  STR             R0, [SP,#0xE8+var_A8]
1C6940:  ADD             R0, R1, #0x138
1C6944:  ADD             R0, R0, #0x28800
1C6948:  STR             R0, [SP,#0xE8+var_AC]
1C694C:  ADD             R0, R1, #0x134
1C6950:  ADD             R0, R0, #0x28800
1C6954:  STR             R0, [SP,#0xE8+var_B0]
1C6958:  ADD             R0, R1, #0x930
1C695C:  ADD             R0, R0, #0x28000
1C6960:  STR             R0, [SP,#0xE8+var_B4]
1C6964:  ADD             R0, R1, #0x12C
1C6968:  ADD             R0, R0, #0x28800
1C696C:  STR             R0, [SP,#0xE8+var_B8]
1C6970:  ADD             R0, R1, #0x128
1C6974:  ADD             R0, R0, #0x28800
1C6978:  STR             R0, [SP,#0xE8+var_BC]
1C697C:  ADD             R0, R1, #0x124
1C6980:  ADD             R0, R0, #0x28800
1C6984:  STR             R0, [SP,#0xE8+var_C0]
1C6988:  ADD             R0, R1, #0x920
1C698C:  ADD             R0, R0, #0x28000
1C6990:  STR             R0, [SP,#0xE8+var_C4]
1C6994:  ADD             R0, R1, #0x11C
1C6998:  ADD             R0, R0, #0x28800
1C699C:  STR             R0, [SP,#0xE8+var_C8]
1C69A0:  ADD             R0, R1, #0x118
1C69A4:  ADD             R0, R0, #0x28800
1C69A8:  STR             R0, [SP,#0xE8+var_CC]
1C69AC:  ADD             R0, R1, #0x114
1C69B0:  ADD             R0, R0, #0x28800
1C69B4:  STR             R0, [SP,#0xE8+var_D0]
1C69B8:  ADD             R0, R1, #0x910
1C69BC:  ADD             R0, R0, #0x28000
1C69C0:  STR             R0, [SP,#0xE8+var_D4]
1C69C4:  ADD             R0, R1, #0x10C
1C69C8:  ADD             R0, R0, #0x28800
1C69CC:  STR             R0, [SP,#0xE8+var_D8]
1C69D0:  ADD             R0, R1, #0x108
1C69D4:  ADD             R0, R0, #0x28800
1C69D8:  STR             R0, [SP,#0xE8+var_DC]
1C69DC:  ADD             R0, R1, #0x104
1C69E0:  ADD             R0, R0, #0x28800
1C69E4:  STR             R0, [SP,#0xE8+var_E0]
1C69E8:  MOVW            R0, #0x1E90
1C69EC:  ADD             R9, LR, R0
1C69F0:  ADD             R0, R1, #0xD8
1C69F4:  STR             R0, [SP,#0xE8+var_94]
1C69F8:  STR             R9, [SP,#0xE8+var_90]
1C69FC:  ADD             R0, R12, R12,LSL#3
1C6A00:  MOVW            R1, #0x1D4C
1C6A04:  CMP             R10, #0
1C6A08:  ADD             R0, LR, R0,LSL#2
1C6A0C:  ADD             R9, R0, R1
1C6A10:  ADD             R1, SP, #0xE8+var_88
1C6A14:  LDM             R9!, {R0,R3,R4,R7}
1C6A18:  STM             R1!, {R0,R3,R4,R7}
1C6A1C:  LDM             R9, {R0,R3,R4,R7,LR}
1C6A20:  STM             R1, {R0,R3,R4,R7,LR}
1C6A24:  LDR             R9, [SP,#0xE8+var_90]
1C6A28:  BEQ             loc_1C6B70
1C6A2C:  CMP             R6, #0
1C6A30:  BEQ             loc_1C6C94
1C6A34:  LDR             LR, [SP,#0xE8+var_9C]
1C6A38:  MOVW            R1, #0x1E94
1C6A3C:  LDR             R3, [SP,#0xE8+var_94]
1C6A40:  MOV             R7, #0
1C6A44:  ADD             R0, LR, R12,LSL#3
1C6A48:  LDR             R4, [SP,#0xE8+var_8C]
1C6A4C:  ADD             R0, R0, R1
1C6A50:  ADD             R1, R10, R10,LSL#3
1C6A54:  VLDR            S0, [SP,#0xE8+var_88]
1C6A58:  ADD             R3, R3, R1,LSL#2
1C6A5C:  VLDR            S2, [SP,#0xE8+var_84]
1C6A60:  VLDR            S4, [SP,#0xE8+var_80]
1C6A64:  MOV             R1, R6
1C6A68:  VLDR            S6, [SP,#0xE8+var_7C]
1C6A6C:  VLDR            S8, [SP,#0xE8+var_68]
1C6A70:  VLDR            S10, [SP,#0xE8+var_6C]
1C6A74:  VLDR            S12, [SP,#0xE8+var_70]
1C6A78:  VLDR            S14, [SP,#0xE8+var_74]
1C6A7C:  VLDR            S1, [SP,#0xE8+var_78]
1C6A80:  MUL             R6, R7, R5
1C6A84:  VLDR            S3, [R0]
1C6A88:  VLDR            S9, [R9]
1C6A8C:  VLDR            S5, [R0,#4]
1C6A90:  ADD             R4, R4, R8
1C6A94:  SUBS            R1, R1, #1
1C6A98:  ADD             R7, R7, R4,LSR#14
1C6A9C:  BFC             R4, #0xE, #0x12
1C6AA0:  ADD             R6, R2, R6,LSL#2
1C6AA4:  ADD             R6, R6, R12,LSL#2
1C6AA8:  VLDR            S7, [R6]
1C6AAC:  VSUB.F32        S3, S3, S7
1C6AB0:  VMUL.F32        S3, S3, S9
1C6AB4:  VADD.F32        S3, S3, S7
1C6AB8:  VSUB.F32        S5, S5, S3
1C6ABC:  VSTR            S3, [R0]
1C6AC0:  VMUL.F32        S5, S5, S9
1C6AC4:  VADD.F32        S5, S5, S3
1C6AC8:  VMUL.F32        S9, S0, S5
1C6ACC:  VSTR            S5, [R0,#4]
1C6AD0:  VMUL.F32        S7, S4, S5
1C6AD4:  VLDR            S20, [R3,#-0x20]
1C6AD8:  VMUL.F32        S11, S12, S5
1C6ADC:  VLDR            S24, [R3,#-0x18]
1C6AE0:  VMUL.F32        S13, S10, S5
1C6AE4:  VLDR            S17, [R3,#-8]
1C6AE8:  VMUL.F32        S15, S2, S5
1C6AEC:  VLDR            S22, [R3,#-0x1C]
1C6AF0:  VMUL.F32        S16, S6, S5
1C6AF4:  VLDR            S26, [R3,#-0x14]
1C6AF8:  VMUL.F32        S3, S1, S5
1C6AFC:  VLDR            S28, [R3,#-0x10]
1C6B00:  VMUL.F32        S18, S14, S5
1C6B04:  VLDR            S30, [R3,#-0xC]
1C6B08:  VMUL.F32        S5, S8, S5
1C6B0C:  VLDR            S19, [R3,#-4]
1C6B10:  VADD.F32        S9, S20, S9
1C6B14:  VLDR            S20, [R3]
1C6B18:  VADD.F32        S7, S24, S7
1C6B1C:  VADD.F32        S15, S22, S15
1C6B20:  VADD.F32        S16, S26, S16
1C6B24:  VADD.F32        S3, S28, S3
1C6B28:  VADD.F32        S18, S30, S18
1C6B2C:  VADD.F32        S5, S20, S5
1C6B30:  VADD.F32        S11, S17, S11
1C6B34:  VSTR            S9, [R3,#-0x20]
1C6B38:  VADD.F32        S13, S19, S13
1C6B3C:  VSTR            S15, [R3,#-0x1C]
1C6B40:  VSTR            S7, [R3,#-0x18]
1C6B44:  VSTR            S16, [R3,#-0x14]
1C6B48:  VSTR            S3, [R3,#-0x10]
1C6B4C:  VSTR            S18, [R3,#-0xC]
1C6B50:  VSTR            S11, [R3,#-8]
1C6B54:  VSTR            S13, [R3,#-4]
1C6B58:  VSTR            S5, [R3]
1C6B5C:  ADD             R3, R3, #0x24 ; '$'
1C6B60:  BNE             loc_1C6A80
1C6B64:  LDR             R6, [R11,#arg_C]
1C6B68:  ADD             R10, R10, R6
1C6B6C:  B               loc_1C6CA0
1C6B70:  LDR             R1, [SP,#0xE8+var_9C]
1C6B74:  ADD             R0, R2, R12,LSL#2
1C6B78:  VLDR            S4, [R9]
1C6B7C:  VLDR            S0, [R0]
1C6B80:  ADD             R1, R1, R12,LSL#3
1C6B84:  MOVW            R0, #0x1E94
1C6B88:  ADD             R0, R1, R0
1C6B8C:  VLDR            S2, [R0]
1C6B90:  MOVW            R0, #0x1E98
1C6B94:  ADD             R0, R1, R0
1C6B98:  VSUB.F32        S2, S2, S0
1C6B9C:  VMUL.F32        S2, S2, S4
1C6BA0:  VADD.F32        S0, S2, S0
1C6BA4:  VLDR            S2, [R0]
1C6BA8:  LDR             R0, [SP,#0xE8+var_E0]
1C6BAC:  VSUB.F32        S2, S2, S0
1C6BB0:  VMUL.F32        S2, S2, S4
1C6BB4:  VLDR            S4, [R0]
1C6BB8:  VADD.F32        S0, S2, S0
1C6BBC:  VLDR            S2, [SP,#0xE8+var_88]
1C6BC0:  VMUL.F32        S2, S2, S0
1C6BC4:  VSUB.F32        S2, S4, S2
1C6BC8:  VSTR            S2, [R0]
1C6BCC:  VLDR            S2, [SP,#0xE8+var_84]
1C6BD0:  LDR             R0, [SP,#0xE8+var_DC]
1C6BD4:  VMUL.F32        S2, S2, S0
1C6BD8:  VLDR            S4, [R0]
1C6BDC:  VSUB.F32        S2, S4, S2
1C6BE0:  VSTR            S2, [R0]
1C6BE4:  VLDR            S2, [SP,#0xE8+var_80]
1C6BE8:  LDR             R0, [SP,#0xE8+var_D8]
1C6BEC:  VMUL.F32        S2, S2, S0
1C6BF0:  VLDR            S4, [R0]
1C6BF4:  VSUB.F32        S2, S4, S2
1C6BF8:  VSTR            S2, [R0]
1C6BFC:  VLDR            S2, [SP,#0xE8+var_7C]
1C6C00:  LDR             R0, [SP,#0xE8+var_D4]
1C6C04:  VMUL.F32        S2, S2, S0
1C6C08:  VLDR            S4, [R0]
1C6C0C:  VSUB.F32        S2, S4, S2
1C6C10:  VSTR            S2, [R0]
1C6C14:  VLDR            S2, [SP,#0xE8+var_78]
1C6C18:  LDR             R0, [SP,#0xE8+var_D0]
1C6C1C:  VMUL.F32        S2, S2, S0
1C6C20:  VLDR            S4, [R0]
1C6C24:  VSUB.F32        S2, S4, S2
1C6C28:  VSTR            S2, [R0]
1C6C2C:  VLDR            S2, [SP,#0xE8+var_74]
1C6C30:  LDR             R0, [SP,#0xE8+var_CC]
1C6C34:  VMUL.F32        S2, S2, S0
1C6C38:  VLDR            S4, [R0]
1C6C3C:  VSUB.F32        S2, S4, S2
1C6C40:  VSTR            S2, [R0]
1C6C44:  VLDR            S2, [SP,#0xE8+var_70]
1C6C48:  LDR             R0, [SP,#0xE8+var_C8]
1C6C4C:  VMUL.F32        S2, S2, S0
1C6C50:  VLDR            S4, [R0]
1C6C54:  VSUB.F32        S2, S4, S2
1C6C58:  VSTR            S2, [R0]
1C6C5C:  VLDR            S2, [SP,#0xE8+var_6C]
1C6C60:  LDR             R0, [SP,#0xE8+var_C4]
1C6C64:  VMUL.F32        S2, S2, S0
1C6C68:  VLDR            S4, [R0]
1C6C6C:  VSUB.F32        S2, S4, S2
1C6C70:  VSTR            S2, [R0]
1C6C74:  VLDR            S2, [SP,#0xE8+var_68]
1C6C78:  LDR             R0, [SP,#0xE8+var_C0]
1C6C7C:  VMUL.F32        S0, S2, S0
1C6C80:  VLDR            S2, [R0]
1C6C84:  VSUB.F32        S0, S2, S0
1C6C88:  VSTR            S0, [R0]
1C6C8C:  CMP             R6, #0
1C6C90:  BNE             loc_1C6A34
1C6C94:  MOV             R7, #0
1C6C98:  LDR             R4, [SP,#0xE8+var_8C]
1C6C9C:  LDR             LR, [SP,#0xE8+var_9C]
1C6CA0:  LDR             R0, [R11,#arg_8]
1C6CA4:  CMP             R10, R0
1C6CA8:  BNE             loc_1C6DCC
1C6CAC:  MUL             R0, R7, R5
1C6CB0:  ADD             R1, LR, R12,LSL#3
1C6CB4:  MOVW            R3, #0x1E94
1C6CB8:  ADD             R3, R1, R3
1C6CBC:  VLDR            S4, [R9]
1C6CC0:  VLDR            S0, [R3]
1C6CC4:  ADD             R0, R2, R0,LSL#2
1C6CC8:  ADD             R0, R0, R12,LSL#2
1C6CCC:  VLDR            S2, [R0]
1C6CD0:  MOVW            R0, #0x1E98
1C6CD4:  ADD             R0, R1, R0
1C6CD8:  VSUB.F32        S0, S0, S2
1C6CDC:  VMUL.F32        S0, S0, S4
1C6CE0:  VADD.F32        S0, S0, S2
1C6CE4:  VLDR            S2, [R0]
1C6CE8:  LDR             R0, [SP,#0xE8+var_BC]
1C6CEC:  VSUB.F32        S2, S2, S0
1C6CF0:  VMUL.F32        S2, S2, S4
1C6CF4:  VLDR            S4, [R0]
1C6CF8:  VADD.F32        S0, S2, S0
1C6CFC:  VLDR            S2, [SP,#0xE8+var_88]
1C6D00:  VMUL.F32        S2, S2, S0
1C6D04:  VADD.F32        S2, S4, S2
1C6D08:  VSTR            S2, [R0]
1C6D0C:  VLDR            S2, [SP,#0xE8+var_84]
1C6D10:  LDR             R0, [SP,#0xE8+var_B8]
1C6D14:  VMUL.F32        S2, S2, S0
1C6D18:  VLDR            S4, [R0]
1C6D1C:  VADD.F32        S2, S4, S2
1C6D20:  VSTR            S2, [R0]
1C6D24:  VLDR            S2, [SP,#0xE8+var_80]
1C6D28:  LDR             R0, [SP,#0xE8+var_B4]
1C6D2C:  VMUL.F32        S2, S2, S0
1C6D30:  VLDR            S4, [R0]
1C6D34:  VADD.F32        S2, S4, S2
1C6D38:  VSTR            S2, [R0]
1C6D3C:  VLDR            S2, [SP,#0xE8+var_7C]
1C6D40:  LDR             R0, [SP,#0xE8+var_B0]
1C6D44:  VMUL.F32        S2, S2, S0
1C6D48:  VLDR            S4, [R0]
1C6D4C:  VADD.F32        S2, S4, S2
1C6D50:  VSTR            S2, [R0]
1C6D54:  VLDR            S2, [SP,#0xE8+var_78]
1C6D58:  LDR             R0, [SP,#0xE8+var_AC]
1C6D5C:  VMUL.F32        S2, S2, S0
1C6D60:  VLDR            S4, [R0]
1C6D64:  VADD.F32        S2, S4, S2
1C6D68:  VSTR            S2, [R0]
1C6D6C:  VLDR            S2, [SP,#0xE8+var_74]
1C6D70:  LDR             R0, [SP,#0xE8+var_A8]
1C6D74:  VMUL.F32        S2, S2, S0
1C6D78:  VLDR            S4, [R0]
1C6D7C:  VADD.F32        S2, S4, S2
1C6D80:  VSTR            S2, [R0]
1C6D84:  VLDR            S2, [SP,#0xE8+var_70]
1C6D88:  LDR             R0, [SP,#0xE8+var_A4]
1C6D8C:  VMUL.F32        S2, S2, S0
1C6D90:  VLDR            S4, [R0]
1C6D94:  VADD.F32        S2, S4, S2
1C6D98:  VSTR            S2, [R0]
1C6D9C:  VLDR            S2, [SP,#0xE8+var_6C]
1C6DA0:  LDR             R0, [SP,#0xE8+var_A0]
1C6DA4:  VMUL.F32        S2, S2, S0
1C6DA8:  VLDR            S4, [R0]
1C6DAC:  VADD.F32        S2, S4, S2
1C6DB0:  VSTR            S2, [R0]
1C6DB4:  VLDR            S2, [SP,#0xE8+var_68]
1C6DB8:  LDR             R0, [SP,#0xE8+var_98]
1C6DBC:  VMUL.F32        S0, S2, S0
1C6DC0:  VLDR            S2, [R0]
1C6DC4:  VADD.F32        S0, S2, S0
1C6DC8:  VSTR            S0, [R0]
1C6DCC:  ADD             R12, R12, #1
1C6DD0:  SUB             R10, R10, R6
1C6DD4:  CMP             R12, R5
1C6DD8:  BNE             loc_1C69FC
1C6DDC:  B               loc_1C6DE8
1C6DE0:  MOV             R7, #0
1C6DE4:  MOV             R4, R0
1C6DE8:  LDR             R0, [SP,#0xE8+var_E8]
1C6DEC:  LDR             R0, [R0,#0x38]
1C6DF0:  STR             R0, [SP,#0xE8+var_A4]
1C6DF4:  CMP             R0, #0
1C6DF8:  BEQ             loc_1C6FBC
1C6DFC:  MOV             R3, #0
1C6E00:  ADD             R0, R3, R3,LSL#1
1C6E04:  ADD             R1, LR, R0,LSL#4
1C6E08:  MOVW            R0, #0x1EDC
1C6E0C:  LDR             R0, [R1,R0]
1C6E10:  STR             R3, [SP,#0xE8+var_A0]
1C6E14:  CMP             R0, #0
1C6E18:  CMPNE           R5, #0
1C6E1C:  BEQ             loc_1C6FA4
1C6E20:  MOVW            R3, #0x40CC
1C6E24:  MOV             LR, #0
1C6E28:  ADD             R3, R0, R3
1C6E2C:  STR             R3, [SP,#0xE8+var_94]
1C6E30:  MOVW            R3, #0x1EE0
1C6E34:  ADD             R3, R1, R3
1C6E38:  VLDR            S0, [R3]
1C6E3C:  MOVW            R3, #0x40C8
1C6E40:  ADD             R3, R0, R3
1C6E44:  STR             R3, [SP,#0xE8+var_98]
1C6E48:  MOVW            R3, #0x1EE4
1C6E4C:  ADD             R9, R1, R3
1C6E50:  ADD             R0, R0, #0xC8
1C6E54:  STR             R0, [SP,#0xE8+var_90]
1C6E58:  CMP             R10, #0
1C6E5C:  BEQ             loc_1C6EE4
1C6E60:  CMP             R6, #0
1C6E64:  BEQ             loc_1C6F2C
1C6E68:  LDR             R0, [SP,#0xE8+var_90]
1C6E6C:  MOVW            R3, #0x1EE8
1C6E70:  LDR             R4, [SP,#0xE8+var_8C]
1C6E74:  MOV             R7, #0
1C6E78:  ADD             R12, R0, R10,LSL#2
1C6E7C:  ADD             R0, R1, LR,LSL#2
1C6E80:  ADD             R3, R0, R3
1C6E84:  MOV             R0, R6
1C6E88:  MUL             R6, R7, R5
1C6E8C:  VLDR            S2, [R3]
1C6E90:  VLDR            S6, [R9]
1C6E94:  ADD             R4, R4, R8
1C6E98:  SUBS            R0, R0, #1
1C6E9C:  ADD             R7, R7, R4,LSR#14
1C6EA0:  BFC             R4, #0xE, #0x12
1C6EA4:  ADD             R6, R2, R6,LSL#2
1C6EA8:  ADD             R6, R6, LR,LSL#2
1C6EAC:  VLDR            S4, [R6]
1C6EB0:  VSUB.F32        S2, S2, S4
1C6EB4:  VMUL.F32        S2, S2, S6
1C6EB8:  VADD.F32        S2, S2, S4
1C6EBC:  VMUL.F32        S4, S2, S0
1C6EC0:  VSTR            S2, [R3]
1C6EC4:  VLDR            S2, [R12]
1C6EC8:  VADD.F32        S2, S4, S2
1C6ECC:  VSTR            S2, [R12]
1C6ED0:  ADD             R12, R12, #4
1C6ED4:  BNE             loc_1C6E88
1C6ED8:  LDR             R6, [R11,#arg_C]
1C6EDC:  ADD             R10, R10, R6
1C6EE0:  B               loc_1C6F34
1C6EE4:  ADD             R0, R2, LR,LSL#2
1C6EE8:  MOVW            R3, #0x1EE8
1C6EEC:  VLDR            S6, [R9]
1C6EF0:  MOV             R10, #0
1C6EF4:  VLDR            S2, [R0]
1C6EF8:  ADD             R0, R1, LR,LSL#2
1C6EFC:  ADD             R0, R0, R3
1C6F00:  VLDR            S4, [R0]
1C6F04:  LDR             R0, [SP,#0xE8+var_98]
1C6F08:  VSUB.F32        S4, S2, S4
1C6F0C:  VMUL.F32        S4, S4, S6
1C6F10:  VSUB.F32        S2, S4, S2
1C6F14:  VLDR            S4, [R0]
1C6F18:  VMUL.F32        S2, S2, S0
1C6F1C:  VADD.F32        S2, S4, S2
1C6F20:  VSTR            S2, [R0]
1C6F24:  CMP             R6, #0
1C6F28:  BNE             loc_1C6E68
1C6F2C:  MOV             R7, #0
1C6F30:  LDR             R4, [SP,#0xE8+var_8C]
1C6F34:  LDR             R0, [R11,#arg_8]
1C6F38:  CMP             R10, R0
1C6F3C:  BNE             loc_1C6F94
1C6F40:  MUL             R12, R7, R5
1C6F44:  ADD             R3, R1, LR,LSL#2
1C6F48:  MOV             R0, R1
1C6F4C:  MOV             R1, R6
1C6F50:  MOVW            R6, #0x1EE8
1C6F54:  ADD             R3, R3, R6
1C6F58:  MOV             R6, R1
1C6F5C:  MOV             R1, R0
1C6F60:  VLDR            S6, [R9]
1C6F64:  VLDR            S2, [R3]
1C6F68:  ADD             R0, R2, R12,LSL#2
1C6F6C:  ADD             R0, R0, LR,LSL#2
1C6F70:  VLDR            S4, [R0]
1C6F74:  LDR             R0, [SP,#0xE8+var_94]
1C6F78:  VSUB.F32        S2, S2, S4
1C6F7C:  VMUL.F32        S2, S2, S6
1C6F80:  VADD.F32        S2, S2, S4
1C6F84:  VLDR            S4, [R0]
1C6F88:  VMUL.F32        S2, S2, S0
1C6F8C:  VADD.F32        S2, S2, S4
1C6F90:  VSTR            S2, [R0]
1C6F94:  ADD             LR, LR, #1
1C6F98:  SUB             R10, R10, R6
1C6F9C:  CMP             LR, R5
1C6FA0:  BNE             loc_1C6E58
1C6FA4:  LDR             R3, [SP,#0xE8+var_A0]
1C6FA8:  LDR             R0, [SP,#0xE8+var_A4]
1C6FAC:  LDR             LR, [SP,#0xE8+var_9C]
1C6FB0:  ADD             R3, R3, #1
1C6FB4:  CMP             R3, R0
1C6FB8:  BCC             loc_1C6E00
1C6FBC:  LDR             R1, [SP,#0xE8+var_E4]
1C6FC0:  LDR             R0, [R1]
1C6FC4:  ADD             R0, R0, R7
1C6FC8:  STR             R0, [R1]
1C6FCC:  LDR             R0, [R11,#arg_0]
1C6FD0:  STR             R4, [R0]
1C6FD4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C6FE4)
1C6FD8:  LDR             R1, [R11,#var_64]
1C6FDC:  LDR             R0, [PC,R0]; __stack_chk_guard
1C6FE0:  LDR             R0, [R0]
1C6FE4:  SUBS            R0, R0, R1
1C6FE8:  SUBEQ           SP, R11, #0x60 ; '`'
1C6FEC:  VPOPEQ          {D8-D15}
1C6FF0:  ADDEQ           SP, SP, #4
1C6FF4:  POPEQ           {R4-R11,PC}
1C6FF8:  BL              __stack_chk_fail
