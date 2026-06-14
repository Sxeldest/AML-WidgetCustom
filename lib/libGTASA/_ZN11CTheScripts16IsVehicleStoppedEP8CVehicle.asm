; =========================================================
; Game Engine Function: _ZN11CTheScripts16IsVehicleStoppedEP8CVehicle
; Address            : 0x34BCC4 - 0x34BCF8
; =========================================================

34BCC4:  LDR             R1, =(_ZN6CTimer15ms_fOldTimeStepE_ptr - 0x34BCCC)
34BCC6:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x34BCD2)
34BCC8:  ADD             R1, PC; _ZN6CTimer15ms_fOldTimeStepE_ptr
34BCCA:  VLDR            S0, =0.01
34BCCE:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
34BCD0:  LDR             R1, [R1]; CTimer::ms_fOldTimeStep ...
34BCD2:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
34BCD4:  VLDR            S2, [R1]
34BCD8:  VLDR            S4, [R2]
34BCDC:  VMIN.F32        D1, D2, D1
34BCE0:  VMUL.F32        S0, S2, S0
34BCE4:  VLDR            S2, [R0,#0xD8]
34BCE8:  MOVS            R0, #0
34BCEA:  VCMPE.F32       S2, S0
34BCEE:  VMRS            APSR_nzcv, FPSCR
34BCF2:  IT LE
34BCF4:  MOVLE           R0, #1
34BCF6:  BX              LR
