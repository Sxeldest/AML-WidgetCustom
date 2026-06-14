; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager32CheckForStationRetuneDuringPauseEv
; Address            : 0x39FD84 - 0x39FF14
; =========================================================

39FD84:  PUSH            {R4,R5,R7,LR}
39FD86:  ADD             R7, SP, #8
39FD88:  SUB             SP, SP, #8
39FD8A:  MOV             R4, R0
39FD8C:  LDRB.W          R0, [R4,#0xE9]
39FD90:  CBZ             R0, loc_39FE0E
39FD92:  LDR             R1, [R4,#0x78]
39FD94:  CMP             R1, #0xD
39FD96:  BNE             loc_39FE28
39FD98:  LDR             R0, =(AudioEngine_ptr - 0x39FDA6)
39FD9A:  MOVS            R1, #0x26 ; '&'; int
39FD9C:  MOVS            R2, #0; float
39FD9E:  MOV.W           R3, #0x3F800000; float
39FDA2:  ADD             R0, PC; AudioEngine_ptr
39FDA4:  LDR             R5, [R0]; AudioEngine
39FDA6:  MOV             R0, R5; this
39FDA8:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39FDAC:  MOV             R0, R5; this
39FDAE:  MOVS            R1, #0x23 ; '#'; int
39FDB0:  MOVS            R2, #0; float
39FDB2:  MOV.W           R3, #0x3F800000; float
39FDB6:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39FDBA:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x39FDC2)
39FDBC:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x39FDC8)
39FDBE:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
39FDC0:  LDR.W           R2, [R4,#0xEC]
39FDC4:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
39FDC6:  LDRB.W          R3, [R4,#0xEA]
39FDCA:  LDR             R0, [R0]; CTimer::m_UserPause ...
39FDCC:  LDR             R1, [R1]; CTimer::m_CodePause ...
39FDCE:  LDRB            R0, [R0]; CTimer::m_UserPause
39FDD0:  LDRB            R1, [R1]; CTimer::m_CodePause
39FDD2:  ORRS            R0, R1
39FDD4:  LSLS            R0, R0, #0x18
39FDD6:  BEQ             loc_39FE4A
39FDD8:  MOV             R0, R4
39FDDA:  MOVS            R5, #1
39FDDC:  LDR.W           R1, [R0,#0x68]!
39FDE0:  STRB.W          R5, [R0,#-0x65]
39FDE4:  CMP             R1, #7
39FDE6:  ITT EQ
39FDE8:  LDRBEQ          R5, [R4]
39FDEA:  CMPEQ           R5, #0
39FDEC:  BNE             loc_39FDFC
39FDEE:  LDR             R5, [R4,#0x6C]
39FDF0:  CMP             R5, #0
39FDF2:  ITT EQ
39FDF4:  LDREQ           R5, [R4,#0x70]
39FDF6:  CMPEQ           R5, #0
39FDF8:  BEQ.W           loc_39FF10
39FDFC:  LDRB.W          R5, [R4,#0xE9]
39FE00:  CMP             R5, #0xD
39FE02:  BNE             loc_39FE50
39FE04:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x39FE0A)
39FE06:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
39FE08:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
39FE0A:  LDR             R2, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
39FE0C:  B               loc_39FEB0
39FE0E:  LDR             R1, [R4,#0x68]
39FE10:  CMP             R1, #7
39FE12:  ITT EQ
39FE14:  LDRBEQ          R1, [R4]
39FE16:  CMPEQ           R1, #0
39FE18:  BNE             loc_39FF0C
39FE1A:  LDR             R1, [R4,#0x6C]
39FE1C:  CMP             R1, #0
39FE1E:  ITT EQ
39FE20:  LDREQ           R1, [R4,#0x70]
39FE22:  CMPEQ           R1, #0
39FE24:  BNE             loc_39FF0C
39FE26:  B               loc_39FD92
39FE28:  CMP             R1, #0
39FE2A:  BLT             loc_39FF0C
39FE2C:  CMP             R0, #0xD
39FE2E:  BNE             loc_39FEBE
39FE30:  LDR             R0, =(AudioEngine_ptr - 0x39FE3E)
39FE32:  MOVS            R1, #0x25 ; '%'; int
39FE34:  MOVS            R2, #0; float
39FE36:  MOV.W           R3, #0x3F800000; float
39FE3A:  ADD             R0, PC; AudioEngine_ptr
39FE3C:  LDR             R0, [R0]; AudioEngine ; this
39FE3E:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39FE42:  MOVS            R0, #0xFF
39FE44:  STRB.W          R0, [R4,#0xE9]
39FE48:  B               loc_39FECC
39FE4A:  MOV             R0, R4
39FE4C:  LDR.W           R1, [R0,#0x68]!
39FE50:  STRB.W          R3, [R4,#0xAE]
39FE54:  MOVS            R3, #0xD
39FE56:  STRB.W          R3, [R4,#0xAD]
39FE5A:  MOVS            R3, #6
39FE5C:  STR.W           R2, [R4,#0xB0]
39FE60:  MOVS            R5, #0xFF
39FE62:  MOV.W           R2, #0xFFFFFFFF
39FE66:  STRB.W          R3, [R4,#0xB4]
39FE6A:  STRB.W          R5, [R4,#0xBB]
39FE6E:  VMOV.I8         Q8, #0xFF
39FE72:  STRB.W          R3, [R4,#0xB5]
39FE76:  CMP             R1, #2
39FE78:  STRB.W          R5, [R4,#0xBC]
39FE7C:  STRB.W          R3, [R4,#0xB6]
39FE80:  STRB.W          R5, [R4,#0xBD]
39FE84:  STRB.W          R3, [R4,#0xB7]
39FE88:  STRB.W          R5, [R4,#0xBE]
39FE8C:  STR.W           R2, [R4,#0x98]
39FE90:  STRB.W          R3, [R4,#0xB8]
39FE94:  MOV.W           R3, #1
39FE98:  STRB.W          R5, [R4,#0xBF]
39FE9C:  STRB            R3, [R4]
39FE9E:  ADD.W           R3, R4, #0x88
39FEA2:  VST1.32         {D16-D17}, [R3]
39FEA6:  ITTT LS
39FEA8:  MOVLS           R1, #3
39FEAA:  STRLS           R1, [R0]
39FEAC:  MOVLS.W         R2, #0xFFFFFFFF
39FEB0:  MOV.W           R0, #0xFFFFFFFF
39FEB4:  STR             R0, [R4,#0x78]
39FEB6:  STR.W           R2, [R4,#0x348]
39FEBA:  ADD             SP, SP, #8
39FEBC:  POP             {R4,R5,R7,PC}
39FEBE:  LDR             R0, =(AudioEngine_ptr - 0x39FEC8)
39FEC0:  MOVS            R1, #0
39FEC2:  MOVS            R2, #1
39FEC4:  ADD             R0, PC; AudioEngine_ptr
39FEC6:  LDR             R0, [R0]; AudioEngine
39FEC8:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
39FECC:  LDR             R0, =(AudioEngine_ptr - 0x39FEDA)
39FECE:  MOVS            R1, #0x22 ; '"'; int
39FED0:  MOVS            R2, #0; float
39FED2:  MOV.W           R3, #0x3F800000; float
39FED6:  ADD             R0, PC; AudioEngine_ptr
39FED8:  MOVS            R5, #0
39FEDA:  LDR             R0, [R0]; AudioEngine ; this
39FEDC:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39FEE0:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x39FEE8)
39FEE2:  LDR             R1, [R4,#0x5C]
39FEE4:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
39FEE6:  ADD.W           R1, R1, #0x2BC
39FEEA:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
39FEEC:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
39FEEE:  CMP             R0, R1
39FEF0:  BLS             loc_39FF0C
39FEF2:  LDR.W           R3, [R4,#0xEC]; float
39FEF6:  MOV             R0, R4; this
39FEF8:  LDRSB.W         R2, [R4,#0xEA]; signed __int8
39FEFC:  LDRSB.W         R1, [R4,#0x78]; signed __int8
39FF00:  STR             R5, [SP,#0x10+var_10]; unsigned __int8
39FF02:  BLX             j__ZN20CAERadioTrackManager10StartRadioEaafh; CAERadioTrackManager::StartRadio(signed char,signed char,float,uchar)
39FF06:  MOV.W           R0, #0xFFFFFFFF
39FF0A:  STR             R0, [R4,#0x78]
39FF0C:  ADD             SP, SP, #8
39FF0E:  POP             {R4,R5,R7,PC}
39FF10:  MOVS            R1, #7
39FF12:  B               loc_39FE50
