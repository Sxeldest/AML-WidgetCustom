; =========================================================
; Game Engine Function: _ZN23CAEExplosionAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x395B48 - 0x395B72
; =========================================================

395B48:  CMP             R2, #1
395B4A:  ITTT GE
395B4C:  VLDRGE          S0, [R1,#0x14]
395B50:  VCMPEGE.F32     S0, #0.0
395B54:  VMRSGE          APSR_nzcv, FPSCR
395B58:  BGT             loc_395B5C
395B5A:  BX              LR
395B5C:  VMOV.F32        S2, #-1.0
395B60:  VLDR            S4, =0.0
395B64:  VADD.F32        S0, S0, S2
395B68:  VMAX.F32        D0, D0, D2
395B6C:  VSTR            S0, [R1,#0x14]
395B70:  BX              LR
