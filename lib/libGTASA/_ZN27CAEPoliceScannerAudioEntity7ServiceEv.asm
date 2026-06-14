; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity7ServiceEv
; Address            : 0x39ED50 - 0x39F0BC
; =========================================================

39ED50:  PUSH            {R4-R7,LR}
39ED52:  ADD             R7, SP, #0xC
39ED54:  PUSH.W          {R8,R9,R11}
39ED58:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39ED60)
39ED5A:  LDR             R1, =(TheCamera_ptr - 0x39ED62)
39ED5C:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39ED5E:  ADD             R1, PC; TheCamera_ptr
39ED60:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39ED62:  LDR             R2, [R1]; TheCamera
39ED64:  LDRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39ED66:  LDRB.W          R2, [R2,#(byte_951FE3 - 0x951FA8)]
39ED6A:  CMP             R2, #0
39ED6C:  SXTH            R0, R1
39ED6E:  IT NE
39ED70:  CMPNE           R1, #0
39ED72:  BEQ             loc_39ED7E
39ED74:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39ED7C)
39ED76:  MOVS            R2, #1
39ED78:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39ED7A:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39ED7C:  STRB            R2, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39ED7E:  CMP             R0, #5
39ED80:  BEQ             loc_39EE36
39ED82:  CMP             R0, #4
39ED84:  BEQ.W           loc_39EEBA
39ED88:  CMP             R0, #2
39ED8A:  BNE.W           loc_39F030
39ED8E:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr - 0x39ED96)
39ED90:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39ED98)
39ED92:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr
39ED94:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39ED96:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime ...
39ED98:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39ED9A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime
39ED9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39ED9E:  CMP             R1, R0
39EDA0:  BLS.W           loc_39EF3E
39EDA4:  LDR.W           R0, =(AudioEngine_ptr - 0x39EDB4)
39EDA8:  MOVS            R1, #0x30 ; '0'; int
39EDAA:  MOVS            R2, #0; float
39EDAC:  MOV.W           R3, #0x3F800000; float
39EDB0:  ADD             R0, PC; AudioEngine_ptr
39EDB2:  MOVS            R4, #0
39EDB4:  LDR             R0, [R0]; AudioEngine ; this
39EDB6:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EDBA:  LDR.W           R1, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39EDC8)
39EDBE:  MOV.W           R6, #0xFFFFFFFF
39EDC2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EDD2)
39EDC4:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39EDC6:  LDR.W           R2, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EDD6)
39EDCA:  LDR.W           R3, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39EDDC)
39EDCE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EDD0:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39EDD2:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EDD4:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EDE2)
39EDD8:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39EDDA:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds ...
39EDDC:  STR             R6, [R1,#(dword_944EF0 - 0x944EE0)]
39EDDE:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EDE0:  STR             R6, [R1,#(dword_944EEC - 0x944EE0)]
39EDE2:  STR             R6, [R1,#(dword_944EE8 - 0x944EE0)]
39EDE4:  STR             R6, [R1,#(dword_944EE4 - 0x944EE0)]
39EDE6:  STR             R6, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39EDE8:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EDF2)
39EDEA:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EDFA)
39EDEE:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EDF0:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EDF2:  LDR.W           R8, [R3]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39EDF6:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EDF8:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EDFA:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EDFE:  LDR             R5, [R5]; CTimer::m_snTimeInMilliseconds
39EE00:  STRH            R4, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39EE02:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39EE0A)
39EE04:  STR             R6, [R2,#(dword_944F04 - 0x944EF4)]
39EE06:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39EE08:  STR             R6, [R2,#(dword_944F00 - 0x944EF4)]
39EE0A:  STR             R6, [R2,#(dword_944EFC - 0x944EF4)]
39EE0C:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39EE0E:  STR             R6, [R2,#(dword_944EF8 - 0x944EF4)]
39EE10:  LDR.W           R0, [R12]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EE14:  STR             R4, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling
39EE16:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EE1E)
39EE18:  STR             R4, [R3]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39EE1A:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EE1C:  STR             R6, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39EE1E:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EE20:  STR             R4, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EE22:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EE28)
39EE24:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EE26:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EE28:  STRB            R4, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39EE2A:  MOVW            R1, #0x2710
39EE2E:  ADD             R1, R5
39EE30:  STR.W           R1, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39EE34:  B               loc_39EFD8
39EE36:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EE3C)
39EE38:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EE3A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EE3C:  LDRB            R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39EE3E:  CMP             R0, #0
39EE40:  BEQ.W           loc_39EFEA
39EE44:  LDR             R0, =(AudioEngine_ptr - 0x39EE52)
39EE46:  MOVS            R1, #0x30 ; '0'; int
39EE48:  MOVS            R2, #0; float
39EE4A:  MOV.W           R3, #0x3F800000; float
39EE4E:  ADD             R0, PC; AudioEngine_ptr
39EE50:  MOVS            R4, #0
39EE52:  LDR             R0, [R0]; AudioEngine ; this
39EE54:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EE58:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39EE66)
39EE5C:  MOV.W           R5, #0xFFFFFFFF
39EE60:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EE6C)
39EE62:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39EE64:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EE76)
39EE68:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EE6A:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39EE7A)
39EE6E:  LDR.W           R2, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39EE72:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EE74:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EE82)
39EE76:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39EE78:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EE86)
39EE7C:  STR             R5, [R2,#(dword_944EF0 - 0x944EE0)]
39EE7E:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EE80:  STR             R5, [R2,#(dword_944EEC - 0x944EE0)]
39EE82:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EE84:  STR             R5, [R2,#(dword_944EE8 - 0x944EE0)]
39EE86:  STR             R5, [R2,#(dword_944EE4 - 0x944EE0)]
39EE88:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39EE8A:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EE92)
39EE8C:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39EE8E:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EE90:  LDR             R0, [R6]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EE92:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EE96:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EE98:  LDR.W           R12, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39EE9C:  LDR.W           R6, [R9]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EEA0:  STRH            R4, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39EEA2:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39EEAA)
39EEA4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39EEA6:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39EEA8:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39EEAA:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39EEAC:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EEB2)
39EEAE:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EEB0:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EEB2:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EEB4:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EEBA)
39EEB6:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EEB8:  B               loc_39EFBE
39EEBA:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EEC0)
39EEBC:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EEBE:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EEC0:  LDRB            R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39EEC2:  CMP             R0, #0
39EEC4:  BEQ.W           loc_39F01C
39EEC8:  LDR             R0, =(AudioEngine_ptr - 0x39EED6)
39EECA:  MOVS            R1, #0x30 ; '0'; int
39EECC:  MOVS            R2, #0; float
39EECE:  MOV.W           R3, #0x3F800000; float
39EED2:  ADD             R0, PC; AudioEngine_ptr
39EED4:  MOVS            R4, #0
39EED6:  LDR             R0, [R0]; AudioEngine ; this
39EED8:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EEDC:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39EEEA)
39EEE0:  MOV.W           R5, #0xFFFFFFFF
39EEE4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EEF0)
39EEE6:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39EEE8:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EEFA)
39EEEC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EEEE:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39EEFE)
39EEF2:  LDR.W           R2, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39EEF6:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EEF8:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EF06)
39EEFA:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39EEFC:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EF0A)
39EF00:  STR             R5, [R2,#(dword_944EF0 - 0x944EE0)]
39EF02:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EF04:  STR             R5, [R2,#(dword_944EEC - 0x944EE0)]
39EF06:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EF08:  STR             R5, [R2,#(dword_944EE8 - 0x944EE0)]
39EF0A:  STR             R5, [R2,#(dword_944EE4 - 0x944EE0)]
39EF0C:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39EF0E:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EF16)
39EF10:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39EF12:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EF14:  LDR             R0, [R6]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EF16:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EF1A:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EF1C:  LDR.W           R12, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39EF20:  LDR.W           R6, [R9]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EF24:  STRH            R4, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39EF26:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39EF2E)
39EF28:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39EF2A:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39EF2C:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39EF2E:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39EF30:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EF36)
39EF32:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EF34:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EF36:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EF38:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EF3E)
39EF3A:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EF3C:  B               loc_39EFBE
39EF3E:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EF44)
39EF40:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EF42:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EF44:  LDRB            R0, [R0]; this
39EF46:  CMP             R0, #0
39EF48:  BEQ             loc_39F036
39EF4A:  LDR             R0, =(AudioEngine_ptr - 0x39EF58)
39EF4C:  MOVS            R1, #0x30 ; '0'; int
39EF4E:  MOVS            R2, #0; float
39EF50:  MOV.W           R3, #0x3F800000; float
39EF54:  ADD             R0, PC; AudioEngine_ptr
39EF56:  MOVS            R4, #0
39EF58:  LDR             R0, [R0]; AudioEngine ; this
39EF5A:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EF5E:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39EF6C)
39EF62:  MOV.W           R5, #0xFFFFFFFF
39EF66:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EF72)
39EF68:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39EF6A:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EF7C)
39EF6E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EF70:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39EF80)
39EF74:  LDR.W           R2, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39EF78:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EF7A:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EF88)
39EF7C:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39EF7E:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EF8C)
39EF82:  STR             R5, [R2,#(dword_944EF0 - 0x944EE0)]
39EF84:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EF86:  STR             R5, [R2,#(dword_944EEC - 0x944EE0)]
39EF88:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EF8A:  STR             R5, [R2,#(dword_944EE8 - 0x944EE0)]
39EF8C:  STR             R5, [R2,#(dword_944EE4 - 0x944EE0)]
39EF8E:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39EF90:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EF98)
39EF92:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39EF94:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EF96:  LDR             R0, [R6]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EF98:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EF9C:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EF9E:  LDR.W           R12, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39EFA2:  LDR.W           R6, [R9]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EFA6:  STRH            R4, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39EFA8:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39EFB0)
39EFAA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39EFAC:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39EFAE:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39EFB0:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39EFB2:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EFB8)
39EFB4:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EFB6:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EFB8:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EFBA:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EFC0)
39EFBC:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EFBE:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EFC0:  STR             R5, [R3,#(dword_944F04 - 0x944EF4)]
39EFC2:  STR             R5, [R3,#(dword_944F00 - 0x944EF4)]
39EFC4:  STRB            R4, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39EFC6:  MOVW            R2, #0x2710
39EFCA:  STR             R5, [R3,#(dword_944EFC - 0x944EF4)]
39EFCC:  ADD             R1, R2
39EFCE:  STR             R5, [R3,#(dword_944EF8 - 0x944EF4)]
39EFD0:  STR             R4, [R6]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39EFD2:  STR             R5, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39EFD4:  STR.W           R1, [R12]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39EFD8:  MOVS            R1, #1
39EFDA:  STRH            R1, [R0,#(word_944F0A - 0x944F08)]
39EFDC:  STRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39EFDE:  STRH            R1, [R0,#(word_944F0C - 0x944F08)]
39EFE0:  STRH            R1, [R0,#(word_944F0E - 0x944F08)]
39EFE2:  STRH            R1, [R0,#(word_944F10 - 0x944F08)]
39EFE4:  POP.W           {R8,R9,R11}
39EFE8:  POP             {R4-R7,PC}
39EFEA:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr - 0x39EFF2)
39EFEC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EFF4)
39EFEE:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr
39EFF0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EFF2:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime ...
39EFF4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39EFF6:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime
39EFF8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39EFFA:  CMP             R1, R0
39EFFC:  BCC             loc_39F030
39EFFE:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39F004)
39F000:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39F002:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39F004:  LDR             R0, [R0]; this
39F006:  CBZ             R0, loc_39F030
39F008:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F010)
39F00A:  MOVS            R2, #7
39F00C:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F00E:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F010:  STRH            R2, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F012:  POP.W           {R8,R9,R11}
39F016:  POP.W           {R4-R7,LR}
39F01A:  B               _ZN27CAEPoliceScannerAudioEntity18PlayLoadedDialogueEv; CAEPoliceScannerAudioEntity::PlayLoadedDialogue(void)
39F01C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr - 0x39F024)
39F01E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39F026)
39F020:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr
39F022:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39F024:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime ...
39F026:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39F028:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime
39F02A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39F02C:  CMP             R1, R0
39F02E:  BCS             loc_39F040
39F030:  POP.W           {R8,R9,R11}
39F034:  POP             {R4-R7,PC}
39F036:  POP.W           {R8,R9,R11}
39F03A:  POP.W           {R4-R7,LR}
39F03E:  B               _ZN27CAEPoliceScannerAudioEntity9LoadSlotsEv; CAEPoliceScannerAudioEntity::LoadSlots(void)
39F040:  LDR             R0, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x39F052)
39F042:  VMOV.F32        S0, #-8.0
39F046:  VLDR            S2, =0.0
39F04A:  MOV.W           R3, #0x3F800000; float
39F04E:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
39F050:  LDR             R1, =(AudioEngine_ptr - 0x39F058)
39F052:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
39F054:  ADD             R1, PC; AudioEngine_ptr
39F056:  LDR             R4, [R1]; AudioEngine
39F058:  MOVS            R1, #0x31 ; '1'; int
39F05A:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
39F05C:  CMP             R0, #0
39F05E:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39F06E)
39F060:  IT NE
39F062:  VMOVNE.F32      S0, S2
39F066:  VADD.F32        S2, S0, S2
39F06A:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39F06C:  LDR             R5, [R0]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39F06E:  MOV             R0, R4; this
39F070:  VSTR            S0, [R5]
39F074:  VMOV            R2, S2; float
39F078:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39F07C:  VMOV.F32        S0, #-6.0
39F080:  VLDR            S2, [R5]
39F084:  MOV             R0, R4; this
39F086:  MOVS            R1, #0x2F ; '/'; int
39F088:  MOV.W           R3, #0x3F800000; float
39F08C:  VADD.F32        S0, S2, S0
39F090:  VMOV            R2, S0; float
39F094:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39F098:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39F0A2)
39F09A:  MOVS            R3, #5
39F09C:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F0A6)
39F09E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39F0A0:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr - 0x39F0A8)
39F0A2:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F0A4:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr
39F0A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39F0A8:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F0AA:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime ...
39F0AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
39F0AE:  STRH            R3, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F0B0:  ADD.W           R0, R0, #0x12C
39F0B4:  STR             R0, [R2]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime
39F0B6:  POP.W           {R8,R9,R11}
39F0BA:  POP             {R4-R7,PC}
