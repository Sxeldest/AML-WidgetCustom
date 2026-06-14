; =========================================================
; Game Engine Function: _Z13emu_glRotateddddd
; Address            : 0x1BA9F4 - 0x1BAB3A
; =========================================================

1BA9F4:  PUSH            {R4,R6,R7,LR}
1BA9F6:  ADD             R7, SP, #8
1BA9F8:  VPUSH           {D8-D12}
1BA9FC:  SUB             SP, SP, #0x48
1BA9FE:  VLDR            D16, [R7,#arg_0]
1BAA02:  VMOV            D17, R2, R3
1BAA06:  VLDR            D18, [R7,#arg_8]
1BAA0A:  VMOV.F32        S16, #1.0
1BAA0E:  VCVT.F32.F64    S0, D16
1BAA12:  VCVT.F32.F64    S2, D17
1BAA16:  VCVT.F32.F64    S4, D18
1BAA1A:  VMUL.F32        S6, S0, S0
1BAA1E:  VMUL.F32        S8, S2, S2
1BAA22:  VMOV            D16, R0, R1
1BAA26:  VMUL.F32        S10, S4, S4
1BAA2A:  VADD.F32        S6, S8, S6
1BAA2E:  VCVT.F32.F64    S8, D16
1BAA32:  VADD.F32        S6, S6, S10
1BAA36:  VLDR            S10, =3.1416
1BAA3A:  VMUL.F32        S8, S8, S10
1BAA3E:  VLDR            S10, =180.0
1BAA42:  VSQRT.F32       S6, S6
1BAA46:  VDIV.F32        S8, S8, S10
1BAA4A:  VMOV            R4, S8
1BAA4E:  VDIV.F32        S6, S16, S6
1BAA52:  MOV             R0, R4; x
1BAA54:  VMUL.F32        S18, S6, S4
1BAA58:  VMUL.F32        S20, S6, S0
1BAA5C:  VMUL.F32        S22, S6, S2
1BAA60:  BLX             cosf
1BAA64:  VMOV            S24, R0
1BAA68:  MOV             R0, R4; x
1BAA6A:  BLX             sinf
1BAA6E:  VSUB.F32        S2, S16, S24
1BAA72:  ADD             R1, SP, #0x78+var_74
1BAA74:  VMUL.F32        S4, S20, S18
1BAA78:  ADD.W           R2, R1, #0x2C ; ','
1BAA7C:  VMUL.F32        S6, S20, S22
1BAA80:  VMUL.F32        S8, S22, S22
1BAA84:  VMUL.F32        S10, S22, S18
1BAA88:  VMUL.F32        S12, S20, S20
1BAA8C:  VMUL.F32        S3, S18, S18
1BAA90:  VMOV            S0, R0
1BAA94:  LDR             R0, =(curStack_ptr - 0x1BAAA2)
1BAA96:  VMUL.F32        S4, S4, S2
1BAA9A:  VMUL.F32        S14, S22, S0
1BAA9E:  ADD             R0, PC; curStack_ptr
1BAAA0:  VMUL.F32        S8, S8, S2
1BAAA4:  VMUL.F32        S1, S18, S0
1BAAA8:  LDR             R0, [R0]; curStack
1BAAAA:  VMUL.F32        S12, S12, S2
1BAAAE:  VMUL.F32        S6, S6, S2
1BAAB2:  VMUL.F32        S10, S10, S2
1BAAB6:  LDR             R0, [R0]; ModelViewStack
1BAAB8:  VMUL.F32        S2, S3, S2
1BAABC:  VMUL.F32        S0, S20, S0
1BAAC0:  VSUB.F32        S3, S4, S14
1BAAC4:  VADD.F32        S8, S24, S8
1BAAC8:  VADD.F32        S12, S24, S12
1BAACC:  VADD.F32        S5, S6, S1
1BAAD0:  VSUB.F32        S6, S6, S1
1BAAD4:  VADD.F32        S4, S4, S14
1BAAD8:  VSUB.F32        S7, S10, S0
1BAADC:  VADD.F32        S0, S10, S0
1BAAE0:  VADD.F32        S2, S24, S2
1BAAE4:  VMOV.I32        Q8, #0
1BAAE8:  VST1.32         {D16-D17}, [R2]
1BAAEC:  MOVS            R2, #0
1BAAEE:  STR             R2, [SP,#0x78+var_68]
1BAAF0:  STR             R2, [SP,#0x78+var_58]
1BAAF2:  MOV.W           R2, #0x3F800000
1BAAF6:  STR             R2, [SP,#0x78+var_38]
1BAAF8:  MOVS            R2, #1
1BAAFA:  STRB.W          R2, [SP,#0x78+var_34]
1BAAFE:  VSTR            S5, [SP,#0x78+var_70]
1BAB02:  VSTR            S8, [SP,#0x78+var_74]
1BAB06:  VSTR            S7, [SP,#0x78+var_6C]
1BAB0A:  VSTR            S6, [SP,#0x78+var_64]
1BAB0E:  VSTR            S12, [SP,#0x78+var_60]
1BAB12:  VSTR            S4, [SP,#0x78+var_5C]
1BAB16:  VSTR            S0, [SP,#0x78+var_54]
1BAB1A:  VSTR            S3, [SP,#0x78+var_50]
1BAB1E:  VSTR            S2, [SP,#0x78+var_4C]
1BAB22:  LDR.W           R2, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BAB26:  ADD.W           R2, R2, R2,LSL#4
1BAB2A:  ADD.W           R0, R0, R2,LSL#2
1BAB2E:  BLX             j__ZN8RQMatrixmLERKS_; RQMatrix::operator*=(RQMatrix const&)
1BAB32:  ADD             SP, SP, #0x48 ; 'H'
1BAB34:  VPOP            {D8-D12}
1BAB38:  POP             {R4,R6,R7,PC}
