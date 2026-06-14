; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility10AudioLog10Ef
; Address            : 0x393598 - 0x3935B6
; =========================================================

393598:  VLDR            S0, =0.00001
39359C:  VMOV            S2, R0; x
3935A0:  VCMPE.F32       S2, S0
3935A4:  VMRS            APSR_nzcv, FPSCR
3935A8:  IT GE
3935AA:  BGE.W           j_log10f
3935AE:  MOVS            R0, #0xC0A00000
3935B4:  BX              LR
