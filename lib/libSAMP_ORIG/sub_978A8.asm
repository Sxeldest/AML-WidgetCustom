; =========================================================
; Game Engine Function: sub_978A8
; Address            : 0x978A8 - 0x978CA
; =========================================================

978A8:  LDR             R0, =(dword_1ACF68 - 0x978B2)
978AA:  MOVW            R1, #0x1554
978AE:  ADD             R0, PC; dword_1ACF68
978B0:  LDR             R0, [R0]
978B2:  ADD             R0, R1
978B4:  VLDR            S0, [R0]
978B8:  VLDR            S2, [R0,#0x374]
978BC:  VADD.F32        S0, S0, S0
978C0:  VADD.F32        S0, S0, S2
978C4:  VMOV            R0, S0
978C8:  BX              LR
