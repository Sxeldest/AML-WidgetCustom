; =========================================================
; Game Engine Function: _ZN11CAutomobile15SetBusDoorTimerEjh
; Address            : 0x55E23C - 0x55E262
; =========================================================

55E23C:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55E244)
55E23E:  CMP             R2, #0
55E240:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55E242:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
55E244:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
55E246:  IT NE
55E248:  SUBNE.W         R3, R3, #0x1F4
55E24C:  CMP.W           R1, #0x3E8
55E250:  IT LS
55E252:  MOVLS.W         R1, #0x3E8
55E256:  ADD             R1, R3
55E258:  STR.W           R1, [R0,#0x884]
55E25C:  STR.W           R3, [R0,#0x888]
55E260:  BX              LR
