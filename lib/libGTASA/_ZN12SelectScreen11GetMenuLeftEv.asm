; =========================================================
; Game Engine Function: _ZN12SelectScreen11GetMenuLeftEv
; Address            : 0x29F7F0 - 0x29F83C
; =========================================================

29F7F0:  LDR             R0, =(RsGlobal_ptr - 0x29F7FA)
29F7F2:  VLDR            S4, =0.0
29F7F6:  ADD             R0, PC; RsGlobal_ptr
29F7F8:  VLDR            S6, =-240.0
29F7FC:  VLDR            S8, =480.0
29F800:  LDR             R0, [R0]; RsGlobal
29F802:  VLDR            S0, [R0,#4]
29F806:  VLDR            S2, [R0,#8]
29F80A:  VCVT.F32.S32    S0, S0
29F80E:  VCVT.F32.S32    S2, S2
29F812:  VMUL.F32        S4, S0, S4
29F816:  VMUL.F32        S0, S0, S6
29F81A:  VMUL.F32        S4, S4, S8
29F81E:  VADD.F32        S0, S4, S0
29F822:  VMOV.F32        S4, #20.0
29F826:  VDIV.F32        S0, S0, S2
29F82A:  VLDR            S2, =320.0
29F82E:  VADD.F32        S0, S0, S2
29F832:  VMAX.F32        D0, D0, D2
29F836:  VMOV            R0, S0
29F83A:  BX              LR
