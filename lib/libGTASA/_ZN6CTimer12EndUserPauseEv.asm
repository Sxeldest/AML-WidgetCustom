; =========================================================
; Game Engine Function: _ZN6CTimer12EndUserPauseEv
; Address            : 0x4210D8 - 0x4210E4
; =========================================================

4210D8:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x4210E0)
4210DA:  MOVS            R1, #0
4210DC:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
4210DE:  LDR             R0, [R0]; CTimer::m_UserPause ...
4210E0:  STRB            R1, [R0]; CTimer::m_UserPause
4210E2:  BX              LR
