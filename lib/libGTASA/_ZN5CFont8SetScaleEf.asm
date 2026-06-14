; =========================================================
; Game Engine Function: _ZN5CFont8SetScaleEf
; Address            : 0x5AB108 - 0x5AB122
; =========================================================

5AB108:  VLDR            S0, =0.54
5AB10C:  VMOV            S2, R0
5AB110:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB11A)
5AB112:  VMUL.F32        S0, S2, S0
5AB116:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB118:  LDR             R1, [R1]; CFont::Details ...
5AB11A:  STR             R0, [R1,#(dword_A297BC - 0xA297B4)]
5AB11C:  VSTR            S0, [R1,#4]
5AB120:  BX              LR
