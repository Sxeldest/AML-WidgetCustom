; =========================================================
; Game Engine Function: _ZN6CCheat17ScriptBypassCheatEv
; Address            : 0x2FD4A4 - 0x2FD4B6
; =========================================================

2FD4A4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FD4AC)
2FD4A6:  LDR             R1, =(_ZN6CCheat23m_nLastScriptBypasstimeE_ptr - 0x2FD4AE)
2FD4A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FD4AA:  ADD             R1, PC; _ZN6CCheat23m_nLastScriptBypasstimeE_ptr
2FD4AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FD4AE:  LDR             R1, [R1]; CCheat::m_nLastScriptBypasstime ...
2FD4B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FD4B2:  STR             R0, [R1]; CCheat::m_nLastScriptBypasstime
2FD4B4:  BX              LR
