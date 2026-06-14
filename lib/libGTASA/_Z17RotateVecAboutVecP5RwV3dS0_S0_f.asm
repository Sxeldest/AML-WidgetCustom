; =========================================================
; Game Engine Function: _Z17RotateVecAboutVecP5RwV3dS0_S0_f
; Address            : 0x366B7C - 0x366C9A
; =========================================================

366B7C:  VMOV            S2, R3
366B80:  VLDR            S0, =256.0
366B84:  LDR             R3, =(_ZN6CMaths11ms_SinTableE_ptr - 0x366B96)
366B86:  VMOV.F32        S4, #1.0
366B8A:  VMUL.F32        S0, S2, S0
366B8E:  VLDR            S2, =6.2832
366B92:  ADD             R3, PC; _ZN6CMaths11ms_SinTableE_ptr
366B94:  LDR.W           R12, [R3]; CMaths::ms_SinTable ...
366B98:  VDIV.F32        S0, S0, S2
366B9C:  VLDR            S2, =64.0
366BA0:  VADD.F32        S2, S0, S2
366BA4:  VCVT.U32.F32    S2, S2
366BA8:  VLDR            S6, [R2]
366BAC:  VLDR            S8, [R2,#4]
366BB0:  VLDR            S10, [R2,#8]
366BB4:  VMOV            R3, S2
366BB8:  UXTB            R3, R3
366BBA:  ADD.W           R3, R12, R3,LSL#2
366BBE:  VLDR            S2, [R3]
366BC2:  VCVT.U32.F32    S0, S0
366BC6:  VLDR            S9, [R1]
366BCA:  VSUB.F32        S4, S4, S2
366BCE:  VLDR            S11, [R1,#4]
366BD2:  VLDR            S13, [R1,#8]
366BD6:  VMOV            R2, S0
366BDA:  VMUL.F32        S12, S4, S6
366BDE:  VMUL.F32        S3, S6, S12
366BE2:  VMUL.F32        S1, S12, S8
366BE6:  VMUL.F32        S12, S12, S10
366BEA:  VADD.F32        S3, S2, S3
366BEE:  UXTB            R2, R2
366BF0:  ADD.W           R2, R12, R2,LSL#2
366BF4:  VLDR            S0, [R2]
366BF8:  VMUL.F32        S3, S9, S3
366BFC:  VMUL.F32        S9, S4, S8
366C00:  VMUL.F32        S14, S0, S10
366C04:  VMUL.F32        S5, S0, S8
366C08:  VMUL.F32        S0, S0, S6
366C0C:  VMUL.F32        S4, S4, S10
366C10:  VMUL.F32        S8, S8, S9
366C14:  VSUB.F32        S7, S1, S14
366C18:  VADD.F32        S15, S5, S12
366C1C:  VMUL.F32        S6, S9, S10
366C20:  VADD.F32        S14, S1, S14
366C24:  VMUL.F32        S4, S10, S4
366C28:  VADD.F32        S8, S2, S8
366C2C:  VMUL.F32        S7, S11, S7
366C30:  VMUL.F32        S11, S15, S13
366C34:  VSUB.F32        S9, S6, S0
366C38:  VADD.F32        S0, S0, S6
366C3C:  VSUB.F32        S6, S12, S5
366C40:  VADD.F32        S2, S2, S4
366C44:  VADD.F32        S3, S3, S7
366C48:  VADD.F32        S3, S3, S11
366C4C:  VSTR            S3, [R0]
366C50:  VLDR            S1, [R1]
366C54:  VLDR            S3, [R1,#4]
366C58:  VMUL.F32        S14, S14, S1
366C5C:  VLDR            S7, [R1,#8]
366C60:  VMUL.F32        S8, S8, S3
366C64:  VMUL.F32        S1, S9, S7
366C68:  VADD.F32        S8, S14, S8
366C6C:  VADD.F32        S8, S8, S1
366C70:  VSTR            S8, [R0,#4]
366C74:  VLDR            S8, [R1]
366C78:  VLDR            S10, [R1,#4]
366C7C:  VMUL.F32        S4, S6, S8
366C80:  VLDR            S12, [R1,#8]
366C84:  VMUL.F32        S0, S0, S10
366C88:  VMUL.F32        S2, S2, S12
366C8C:  VADD.F32        S0, S4, S0
366C90:  VADD.F32        S0, S0, S2
366C94:  VSTR            S0, [R0,#8]
366C98:  BX              LR
