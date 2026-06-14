; =========================================================
; Game Engine Function: _Z17NvBuildRotDegMatfPA4_fPKff
; Address            : 0x278FDC - 0x278FEE
; =========================================================

278FDC:  VLDR            S0, =0.017453
278FE0:  VMOV            S2, R2
278FE4:  VMUL.F32        S0, S2, S0
278FE8:  VMOV            R2, S0; float
278FEC:  B               _Z17NvBuildRotRadMatfPA4_fPKff; NvBuildRotRadMatf(float (*)[4],float const*,float)
