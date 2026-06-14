; =========================================================
; Game Engine Function: _ZN7CWidget13SetScreenRectERK5CRect
; Address            : 0x2B3CA4 - 0x2B3D80
; =========================================================

2B3CA4:  LDR             R2, =(RsGlobal_ptr - 0x2B3CB2)
2B3CA6:  VMOV.F32        S10, #0.5
2B3CAA:  VLD1.32         {D16-D17}, [R1]
2B3CAE:  ADD             R2, PC; RsGlobal_ptr
2B3CB0:  VLDR            S2, =640.0
2B3CB4:  LDR             R1, [R2]; RsGlobal
2B3CB6:  ADD.W           R2, R0, #0x20 ; ' '
2B3CBA:  VLDR            S1, =448.0
2B3CBE:  VST1.32         {D16-D17}, [R2]
2B3CC2:  VLDR            S0, [R1,#4]
2B3CC6:  VCVT.F32.S32    S0, S0
2B3CCA:  VLDR            S6, [R0,#0x28]
2B3CCE:  VLDR            S4, [R0,#0x24]
2B3CD2:  VLDR            S8, [R0,#0x2C]
2B3CD6:  VSUB.F32        S14, S4, S8
2B3CDA:  VADD.F32        S4, S4, S8
2B3CDE:  VDIV.F32        S0, S0, S2
2B3CE2:  VLDR            S2, [R0,#0x20]
2B3CE6:  VABS.F32        S8, S14
2B3CEA:  VMUL.F32        S4, S4, S10
2B3CEE:  VADD.F32        S12, S2, S6
2B3CF2:  VSUB.F32        S2, S6, S2
2B3CF6:  VMUL.F32        S12, S12, S10
2B3CFA:  VABS.F32        S2, S2
2B3CFE:  VDIV.F32        S12, S12, S0
2B3D02:  VSTR            S12, [R0,#0xC]
2B3D06:  LDR             R1, [R1,#(dword_9FC904 - 0x9FC8FC)]
2B3D08:  VDIV.F32        S2, S2, S0
2B3D0C:  VMOV            S6, R1
2B3D10:  VMUL.F32        S2, S2, S10
2B3D14:  VCVT.F32.S32    S6, S6
2B3D18:  LDR.W           R1, [R0,#0x80]
2B3D1C:  VMUL.F32        S0, S12, S0
2B3D20:  TST.W           R1, #2
2B3D24:  VDIV.F32        S6, S6, S1
2B3D28:  VDIV.F32        S8, S8, S6
2B3D2C:  VDIV.F32        S4, S4, S6
2B3D30:  VMUL.F32        S8, S8, S10
2B3D34:  VMOV.F32        S10, S2
2B3D38:  VMUL.F32        S6, S4, S6
2B3D3C:  IT EQ
2B3D3E:  VMOVEQ.F32      S10, S8
2B3D42:  VLDR            S14, [R0,#0x30]
2B3D46:  VSTR            S8, [R0,#0x18]
2B3D4A:  VMUL.F32        S12, S2, S14
2B3D4E:  VSTR            S2, [R0,#0x14]
2B3D52:  VMUL.F32        S14, S14, S10
2B3D56:  VSUB.F32        S1, S0, S12
2B3D5A:  VADD.F32        S0, S0, S12
2B3D5E:  VADD.F32        S12, S14, S6
2B3D62:  VSUB.F32        S6, S6, S14
2B3D66:  VSTR            S1, [R0,#0x34]
2B3D6A:  VSTR            S0, [R0,#0x3C]
2B3D6E:  VSTR            S4, [R0,#0x10]
2B3D72:  VSTR            S10, [R0,#0x18]
2B3D76:  VSTR            S12, [R0,#0x38]
2B3D7A:  VSTR            S6, [R0,#0x40]
2B3D7E:  BX              LR
