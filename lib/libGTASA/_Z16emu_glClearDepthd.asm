; =========================================================
; Game Engine Function: _Z16emu_glClearDepthd
; Address            : 0x1BB8EC - 0x1BB8FE
; =========================================================

1BB8EC:  VMOV            D16, R0, R1
1BB8F0:  LDR             R0, =(dword_67A170 - 0x1BB8FA)
1BB8F2:  VCVT.F32.F64    S0, D16
1BB8F6:  ADD             R0, PC; dword_67A170
1BB8F8:  VSTR            S0, [R0]
1BB8FC:  BX              LR
