; =========================================================
; Game Engine Function: _ZN10MobileMenu12CalcBGUVSizeEv
; Address            : 0x299A68 - 0x299A9A
; =========================================================

299A68:  LDR             R1, =(RsGlobal_ptr - 0x299A72)
299A6A:  VLDR            S4, =0.4
299A6E:  ADD             R1, PC; RsGlobal_ptr
299A70:  LDR             R1, [R1]; RsGlobal
299A72:  VLDR            S0, [R1,#4]
299A76:  VLDR            S2, [R1,#8]
299A7A:  MOVW            R1, #0xCCCD
299A7E:  VCVT.F32.S32    S0, S0
299A82:  MOVT            R1, #0x3ECC
299A86:  VCVT.F32.S32    S2, S2
299A8A:  STR             R1, [R0,#4]
299A8C:  VMUL.F32        S0, S0, S4
299A90:  VDIV.F32        S0, S0, S2
299A94:  VSTR            S0, [R0]
299A98:  BX              LR
