; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity22IsRadioTuneSoundActiveEv
; Address            : 0x397400 - 0x397424
; =========================================================

397400:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x397408)
397402:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x39740A)
397404:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
397406:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
397408:  LDR             R1, [R1]; CTimer::m_UserPause ...
39740A:  LDR             R2, [R2]; CTimer::m_CodePause ...
39740C:  LDRB            R1, [R1]; CTimer::m_UserPause
39740E:  LDRB            R2, [R2]; CTimer::m_CodePause
397410:  ORRS            R1, R2
397412:  LSLS            R1, R1, #0x18
397414:  ADD.W           R1, R0, #0x144
397418:  IT EQ
39741A:  ADDEQ.W         R1, R0, #0x9C
39741E:  LDRB.W          R0, [R1,#0x88]
397422:  BX              LR
