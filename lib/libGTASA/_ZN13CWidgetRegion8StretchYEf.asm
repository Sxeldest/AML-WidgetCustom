; =========================================================
; Game Engine Function: _ZN13CWidgetRegion8StretchYEf
; Address            : 0x2BF92C - 0x2BF958
; =========================================================

2BF92C:  LDR             R0, =(RsGlobal_ptr - 0x2BF936)
2BF92E:  VMOV            S0, R1
2BF932:  ADD             R0, PC; RsGlobal_ptr
2BF934:  LDR             R0, [R0]; RsGlobal
2BF936:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2BF938:  CMP.W           R0, #0x1C0
2BF93C:  BEQ             loc_2BF952
2BF93E:  VLDR            S2, =448.0
2BF942:  VDIV.F32        S0, S0, S2
2BF946:  VMOV            S2, R0
2BF94A:  VCVT.F32.S32    S2, S2
2BF94E:  VMUL.F32        S0, S0, S2
2BF952:  VMOV            R0, S0
2BF956:  BX              LR
