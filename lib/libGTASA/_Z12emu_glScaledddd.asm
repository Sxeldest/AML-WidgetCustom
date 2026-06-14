; =========================================================
; Game Engine Function: _Z12emu_glScaledddd
; Address            : 0x1BAC8C - 0x1BAD56
; =========================================================

1BAC8C:  LDR.W           R12, =(curStack_ptr - 0x1BAC9C)
1BAC90:  VMOV            D17, R0, R1
1BAC94:  VMOV            D16, R2, R3
1BAC98:  ADD             R12, PC; curStack_ptr
1BAC9A:  VCVT.F32.F64    S2, D17
1BAC9E:  LDR.W           R12, [R12]; curStack
1BACA2:  LDR.W           R0, [R12]; ModelViewStack
1BACA6:  VCVT.F32.F64    S0, D16
1BACAA:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BACAE:  ADD.W           R1, R1, R1,LSL#4
1BACB2:  ADD.W           R0, R0, R1,LSL#2
1BACB6:  MOVS            R1, #1
1BACB8:  VLDR            D16, [SP,#arg_0]
1BACBC:  VLDR            S8, [R0]
1BACC0:  VCVT.F32.F64    S6, D16
1BACC4:  VLDR            S1, [R0,#0x20]
1BACC8:  VMUL.F32        S8, S8, S2
1BACCC:  VLDR            S5, [R0,#0x30]
1BACD0:  VLDR            S14, [R0,#0x10]
1BACD4:  VMUL.F32        S1, S1, S2
1BACD8:  VLDR            S11, [R0,#0x18]
1BACDC:  VMUL.F32        S5, S5, S2
1BACE0:  VLDR            S4, [R0,#0x14]
1BACE4:  VMUL.F32        S2, S14, S2
1BACE8:  VLDR            S10, [R0,#4]
1BACEC:  VMUL.F32        S14, S11, S6
1BACF0:  VLDR            S12, [R0,#8]
1BACF4:  VMUL.F32        S4, S4, S0
1BACF8:  VLDR            S3, [R0,#0x24]
1BACFC:  VMUL.F32        S10, S10, S0
1BAD00:  VLDR            S7, [R0,#0x34]
1BAD04:  VMUL.F32        S12, S12, S6
1BAD08:  VLDR            S9, [R0,#0x38]
1BAD0C:  VMUL.F32        S3, S3, S0
1BAD10:  VLDR            S11, [R0,#0x28]
1BAD14:  VMUL.F32        S0, S7, S0
1BAD18:  VMUL.F32        S7, S9, S6
1BAD1C:  VSTR            S8, [R0]
1BAD20:  VMUL.F32        S6, S11, S6
1BAD24:  VSTR            S10, [R0,#4]
1BAD28:  VSTR            S12, [R0,#8]
1BAD2C:  VSTR            S2, [R0,#0x10]
1BAD30:  VSTR            S4, [R0,#0x14]
1BAD34:  VSTR            S14, [R0,#0x18]
1BAD38:  VSTR            S1, [R0,#0x20]
1BAD3C:  VSTR            S3, [R0,#0x24]
1BAD40:  VSTR            S6, [R0,#0x28]
1BAD44:  VSTR            S5, [R0,#0x30]
1BAD48:  VSTR            S0, [R0,#0x34]
1BAD4C:  VSTR            S7, [R0,#0x38]
1BAD50:  STRB.W          R1, [R0,#0x40]
1BAD54:  BX              LR
