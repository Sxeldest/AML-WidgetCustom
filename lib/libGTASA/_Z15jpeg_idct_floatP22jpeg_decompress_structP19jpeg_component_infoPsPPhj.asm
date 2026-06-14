; =========================================================
; Game Engine Function: _Z15jpeg_idct_floatP22jpeg_decompress_structP19jpeg_component_infoPsPPhj
; Address            : 0x480A00 - 0x480D6A
; =========================================================

480A00:  PUSH            {R4-R7,LR}
480A02:  ADD             R7, SP, #0xC
480A04:  PUSH.W          {R8-R11}
480A08:  SUB             SP, SP, #0x108
480A0A:  STR             R3, [SP,#0x124+var_120]
480A0C:  ADDS            R2, #0x40 ; '@'
480A0E:  LDR.W           R0, [R0,#0x120]
480A12:  ADD.W           R9, SP, #0x124+var_11C
480A16:  STR             R0, [SP,#0x124+var_124]
480A18:  MOV.W           R10, #9
480A1C:  LDR             R3, [R1,#0x50]
480A1E:  MOVS            R4, #0
480A20:  VLDR            S0, =-2.6131
480A24:  VLDR            S2, =1.8478
480A28:  VLDR            S4, =1.4142
480A2C:  VLDR            S6, =1.0824
480A30:  B               loc_480A76
480A32:  LDRH            R0, [R2,#0x10]
480A34:  CMP             R0, #0
480A36:  ITT EQ
480A38:  LDRHEQ          R0, [R2,#0x20]
480A3A:  CMPEQ           R0, #0
480A3C:  BNE             loc_480A98
480A3E:  LDRH            R0, [R2,#0x30]
480A40:  CBNZ            R0, loc_480A98
480A42:  LDRSH.W         R0, [R2,#-0x40]
480A46:  VMOV            S8, R0
480A4A:  MOVS            R0, #0x38 ; '8'
480A4C:  VCVT.F32.S32    S8, S8
480A50:  VLDR            S10, [R1]
480A54:  VMUL.F32        S8, S10, S8
480A58:  VSTR            S8, [R6]
480A5C:  VSTR            S8, [R6,#0x40]
480A60:  VSTR            S8, [R6,#0x20]
480A64:  VSTR            S8, [R6,#0x60]
480A68:  VSTR            S8, [R6,#0x80]
480A6C:  VSTR            S8, [R6,#0xA0]
480A70:  VSTR            S8, [R6,#0xC0]
480A74:  B               loc_480BDE
480A76:  LDRH.W          R0, [R2,#-0x20]
480A7A:  ADDS            R1, R3, R4
480A7C:  LDRH.W          R12, [R2,#-0x30]
480A80:  ADD.W           R6, R9, R4
480A84:  ORRS.W          R5, R12, R0
480A88:  BNE             loc_480A9A
480A8A:  LDRH.W          R0, [R2,#-0x10]
480A8E:  CMP             R0, #0
480A90:  ITT EQ
480A92:  LDRHEQ          R0, [R2]
480A94:  CMPEQ           R0, #0
480A96:  BEQ             loc_480A32
480A98:  MOVS            R0, #0
480A9A:  LDRSH.W         R5, [R2,#0x30]
480A9E:  SXTH            R0, R0
480AA0:  LDRSH.W         LR, [R2,#-0x10]
480AA4:  LDRSH.W         R8, [R2,#0x10]
480AA8:  VMOV            S8, R5
480AAC:  SXTH.W          R5, R12
480AB0:  VMOV            S10, R5
480AB4:  LDRSH.W         R11, [R2,#-0x40]
480AB8:  VMOV            S12, R8
480ABC:  VMOV            S14, LR
480AC0:  VCVT.F32.S32    S8, S8
480AC4:  VCVT.F32.S32    S10, S10
480AC8:  VCVT.F32.S32    S12, S12
480ACC:  VCVT.F32.S32    S14, S14
480AD0:  VLDR            S1, [R1,#0xE0]
480AD4:  VLDR            S3, [R1,#0x20]
480AD8:  VMOV            S15, R11
480ADC:  VLDR            S7, [R1,#0x60]
480AE0:  VLDR            S11, [R1,#0xA0]
480AE4:  VMUL.F32        S8, S1, S8
480AE8:  LDRSH.W         R5, [R2,#0x20]
480AEC:  VMUL.F32        S10, S3, S10
480AF0:  VLDR            S5, [R1,#0x40]
480AF4:  VMUL.F32        S12, S11, S12
480AF8:  VLDR            S9, [R1,#0x80]
480AFC:  VMUL.F32        S14, S7, S14
480B00:  VMOV            S1, R5
480B04:  VMOV            S11, R0
480B08:  VCVT.F32.S32    S1, S1
480B0C:  VCVT.F32.S32    S11, S11
480B10:  VLDR            S13, [R1,#0xC0]
480B14:  VSUB.F32        S3, S10, S8
480B18:  LDRSH.W         R0, [R2]
480B1C:  VADD.F32        S8, S10, S8
480B20:  VSUB.F32        S7, S12, S14
480B24:  VADD.F32        S10, S14, S12
480B28:  VMUL.F32        S1, S13, S1
480B2C:  VMUL.F32        S5, S5, S11
480B30:  VMOV            S11, R0
480B34:  MOVS            R0, #0x18
480B36:  VADD.F32        S13, S7, S3
480B3A:  VCVT.F32.S32    S11, S11
480B3E:  VCVT.F32.S32    S15, S15
480B42:  VMUL.F32        S12, S7, S0
480B46:  VLDR            S7, [R1]
480B4A:  VMUL.F32        S3, S3, S6
480B4E:  VMUL.F32        S14, S13, S2
480B52:  VMUL.F32        S9, S9, S11
480B56:  VSUB.F32        S11, S8, S10
480B5A:  VADD.F32        S8, S10, S8
480B5E:  VSUB.F32        S13, S5, S1
480B62:  VMUL.F32        S7, S7, S15
480B66:  VADD.F32        S10, S14, S12
480B6A:  VADD.F32        S12, S5, S1
480B6E:  VMUL.F32        S11, S11, S4
480B72:  VSUB.F32        S14, S3, S14
480B76:  VMUL.F32        S1, S13, S4
480B7A:  VADD.F32        S5, S7, S9
480B7E:  VSUB.F32        S7, S7, S9
480B82:  VSUB.F32        S10, S10, S8
480B86:  VSUB.F32        S1, S1, S12
480B8A:  VADD.F32        S9, S5, S12
480B8E:  VSUB.F32        S12, S5, S12
480B92:  VSUB.F32        S3, S11, S10
480B96:  VADD.F32        S11, S7, S1
480B9A:  VADD.F32        S13, S9, S8
480B9E:  VSUB.F32        S1, S7, S1
480BA2:  VADD.F32        S14, S14, S3
480BA6:  VSUB.F32        S8, S9, S8
480BAA:  VADD.F32        S5, S11, S10
480BAE:  VSTR            S13, [R6]
480BB2:  VSUB.F32        S10, S11, S10
480BB6:  VADD.F32        S7, S1, S3
480BBA:  VSUB.F32        S1, S1, S3
480BBE:  VSTR            S8, [R6,#0xE0]
480BC2:  VSUB.F32        S8, S12, S14
480BC6:  VADD.F32        S3, S12, S14
480BCA:  VSTR            S5, [R6,#0x20]
480BCE:  VSTR            S10, [R6,#0xC0]
480BD2:  VSTR            S7, [R6,#0x40]
480BD6:  VSTR            S1, [R6,#0xA0]
480BDA:  VSTR            S3, [R6,#0x80]
480BDE:  ADD.W           R0, R4, R0,LSL#2
480BE2:  SUB.W           R10, R10, #1
480BE6:  ADD             R0, R9
480BE8:  ADDS            R2, #2
480BEA:  ADDS            R4, #4
480BEC:  CMP.W           R10, #1
480BF0:  VSTR            S8, [R0]
480BF4:  BGT.W           loc_480A76
480BF8:  LDR             R0, [SP,#0x124+var_124]
480BFA:  ADD             R2, SP, #0x124+var_11C
480BFC:  LDR             R4, [SP,#0x124+var_120]
480BFE:  MOVS            R1, #0
480C00:  LDR.W           R12, [R7,#arg_0]
480C04:  ADDS            R0, #0x80
480C06:  VLDR            S8, [R2]
480C0A:  VLDR            S10, [R2,#4]
480C0E:  VLDR            S7, [R2,#0x1C]
480C12:  VLDR            S12, [R2,#8]
480C16:  VLDR            S14, [R2,#0xC]
480C1A:  VSUB.F32        S9, S10, S7
480C1E:  VLDR            S3, [R2,#0x14]
480C22:  VADD.F32        S10, S10, S7
480C26:  VLDR            S1, [R2,#0x10]
480C2A:  VLDR            S5, [R2,#0x18]
480C2E:  VSUB.F32        S11, S3, S14
480C32:  VADD.F32        S14, S3, S14
480C36:  ADDS            R2, #0x20 ; ' '
480C38:  VADD.F32        S3, S12, S5
480C3C:  VADD.F32        S7, S8, S1
480C40:  VSUB.F32        S12, S12, S5
480C44:  VSUB.F32        S8, S8, S1
480C48:  VADD.F32        S5, S11, S9
480C4C:  VADD.F32        S13, S14, S10
480C50:  VSUB.F32        S10, S10, S14
480C54:  VADD.F32        S15, S7, S3
480C58:  VMUL.F32        S11, S11, S0
480C5C:  VMUL.F32        S12, S12, S4
480C60:  VMUL.F32        S9, S9, S6
480C64:  VMUL.F32        S5, S5, S2
480C68:  VMUL.F32        S10, S10, S4
480C6C:  VADD.F32        S14, S15, S13
480C70:  VSUB.F32        S12, S12, S3
480C74:  VADD.F32        S1, S5, S11
480C78:  VSUB.F32        S11, S15, S13
480C7C:  VSUB.F32        S5, S9, S5
480C80:  VCVT.S32.F32    S14, S14
480C84:  LDR.W           R3, [R4,R1,LSL#2]
480C88:  ADDS            R1, #1
480C8A:  VADD.F32        S15, S8, S12
480C8E:  CMP             R1, #8
480C90:  VSUB.F32        S8, S8, S12
480C94:  VMOV            R6, S14
480C98:  VSUB.F32        S14, S1, S13
480C9C:  VADD.F32        S12, S15, S14
480CA0:  VSUB.F32        S10, S10, S14
480CA4:  VSUB.F32        S14, S15, S14
480CA8:  VADD.F32        S5, S5, S10
480CAC:  ADD.W           R6, R6, #4
480CB0:  UBFX.W          R6, R6, #3, #0xA
480CB4:  LDRB            R6, [R0,R6]
480CB6:  VCVT.S32.F32    S1, S11
480CBA:  STRB.W          R6, [R3,R12]
480CBE:  VMOV            R6, S1
480CC2:  VSUB.F32        S1, S7, S3
480CC6:  VADD.F32        S3, S8, S10
480CCA:  VSUB.F32        S8, S8, S10
480CCE:  ADD.W           R6, R6, #4
480CD2:  UBFX.W          R6, R6, #3, #0xA
480CD6:  LDRB            R5, [R0,R6]
480CD8:  ADD.W           R6, R3, R12
480CDC:  STRB            R5, [R6,#7]
480CDE:  VCVT.S32.F32    S12, S12
480CE2:  VMOV            R3, S12
480CE6:  ADD.W           R3, R3, #4
480CEA:  UBFX.W          R3, R3, #3, #0xA
480CEE:  LDRB            R3, [R0,R3]
480CF0:  VCVT.S32.F32    S10, S14
480CF4:  STRB            R3, [R6,#1]
480CF6:  VMOV            R3, S10
480CFA:  VADD.F32        S10, S1, S5
480CFE:  ADD.W           R3, R3, #4
480D02:  UBFX.W          R3, R3, #3, #0xA
480D06:  LDRB            R3, [R0,R3]
480D08:  VCVT.S32.F32    S12, S3
480D0C:  STRB            R3, [R6,#6]
480D0E:  VMOV            R3, S12
480D12:  VSUB.F32        S12, S1, S5
480D16:  ADD.W           R3, R3, #4
480D1A:  UBFX.W          R3, R3, #3, #0xA
480D1E:  LDRB            R3, [R0,R3]
480D20:  VCVT.S32.F32    S8, S8
480D24:  STRB            R3, [R6,#2]
480D26:  VMOV            R3, S8
480D2A:  ADD.W           R3, R3, #4
480D2E:  UBFX.W          R3, R3, #3, #0xA
480D32:  LDRB            R3, [R0,R3]
480D34:  VCVT.S32.F32    S8, S10
480D38:  STRB            R3, [R6,#5]
480D3A:  VMOV            R3, S8
480D3E:  ADD.W           R3, R3, #4
480D42:  UBFX.W          R3, R3, #3, #0xA
480D46:  LDRB            R3, [R0,R3]
480D48:  VCVT.S32.F32    S8, S12
480D4C:  STRB            R3, [R6,#4]
480D4E:  VMOV            R3, S8
480D52:  ADD.W           R3, R3, #4
480D56:  UBFX.W          R3, R3, #3, #0xA
480D5A:  LDRB            R3, [R0,R3]
480D5C:  STRB            R3, [R6,#3]
480D5E:  BNE.W           loc_480C06
480D62:  ADD             SP, SP, #0x108
480D64:  POP.W           {R8-R11}
480D68:  POP             {R4-R7,PC}
