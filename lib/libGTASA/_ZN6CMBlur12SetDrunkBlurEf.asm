; =========================================================
; Game Engine Function: _ZN6CMBlur12SetDrunkBlurEf
; Address            : 0x2CF36C - 0x2CF38C
; =========================================================

2CF36C:  VMOV.F32        S0, #1.0
2CF370:  LDR             R1, =(_ZN6CMBlur9DrunknessE_ptr - 0x2CF37E)
2CF372:  VMOV            S2, R0
2CF376:  VLDR            S4, =0.0
2CF37A:  ADD             R1, PC; _ZN6CMBlur9DrunknessE_ptr
2CF37C:  LDR             R0, [R1]; CMBlur::Drunkness ...
2CF37E:  VMIN.F32        D16, D1, D0
2CF382:  VMAX.F32        D0, D16, D2
2CF386:  VSTR            S0, [R0]
2CF38A:  BX              LR
