; =========================================================
; Game Engine Function: _Z11emu_glOrthodddddd
; Address            : 0x1BAFC8 - 0x1BB09C
; =========================================================

1BAFC8:  PUSH            {R7,LR}
1BAFCA:  MOV             R7, SP
1BAFCC:  SUB             SP, SP, #0x48
1BAFCE:  VMOV            D21, R0, R1
1BAFD2:  VLDR            D16, [R7,#8]
1BAFD6:  VLDR            D17, [R7,#0x20]
1BAFDA:  VMOV            D20, R2, R3
1BAFDE:  VLDR            D18, [R7,#0x18]
1BAFE2:  VMOV.F32        S3, #2.0
1BAFE6:  VLDR            D19, [R7,#0x10]
1BAFEA:  MOV             R1, SP
1BAFEC:  VCVT.F32.F64    S2, D16
1BAFF0:  LDR             R0, =(curStack_ptr - 0x1BAFFA)
1BAFF2:  ORR.W           R2, R1, #4
1BAFF6:  ADD             R0, PC; curStack_ptr
1BAFF8:  LDR             R0, [R0]; curStack
1BAFFA:  VCVT.F32.F64    S0, D19
1BAFFE:  LDR             R0, [R0]; ModelViewStack
1BB000:  VCVT.F32.F64    S4, D17
1BB004:  VCVT.F32.F64    S6, D18
1BB008:  VCVT.F32.F64    S8, D20
1BB00C:  VCVT.F32.F64    S10, D21
1BB010:  VADD.F32        S12, S2, S0
1BB014:  VADD.F32        S14, S6, S4
1BB018:  VADD.F32        S1, S10, S8
1BB01C:  VSUB.F32        S0, S0, S2
1BB020:  VSUB.F32        S4, S4, S6
1BB024:  VMOV.F32        S2, #-2.0
1BB028:  VSUB.F32        S6, S8, S10
1BB02C:  VNEG.F32        S8, S12
1BB030:  VNEG.F32        S10, S14
1BB034:  VNEG.F32        S12, S1
1BB038:  VDIV.F32        S14, S3, S0
1BB03C:  VDIV.F32        S2, S2, S4
1BB040:  VDIV.F32        S1, S3, S6
1BB044:  VDIV.F32        S0, S8, S0
1BB048:  VDIV.F32        S4, S10, S4
1BB04C:  VDIV.F32        S6, S12, S6
1BB050:  VMOV.I32        Q8, #0
1BB054:  VST1.32         {D16-D17}, [R2]
1BB058:  ADD.W           R2, R1, #0x18
1BB05C:  VST1.64         {D16-D17}, [R2]
1BB060:  MOVS            R2, #0
1BB062:  STR             R2, [SP,#0x50+var_24]
1BB064:  MOV.W           R2, #0x3F800000
1BB068:  STR             R2, [SP,#0x50+var_14]
1BB06A:  MOVS            R2, #1
1BB06C:  STRB.W          R2, [SP,#0x50+var_10]
1BB070:  VSTR            S14, [SP,#0x50+var_3C]
1BB074:  VSTR            S2, [SP,#0x50+var_28]
1BB078:  VSTR            S1, [SP,#0x50+var_50]
1BB07C:  VSTR            S0, [SP,#0x50+var_1C]
1BB080:  VSTR            S4, [SP,#0x50+var_18]
1BB084:  VSTR            S6, [SP,#0x50+var_20]
1BB088:  LDR.W           R2, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BB08C:  ADD.W           R2, R2, R2,LSL#4
1BB090:  ADD.W           R0, R0, R2,LSL#2
1BB094:  BLX             j__ZN8RQMatrixmLERKS_; RQMatrix::operator*=(RQMatrix const&)
1BB098:  ADD             SP, SP, #0x48 ; 'H'
1BB09A:  POP             {R7,PC}
