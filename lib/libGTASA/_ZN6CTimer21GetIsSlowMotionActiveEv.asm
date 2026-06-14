; =========================================================
; Game Engine Function: _ZN6CTimer21GetIsSlowMotionActiveEv
; Address            : 0x4210A4 - 0x4210C2
; =========================================================

4210A4:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x4210AE)
4210A6:  VMOV.F32        S0, #1.0
4210AA:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
4210AC:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
4210AE:  VLDR            S2, [R0]
4210B2:  MOVS            R0, #0
4210B4:  VCMPE.F32       S2, S0
4210B8:  VMRS            APSR_nzcv, FPSCR
4210BC:  IT LT
4210BE:  MOVLT           R0, #1
4210C0:  BX              LR
