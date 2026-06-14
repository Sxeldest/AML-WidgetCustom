; =========================================================
; Game Engine Function: _ZN6CTimer10InitialiseEv
; Address            : 0x420A78 - 0x420B6E
; =========================================================

420A78:  PUSH            {R4-R7,LR}
420A7A:  ADD             R7, SP, #0xC
420A7C:  PUSH.W          {R8}
420A80:  LDR             R2, =(_ZN6CTimer8game_FPSE_ptr - 0x420A88)
420A82:  LDR             R4, =(dword_96B520 - 0x420A8C)
420A84:  ADD             R2, PC; _ZN6CTimer8game_FPSE_ptr
420A86:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x420A98)
420A88:  ADD             R4, PC; dword_96B520
420A8A:  LDR             R1, =(timerDef_ptr - 0x420A9C)
420A8C:  LDR.W           R8, [R2]; CTimer::game_FPS ...
420A90:  MOVS            R2, #0
420A92:  STR             R2, [R4]
420A94:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
420A96:  LDR             R4, =(byte_96B524 - 0x420AA0)
420A98:  ADD             R1, PC; timerDef_ptr
420A9A:  LDR             R5, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x420AA4)
420A9C:  ADD             R4, PC; byte_96B524
420A9E:  LDR             R3, =(_Z21GetOSWPerformanceTimev_ptr - 0x420AAA)
420AA0:  ADD             R5, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
420AA2:  LDR             R6, =(_ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr - 0x420AAE)
420AA4:  STRB            R2, [R4]
420AA6:  ADD             R3, PC; _Z21GetOSWPerformanceTimev_ptr
420AA8:  LDR             R4, =(_ZN6CTimer11m_CodePauseE_ptr - 0x420AB4)
420AAA:  ADD             R6, PC; _ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr
420AAC:  LDR.W           R12, [R0]; CTimer::m_FrameCounter ...
420AB0:  ADD             R4, PC; _ZN6CTimer11m_CodePauseE_ptr
420AB2:  LDR             R0, [R1]; timerDef
420AB4:  LDR             R1, [R5]; CTimer::m_snTimeInMilliseconds ...
420AB6:  LDR             R4, [R4]; CTimer::m_CodePause ...
420AB8:  LDR             R5, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x420AC4)
420ABA:  LDR.W           LR, [R3]; GetOSWPerformanceTime(void)
420ABE:  STRB            R2, [R4]; CTimer::m_CodePause
420AC0:  ADD             R5, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
420AC2:  LDR             R4, =(_ZN6CTimer11m_UserPauseE_ptr - 0x420ACA)
420AC4:  LDR             R3, [R6]; CTimer::m_snTimeInMillisecondsNonClipped ...
420AC6:  ADD             R4, PC; _ZN6CTimer11m_UserPauseE_ptr
420AC8:  LDR             R5, [R5]; CTimer::m_snTimeInMillisecondsPauseMode ...
420ACA:  STR             R2, [R1]; CTimer::m_snTimeInMilliseconds
420ACC:  MOV.W           R1, #0x3E8
420AD0:  LDR             R4, [R4]; CTimer::m_UserPause ...
420AD2:  STR.W           R2, [R12]; CTimer::m_FrameCounter
420AD6:  STR.W           R2, [R8]; CTimer::game_FPS
420ADA:  STRB            R2, [R4]; CTimer::m_UserPause
420ADC:  LDR             R4, =(_ZN6CTimer17bSlowMotionActiveE_ptr - 0x420AE2)
420ADE:  ADD             R4, PC; _ZN6CTimer17bSlowMotionActiveE_ptr
420AE0:  LDR             R4, [R4]; CTimer::bSlowMotionActive ...
420AE2:  STRB            R2, [R4]; CTimer::bSlowMotionActive
420AE4:  LDR             R4, =(_ZN6CTimer21bSkipProcessThisFrameE_ptr - 0x420AEA)
420AE6:  ADD             R4, PC; _ZN6CTimer21bSkipProcessThisFrameE_ptr
420AE8:  LDR             R4, [R4]; CTimer::bSkipProcessThisFrame ...
420AEA:  STRB            R2, [R4]; CTimer::bSkipProcessThisFrame
420AEC:  MOVS            R4, #1
420AEE:  STR             R4, [R3]; CTimer::m_snTimeInMillisecondsNonClipped
420AF0:  STR             R4, [R5]; CTimer::m_snTimeInMillisecondsPauseMode
420AF2:  LDR             R4, =(_ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr - 0x420AFA)
420AF4:  LDR             R3, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x420AFE)
420AF6:  ADD             R4, PC; _ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr
420AF8:  LDR             R5, =(_ZN6CTimer15ms_fOldTimeStepE_ptr - 0x420B02)
420AFA:  ADD             R3, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
420AFC:  LDR             R4, [R4]; CTimer::m_snPPPPreviousTimeInMilliseconds ...
420AFE:  ADD             R5, PC; _ZN6CTimer15ms_fOldTimeStepE_ptr
420B00:  LDR             R3, [R3]; CTimer::ms_fTimeScale ...
420B02:  LDR             R5, [R5]; CTimer::ms_fOldTimeStep ...
420B04:  STR             R2, [R4]; CTimer::m_snPPPPreviousTimeInMilliseconds
420B06:  LDR             R4, =(_ZN6CTimer32m_snPPPreviousTimeInMillisecondsE_ptr - 0x420B0C)
420B08:  ADD             R4, PC; _ZN6CTimer32m_snPPPreviousTimeInMillisecondsE_ptr
420B0A:  LDR             R4, [R4]; CTimer::m_snPPPreviousTimeInMilliseconds ...
420B0C:  STR             R2, [R4]; CTimer::m_snPPPreviousTimeInMilliseconds
420B0E:  LDR             R4, =(_ZN6CTimer31m_snPPreviousTimeInMillisecondsE_ptr - 0x420B14)
420B10:  ADD             R4, PC; _ZN6CTimer31m_snPPreviousTimeInMillisecondsE_ptr
420B12:  LDR             R4, [R4]; CTimer::m_snPPreviousTimeInMilliseconds ...
420B14:  STR             R2, [R4]; CTimer::m_snPPreviousTimeInMilliseconds
420B16:  LDR             R4, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x420B1C)
420B18:  ADD             R4, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
420B1A:  LDR             R4, [R4]; CTimer::m_snPreviousTimeInMilliseconds ...
420B1C:  STR             R2, [R4]; CTimer::m_snPreviousTimeInMilliseconds
420B1E:  LDR             R4, =(_ZN6CTimer40m_snPreviousTimeInMillisecondsNonClippedE_ptr - 0x420B24)
420B20:  ADD             R4, PC; _ZN6CTimer40m_snPreviousTimeInMillisecondsNonClippedE_ptr
420B22:  LDR             R4, [R4]; CTimer::m_snPreviousTimeInMillisecondsNonClipped ...
420B24:  STR             R2, [R4]; CTimer::m_snPreviousTimeInMillisecondsNonClipped
420B26:  MOV.W           R4, #0x3F800000
420B2A:  STR             R4, [R3]; CTimer::ms_fTimeScale
420B2C:  LDR             R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x420B34)
420B2E:  STR             R4, [R5]; CTimer::ms_fOldTimeStep
420B30:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
420B32:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
420B34:  STR             R4, [R3]; CTimer::ms_fTimeStep
420B36:  MOVS            R4, #0
420B38:  LDR             R3, =(_ZN6CTimer19ms_fSlowMotionScaleE_ptr - 0x420B42)
420B3A:  MOVT            R4, #0xBF80
420B3E:  ADD             R3, PC; _ZN6CTimer19ms_fSlowMotionScaleE_ptr
420B40:  LDR             R3, [R3]; CTimer::ms_fSlowMotionScale ...
420B42:  STR             R4, [R3]; CTimer::ms_fSlowMotionScale
420B44:  STRD.W          LR, R1, [R0]
420B48:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
420B4C:  VLDR            D16, =1000000.0
420B50:  VMOV            D17, R0, R1
420B54:  VMUL.F64        D16, D17, D16
420B58:  VMOV            R0, R1, D16
420B5C:  BLX             __aeabi_d2ulz
420B60:  LDR             R2, =(dword_96B528 - 0x420B66)
420B62:  ADD             R2, PC; dword_96B528
420B64:  STRD.W          R0, R1, [R2]
420B68:  POP.W           {R8}
420B6C:  POP             {R4-R7,PC}
