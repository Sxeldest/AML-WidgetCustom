; =========================================================
; Game Engine Function: sub_1DF8FC
; Address            : 0x1DF8FC - 0x1DFE48
; =========================================================

1DF8FC:  PUSH            {R4-R11,LR}
1DF900:  ADD             R11, SP, #0x1C
1DF904:  SUB             SP, SP, #4
1DF908:  VPUSH           {D8-D15}
1DF90C:  SUB             SP, SP, #0x38
1DF910:  MOV             R6, R0
1DF914:  LDR             R0, =(__stack_chk_guard_ptr - 0x1DF924)
1DF918:  CMP             R1, #0
1DF91C:  LDR             R0, [PC,R0]; __stack_chk_guard
1DF920:  LDR             R0, [R0]
1DF924:  STR             R0, [SP,#0x98+var_64]
1DF928:  BEQ             loc_1DFE20
1DF92C:  VMOV.F32        S18, #1.0
1DF930:  ADD             R5, R3, #0x20 ; ' '
1DF934:  VMOV.F32        S20, #0.5
1DF938:  VLDR            S16, =6.2832
1DF93C:  B               loc_1DF944
1DF940:  DCFS 6.2832
1DF944:  STR             R1, [SP,#0x98+var_8C]
1DF948:  STR             R2, [SP,#0x98+var_88]
1DF94C:  LDR             R9, [R6,#0x2C]
1DF950:  VLDR            S22, [R2]
1DF954:  VMOV            S0, R9
1DF958:  VCVT.F32.U32    S0, S0
1DF95C:  LDR             R7, [R6,#0x30]
1DF960:  VMOV            S2, R7
1DF964:  VCVT.F32.U32    S2, S2
1DF968:  VMUL.F32        S0, S0, S16
1DF96C:  VDIV.F32        S0, S0, S2
1DF970:  VMOV            R0, S0; x
1DF974:  BL              cosf
1DF978:  VLDR            S6, [R6,#0x34]
1DF97C:  VLDR            S10, [R6,#0x3C]
1DF980:  VLDR            S8, [R6,#0x38]
1DF984:  VSUB.F32        S6, S6, S10
1DF988:  VLDR            S2, [R6,#0x1C]
1DF98C:  VLDR            S0, [R6,#0x18]
1DF990:  VSUB.F32        S2, S2, S22
1DF994:  VLDR            S4, [R6,#0x20]
1DF998:  LDR             R8, [R6,#0x1D8]
1DF99C:  VMUL.F32        S6, S6, S8
1DF9A0:  VMOV            S8, R0
1DF9A4:  LDR             R0, [R6,#0x24]
1DF9A8:  VMUL.F32        S2, S2, S0
1DF9AC:  VSUB.F32        S8, S18, S8
1DF9B0:  VADD.F32        S6, S6, S10
1DF9B4:  VADD.F32        S2, S2, S22
1DF9B8:  VMUL.F32        S8, S6, S8
1DF9BC:  VSUB.F32        S4, S4, S2
1DF9C0:  VADD.F32        S8, S8, S18
1DF9C4:  VMUL.F32        S0, S4, S0
1DF9C8:  VCVT.S32.F32    S10, S8
1DF9CC:  LDR             R1, [R6,#0x28]
1DF9D0:  VSTR            S6, [R6,#0x3C]
1DF9D4:  VADD.F32        S0, S0, S2
1DF9D8:  VSTR            S2, [R6,#0x1C]
1DF9DC:  VMOV            R2, S10
1DF9E0:  VSTR            S0, [R6,#0x20]
1DF9E4:  SUB             R2, R8, R2
1DF9E8:  AND             R3, R2, R0
1DF9EC:  SUB             R2, R2, #1
1DF9F0:  AND             R2, R2, R0
1DF9F4:  AND             R0, R0, R8
1DF9F8:  ADD             R3, R1, R3,LSL#2
1DF9FC:  ADD             R2, R1, R2,LSL#2
1DFA00:  ADD             R0, R1, R0,LSL#2
1DFA04:  VLDR            S2, [R3]
1DFA08:  VCVT.F32.U32    S4, S10
1DFA0C:  VLDR            S6, [R2]
1DFA10:  MOV             R1, R7
1DFA14:  VSTR            S0, [R0]
1DFA18:  ADD             R0, R9, #1
1DFA1C:  VSUB.F32        S6, S6, S2
1DFA20:  VSUB.F32        S4, S8, S4
1DFA24:  VMUL.F32        S4, S6, S4
1DFA28:  VADD.F32        S22, S4, S2
1DFA2C:  BL              sub_221798
1DFA30:  LDR             R9, [R6,#0x40]
1DFA34:  LDR             LR, [R6,#0x44]
1DFA38:  STR             R1, [R6,#0x2C]
1DFA3C:  AND             R1, R9, R8
1DFA40:  ADD             R1, LR, R1,LSL#2
1DFA44:  VSTR            S22, [R1]
1DFA48:  LDR             R1, [R6,#0x64]
1DFA4C:  LDR             R12, [R6,#0x68]
1DFA50:  AND             R3, R1, R8
1DFA54:  ADD             R0, R12, R3,LSL#2
1DFA58:  STR             R0, [SP,#0x98+var_94]
1DFA5C:  LDR             R3, [R6,#0x48]
1DFA60:  LDR             R0, [R6,#0x7C]
1DFA64:  SUB             R3, R8, R3
1DFA68:  AND             R3, R3, R9
1DFA6C:  ADD             R3, LR, R3,LSL#2
1DFA70:  VLDR            S0, [R3]
1DFA74:  LDR             R3, [R6,#0x90]
1DFA78:  STR             R0, [SP,#0x98+var_90]
1DFA7C:  SUB             R3, R8, R3
1DFA80:  VLDR            S10, [R6,#0x54]
1DFA84:  AND             R4, R0, R3
1DFA88:  LDR             R3, [R6,#0x80]
1DFA8C:  LDR             R0, [R6,#0x70]
1DFA90:  ADD             R4, R3, R4,LSL#2
1DFA94:  VLDR            S12, [R6,#0x58]
1DFA98:  VLDR            S14, [R6,#0x5C]
1DFA9C:  VLDR            S2, [R4]
1DFAA0:  LDR             R4, [R6,#0x8C]
1DFAA4:  VLDR            S1, [R6,#0x60]
1DFAA8:  SUB             R7, R8, R4
1DFAAC:  LDR             R4, [R6,#0x74]
1DFAB0:  VMUL.F32        S2, S2, S1
1DFAB4:  AND             R10, R4, R7
1DFAB8:  LDR             R7, [R6,#0x78]
1DFABC:  ADD             R2, R7, R10,LSL#2
1DFAC0:  LDR             R10, [R6,#0x6C]
1DFAC4:  VLDR            S4, [R2]
1DFAC8:  LDR             R2, [R6,#0x88]
1DFACC:  VMUL.F32        S4, S4, S14
1DFAD0:  SUB             R2, R8, R2
1DFAD4:  AND             R2, R10, R2
1DFAD8:  ADD             R2, R0, R2,LSL#2
1DFADC:  VLDR            S6, [R2]
1DFAE0:  LDR             R2, [R6,#0x84]
1DFAE4:  VMUL.F32        S6, S6, S12
1DFAE8:  SUB             R2, R8, R2
1DFAEC:  AND             R1, R1, R2
1DFAF0:  ADD             R1, R12, R1,LSL#2
1DFAF4:  VLDR            S8, [R1]
1DFAF8:  LDR             R1, [SP,#0x98+var_94]
1DFAFC:  VMUL.F32        S8, S8, S10
1DFB00:  VADD.F32        S10, S6, S8
1DFB04:  VADD.F32        S10, S10, S4
1DFB08:  VADD.F32        S10, S10, S2
1DFB0C:  VMUL.F32        S10, S10, S20
1DFB10:  VADD.F32        S0, S10, S0
1DFB14:  VSUB.F32        S30, S0, S8
1DFB18:  VSUB.F32        S28, S0, S6
1DFB1C:  VSUB.F32        S26, S0, S4
1DFB20:  VSUB.F32        S22, S0, S2
1DFB24:  VSTR            S30, [R1]
1DFB28:  AND             R1, R10, R8
1DFB2C:  ADD             R0, R0, R1,LSL#2
1DFB30:  VSTR            S28, [R0]
1DFB34:  AND             R0, R4, R8
1DFB38:  ADD             R0, R7, R0,LSL#2
1DFB3C:  VSTR            S26, [R0]
1DFB40:  LDR             R0, [SP,#0x98+var_90]
1DFB44:  AND             R0, R0, R8
1DFB48:  ADD             R0, R3, R0,LSL#2
1DFB4C:  VSTR            S22, [R0]
1DFB50:  LDR             R0, [R6,#0x4C]
1DFB54:  VLDR            S0, [R6,#0xD0]
1DFB58:  SUB             R0, R8, R0
1DFB5C:  LDR             R1, [R6,#0xBC]
1DFB60:  AND             R0, R9, R0
1DFB64:  VLDR            S24, [R6,#0x50]
1DFB68:  ADD             R0, LR, R0,LSL#2
1DFB6C:  VLDR            S17, [R0]
1DFB70:  LDR             R0, [R6,#0xB8]
1DFB74:  VMUL.F32        S0, S0, S17
1DFB78:  AND             R2, R0, R8
1DFB7C:  ADD             R2, R1, R2,LSL#2
1DFB80:  VSTR            S0, [R2]
1DFB84:  VSTR            S0, [SP,#0x98+var_74]
1DFB88:  LDR             R2, [R6,#0xC0]
1DFB8C:  SUB             R2, R8, R2
1DFB90:  AND             R2, R2, R0
1DFB94:  LDR             R2, [R1,R2,LSL#2]
1DFB98:  STR             R2, [SP,#0x98+var_70]
1DFB9C:  LDR             R2, [R6,#0xC4]
1DFBA0:  SUB             R2, R8, R2
1DFBA4:  AND             R2, R2, R0
1DFBA8:  LDR             R2, [R1,R2,LSL#2]
1DFBAC:  STR             R2, [SP,#0x98+var_6C]
1DFBB0:  LDR             R2, [R6,#0xC8]
1DFBB4:  SUB             R2, R8, R2
1DFBB8:  AND             R0, R2, R0
1DFBBC:  ADD             R2, SP, #0x98+var_84
1DFBC0:  LDR             R0, [R1,R0,LSL#2]
1DFBC4:  ADD             R1, SP, #0x98+var_74
1DFBC8:  STR             R0, [SP,#0x98+var_68]
1DFBCC:  MOV             R0, R6
1DFBD0:  BL              sub_1DFE50
1DFBD4:  LDR             R3, [R6,#0x1C0]
1DFBD8:  LDR             R0, [R6,#0x1D8]
1DFBDC:  LDR             R1, [R6,#0x1A4]
1DFBE0:  SUB             R3, R0, R3
1DFBE4:  LDR             R2, [R6,#0x1A8]
1DFBE8:  AND             R3, R1, R3
1DFBEC:  VLDR            S0, [R6,#0x1B4]
1DFBF0:  VLDR            S2, [R6,#0x1D0]
1DFBF4:  AND             R1, R1, R0
1DFBF8:  ADD             R3, R2, R3,LSL#2
1DFBFC:  VLDR            S4, [R6,#0x1D4]
1DFC00:  VLDR            S8, [SP,#0x98+var_80]
1DFC04:  ADD             R1, R2, R1,LSL#2
1DFC08:  VLDR            S6, [R3]
1DFC0C:  VLDR            S10, [SP,#0x98+var_7C]
1DFC10:  VMUL.F32        S8, S8, S4
1DFC14:  VMUL.F32        S0, S6, S0
1DFC18:  VLDR            S6, [SP,#0x98+var_84]
1DFC1C:  VLDR            S12, [SP,#0x98+var_78]
1DFC20:  VMUL.F32        S10, S10, S4
1DFC24:  VMUL.F32        S6, S6, S4
1DFC28:  VMUL.F32        S4, S12, S4
1DFC2C:  VMUL.F32        S14, S2, S0
1DFC30:  VADD.F32        S2, S6, S14
1DFC34:  VADD.F32        S6, S8, S14
1DFC38:  VADD.F32        S8, S10, S14
1DFC3C:  VADD.F32        S4, S4, S14
1DFC40:  VSTR            S2, [SP,#0x98+var_84]
1DFC44:  VSTR            S6, [SP,#0x98+var_80]
1DFC48:  VSTR            S8, [SP,#0x98+var_7C]
1DFC4C:  VSTR            S4, [SP,#0x98+var_78]
1DFC50:  VLDR            S10, [R6,#0x1A0]
1DFC54:  VLDR            S1, [R6,#0x1C8]
1DFC58:  VMUL.F32        S10, S10, S17
1DFC5C:  LDR             R3, [R6,#0x1C4]
1DFC60:  VLDR            S12, [R6,#0x1B8]
1DFC64:  LDR             R7, [R6,#0x1AC]
1DFC68:  SUB             R3, R0, R3
1DFC6C:  LDR             R4, [R6,#0x1B0]
1DFC70:  AND             R3, R7, R3
1DFC74:  VLDR            S14, [R6,#0x1BC]
1DFC78:  ADD             R3, R4, R3,LSL#2
1DFC7C:  VADD.F32        S0, S10, S0
1DFC80:  VLDR            S10, [R6,#0x1CC]
1DFC84:  VSUB.F32        S10, S10, S0
1DFC88:  VMUL.F32        S10, S10, S1
1DFC8C:  VADD.F32        S0, S10, S0
1DFC90:  VMUL.F32        S10, S12, S0
1DFC94:  VSTR            S0, [R6,#0x1CC]
1DFC98:  VLDR            S1, [R3]
1DFC9C:  AND             R3, R7, R0
1DFCA0:  ADD             R0, R0, #1
1DFCA4:  VMUL.F32        S14, S1, S14
1DFCA8:  ADD             R3, R4, R3,LSL#2
1DFCAC:  VSUB.F32        S3, S1, S10
1DFCB0:  VSUB.F32        S10, S14, S10
1DFCB4:  VMUL.F32        S12, S3, S12
1DFCB8:  VADD.F32        S12, S12, S0
1DFCBC:  VMUL.F32        S0, S24, S30
1DFCC0:  VSTR            S12, [R3]
1DFCC4:  LDR             R2, [SP,#0x98+var_88]
1DFCC8:  VSTR            S10, [R1]
1DFCCC:  LDR             R1, [SP,#0x98+var_8C]
1DFCD0:  ADD             R2, R2, #4
1DFCD4:  STR             R0, [R6,#0x1D8]
1DFCD8:  VLDR            S10, [R6,#0x94]
1DFCDC:  SUBS            R1, R1, #1
1DFCE0:  VLDR            S12, [R6,#0x17C]
1DFCE4:  VMUL.F32        S10, S0, S10
1DFCE8:  VLDR            S3, [R5,#-0x20]
1DFCEC:  VMUL.F32        S12, S2, S12
1DFCF0:  VLDR            S14, [R5,#-0x18]
1DFCF4:  VLDR            S1, [R5,#-0x1C]
1DFCF8:  VADD.F32        S10, S12, S10
1DFCFC:  VLDR            S12, [R5,#-0x14]
1DFD00:  VADD.F32        S10, S10, S3
1DFD04:  VMUL.F32        S3, S24, S28
1DFD08:  VSTR            S10, [R5,#-0x20]
1DFD0C:  VLDR            S10, [R6,#0x98]
1DFD10:  VLDR            S5, [R6,#0x180]
1DFD14:  VMUL.F32        S10, S3, S10
1DFD18:  VMUL.F32        S6, S6, S5
1DFD1C:  VADD.F32        S6, S6, S10
1DFD20:  VMUL.F32        S10, S24, S26
1DFD24:  VADD.F32        S6, S6, S1
1DFD28:  VSTR            S6, [R5,#-0x1C]
1DFD2C:  VLDR            S6, [R6,#0x9C]
1DFD30:  VLDR            S1, [R6,#0x184]
1DFD34:  VMUL.F32        S6, S10, S6
1DFD38:  VMUL.F32        S8, S8, S1
1DFD3C:  VADD.F32        S6, S8, S6
1DFD40:  VMUL.F32        S8, S24, S22
1DFD44:  VADD.F32        S6, S6, S14
1DFD48:  VSTR            S6, [R5,#-0x18]
1DFD4C:  VLDR            S6, [R6,#0xA0]
1DFD50:  VLDR            S14, [R6,#0x188]
1DFD54:  VMUL.F32        S6, S8, S6
1DFD58:  VMUL.F32        S4, S4, S14
1DFD5C:  VADD.F32        S4, S4, S6
1DFD60:  VADD.F32        S4, S4, S12
1DFD64:  VSTR            S4, [R5,#-0x14]
1DFD68:  VLDR            S4, [R6,#0xA4]
1DFD6C:  VLDR            S6, [R6,#0x18C]
1DFD70:  VMUL.F32        S4, S0, S4
1DFD74:  VMUL.F32        S2, S2, S6
1DFD78:  VADD.F32        S2, S2, S4
1DFD7C:  VLDR            S4, [R5,#-0x10]
1DFD80:  VADD.F32        S2, S2, S4
1DFD84:  VSTR            S2, [R5,#-0x10]
1DFD88:  VLDR            S2, [R6,#0xA8]
1DFD8C:  VLDR            S4, [R6,#0x190]
1DFD90:  VLDR            S6, [SP,#0x98+var_80]
1DFD94:  VMUL.F32        S2, S3, S2
1DFD98:  VMUL.F32        S4, S6, S4
1DFD9C:  VADD.F32        S2, S4, S2
1DFDA0:  VLDR            S4, [R5,#-0xC]
1DFDA4:  VADD.F32        S2, S2, S4
1DFDA8:  VSTR            S2, [R5,#-0xC]
1DFDAC:  VLDR            S2, [R6,#0xAC]
1DFDB0:  VLDR            S4, [R6,#0x194]
1DFDB4:  VLDR            S6, [SP,#0x98+var_7C]
1DFDB8:  VMUL.F32        S2, S10, S2
1DFDBC:  VMUL.F32        S4, S6, S4
1DFDC0:  VADD.F32        S2, S4, S2
1DFDC4:  VLDR            S4, [R5,#-8]
1DFDC8:  VADD.F32        S2, S2, S4
1DFDCC:  VSTR            S2, [R5,#-8]
1DFDD0:  VLDR            S2, [R6,#0xB0]
1DFDD4:  VLDR            S4, [R6,#0x198]
1DFDD8:  VLDR            S6, [SP,#0x98+var_78]
1DFDDC:  VMUL.F32        S2, S8, S2
1DFDE0:  VMUL.F32        S4, S6, S4
1DFDE4:  VADD.F32        S2, S4, S2
1DFDE8:  VLDR            S4, [R5,#-4]
1DFDEC:  VADD.F32        S2, S2, S4
1DFDF0:  VSTR            S2, [R5,#-4]
1DFDF4:  VLDR            S2, [R6,#0xB4]
1DFDF8:  VLDR            S4, [R6,#0x19C]
1DFDFC:  VLDR            S6, [SP,#0x98+var_84]
1DFE00:  VMUL.F32        S0, S0, S2
1DFE04:  VMUL.F32        S2, S6, S4
1DFE08:  VADD.F32        S0, S2, S0
1DFE0C:  VLDR            S2, [R5]
1DFE10:  VADD.F32        S0, S0, S2
1DFE14:  VSTR            S0, [R5]
1DFE18:  ADD             R5, R5, #0x24 ; '$'
1DFE1C:  BNE             loc_1DF944
1DFE20:  LDR             R0, =(__stack_chk_guard_ptr - 0x1DFE30)
1DFE24:  LDR             R1, [SP,#0x98+var_64]
1DFE28:  LDR             R0, [PC,R0]; __stack_chk_guard
1DFE2C:  LDR             R0, [R0]
1DFE30:  SUBS            R0, R0, R1
1DFE34:  SUBEQ           SP, R11, #0x60 ; '`'
1DFE38:  VPOPEQ          {D8-D15}
1DFE3C:  ADDEQ           SP, SP, #4
1DFE40:  POPEQ           {R4-R11,PC}
1DFE44:  BL              __stack_chk_fail
