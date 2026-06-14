; =========================================================
; Game Engine Function: _ZN6CCheat13SlowTimeCheatEv
; Address            : 0x2FD654 - 0x2FD682
; =========================================================

2FD654:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x2FD65E)
2FD656:  VMOV.F32        S2, #0.25
2FD65A:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
2FD65C:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
2FD65E:  VLDR            S0, [R0]
2FD662:  VCMPE.F32       S0, S2
2FD666:  VMRS            APSR_nzcv, FPSCR
2FD66A:  IT LE
2FD66C:  BXLE            LR
2FD66E:  VMOV.F32        S2, #0.5
2FD672:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x2FD678)
2FD674:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
2FD676:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
2FD678:  VMUL.F32        S0, S0, S2
2FD67C:  VSTR            S0, [R0]
2FD680:  BX              LR
