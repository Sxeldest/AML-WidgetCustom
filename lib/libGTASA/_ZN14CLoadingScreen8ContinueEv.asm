; =========================================================
; Game Engine Function: _ZN14CLoadingScreen8ContinueEv
; Address            : 0x43AE38 - 0x43AEA0
; =========================================================

43AE38:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43AE3E)
43AE3A:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43AE3C:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
43AE3E:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
43AE40:  CBZ             R0, locret_43AE9E
43AE42:  LDR             R0, =(_ZN14CLoadingScreen14m_bWantToPauseE_ptr - 0x43AE4A)
43AE44:  LDR             R1, =(_ZN14CLoadingScreen9m_bPausedE_ptr - 0x43AE4C)
43AE46:  ADD             R0, PC; _ZN14CLoadingScreen14m_bWantToPauseE_ptr
43AE48:  ADD             R1, PC; _ZN14CLoadingScreen9m_bPausedE_ptr
43AE4A:  LDR             R2, [R0]; CLoadingScreen::m_bWantToPause ...
43AE4C:  MOVS            R0, #0
43AE4E:  LDR             R1, [R1]; CLoadingScreen::m_bPaused ...
43AE50:  STRB            R0, [R2]; CLoadingScreen::m_bWantToPause
43AE52:  LDRB            R1, [R1]; CLoadingScreen::m_bPaused
43AE54:  CMP             R1, #0
43AE56:  IT EQ
43AE58:  BXEQ            LR
43AE5A:  PUSH            {R7,LR}
43AE5C:  MOV             R7, SP
43AE5E:  LDR             R1, =(_ZN14CLoadingScreen9m_bPausedE_ptr - 0x43AE64)
43AE60:  ADD             R1, PC; _ZN14CLoadingScreen9m_bPausedE_ptr
43AE62:  LDR             R1, [R1]; CLoadingScreen::m_bPaused ...
43AE64:  STRB            R0, [R1]; CLoadingScreen::m_bPaused
43AE66:  BLX             j__Z7RsTimerv; RsTimer(void)
43AE6A:  VMOV            S0, R0
43AE6E:  VLDR            S2, =1000.0
43AE72:  LDR             R0, =(_ZN14CLoadingScreen18m_ClockTimeOnPauseE_ptr - 0x43AE7E)
43AE74:  VCVT.F32.U32    S0, S0
43AE78:  LDR             R1, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43AE80)
43AE7A:  ADD             R0, PC; _ZN14CLoadingScreen18m_ClockTimeOnPauseE_ptr
43AE7C:  ADD             R1, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43AE7E:  LDR             R0, [R0]; CLoadingScreen::m_ClockTimeOnPause ...
43AE80:  VDIV.F32        S0, S0, S2
43AE84:  VLDR            S2, [R0]
43AE88:  LDR             R0, [R1]; CLoadingScreen::m_PauseTime ...
43AE8A:  VSUB.F32        S0, S0, S2
43AE8E:  VLDR            S2, [R0]
43AE92:  VADD.F32        S0, S2, S0
43AE96:  VSTR            S0, [R0]
43AE9A:  POP.W           {R7,LR}
43AE9E:  BX              LR
