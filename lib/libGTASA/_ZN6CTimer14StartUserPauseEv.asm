; =========================================================
; Game Engine Function: _ZN6CTimer14StartUserPauseEv
; Address            : 0x4210C8 - 0x4210D4
; =========================================================

4210C8:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x4210D0)
4210CA:  MOVS            R1, #1
4210CC:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
4210CE:  LDR             R0, [R0]; CTimer::m_UserPause ...
4210D0:  STRB            R1, [R0]; CTimer::m_UserPause
4210D2:  BX              LR
