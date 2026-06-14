; =========================================================
; Game Engine Function: _Z16NvMultRotDegMatfPA4_fPA4_KfPS1_f
; Address            : 0x278FF4 - 0x279006
; =========================================================

278FF4:  VLDR            S0, =0.017453
278FF8:  VMOV            S2, R3
278FFC:  VMUL.F32        S0, S2, S0
279000:  VMOV            R3, S0; float
279004:  B               _Z16NvMultRotRadMatfPA4_fPA4_KfPS1_f; NvMultRotRadMatf(float (*)[4],float const(*)[4],float const*,float)
