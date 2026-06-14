; =========================================================
; Game Engine Function: _ZN7CCamera14SetToSphereMapEf
; Address            : 0x3DF2AC - 0x3DF2BE
; =========================================================

3DF2AC:  VMOV            S0, R1
3DF2B0:  ADDW            R0, R0, #0x8F8
3DF2B4:  VMUL.F32        S0, S0, S0
3DF2B8:  VSTR            S0, [R0]
3DF2BC:  BX              LR
