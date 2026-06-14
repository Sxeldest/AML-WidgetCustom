; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager11RetuneRadioEa
; Address            : 0x3A3188 - 0x3A31B8
; =========================================================

3A3188:  LDR             R2, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3A3192)
3A318A:  CMP             R1, #0xC
3A318C:  LDR             R3, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3A3194)
3A318E:  ADD             R2, PC; _ZN6CTimer11m_UserPauseE_ptr
3A3190:  ADD             R3, PC; _ZN6CTimer11m_CodePauseE_ptr
3A3192:  LDR             R2, [R2]; CTimer::m_UserPause ...
3A3194:  LDR             R3, [R3]; CTimer::m_CodePause ...
3A3196:  LDRB            R2, [R2]; CTimer::m_UserPause
3A3198:  LDRB            R3, [R3]; CTimer::m_CodePause
3A319A:  IT EQ
3A319C:  MOVEQ           R1, #0xD
3A319E:  ORRS            R2, R3
3A31A0:  LSLS            R2, R2, #0x18
3A31A2:  CMP             R2, #0
3A31A4:  ITT EQ
3A31A6:  STREQ           R1, [R0,#0x7C]
3A31A8:  BXEQ            LR
3A31AA:  LDR             R2, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x3A31B2)
3A31AC:  STR             R1, [R0,#0x78]
3A31AE:  ADD             R2, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
3A31B0:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode ...
3A31B2:  LDR             R1, [R2]; CTimer::m_snTimeInMillisecondsPauseMode
3A31B4:  STR             R1, [R0,#0x5C]
3A31B6:  BX              LR
