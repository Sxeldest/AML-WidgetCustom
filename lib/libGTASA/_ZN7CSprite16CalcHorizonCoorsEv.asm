; =========================================================
; Game Engine Function: _ZN7CSprite16CalcHorizonCoorsEv
; Address            : 0x5C5914 - 0x5C5998
; =========================================================

5C5914:  PUSH            {R7,LR}
5C5916:  MOV             R7, SP
5C5918:  SUB             SP, SP, #0x18
5C591A:  LDR             R0, =(TheCamera_ptr - 0x5C5924)
5C591C:  VLDR            S0, =3000.0
5C5920:  ADD             R0, PC; TheCamera_ptr
5C5922:  LDR             R0, [R0]; TheCamera
5C5924:  VLDR            S2, [R0,#0xD8]
5C5928:  VLDR            S4, [R0,#0xDC]
5C592C:  VMUL.F32        S2, S2, S0
5C5930:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5C5932:  VMUL.F32        S0, S4, S0
5C5936:  ADD.W           R2, R1, #0x30 ; '0'
5C593A:  CMP             R1, #0
5C593C:  IT EQ
5C593E:  ADDEQ           R2, R0, #4
5C5940:  MOVS            R1, #0
5C5942:  VLDR            S4, [R2]
5C5946:  VLDR            S6, [R2,#4]
5C594A:  ADD             R2, SP, #0x20+var_14
5C594C:  STR             R1, [SP,#0x20+var_C]
5C594E:  ADDW            R1, R0, #0x98C
5C5952:  VADD.F32        S2, S2, S4
5C5956:  MOV             R0, SP
5C5958:  VADD.F32        S0, S0, S6
5C595C:  VSTR            S2, [SP,#0x20+var_14]
5C5960:  VSTR            S0, [SP,#0x20+var_10]
5C5964:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5C5968:  VMOV.F32        S0, #1.0
5C596C:  VLDR            S4, [SP,#0x20+var_18]
5C5970:  LDR             R0, =(RsGlobal_ptr - 0x5C597A)
5C5972:  VLDR            S2, [SP,#0x20+var_1C]
5C5976:  ADD             R0, PC; RsGlobal_ptr
5C5978:  LDR             R0, [R0]; RsGlobal
5C597A:  VDIV.F32        S0, S0, S4
5C597E:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
5C5980:  VMOV            S4, R0
5C5984:  VCVT.F32.S32    S4, S4
5C5988:  VMUL.F32        S0, S0, S4
5C598C:  VMUL.F32        S0, S2, S0
5C5990:  VMOV            R0, S0
5C5994:  ADD             SP, SP, #0x18
5C5996:  POP             {R7,PC}
