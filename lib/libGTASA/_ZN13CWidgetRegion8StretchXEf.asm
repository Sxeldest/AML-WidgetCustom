; =========================================================
; Game Engine Function: _ZN13CWidgetRegion8StretchXEf
; Address            : 0x2BF8F8 - 0x2BF924
; =========================================================

2BF8F8:  LDR             R0, =(RsGlobal_ptr - 0x2BF902)
2BF8FA:  VMOV            S0, R1
2BF8FE:  ADD             R0, PC; RsGlobal_ptr
2BF900:  LDR             R0, [R0]; RsGlobal
2BF902:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2BF904:  CMP.W           R0, #0x280
2BF908:  BEQ             loc_2BF91E
2BF90A:  VLDR            S2, =640.0
2BF90E:  VDIV.F32        S0, S0, S2
2BF912:  VMOV            S2, R0
2BF916:  VCVT.F32.S32    S2, S2
2BF91A:  VMUL.F32        S0, S0, S2
2BF91E:  VMOV            R0, S0
2BF922:  BX              LR
