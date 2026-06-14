; =========================================================
; Game Engine Function: sub_F8000
; Address            : 0xF8000 - 0xF8028
; =========================================================

F8000:  LDR             R0, =(dword_2402D4 - 0xF800A)
F8002:  VLDR            D17, =-35.0
F8006:  ADD             R0, PC; dword_2402D4
F8008:  LDR             R0, [R0]
F800A:  VLDR            S0, [R0]
F800E:  VCVT.F64.F32    D16, S0
F8012:  VADD.F64        D16, D16, D17
F8016:  VLDR            D17, =0.028571429
F801A:  VMUL.F64        D16, D16, D17
F801E:  VCVT.F32.F64    S0, D16
F8022:  VMOV            R0, S0
F8026:  BX              LR
