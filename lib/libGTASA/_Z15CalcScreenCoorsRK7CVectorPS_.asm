; =========================================================
; Game Engine Function: _Z15CalcScreenCoorsRK7CVectorPS_
; Address            : 0x5ADF8C - 0x5AE00A
; =========================================================

5ADF8C:  PUSH            {R4,R6,R7,LR}
5ADF8E:  ADD             R7, SP, #8
5ADF90:  SUB             SP, SP, #0x10
5ADF92:  MOV             R2, R0
5ADF94:  LDR             R0, =(TheCamera_ptr - 0x5ADF9C)
5ADF96:  MOV             R4, R1
5ADF98:  ADD             R0, PC; TheCamera_ptr
5ADF9A:  LDR             R0, [R0]; TheCamera
5ADF9C:  ADDW            R1, R0, #0x98C
5ADFA0:  MOV             R0, SP
5ADFA2:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5ADFA6:  VMOV.F32        S0, #1.0
5ADFAA:  VLDR            D16, [SP,#0x18+var_18]
5ADFAE:  LDR             R0, [SP,#0x18+var_10]
5ADFB0:  STR             R0, [R4,#8]
5ADFB2:  VSTR            D16, [R4]
5ADFB6:  VLDR            S2, [R4,#8]
5ADFBA:  VCMPE.F32       S2, S0
5ADFBE:  VMRS            APSR_nzcv, FPSCR
5ADFC2:  BLE             loc_5AE004
5ADFC4:  VDIV.F32        S0, S0, S2
5ADFC8:  LDR             R0, =(RsGlobal_ptr - 0x5ADFCE)
5ADFCA:  ADD             R0, PC; RsGlobal_ptr
5ADFCC:  LDR             R0, [R0]; RsGlobal
5ADFCE:  VLDR            S2, [R0,#4]
5ADFD2:  VCVT.F32.S32    S2, S2
5ADFD6:  VLDR            S4, [R4]
5ADFDA:  VLDR            S6, [R4,#4]
5ADFDE:  VMUL.F32        S2, S0, S2
5ADFE2:  VMUL.F32        S2, S4, S2
5ADFE6:  VSTR            S2, [R4]
5ADFEA:  VLDR            S2, [R0,#8]
5ADFEE:  MOVS            R0, #1
5ADFF0:  VCVT.F32.S32    S2, S2
5ADFF4:  VMUL.F32        S0, S0, S2
5ADFF8:  VMUL.F32        S0, S6, S0
5ADFFC:  VSTR            S0, [R4,#4]
5AE000:  ADD             SP, SP, #0x10
5AE002:  POP             {R4,R6,R7,PC}
5AE004:  MOVS            R0, #0
5AE006:  ADD             SP, SP, #0x10
5AE008:  POP             {R4,R6,R7,PC}
