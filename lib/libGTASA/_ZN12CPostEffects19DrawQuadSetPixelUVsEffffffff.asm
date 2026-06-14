; =========================================================
; Game Engine Function: _ZN12CPostEffects19DrawQuadSetPixelUVsEffffffff
; Address            : 0x5B2B20 - 0x5B2BA8
; =========================================================

5B2B20:  LDR.W           R12, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5B2B34)
5B2B24:  VMOV.F32        S4, #1.0
5B2B28:  VMOV            S6, R1
5B2B2C:  VLDR            S12, [SP,#arg_C]
5B2B30:  ADD             R12, PC; _ZN12CPostEffects6ms_imfE_ptr
5B2B32:  VMOV            S8, R3
5B2B36:  VMOV            S10, R2
5B2B3A:  VLDR            S14, [SP,#arg_8]
5B2B3E:  LDR.W           R12, [R12]; CPostEffects::ms_imf ...
5B2B42:  VLDR            S1, [SP,#arg_4]
5B2B46:  VLDR            S3, [SP,#arg_0]
5B2B4A:  VLDR            S0, [R12,#0xC]
5B2B4E:  VLDR            S2, [R12,#0x10]
5B2B52:  VCVT.F32.S32    S2, S2
5B2B56:  VCVT.F32.S32    S0, S0
5B2B5A:  VDIV.F32        S2, S4, S2
5B2B5E:  VDIV.F32        S0, S4, S0
5B2B62:  VMOV            S4, R0
5B2B66:  VMUL.F32        S6, S2, S6
5B2B6A:  VMUL.F32        S4, S0, S4
5B2B6E:  VMUL.F32        S8, S2, S8
5B2B72:  VMUL.F32        S12, S2, S12
5B2B76:  VMUL.F32        S10, S0, S10
5B2B7A:  VMUL.F32        S14, S0, S14
5B2B7E:  VMUL.F32        S2, S2, S1
5B2B82:  VMUL.F32        S0, S0, S3
5B2B86:  VSTR            S4, [R12,#0x9C]
5B2B8A:  VSTR            S6, [R12,#0xA0]
5B2B8E:  VSTR            S10, [R12,#0xB8]
5B2B92:  VSTR            S8, [R12,#0xBC]
5B2B96:  VSTR            S14, [R12,#0xD4]
5B2B9A:  VSTR            S12, [R12,#0xD8]
5B2B9E:  VSTR            S0, [R12,#0xF0]
5B2BA2:  VSTR            S2, [R12,#0xF4]
5B2BA6:  BX              LR
