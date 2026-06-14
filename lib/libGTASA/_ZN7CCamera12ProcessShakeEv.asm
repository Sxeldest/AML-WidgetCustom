; =========================================================
; Game Engine Function: _ZN7CCamera12ProcessShakeEv
; Address            : 0x3DE65C - 0x3DE682
; =========================================================

3DE65C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DE662)
3DE65E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DE660:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3DE662:  VLDR            S0, [R1]
3DE666:  ADD.W           R1, R0, #0xC20; float
3DE66A:  VCVT.F32.U32    S0, S0
3DE66E:  VLDR            S2, [R1]
3DE672:  VCMPE.F32       S2, S0
3DE676:  VMRS            APSR_nzcv, FPSCR
3DE67A:  IT GE
3DE67C:  BGE.W           _ZN7CCamera12ProcessShakeEf; CCamera::ProcessShake(float)
3DE680:  BX              LR
