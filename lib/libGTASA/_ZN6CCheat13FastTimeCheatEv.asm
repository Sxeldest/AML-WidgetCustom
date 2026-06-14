; =========================================================
; Game Engine Function: _ZN6CCheat13FastTimeCheatEv
; Address            : 0x2FD620 - 0x2FD64A
; =========================================================

2FD620:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x2FD62A)
2FD622:  VMOV.F32        S2, #4.0
2FD626:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
2FD628:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
2FD62A:  VLDR            S0, [R0]
2FD62E:  VCMPE.F32       S0, S2
2FD632:  VMRS            APSR_nzcv, FPSCR
2FD636:  IT GE
2FD638:  BXGE            LR
2FD63A:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x2FD644)
2FD63C:  VADD.F32        S0, S0, S0
2FD640:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
2FD642:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
2FD644:  VSTR            S0, [R0]
2FD648:  BX              LR
