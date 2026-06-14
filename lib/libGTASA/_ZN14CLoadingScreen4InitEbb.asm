; =========================================================
; Game Engine Function: _ZN14CLoadingScreen4InitEbb
; Address            : 0x43AB30 - 0x43AB86
; =========================================================

43AB30:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43AB36)
43AB32:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43AB34:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
43AB36:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
43AB38:  CMP             R0, #0
43AB3A:  IT NE
43AB3C:  BXNE            LR
43AB3E:  PUSH            {R7,LR}
43AB40:  MOV             R7, SP
43AB42:  CBNZ            R1, loc_43AB4C
43AB44:  MOVS            R0, #0; this
43AB46:  MOVS            R1, #0; unsigned __int8
43AB48:  BLX             j__ZN14CLoadingScreen12LoadSplashesEhh; CLoadingScreen::LoadSplashes(uchar,uchar)
43AB4C:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43AB56)
43AB4E:  MOV.W           R1, #0xFFFFFFFF
43AB52:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43AB54:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43AB56:  STR             R1, [R0]; CLoadingScreen::m_currDisplayedSplash
43AB58:  BLX             j__Z7RsTimerv; RsTimer(void)
43AB5C:  VMOV            S0, R0
43AB60:  VLDR            S2, =1000.0
43AB64:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43AB72)
43AB66:  MOVS            R2, #1
43AB68:  VCVT.F32.U32    S0, S0
43AB6C:  LDR             R1, =(_ZN14CLoadingScreen21m_timeSinceLastScreenE_ptr - 0x43AB74)
43AB6E:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43AB70:  ADD             R1, PC; _ZN14CLoadingScreen21m_timeSinceLastScreenE_ptr
43AB72:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
43AB74:  LDR             R1, [R1]; CLoadingScreen::m_timeSinceLastScreen ...
43AB76:  STRB            R2, [R0]; CLoadingScreen::m_bActive
43AB78:  VDIV.F32        S0, S0, S2
43AB7C:  VSTR            S0, [R1]
43AB80:  POP.W           {R7,LR}
43AB84:  BX              LR
