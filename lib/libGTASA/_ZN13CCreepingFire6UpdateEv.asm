; =========================================================
; Game Engine Function: _ZN13CCreepingFire6UpdateEv
; Address            : 0x3F35F0 - 0x3F362A
; =========================================================

3F35F0:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3F35F8)
3F35F2:  LDR             R1, =(_ZN13CCreepingFire13m_aFireStatusE_ptr - 0x3F35FA)
3F35F4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3F35F6:  ADD             R1, PC; _ZN13CCreepingFire13m_aFireStatusE_ptr
3F35F8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3F35FA:  LDR             R2, [R0]; CTimer::m_FrameCounter
3F35FC:  LDR             R0, [R1]; CCreepingFire::m_aFireStatus ...
3F35FE:  AND.W           R1, R2, #0x1F
3F3602:  ADD.W           R0, R0, R1,LSL#5
3F3606:  UBFX.W          R1, R2, #5, #5
3F360A:  LDRB            R2, [R0,R1]
3F360C:  SUBS            R2, #4
3F360E:  UXTB            R2, R2
3F3610:  CMP             R2, #2
3F3612:  IT HI
3F3614:  BXHI            LR
3F3616:  ADD             R0, R1
3F3618:  LSLS            R1, R2, #3
3F361A:  MOV             R2, #0x50400
3F3622:  LSR.W           R1, R2, R1
3F3626:  STRB            R1, [R0]
3F3628:  BX              LR
