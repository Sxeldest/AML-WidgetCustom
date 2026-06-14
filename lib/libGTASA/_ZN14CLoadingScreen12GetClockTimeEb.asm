; =========================================================
; Game Engine Function: _ZN14CLoadingScreen12GetClockTimeEb
; Address            : 0x43AD84 - 0x43ADBA
; =========================================================

43AD84:  PUSH            {R4,R6,R7,LR}
43AD86:  ADD             R7, SP, #8
43AD88:  MOV             R4, R0
43AD8A:  BLX             j__Z7RsTimerv; RsTimer(void)
43AD8E:  VMOV            S0, R0
43AD92:  VLDR            S2, =1000.0
43AD96:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43ADA2)
43AD98:  CMP             R4, #0
43AD9A:  VCVT.F32.U32    S0, S0
43AD9E:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43ADA0:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43ADA2:  VDIV.F32        S0, S0, S2
43ADA6:  VLDR            S2, [R0]
43ADAA:  VSUB.F32        S2, S0, S2
43ADAE:  IT NE
43ADB0:  VMOVNE.F32      S2, S0
43ADB4:  VMOV            R0, S2
43ADB8:  POP             {R4,R6,R7,PC}
