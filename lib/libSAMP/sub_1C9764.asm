; =========================================================
; Game Engine Function: sub_1C9764
; Address            : 0x1C9764 - 0x1CA51C
; =========================================================

1C9764:  PUSH            {R4-R11,LR}
1C9768:  ADD             R11, SP, #0x1C
1C976C:  SUB             SP, SP, #0x17C
1C9770:  MOV             LR, R0
1C9774:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C9788)
1C9778:  STR             R3, [SP,#0x198+var_198]
1C977C:  STR             R2, [SP,#0x198+var_128]
1C9780:  LDR             R0, [PC,R0]; __stack_chk_guard
1C9784:  LDR             R10, [R11,#arg_C]
1C9788:  LDR             R5, [R11,#arg_4]
1C978C:  LDR             R0, [R0]
1C9790:  STR             R0, [R11,#var_24]
1C9794:  MOVW            R0, #0x12E8
1C9798:  LDR             R0, [LR,R0]
1C979C:  STR             R0, [SP,#0x198+var_12C]
1C97A0:  LDR             R0, [R11,#arg_0]
1C97A4:  LDR             R8, [LR,#0xD0]
1C97A8:  LDR             R2, [R0]
1C97AC:  CMP             R8, #0
1C97B0:  STR             R2, [SP,#0x198+var_174]
1C97B4:  STR             LR, [SP,#0x198+var_138]
1C97B8:  STR             R1, [SP,#0x198+var_158]
1C97BC:  BEQ             loc_1CA12C
1C97C0:  ADD             R0, R1, #0x128
1C97C4:  VMOV            S0, R2
1C97C8:  ADD             R0, R0, #0x28800
1C97CC:  STR             R0, [SP,#0x198+var_188]
1C97D0:  ADD             R0, R1, #0x104
1C97D4:  VMOV.F32        S4, #0.5
1C97D8:  ADD             R0, R0, #0x28800
1C97DC:  STR             R0, [SP,#0x198+var_18C]
1C97E0:  MOVW            R0, #0x1D44
1C97E4:  VMOV.F32        S6, #-2.5
1C97E8:  ADD             R0, LR, R0
1C97EC:  STR             R0, [SP,#0x198+var_164]
1C97F0:  MOVW            R0, #0x1C48
1C97F4:  VMOV.F32        S8, #1.5
1C97F8:  ADD             R0, LR, R0
1C97FC:  STR             R0, [SP,#0x198+var_170]
1C9800:  MOVW            R0, #0x1C44
1C9804:  ADD             R6, LR, R0
1C9808:  ADD             R0, R1, #0x12C
1C980C:  VMOV.F32        S10, #-0.5
1C9810:  ADD             R0, R0, #0x28800
1C9814:  STR             R0, [SP,#0x198+var_190]
1C9818:  ADD             R0, R1, #0x108
1C981C:  ADD             R12, LR, #0x1300
1C9820:  ADD             R0, R0, #0x28800
1C9824:  STR             R0, [SP,#0x198+var_194]
1C9828:  MOVW            R0, #0x1E90
1C982C:  MOVW            R1, #0x9E4
1C9830:  ADD             R0, LR, R0
1C9834:  STR             R0, [SP,#0x198+var_148]
1C9838:  MOVW            R0, #0x1D48
1C983C:  ADD             R0, LR, R0
1C9840:  STR             R0, [SP,#0x198+var_168]
1C9844:  MOVW            R0, #0x12E0
1C9848:  ADD             R0, LR, R0
1C984C:  STR             R0, [SP,#0x198+var_184]
1C9850:  ADD             R0, SP, #0x198+var_124
1C9854:  ADD             R9, R0, #4
1C9858:  MOV             R0, R8,LSL#1
1C985C:  STR             R0, [SP,#0x198+var_14C]
1C9860:  RSB             R0, R8, #0
1C9864:  STR             R0, [SP,#0x198+var_150]
1C9868:  VCVT.F32.S32    S2, S0
1C986C:  VLDR            S0, =0.000061035
1C9870:  MOV             R0, #0
1C9874:  STR             R0, [SP,#0x198+var_13C]
1C9878:  STR             R8, [SP,#0x198+var_140]
1C987C:  STR             R6, [SP,#0x198+var_180]
1C9880:  STR             R9, [SP,#0x198+var_154]
1C9884:  VMUL.F32        S2, S2, S0
1C9888:  B               loc_1C9890
1C988C:  DCFS 0.000061035
1C9890:  LDR             R0, [LR,#0xDC]
1C9894:  MOV             R2, #0
1C9898:  CMP             R0, R5
1C989C:  MOVLS           R0, R5
1C98A0:  SUB             R0, R0, R5
1C98A4:  STR             R0, [SP,#0x198+var_144]
1C98A8:  VMOV            S12, R0
1C98AC:  VCVT.F32.S32    S12, S12
1C98B0:  LDR             R0, [SP,#0x198+var_184]
1C98B4:  LDR             R0, [R0]
1C98B8:  STR             R0, [SP,#0x198+var_130]
1C98BC:  ADD             R3, R6, R2
1C98C0:  ADD             R7, R9, R2
1C98C4:  VLDR            S14, [R3]
1C98C8:  VLDR            S1, [R3,#4]
1C98CC:  ADD             R3, R12, R2
1C98D0:  VMUL.F32        S14, S14, S12
1C98D4:  ADD             R2, R2, #8
1C98D8:  VLDR            S3, [R3,#-4]
1C98DC:  CMP             R2, #0x100
1C98E0:  VSUB.F32        S14, S3, S14
1C98E4:  VSTR            S14, [R7,#-4]
1C98E8:  VMUL.F32        S14, S1, S12
1C98EC:  VLDR            S1, [R3]
1C98F0:  VSUB.F32        S14, S1, S14
1C98F4:  VSTR            S14, [R7]
1C98F8:  BNE             loc_1C98BC
1C98FC:  LDR             R0, [SP,#0x198+var_13C]
1C9900:  MOVW            R4, #0x1BFC
1C9904:  LDR             R2, [SP,#0x198+var_168]
1C9908:  MOV             R3, #0x1C00
1C990C:  LDR             R7, [SP,#0x198+var_164]
1C9910:  CMP             R5, #0
1C9914:  ADD             R6, LR, R0,LSL#3
1C9918:  LDR             R2, [R2]
1C991C:  LDR             R10, [R6,R4]
1C9920:  MOV             R4, R0
1C9924:  LDR             R0, [SP,#0x198+var_144]
1C9928:  LDR             R3, [R6,R3]
1C992C:  LDR             R7, [R7]
1C9930:  MLS             R2, R2, R0, R3
1C9934:  MLS             R3, R7, R0, R10
1C9938:  LDR             R0, [SP,#0x198+var_130]
1C993C:  ADD             R10, R0, R5
1C9940:  MOVEQ           R5, #0
1C9944:  ADD             R0, R2, #0x8000
1C9948:  STR             R0, [SP,#0x198+var_130]
1C994C:  LDREQ           R0, [SP,#0x198+var_128]
1C9950:  ADD             R7, R3, #0x8000
1C9954:  LDREQ           R2, [SP,#0x198+var_14C]
1C9958:  ADDEQ           R0, R0, R4,LSL#2
1C995C:  ADDEQ           R3, R0, R8,LSL#2
1C9960:  ADDEQ           R2, R0, R2,LSL#2
1C9964:  VLDREQ          S12, [R0]
1C9968:  VLDREQ          S14, [R3]
1C996C:  LDREQ           R3, [SP,#0x198+var_150]
1C9970:  VMULEQ.F32      S11, S12, S6
1C9974:  VLDREQ          S3, [R2]
1C9978:  VSUBEQ.F32      S5, S12, S14
1C997C:  VADDEQ.F32      S13, S14, S14
1C9980:  ADDEQ           R0, R0, R3,LSL#2
1C9984:  VMULEQ.F32      S9, S3, S4
1C9988:  VMULEQ.F32      S3, S3, S10
1C998C:  ANDEQ           R3, R10, #0x3F ; '?'
1C9990:  VLDREQ          S1, [R0]
1C9994:  VMULEQ.F32      S14, S14, S4
1C9998:  MOVWEQ          R0, #0x1E94
1C999C:  VMULEQ.F32      S7, S1, S10
1C99A0:  ADDEQ           R0, R6, R0
1C99A4:  VADDEQ.F32      S1, S11, S1
1C99A8:  VMULEQ.F32      S5, S5, S8
1C99AC:  VADDEQ.F32      S9, S9, S7
1C99B0:  VADDEQ.F32      S1, S1, S13
1C99B4:  VADDEQ.F32      S14, S14, S7
1C99B8:  VADDEQ.F32      S5, S9, S5
1C99BC:  VADDEQ.F32      S1, S1, S3
1C99C0:  VMULEQ.F32      S5, S5, S2
1C99C4:  VADDEQ.F32      S1, S1, S5
1C99C8:  VMULEQ.F32      S1, S1, S2
1C99CC:  VADDEQ.F32      S14, S14, S1
1C99D0:  VMULEQ.F32      S14, S14, S2
1C99D4:  VADDEQ.F32      S12, S14, S12
1C99D8:  VLDREQ          S14, [R0]
1C99DC:  LDREQ           R0, [SP,#0x198+var_148]
1C99E0:  VLDREQ          S1, [R0]
1C99E4:  MOVWEQ          R0, #0x1E98
1C99E8:  ADDEQ           R0, R6, R0
1C99EC:  VSUBEQ.F32      S14, S14, S12
1C99F0:  VMULEQ.F32      S14, S14, S1
1C99F4:  VADDEQ.F32      S12, S14, S12
1C99F8:  VLDREQ          S14, [R0]
1C99FC:  ADDEQ           R0, LR, R4,LSL#8
1C9A00:  MOVEQ           R4, R7
1C9A04:  ADDEQ           R2, R0, #0xE0
1C9A08:  MOV             LR, #0
1C9A0C:  ADDEQ           R3, R2, R3,LSL#2
1C9A10:  VSUBEQ.F32      S14, S14, S12
1C9A14:  VMULEQ.F32      S14, S14, S1
1C9A18:  VADDEQ.F32      S12, S14, S12
1C9A1C:  VSTREQ          S12, [R3]
1C9A20:  SUBEQ           R3, R10, R7,LSR#16
1C9A24:  ANDEQ           R3, R3, #0x3F ; '?'
1C9A28:  ADDEQ           R7, R10, #1
1C9A2C:  ANDEQ           R7, R7, #0x1F
1C9A30:  VLDREQ          S1, [SP,#0x198+var_124]
1C9A34:  ADDEQ           R3, R2, R3,LSL#2
1C9A38:  ADDEQ           R0, R0, R7,LSL#3
1C9A3C:  LDREQ           R7, [SP,#0x198+var_18C]
1C9A40:  VLDREQ          S12, [R3]
1C9A44:  ADDEQ           R3, R0, #0x9E0
1C9A48:  ADDEQ           R0, R0, R1
1C9A4C:  VLDREQ          S14, [R3]
1C9A50:  VMULEQ.F32      S12, S1, S12
1C9A54:  VLDREQ          S3, [R7]
1C9A58:  LDREQ           R3, [SP,#0x198+var_130]
1C9A5C:  VSUBEQ.F32      S14, S3, S14
1C9A60:  SUBEQ           R3, R10, R3,LSR#16
1C9A64:  ANDEQ           R3, R3, #0x3F ; '?'
1C9A68:  ADDEQ           R2, R2, R3,LSL#2
1C9A6C:  VSUBEQ.F32      S12, S14, S12
1C9A70:  VLDREQ          S14, [R2]
1C9A74:  VSTREQ          S12, [R7]
1C9A78:  MOVEQ           R7, R4
1C9A7C:  VLDREQ          S12, [R0]
1C9A80:  LDREQ           R0, [SP,#0x198+var_194]
1C9A84:  VLDREQ          S1, [SP,#0x198+var_120]
1C9A88:  VLDREQ          S3, [R0]
1C9A8C:  VMULEQ.F32      S14, S1, S14
1C9A90:  VSUBEQ.F32      S12, S3, S12
1C9A94:  VSUBEQ.F32      S12, S12, S14
1C9A98:  VSTREQ          S12, [R0]
1C9A9C:  LDR             R2, [SP,#0x198+var_144]
1C9AA0:  STR             R12, [SP,#0x198+var_17C]
1C9AA4:  CMP             R2, #1
1C9AA8:  STR             R6, [SP,#0x198+var_178]
1C9AAC:  STR             R7, [SP,#0x198+var_134]
1C9AB0:  BLT             loc_1C9D28
1C9AB4:  LDR             R0, [R11,#arg_C]
1C9AB8:  CMP             R0, #0
1C9ABC:  BEQ             loc_1C9D28
1C9AC0:  LDR             R4, [SP,#0x198+var_174]
1C9AC4:  MOVW            R0, #0x1E94
1C9AC8:  MOV             R7, #0
1C9ACC:  MOV             LR, #0
1C9AD0:  ADD             R0, R6, R0
1C9AD4:  STR             R0, [SP,#0x198+var_16C]
1C9AD8:  LDR             R6, [SP,#0x198+var_140]
1C9ADC:  ADD             R8, R10, #1
1C9AE0:  STR             R2, [SP,#0x198+var_144]
1C9AE4:  LDR             R2, [SP,#0x198+var_128]
1C9AE8:  MUL             R0, R7, R6
1C9AEC:  LDR             R12, [SP,#0x198+var_13C]
1C9AF0:  LDR             R3, [SP,#0x198+var_150]
1C9AF4:  ADD             R0, R2, R0,LSL#2
1C9AF8:  LDR             R2, [SP,#0x198+var_14C]
1C9AFC:  ADD             R0, R0, R12,LSL#2
1C9B00:  ADD             R3, R0, R3,LSL#2
1C9B04:  ADD             R2, R0, R2,LSL#2
1C9B08:  VLDR            S12, [R0]
1C9B0C:  ADD             R0, R0, R6,LSL#2
1C9B10:  VLDR            S1, [R3]
1C9B14:  VLDR            S5, [R2]
1C9B18:  VMUL.F32        S3, S12, S6
1C9B1C:  VLDR            S14, [R0]
1C9B20:  VMUL.F32        S9, S1, S10
1C9B24:  VMUL.F32        S11, S5, S4
1C9B28:  VSUB.F32        S7, S12, S14
1C9B2C:  VADD.F32        S13, S14, S14
1C9B30:  VMUL.F32        S5, S5, S10
1C9B34:  VMUL.F32        S14, S14, S4
1C9B38:  VADD.F32        S1, S3, S1
1C9B3C:  VMOV            S3, R4
1C9B40:  VADD.F32        S11, S11, S9
1C9B44:  VCVT.F32.S32    S3, S3
1C9B48:  LDR             R2, [SP,#0x198+var_16C]
1C9B4C:  VMUL.F32        S7, S7, S8
1C9B50:  LDR             R0, [SP,#0x198+var_148]
1C9B54:  VADD.F32        S14, S14, S9
1C9B58:  VADD.F32        S1, S1, S13
1C9B5C:  VMUL.F32        S3, S3, S0
1C9B60:  VADD.F32        S7, S11, S7
1C9B64:  VADD.F32        S1, S1, S5
1C9B68:  VMUL.F32        S5, S7, S3
1C9B6C:  VADD.F32        S1, S1, S5
1C9B70:  VMUL.F32        S1, S1, S3
1C9B74:  VADD.F32        S14, S14, S1
1C9B78:  VLDR            S1, [R2,#4]
1C9B7C:  VMUL.F32        S14, S14, S3
1C9B80:  VLDR            S3, [R0]
1C9B84:  VADD.F32        S12, S14, S12
1C9B88:  VLDR            S14, [R2]
1C9B8C:  VSUB.F32        S14, S14, S12
1C9B90:  VMUL.F32        S14, S14, S3
1C9B94:  VADD.F32        S12, S14, S12
1C9B98:  VSUB.F32        S14, S1, S12
1C9B9C:  VSTR            S12, [R2]
1C9BA0:  VMUL.F32        S14, S14, S3
1C9BA4:  VADD.F32        S14, S14, S12
1C9BA8:  VSTR            S14, [R2,#4]
1C9BAC:  AND             R2, R10, #0x3F ; '?'
1C9BB0:  LDR             R0, [SP,#0x198+var_138]
1C9BB4:  ADD             R6, R0, R12,LSL#8
1C9BB8:  ADD             R0, R6, #0xE0
1C9BBC:  ADD             R2, R0, R2,LSL#2
1C9BC0:  VSTR            S14, [R2]
1C9BC4:  LDR             R2, [SP,#0x198+var_134]
1C9BC8:  LDR             R3, [SP,#0x198+var_130]
1C9BCC:  SUB             R2, R10, R2,LSR#16
1C9BD0:  AND             R2, R2, #0x3F ; '?'
1C9BD4:  SUB             R3, R10, R3,LSR#16
1C9BD8:  AND             R3, R3, #0x3F ; '?'
1C9BDC:  ADD             R2, R0, R2,LSL#2
1C9BE0:  ADD             R0, R0, R3,LSL#2
1C9BE4:  AND             R3, R10, #0x1F
1C9BE8:  VLDR            S14, [R2]
1C9BEC:  LDR             R2, [SP,#0x198+var_168]
1C9BF0:  VLDR            S12, [R0]
1C9BF4:  ADD             R0, R6, R3,LSL#3
1C9BF8:  MOV             R3, R9
1C9BFC:  LDR             R2, [R2]
1C9C00:  STR             R2, [SP,#0x198+var_160]
1C9C04:  LDR             R2, [SP,#0x198+var_164]
1C9C08:  LDR             R2, [R2]
1C9C0C:  STR             R2, [SP,#0x198+var_15C]
1C9C10:  MOV             R2, #0
1C9C14:  STR             R2, [R0,#0x9E0]
1C9C18:  STR             R2, [R0,#0x9E4]
1C9C1C:  MOV             R0, #1
1C9C20:  LDR             R12, [SP,#0x198+var_170]
1C9C24:  VLDR            S1, [R3,#-4]
1C9C28:  ADD             R2, R10, R0
1C9C2C:  AND             R2, R2, #0x1F
1C9C30:  ADD             R0, R0, #1
1C9C34:  VMUL.F32        S3, S1, S14
1C9C38:  CMP             R0, #0x21 ; '!'
1C9C3C:  ADD             R2, R6, R2,LSL#3
1C9C40:  ADD             R9, R2, #0x9E0
1C9C44:  ADD             R2, R2, R1
1C9C48:  VLDR            S5, [R9]
1C9C4C:  VADD.F32        S3, S5, S3
1C9C50:  VSTR            S3, [R9]
1C9C54:  VLDR            S3, [R3]
1C9C58:  VLDR            S7, [R2]
1C9C5C:  VMUL.F32        S5, S3, S12
1C9C60:  VADD.F32        S5, S7, S5
1C9C64:  VSTR            S5, [R2]
1C9C68:  VLDR            S5, [R12,#-4]
1C9C6C:  VLDR            S7, [R12]
1C9C70:  ADD             R12, R12, #8
1C9C74:  VADD.F32        S1, S1, S5
1C9C78:  VADD.F32        S3, S3, S7
1C9C7C:  VSTR            S1, [R3,#-4]
1C9C80:  VSTR            S3, [R3]
1C9C84:  ADD             R3, R3, #8
1C9C88:  BNE             loc_1C9C24
1C9C8C:  ADD             R0, R5, R5,LSL#3
1C9C90:  LDR             R2, [SP,#0x198+var_158]
1C9C94:  ADD             LR, LR, #1
1C9C98:  ADD             R5, R5, #1
1C9C9C:  ADD             R0, R2, R0,LSL#2
1C9CA0:  AND             R2, R8, #0x1F
1C9CA4:  ADD             R2, R6, R2,LSL#3
1C9CA8:  VLDR            S12, [R0,#0xB8]
1C9CAC:  ADD             R3, R2, #0x9E0
1C9CB0:  ADD             R2, R2, R1
1C9CB4:  VLDR            S14, [R0,#0xBC]
1C9CB8:  VLDR            S1, [R3]
1C9CBC:  VADD.F32        S12, S12, S1
1C9CC0:  VSTR            S12, [R0,#0xB8]
1C9CC4:  VLDR            S12, [R2]
1C9CC8:  VADD.F32        S12, S14, S12
1C9CCC:  VSTR            S12, [R0,#0xBC]
1C9CD0:  LDR             R0, [SP,#0x198+var_130]
1C9CD4:  LDR             R2, [SP,#0x198+var_160]
1C9CD8:  ADD             R0, R2, R0
1C9CDC:  STR             R0, [SP,#0x198+var_130]
1C9CE0:  LDR             R0, [SP,#0x198+var_134]
1C9CE4:  LDR             R2, [SP,#0x198+var_15C]
1C9CE8:  ADD             R0, R2, R0
1C9CEC:  STR             R0, [SP,#0x198+var_134]
1C9CF0:  LDR             R0, [SP,#0x198+var_12C]
1C9CF4:  LDR             R2, [SP,#0x198+var_144]
1C9CF8:  ADD             R4, R4, R0
1C9CFC:  CMP             R2, #2
1C9D00:  ADD             R7, R7, R4,LSR#14
1C9D04:  BFC             R4, #0xE, #0x12
1C9D08:  BLT             loc_1C9D38
1C9D0C:  LDR             R0, [R11,#arg_C]
1C9D10:  SUB             R2, R2, #1
1C9D14:  LDR             R9, [SP,#0x198+var_154]
1C9D18:  MOV             R10, R8
1C9D1C:  CMP             LR, R0
1C9D20:  BCC             loc_1C9AD8
1C9D24:  B               loc_1C9D3C
1C9D28:  MOV             R8, R10
1C9D2C:  LDR             R4, [SP,#0x198+var_174]
1C9D30:  MOV             R7, #0
1C9D34:  B               loc_1C9D3C
1C9D38:  LDR             R9, [SP,#0x198+var_154]
1C9D3C:  LDR             R0, [SP,#0x198+var_130]
1C9D40:  LDR             R10, [R11,#arg_C]
1C9D44:  MOV             R0, R0,LSR#16
1C9D48:  CMP             LR, R10
1C9D4C:  STR             R0, [SP,#0x198+var_130]
1C9D50:  LDR             R0, [SP,#0x198+var_134]
1C9D54:  MOV             R0, R0,LSR#16
1C9D58:  STR             R0, [SP,#0x198+var_134]
1C9D5C:  BCS             loc_1C9F84
1C9D60:  ADD             R0, R5, R10
1C9D64:  STR             R0, [SP,#0x198+var_16C]
1C9D68:  ADD             R0, R8, R10
1C9D6C:  LDR             R2, [SP,#0x198+var_178]
1C9D70:  STR             R0, [SP,#0x198+var_160]
1C9D74:  MOVW            R0, #0x1E94
1C9D78:  MOV             R9, LR
1C9D7C:  ADD             R0, R2, R0
1C9D80:  STR             R0, [SP,#0x198+var_144]
1C9D84:  STR             LR, [SP,#0x198+var_15C]
1C9D88:  MOV             LR, R5
1C9D8C:  LDR             R5, [SP,#0x198+var_140]
1C9D90:  LDR             R0, [SP,#0x198+var_128]
1C9D94:  LDR             R12, [SP,#0x198+var_13C]
1C9D98:  MUL             R2, R7, R5
1C9D9C:  ADD             R2, R0, R2,LSL#2
1C9DA0:  LDR             R0, [SP,#0x198+var_14C]
1C9DA4:  ADD             R2, R2, R12,LSL#2
1C9DA8:  ADD             R6, R2, R0,LSL#2
1C9DAC:  LDR             R0, [SP,#0x198+var_150]
1C9DB0:  VLDR            S12, [R2]
1C9DB4:  VLDR            S5, [R6]
1C9DB8:  ADD             R3, R2, R0,LSL#2
1C9DBC:  ADD             R2, R2, R5,LSL#2
1C9DC0:  VMUL.F32        S3, S12, S6
1C9DC4:  VLDR            S14, [R2]
1C9DC8:  VMUL.F32        S11, S5, S4
1C9DCC:  VLDR            S1, [R3]
1C9DD0:  VMUL.F32        S5, S5, S10
1C9DD4:  VSUB.F32        S7, S12, S14
1C9DD8:  AND             R3, R8, #0x3F ; '?'
1C9DDC:  VMUL.F32        S9, S1, S10
1C9DE0:  VADD.F32        S13, S14, S14
1C9DE4:  VMUL.F32        S14, S14, S4
1C9DE8:  VADD.F32        S1, S3, S1
1C9DEC:  VMOV            S3, R4
1C9DF0:  VCVT.F32.S32    S3, S3
1C9DF4:  LDR             R2, [SP,#0x198+var_144]
1C9DF8:  VMUL.F32        S7, S7, S8
1C9DFC:  LDR             R0, [SP,#0x198+var_148]
1C9E00:  VADD.F32        S11, S11, S9
1C9E04:  VADD.F32        S14, S14, S9
1C9E08:  VADD.F32        S1, S1, S13
1C9E0C:  VMUL.F32        S3, S3, S0
1C9E10:  VADD.F32        S7, S11, S7
1C9E14:  VADD.F32        S1, S1, S5
1C9E18:  VMUL.F32        S5, S7, S3
1C9E1C:  VADD.F32        S1, S1, S5
1C9E20:  VMUL.F32        S1, S1, S3
1C9E24:  VADD.F32        S14, S14, S1
1C9E28:  VLDR            S1, [R2,#4]
1C9E2C:  VMUL.F32        S14, S14, S3
1C9E30:  VLDR            S3, [R0]
1C9E34:  VADD.F32        S12, S14, S12
1C9E38:  VLDR            S14, [R2]
1C9E3C:  VSUB.F32        S14, S14, S12
1C9E40:  VMUL.F32        S14, S14, S3
1C9E44:  VADD.F32        S12, S14, S12
1C9E48:  VSUB.F32        S14, S1, S12
1C9E4C:  VSTR            S12, [R2]
1C9E50:  VMUL.F32        S14, S14, S3
1C9E54:  VADD.F32        S14, S14, S12
1C9E58:  VSTR            S14, [R2,#4]
1C9E5C:  LDR             R0, [SP,#0x198+var_138]
1C9E60:  ADD             R12, R0, R12,LSL#8
1C9E64:  ADD             R2, R12, #0xE0
1C9E68:  ADD             R3, R2, R3,LSL#2
1C9E6C:  VSTR            S14, [R3]
1C9E70:  LDR             R0, [SP,#0x198+var_134]
1C9E74:  SUB             R3, R8, R0
1C9E78:  LDR             R0, [SP,#0x198+var_130]
1C9E7C:  AND             R3, R3, #0x3F ; '?'
1C9E80:  SUB             R6, R8, R0
1C9E84:  MOV             R0, #0
1C9E88:  AND             R6, R6, #0x3F ; '?'
1C9E8C:  ADD             R3, R2, R3,LSL#2
1C9E90:  ADD             R2, R2, R6,LSL#2
1C9E94:  AND             R6, R8, #0x1F
1C9E98:  VLDR            S14, [R3]
1C9E9C:  ADD             R6, R12, R6,LSL#3
1C9EA0:  VLDR            S12, [R2]
1C9EA4:  ADD             R2, R8, #1
1C9EA8:  STR             R0, [R6,#0x9E0]
1C9EAC:  STR             R0, [R6,#0x9E4]
1C9EB0:  MOV             R6, #1
1C9EB4:  LDR             R10, [SP,#0x198+var_154]
1C9EB8:  VLDR            S1, [R10,#-4]
1C9EBC:  ADD             R3, R8, R6
1C9EC0:  AND             R3, R3, #0x1F
1C9EC4:  ADD             R6, R6, #1
1C9EC8:  VMUL.F32        S1, S1, S14
1C9ECC:  CMP             R6, #0x21 ; '!'
1C9ED0:  ADD             R3, R12, R3,LSL#3
1C9ED4:  ADD             R0, R3, #0x9E0
1C9ED8:  VLDR            S3, [R0]
1C9EDC:  VADD.F32        S1, S3, S1
1C9EE0:  VSTR            S1, [R0]
1C9EE4:  ADD             R0, R3, R1
1C9EE8:  VLDR            S1, [R10]
1C9EEC:  ADD             R10, R10, #8
1C9EF0:  VLDR            S3, [R0]
1C9EF4:  VMUL.F32        S1, S1, S12
1C9EF8:  VADD.F32        S1, S3, S1
1C9EFC:  VSTR            S1, [R0]
1C9F00:  BNE             loc_1C9EB8
1C9F04:  MOV             R5, LR
1C9F08:  LDR             R3, [SP,#0x198+var_158]
1C9F0C:  ADD             R0, R5, R5,LSL#3
1C9F10:  LDR             R10, [R11,#arg_C]
1C9F14:  ADD             R9, R9, #1
1C9F18:  ADD             R5, R5, #1
1C9F1C:  ADD             R0, R3, R0,LSL#2
1C9F20:  AND             R3, R2, #0x1F
1C9F24:  CMP             R9, R10
1C9F28:  MOV             R8, R2
1C9F2C:  ADD             R3, R12, R3,LSL#3
1C9F30:  VLDR            S12, [R0,#0xB8]
1C9F34:  ADD             R6, R3, #0x9E0
1C9F38:  ADD             R3, R3, R1
1C9F3C:  VLDR            S14, [R0,#0xBC]
1C9F40:  VLDR            S1, [R6]
1C9F44:  VADD.F32        S12, S12, S1
1C9F48:  VSTR            S12, [R0,#0xB8]
1C9F4C:  VLDR            S12, [R3]
1C9F50:  VADD.F32        S12, S14, S12
1C9F54:  VSTR            S12, [R0,#0xBC]
1C9F58:  LDR             R0, [SP,#0x198+var_12C]
1C9F5C:  ADD             R4, R4, R0
1C9F60:  ADD             R7, R7, R4,LSR#14
1C9F64:  BFC             R4, #0xE, #0x12
1C9F68:  BNE             loc_1C9D88
1C9F6C:  LDR             R0, [SP,#0x198+var_15C]
1C9F70:  LDR             R2, [SP,#0x198+var_16C]
1C9F74:  LDR             R9, [SP,#0x198+var_154]
1C9F78:  SUB             R5, R2, R0
1C9F7C:  LDR             R2, [SP,#0x198+var_160]
1C9F80:  SUB             R8, R2, R0
1C9F84:  LDR             R0, [R11,#arg_8]
1C9F88:  LDR             R2, [SP,#0x198+var_140]
1C9F8C:  CMP             R5, R0
1C9F90:  LDR             R12, [SP,#0x198+var_13C]
1C9F94:  LDREQ           R3, [SP,#0x198+var_150]
1C9F98:  SUB             R5, R5, R10
1C9F9C:  MULEQ           R0, R7, R2
1C9FA0:  LDREQ           R2, [SP,#0x198+var_128]
1C9FA4:  LDREQ           R6, [SP,#0x198+var_140]
1C9FA8:  LDR             LR, [SP,#0x198+var_178]
1C9FAC:  ADDEQ           R0, R2, R0,LSL#2
1C9FB0:  LDREQ           R2, [SP,#0x198+var_14C]
1C9FB4:  ADDEQ           R0, R0, R12,LSL#2
1C9FB8:  ADDEQ           R3, R0, R3,LSL#2
1C9FBC:  ADDEQ           R2, R0, R2,LSL#2
1C9FC0:  VLDREQ          S12, [R0]
1C9FC4:  ADDEQ           R0, R0, R6,LSL#2
1C9FC8:  VLDREQ          S1, [R3]
1C9FCC:  VLDREQ          S5, [R2]
1C9FD0:  VMULEQ.F32      S3, S12, S6
1C9FD4:  VLDREQ          S14, [R0]
1C9FD8:  VMULEQ.F32      S9, S1, S10
1C9FDC:  VMULEQ.F32      S11, S5, S4
1C9FE0:  MOVWEQ          R0, #0x1E94
1C9FE4:  VSUBEQ.F32      S7, S12, S14
1C9FE8:  ADDEQ           R0, LR, R0
1C9FEC:  VADDEQ.F32      S13, S14, S14
1C9FF0:  ANDEQ           R3, R8, #0x3F ; '?'
1C9FF4:  VMULEQ.F32      S5, S5, S10
1C9FF8:  VMULEQ.F32      S14, S14, S4
1C9FFC:  VADDEQ.F32      S1, S3, S1
1CA000:  VMOVEQ          S3, R4
1CA004:  VADDEQ.F32      S11, S11, S9
1CA008:  VCVTEQ.F32.S32  S3, S3
1CA00C:  VMULEQ.F32      S7, S7, S8
1CA010:  VADDEQ.F32      S14, S14, S9
1CA014:  VADDEQ.F32      S1, S1, S13
1CA018:  VMULEQ.F32      S3, S3, S0
1CA01C:  VADDEQ.F32      S7, S11, S7
1CA020:  VADDEQ.F32      S1, S1, S5
1CA024:  VMULEQ.F32      S5, S7, S3
1CA028:  VADDEQ.F32      S1, S1, S5
1CA02C:  VMULEQ.F32      S1, S1, S3
1CA030:  VADDEQ.F32      S14, S14, S1
1CA034:  VMULEQ.F32      S14, S14, S3
1CA038:  VADDEQ.F32      S12, S14, S12
1CA03C:  VLDREQ          S14, [R0]
1CA040:  LDREQ           R0, [SP,#0x198+var_148]
1CA044:  VLDREQ          S1, [R0]
1CA048:  MOVWEQ          R0, #0x1E98
1CA04C:  ADDEQ           R0, LR, R0
1CA050:  VSUBEQ.F32      S14, S14, S12
1CA054:  VMULEQ.F32      S14, S14, S1
1CA058:  VADDEQ.F32      S12, S14, S12
1CA05C:  VLDREQ          S14, [R0]
1CA060:  LDREQ           R0, [SP,#0x198+var_138]
1CA064:  ADDEQ           R0, R0, R12,LSL#8
1CA068:  ADD             R12, R12, #1
1CA06C:  ADDEQ           R2, R0, #0xE0
1CA070:  ADDEQ           R3, R2, R3,LSL#2
1CA074:  VSUBEQ.F32      S14, S14, S12
1CA078:  VMULEQ.F32      S14, S14, S1
1CA07C:  VADDEQ.F32      S12, S14, S12
1CA080:  VSTREQ          S12, [R3]
1CA084:  LDREQ           R3, [SP,#0x198+var_134]
1CA088:  VLDREQ          S14, [SP,#0x198+var_124]
1CA08C:  SUBEQ           R3, R8, R3
1CA090:  LDREQ           R6, [SP,#0x198+var_188]
1CA094:  ANDEQ           R3, R3, #0x3F ; '?'
1CA098:  ADDEQ           R3, R2, R3,LSL#2
1CA09C:  VLDREQ          S12, [R3]
1CA0A0:  ADDEQ           R3, R8, #1
1CA0A4:  ANDEQ           R3, R3, #0x1F
1CA0A8:  VMULEQ.F32      S12, S14, S12
1CA0AC:  ADDEQ           R0, R0, R3,LSL#3
1CA0B0:  ADDEQ           R3, R0, #0x9E0
1CA0B4:  ADDEQ           R0, R0, R1
1CA0B8:  VLDREQ          S14, [R3]
1CA0BC:  LDREQ           R3, [SP,#0x198+var_130]
1CA0C0:  VADDEQ.F32      S12, S12, S14
1CA0C4:  VLDREQ          S14, [R6]
1CA0C8:  SUBEQ           R3, R8, R3
1CA0CC:  ANDEQ           R3, R3, #0x3F ; '?'
1CA0D0:  ADDEQ           R2, R2, R3,LSL#2
1CA0D4:  VADDEQ.F32      S12, S12, S14
1CA0D8:  VLDREQ          S14, [R2]
1CA0DC:  LDREQ           R2, [SP,#0x198+var_140]
1CA0E0:  MOV             R8, R2
1CA0E4:  VSTREQ          S12, [R6]
1CA0E8:  VLDREQ          S12, [SP,#0x198+var_120]
1CA0EC:  VMULEQ.F32      S12, S12, S14
1CA0F0:  VLDREQ          S14, [R0]
1CA0F4:  LDREQ           R0, [SP,#0x198+var_190]
1CA0F8:  VADDEQ.F32      S12, S12, S14
1CA0FC:  VLDREQ          S14, [R0]
1CA100:  VADDEQ.F32      S12, S12, S14
1CA104:  VSTREQ          S12, [R0]
1CA108:  CMP             R12, R2
1CA10C:  LDR             R0, [SP,#0x198+var_17C]
1CA110:  LDR             R6, [SP,#0x198+var_180]
1CA114:  ADD             R0, R0, #0x100
1CA118:  LDR             LR, [SP,#0x198+var_138]
1CA11C:  STR             R12, [SP,#0x198+var_13C]
1CA120:  MOV             R12, R0
1CA124:  BNE             loc_1C9890
1CA128:  B               loc_1CA134
1CA12C:  MOV             R7, #0
1CA130:  MOV             R4, R2
1CA134:  LDR             R0, [SP,#0x198+var_158]
1CA138:  LDR             R0, [R0,#0x38]
1CA13C:  STR             R0, [SP,#0x198+var_154]
1CA140:  CMP             R0, #0
1CA144:  BEQ             loc_1CA4E4
1CA148:  LDR             R1, [SP,#0x198+var_174]
1CA14C:  VMOV.F32        S4, #0.5
1CA150:  VMOV.F32        S6, #-2.5
1CA154:  RSB             R6, R8, #0
1CA158:  VMOV.F32        S8, #1.5
1CA15C:  MOV             R12, R8,LSL#1
1CA160:  VMOV            S0, R1
1CA164:  MOV             R3, #0
1CA168:  VMOV.F32        S10, #-0.5
1CA16C:  VCVT.F32.S32    S2, S0
1CA170:  VLDR            S0, =0.000061035
1CA174:  STR             R6, [SP,#0x198+var_130]
1CA178:  VMUL.F32        S2, S2, S0
1CA17C:  ADD             R0, R3, R3,LSL#1
1CA180:  ADD             R2, LR, R0,LSL#4
1CA184:  MOVW            R0, #0x1EDC
1CA188:  STR             R2, [SP,#0x198+var_134]
1CA18C:  LDR             R2, [R2,R0]
1CA190:  STR             R3, [SP,#0x198+var_150]
1CA194:  CMP             R2, #0
1CA198:  CMPNE           R8, #0
1CA19C:  BEQ             loc_1CA4D0
1CA1A0:  MOVW            R0, #0x40CC
1CA1A4:  LDR             R3, [SP,#0x198+var_134]
1CA1A8:  ADD             R0, R2, R0
1CA1AC:  STR             R0, [SP,#0x198+var_144]
1CA1B0:  MOVW            R0, #0x1EE0
1CA1B4:  MOV             R9, #0
1CA1B8:  ADD             R0, R3, R0
1CA1BC:  VLDR            S12, [R0]
1CA1C0:  MOVW            R0, #0x40C8
1CA1C4:  ADD             R0, R2, R0
1CA1C8:  STR             R0, [SP,#0x198+var_148]
1CA1CC:  MOVW            R0, #0x1EE4
1CA1D0:  ADD             R3, R3, R0
1CA1D4:  ADD             R0, R2, #0xC8
1CA1D8:  STR             R0, [SP,#0x198+var_14C]
1CA1DC:  CMP             R5, #0
1CA1E0:  LDREQ           R2, [SP,#0x198+var_128]
1CA1E4:  MOVEQ           R0, R6
1CA1E8:  MOVEQ           R5, #0
1CA1EC:  ADDEQ           R2, R2, R9,LSL#2
1CA1F0:  ADDEQ           R6, R2, R8,LSL#2
1CA1F4:  ADDEQ           R7, R2, R12,LSL#2
1CA1F8:  VLDREQ          S14, [R2]
1CA1FC:  VLDREQ          S1, [R6]
1CA200:  MOVEQ           R6, R0
1CA204:  ADDEQ           R2, R2, R6,LSL#2
1CA208:  VLDREQ          S5, [R7]
1CA20C:  VSUBEQ.F32      S7, S14, S1
1CA210:  LDREQ           R0, [SP,#0x198+var_134]
1CA214:  VLDREQ          S3, [R2]
1CA218:  VMULEQ.F32      S11, S5, S4
1CA21C:  VMULEQ.F32      S13, S14, S6
1CA220:  ADDEQ           R2, R0, R9,LSL#2
1CA224:  VMULEQ.F32      S9, S3, S10
1CA228:  MOVWEQ          R0, #0x1EE8
1CA22C:  VADDEQ.F32      S15, S1, S1
1CA230:  ADDEQ           R2, R2, R0
1CA234:  VMULEQ.F32      S5, S5, S10
1CA238:  LDREQ           R0, [SP,#0x198+var_148]
1CA23C:  VMULEQ.F32      S1, S1, S4
1CA240:  VMULEQ.F32      S7, S7, S8
1CA244:  VADDEQ.F32      S3, S13, S3
1CA248:  VADDEQ.F32      S11, S11, S9
1CA24C:  VADDEQ.F32      S1, S1, S9
1CA250:  VADDEQ.F32      S3, S3, S15
1CA254:  VADDEQ.F32      S7, S11, S7
1CA258:  VADDEQ.F32      S3, S3, S5
1CA25C:  VMULEQ.F32      S7, S7, S2
1CA260:  VADDEQ.F32      S3, S3, S7
1CA264:  VMULEQ.F32      S3, S3, S2
1CA268:  VADDEQ.F32      S1, S1, S3
1CA26C:  VLDREQ          S3, [R3]
1CA270:  VMULEQ.F32      S1, S1, S2
1CA274:  VADDEQ.F32      S14, S1, S14
1CA278:  VLDREQ          S1, [R2]
1CA27C:  VSUBEQ.F32      S1, S14, S1
1CA280:  VMULEQ.F32      S1, S1, S3
1CA284:  VSUBEQ.F32      S14, S1, S14
1CA288:  VLDREQ          S1, [R0]
1CA28C:  VMULEQ.F32      S14, S14, S12
1CA290:  VADDEQ.F32      S14, S1, S14
1CA294:  VSTREQ          S14, [R0]
1CA298:  CMP             R10, #0
1CA29C:  BEQ             loc_1CA3D4
1CA2A0:  LDR             R2, [SP,#0x198+var_14C]
1CA2A4:  MOV             R0, R9
1CA2A8:  STR             R5, [SP,#0x198+var_13C]
1CA2AC:  MOV             R7, #0
1CA2B0:  ADD             R6, R2, R5,LSL#2
1CA2B4:  LDR             R2, [SP,#0x198+var_134]
1CA2B8:  MOV             R5, R8
1CA2BC:  MOV             R4, R1
1CA2C0:  ADD             R2, R2, R9,LSL#2
1CA2C4:  MOV             R9, R3
1CA2C8:  MOVW            R3, #0x1EE8
1CA2CC:  ADD             R8, R2, R3
1CA2D0:  MOV             R3, R12
1CA2D4:  MOV             R12, R10
1CA2D8:  MUL             R2, R7, R5
1CA2DC:  LDR             R1, [SP,#0x198+var_128]
1CA2E0:  SUBS            R12, R12, #1
1CA2E4:  ADD             R2, R1, R2,LSL#2
1CA2E8:  LDR             R1, [SP,#0x198+var_130]
1CA2EC:  ADD             R2, R2, R0,LSL#2
1CA2F0:  ADD             R10, R2, R3,LSL#2
1CA2F4:  ADD             LR, R2, R1,LSL#2
1CA2F8:  VLDR            S14, [R2]
1CA2FC:  ADD             R2, R2, R5,LSL#2
1CA300:  VLDR            S7, [R10]
1CA304:  VLDR            S3, [LR]
1CA308:  VMUL.F32        S5, S14, S6
1CA30C:  VLDR            S1, [R2]
1CA310:  VMUL.F32        S13, S7, S4
1CA314:  VMUL.F32        S11, S3, S10
1CA318:  VSUB.F32        S9, S14, S1
1CA31C:  VADD.F32        S15, S1, S1
1CA320:  VMUL.F32        S7, S7, S10
1CA324:  VMUL.F32        S1, S1, S4
1CA328:  VADD.F32        S3, S5, S3
1CA32C:  VMOV            S5, R4
1CA330:  VADD.F32        S13, S13, S11
1CA334:  VCVT.F32.S32    S5, S5
1CA338:  VMUL.F32        S9, S9, S8
1CA33C:  VADD.F32        S1, S1, S11
1CA340:  VADD.F32        S3, S3, S15
1CA344:  VMUL.F32        S5, S5, S0
1CA348:  VADD.F32        S9, S13, S9
1CA34C:  VADD.F32        S3, S3, S7
1CA350:  VMUL.F32        S7, S9, S5
1CA354:  VADD.F32        S3, S3, S7
1CA358:  VMUL.F32        S3, S3, S5
1CA35C:  VADD.F32        S1, S1, S3
1CA360:  VLDR            S3, [R9]
1CA364:  VMUL.F32        S1, S1, S5
1CA368:  VADD.F32        S14, S1, S14
1CA36C:  VLDR            S1, [R8]
1CA370:  VSUB.F32        S1, S1, S14
1CA374:  VMUL.F32        S1, S1, S3
1CA378:  VADD.F32        S14, S1, S14
1CA37C:  VMUL.F32        S1, S14, S12
1CA380:  VSTR            S14, [R8]
1CA384:  VLDR            S14, [R6]
1CA388:  VADD.F32        S14, S1, S14
1CA38C:  VSTR            S14, [R6]
1CA390:  ADD             R6, R6, #4
1CA394:  LDR             R2, [SP,#0x198+var_12C]
1CA398:  ADD             R4, R4, R2
1CA39C:  ADD             R7, R7, R4,LSR#14
1CA3A0:  BFC             R4, #0xE, #0x12
1CA3A4:  BNE             loc_1CA2D8
1CA3A8:  LDR             R10, [R11,#arg_C]
1CA3AC:  MOV             R12, R3
1CA3B0:  LDR             R1, [SP,#0x198+var_13C]
1CA3B4:  MOV             R3, R9
1CA3B8:  LDR             LR, [SP,#0x198+var_138]
1CA3BC:  MOV             R8, R5
1CA3C0:  ADD             R1, R1, R10
1CA3C4:  LDR             R6, [SP,#0x198+var_130]
1CA3C8:  MOV             R9, R0
1CA3CC:  MOV             R5, R1
1CA3D0:  B               loc_1CA3DC
1CA3D4:  MOV             R7, #0
1CA3D8:  MOV             R4, R1
1CA3DC:  LDR             R1, [R11,#arg_8]
1CA3E0:  CMP             R5, R1
1CA3E4:  MULEQ           R2, R7, R8
1CA3E8:  LDREQ           R1, [SP,#0x198+var_128]
1CA3EC:  MOVEQ           R0, R3
1CA3F0:  MOVEQ           R3, R12
1CA3F4:  ADDEQ           R2, R1, R2,LSL#2
1CA3F8:  MOVEQ           R1, R5
1CA3FC:  ADDEQ           R2, R2, R9,LSL#2
1CA400:  ADDEQ           R12, R2, R3,LSL#2
1CA404:  ADDEQ           R5, R2, R6,LSL#2
1CA408:  VLDREQ          S14, [R2]
1CA40C:  ADDEQ           R2, R2, R8,LSL#2
1CA410:  VLDREQ          S3, [R5]
1CA414:  MOVEQ           R5, R1
1CA418:  VLDREQ          S1, [R2]
1CA41C:  VMULEQ.F32      S5, S14, S6
1CA420:  VLDREQ          S7, [R12]
1CA424:  VMULEQ.F32      S11, S3, S10
1CA428:  VSUBEQ.F32      S9, S14, S1
1CA42C:  MOVEQ           R12, R3
1CA430:  VMULEQ.F32      S13, S7, S4
1CA434:  MOVEQ           R3, R0
1CA438:  VADDEQ.F32      S15, S1, S1
1CA43C:  SUB             R5, R5, R10
1CA440:  VMULEQ.F32      S7, S7, S10
1CA444:  VMULEQ.F32      S1, S1, S4
1CA448:  VADDEQ.F32      S3, S5, S3
1CA44C:  VMOVEQ          S5, R4
1CA450:  VMULEQ.F32      S9, S9, S8
1CA454:  VCVTEQ.F32.S32  S5, S5
1CA458:  LDREQ           R0, [SP,#0x198+var_134]
1CA45C:  VADDEQ.F32      S13, S13, S11
1CA460:  ADDEQ           R2, R0, R9,LSL#2
1CA464:  MOVWEQ          R0, #0x1EE8
1CA468:  VADDEQ.F32      S1, S1, S11
1CA46C:  ADDEQ           R2, R2, R0
1CA470:  VADDEQ.F32      S3, S3, S15
1CA474:  LDREQ           R0, [SP,#0x198+var_144]
1CA478:  ADD             R9, R9, #1
1CA47C:  VMULEQ.F32      S5, S5, S0
1CA480:  VADDEQ.F32      S9, S13, S9
1CA484:  VADDEQ.F32      S3, S3, S7
1CA488:  VMULEQ.F32      S7, S9, S5
1CA48C:  VADDEQ.F32      S3, S3, S7
1CA490:  VMULEQ.F32      S3, S3, S5
1CA494:  VADDEQ.F32      S1, S1, S3
1CA498:  VLDREQ          S3, [R3]
1CA49C:  VMULEQ.F32      S1, S1, S5
1CA4A0:  VADDEQ.F32      S14, S1, S14
1CA4A4:  VLDREQ          S1, [R2]
1CA4A8:  VSUBEQ.F32      S1, S1, S14
1CA4AC:  VMULEQ.F32      S1, S1, S3
1CA4B0:  VADDEQ.F32      S14, S1, S14
1CA4B4:  VLDREQ          S1, [R0]
1CA4B8:  VMULEQ.F32      S14, S14, S12
1CA4BC:  VADDEQ.F32      S14, S14, S1
1CA4C0:  VSTREQ          S14, [R0]
1CA4C4:  CMP             R9, R8
1CA4C8:  LDR             R1, [SP,#0x198+var_174]
1CA4CC:  BNE             loc_1CA1DC
1CA4D0:  LDR             R3, [SP,#0x198+var_150]
1CA4D4:  LDR             R0, [SP,#0x198+var_154]
1CA4D8:  ADD             R3, R3, #1
1CA4DC:  CMP             R3, R0
1CA4E0:  BCC             loc_1CA17C
1CA4E4:  LDR             R1, [SP,#0x198+var_198]
1CA4E8:  LDR             R0, [R1]
1CA4EC:  ADD             R0, R0, R7
1CA4F0:  STR             R0, [R1]
1CA4F4:  LDR             R0, [R11,#arg_0]
1CA4F8:  STR             R4, [R0]
1CA4FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CA50C)
1CA500:  LDR             R1, [R11,#var_24]
1CA504:  LDR             R0, [PC,R0]; __stack_chk_guard
1CA508:  LDR             R0, [R0]
1CA50C:  SUBS            R0, R0, R1
1CA510:  SUBEQ           SP, R11, #0x1C
1CA514:  POPEQ           {R4-R11,PC}
1CA518:  BL              __stack_chk_fail
