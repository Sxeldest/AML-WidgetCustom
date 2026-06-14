; =========================================================
; Game Engine Function: _ZN12SelectScreen12GetMenuRightEv
; Address            : 0x29ED70 - 0x29EDC0
; =========================================================

29ED70:  LDR             R0, =(RsGlobal_ptr - 0x29ED7A)
29ED72:  VLDR            S4, =-0.0
29ED76:  ADD             R0, PC; RsGlobal_ptr
29ED78:  VLDR            S6, =-240.0
29ED7C:  VLDR            S8, =480.0
29ED80:  LDR             R0, [R0]; RsGlobal
29ED82:  VLDR            S0, [R0,#4]
29ED86:  VLDR            S2, [R0,#8]
29ED8A:  VCVT.F32.S32    S0, S0
29ED8E:  VCVT.F32.S32    S2, S2
29ED92:  VMUL.F32        S4, S0, S4
29ED96:  VADD.F32        S4, S0, S4
29ED9A:  VMUL.F32        S0, S0, S6
29ED9E:  VMUL.F32        S4, S4, S8
29EDA2:  VADD.F32        S0, S4, S0
29EDA6:  VLDR            S4, =630.0
29EDAA:  VDIV.F32        S0, S0, S2
29EDAE:  VLDR            S2, =320.0
29EDB2:  VADD.F32        S0, S0, S2
29EDB6:  VMIN.F32        D0, D0, D2
29EDBA:  VMOV            R0, S0
29EDBE:  BX              LR
