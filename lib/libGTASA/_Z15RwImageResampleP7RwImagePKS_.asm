; =========================================================
; Game Engine Function: _Z15RwImageResampleP7RwImagePKS_
; Address            : 0x1DAC80 - 0x1DAF04
; =========================================================

1DAC80:  PUSH            {R4-R7,LR}
1DAC82:  ADD             R7, SP, #0xC
1DAC84:  PUSH.W          {R8-R11}
1DAC88:  SUB             SP, SP, #4
1DAC8A:  VPUSH           {D8-D15}
1DAC8E:  SUB             SP, SP, #0x98
1DAC90:  MOV             R4, SP
1DAC92:  BFC.W           R4, #0, #4
1DAC96:  MOV             SP, R4
1DAC98:  LDRD.W          R2, R5, [R0]
1DAC9C:  MOV             R11, R1
1DAC9E:  LDR             R3, [R0,#8]
1DACA0:  VMOV            S6, R5
1DACA4:  VLDR            S0, [R11,#8]
1DACA8:  CMP             R3, #1
1DACAA:  VMOV            S2, R3
1DACAE:  VCVT.F32.S32    S0, S0
1DACB2:  VCVT.F32.S32    S2, S2
1DACB6:  VLDR            S4, [R11,#4]
1DACBA:  VCVT.F32.S32    S4, S4
1DACBE:  VCVT.F32.S32    S6, S6
1DACC2:  LDR.W           R1, [R11]
1DACC6:  AND.W           R1, R1, #2
1DACCA:  ORR.W           R1, R1, R2
1DACCE:  VDIV.F32        S0, S0, S2
1DACD2:  VDIV.F32        S2, S4, S6
1DACD6:  VLDR            S4, =65536.0
1DACDA:  VMUL.F32        S0, S0, S4
1DACDE:  VMUL.F32        S2, S2, S4
1DACE2:  VCVT.S32.F32    S0, S0
1DACE6:  VCVT.S32.F32    S2, S2
1DACEA:  STR             R0, [SP,#0xF8+var_E8]
1DACEC:  STR             R1, [R0]
1DACEE:  MOV             R0, R3
1DACF0:  STR             R0, [SP,#0xF8+var_E0]
1DACF2:  BLT.W           loc_1DAEF0
1DACF6:  VMOV            R0, S0
1DACFA:  VLDR            S16, =0.000015259
1DACFE:  VMOV            R1, S2
1DAD02:  ADD             R3, SP, #0xF8+var_88
1DAD04:  VMOV.F32        S2, #1.0
1DAD08:  VLDR            S24, =255.0
1DAD0C:  VMOV.F32        S26, #0.5
1DAD10:  ADD.W           R9, SP, #0xF8+var_78
1DAD14:  ADD.W           LR, SP, #0xF8+var_D8
1DAD18:  STR             R1, [SP,#0xF8+var_98]
1DAD1A:  MOV             R1, R0
1DAD1C:  SUBS            R0, #1
1DAD1E:  STR             R1, [SP,#0xF8+var_E4]
1DAD20:  VMOV            S0, R0
1DAD24:  STR             R0, [SP,#0xF8+var_EC]
1DAD26:  MOVS            R0, #0
1DAD28:  VCVT.F32.S32    S0, S0
1DAD2C:  STR             R0, [SP,#0xF8+var_DC]
1DAD2E:  MOVS            R0, #0
1DAD30:  STR             R5, [SP,#0xF8+var_BC]
1DAD32:  STR             R0, [SP,#0xF8+var_8C]
1DAD34:  VMUL.F32        S0, S0, S16
1DAD38:  VDIV.F32        S18, S2, S0
1DAD3C:  VDUP.32         Q7, D0[0]
1DAD40:  VST1.64         {D14-D15}, [LR@128]
1DAD44:  CMP             R5, #1
1DAD46:  BLT.W           loc_1DAED6
1DAD4A:  LDR             R1, [SP,#0xF8+var_E8]
1DAD4C:  ADD.W           LR, SP, #0xF8+var_B8
1DAD50:  MOV.W           R10, #0
1DAD54:  MOVS            R4, #0
1DAD56:  LDRD.W          R0, R1, [R1,#0x10]
1DAD5A:  LDR             R2, [SP,#0xF8+var_DC]
1DAD5C:  MLA.W           R0, R0, R2, R1
1DAD60:  LDR             R1, [SP,#0xF8+var_8C]
1DAD62:  STR             R0, [SP,#0xF8+var_90]
1DAD64:  MOVW            R0, #0xFFFF
1DAD68:  BIC.W           R0, R1, R0
1DAD6C:  ADD.W           R2, R0, #0x10000
1DAD70:  SUBS            R0, R2, R1
1DAD72:  VMOV            S0, R0
1DAD76:  VCVT.F32.S32    S0, S0
1DAD7A:  LDR             R0, [SP,#0xF8+var_EC]
1DAD7C:  STR             R2, [SP,#0xF8+var_A0]
1DAD7E:  ADD             R0, R1
1DAD80:  STR             R0, [SP,#0xF8+var_A4]
1DAD82:  MOV.W           R8, R0,ASR#16
1DAD86:  ASRS            R0, R2, #0x10
1DAD88:  STR             R0, [SP,#0xF8+var_A8]
1DAD8A:  ASRS            R0, R1, #0x10
1DAD8C:  STR             R0, [SP,#0xF8+var_94]
1DAD8E:  VMUL.F32        S0, S0, S16
1DAD92:  VDUP.32         Q8, D0[0]
1DAD96:  VST1.64         {D16-D17}, [LR@128]
1DAD9A:  LDR             R0, [SP,#0xF8+var_98]
1DAD9C:  ADDS            R2, R4, R0
1DAD9E:  LDR             R0, [SP,#0xF8+var_94]
1DADA0:  SUBS            R6, R2, #1
1DADA2:  CMP             R0, R8
1DADA4:  BNE             loc_1DADC2
1DADA6:  STR             R3, [SP,#0xF8+var_F8]
1DADA8:  MOV             R1, R4
1DADAA:  LDR             R3, [SP,#0xF8+var_8C]
1DADAC:  MOV             R4, R2
1DADAE:  MOV             R0, R11
1DADB0:  MOV             R2, R6
1DADB2:  BL              sub_1DAFA0
1DADB6:  ADD             R3, SP, #0xF8+var_88
1DADB8:  VLD1.64         {D16-D17}, [R3@128]
1DADBC:  VMUL.F32        Q0, Q7, Q8
1DADC0:  B               loc_1DAE68
1DADC2:  STR             R3, [SP,#0xF8+var_F8]
1DADC4:  MOV             R5, R3
1DADC6:  LDR             R3, [SP,#0xF8+var_8C]
1DADC8:  MOV             R0, R11
1DADCA:  STR             R2, [SP,#0xF8+var_9C]
1DADCC:  MOV             R1, R4
1DADCE:  MOV             R2, R6
1DADD0:  BL              sub_1DAFA0
1DADD4:  ADD.W           LR, SP, #0xF8+var_B8
1DADD8:  VLD1.64         {D16-D17}, [R5@128]
1DADDC:  MOV             R0, R11
1DADDE:  MOV             R1, R4
1DADE0:  VLD1.64         {D18-D19}, [LR@128]
1DADE4:  MOV             R2, R6
1DADE6:  VMUL.F32        Q5, Q9, Q8
1DADEA:  STR.W           R9, [SP,#0xF8+var_F8]
1DADEE:  VST1.64         {D10-D11}, [R5@128]
1DADF2:  LDR             R5, [SP,#0xF8+var_A0]
1DADF4:  MOV             R3, R5
1DADF6:  BL              sub_1DAFA0
1DADFA:  LDR             R0, [SP,#0xF8+var_A8]
1DADFC:  CMP             R0, R8
1DADFE:  BNE             loc_1DAE04
1DAE00:  ADD             R3, SP, #0xF8+var_88
1DAE02:  B               loc_1DAE34
1DAE04:  ADD.W           R5, R5, #0x10000
1DAE08:  VLD1.64         {D14-D15}, [R9@128]
1DAE0C:  MOV             R0, R11
1DAE0E:  MOV             R1, R4
1DAE10:  MOV             R2, R6
1DAE12:  MOV             R3, R5
1DAE14:  STR.W           R9, [SP,#0xF8+var_F8]
1DAE18:  BL              sub_1DAFA0
1DAE1C:  VADD.F32        Q5, Q7, Q5
1DAE20:  CMP.W           R8, R5,ASR#16
1DAE24:  BNE             loc_1DAE04
1DAE26:  ADD.W           LR, SP, #0xF8+var_D8
1DAE2A:  ADD             R3, SP, #0xF8+var_88
1DAE2C:  VLD1.64         {D14-D15}, [LR@128]
1DAE30:  VST1.64         {D10-D11}, [R3@128]
1DAE34:  LDR             R0, [SP,#0xF8+var_A4]
1DAE36:  LDR             R4, [SP,#0xF8+var_9C]
1DAE38:  SUBS            R0, R0, R5
1DAE3A:  VMOV            S0, R0
1DAE3E:  ORR.W           R0, R9, #8
1DAE42:  VCVT.F32.S32    S0, S0
1DAE46:  VLD1.64         {D16-D17}, [R9@128]
1DAE4A:  LDR             R5, [SP,#0xF8+var_BC]
1DAE4C:  VMUL.F32        S0, S0, S16
1DAE50:  VMUL.F32        Q8, Q8, D0[0]
1DAE54:  VADD.F32        Q0, Q8, Q5
1DAE58:  VST1.32         {D17[0]}, [R0@32]
1DAE5C:  ORR.W           R0, R9, #4
1DAE60:  VST1.32         {D16[1]}, [R0@32]
1DAE64:  VST1.32         {D16[0]}, [R9@32]
1DAE68:  VST1.64         {D0-D1}, [R3@128]
1DAE6C:  VMUL.F32        S4, S18, S0
1DAE70:  VMUL.F32        S0, S18, S1
1DAE74:  VMUL.F32        S6, S18, S2
1DAE78:  VMUL.F32        S8, S18, S3
1DAE7C:  VMUL.F32        S2, S4, S24
1DAE80:  VMUL.F32        S0, S0, S24
1DAE84:  VMUL.F32        S4, S6, S24
1DAE88:  VMUL.F32        S6, S8, S24
1DAE8C:  VADD.F32        S2, S2, S26
1DAE90:  VADD.F32        S0, S0, S26
1DAE94:  VADD.F32        S4, S4, S26
1DAE98:  VADD.F32        S6, S6, S26
1DAE9C:  VCVT.S32.F32    S2, S2
1DAEA0:  VCVT.S32.F32    S4, S4
1DAEA4:  VCVT.S32.F32    S6, S6
1DAEA8:  VCVT.S32.F32    S0, S0
1DAEAC:  LDR             R1, [SP,#0xF8+var_90]
1DAEAE:  VMOV            R0, S2
1DAEB2:  STRB.W          R0, [R1,R10,LSL#2]
1DAEB6:  ADD.W           R0, R1, R10,LSL#2
1DAEBA:  VMOV            R1, S0
1DAEBE:  ADD.W           R10, R10, #1
1DAEC2:  CMP             R10, R5
1DAEC4:  STRB            R1, [R0,#1]
1DAEC6:  VMOV            R1, S4
1DAECA:  STRB            R1, [R0,#2]
1DAECC:  VMOV            R1, S6
1DAED0:  STRB            R1, [R0,#3]
1DAED2:  BNE.W           loc_1DAD9A
1DAED6:  LDR             R0, [SP,#0xF8+var_E4]
1DAED8:  LDR             R1, [SP,#0xF8+var_8C]
1DAEDA:  ADD             R1, R0
1DAEDC:  LDR             R0, [SP,#0xF8+var_DC]
1DAEDE:  STR             R1, [SP,#0xF8+var_8C]
1DAEE0:  MOV             R2, R0
1DAEE2:  LDR             R0, [SP,#0xF8+var_E0]
1DAEE4:  ADDS            R2, #1
1DAEE6:  CMP             R2, R0
1DAEE8:  MOV             R1, R2
1DAEEA:  STR             R1, [SP,#0xF8+var_DC]
1DAEEC:  BNE.W           loc_1DAD44
1DAEF0:  SUB.W           R4, R7, #-var_60
1DAEF4:  LDR             R0, [SP,#0xF8+var_E8]
1DAEF6:  MOV             SP, R4
1DAEF8:  VPOP            {D8-D15}
1DAEFC:  ADD             SP, SP, #4
1DAEFE:  POP.W           {R8-R11}
1DAF02:  POP             {R4-R7,PC}
