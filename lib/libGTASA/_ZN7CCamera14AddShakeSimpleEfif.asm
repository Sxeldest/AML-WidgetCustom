; =========================================================
; Game Engine Function: _ZN7CCamera14AddShakeSimpleEfif
; Address            : 0x3E1BE8 - 0x3E1C1C
; =========================================================

3E1BE8:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E1BFC)
3E1BEC:  VMOV            S2, R1
3E1BF0:  STR.W           R2, [R0,#0xC28]
3E1BF4:  ADDW            R1, R0, #0xC1C
3E1BF8:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E1BFA:  STR.W           R3, [R0,#0xC18]
3E1BFE:  ADD.W           R0, R0, #0xC20
3E1C02:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
3E1C06:  VLDR            S0, [R12]
3E1C0A:  VCVT.F32.U32    S0, S0
3E1C0E:  VADD.F32        S2, S0, S2
3E1C12:  VSTR            S0, [R1]
3E1C16:  VSTR            S2, [R0]
3E1C1A:  BX              LR
