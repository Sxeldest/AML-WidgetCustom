; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity18PlayLoadedDialogueEv
; Address            : 0x39EA10 - 0x39ECBE
; =========================================================

39EA10:  PUSH            {R4-R7,LR}
39EA12:  ADD             R7, SP, #0xC
39EA14:  PUSH.W          {R8,R9,R11}
39EA18:  SUB             SP, SP, #0xA0
39EA1A:  MOV             R3, R0
39EA1C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA24)
39EA1E:  MOVS            R6, #0
39EA20:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA22:  STR             R6, [SP,#0xB8+var_84]
39EA24:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA26:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39EA28:  CMP             R0, #5
39EA2A:  BEQ             loc_39EA6C
39EA2C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA32)
39EA2E:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA30:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA32:  LDRH            R0, [R0,#(word_944F0A - 0x944F08)]
39EA34:  CMP             R0, #5
39EA36:  BNE             loc_39EA3C
39EA38:  MOVS            R6, #1
39EA3A:  B               loc_39EA6C
39EA3C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA42)
39EA3E:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA40:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA42:  LDRH            R0, [R0,#(word_944F0C - 0x944F08)]
39EA44:  CMP             R0, #5
39EA46:  BNE             loc_39EA4C
39EA48:  MOVS            R6, #2
39EA4A:  B               loc_39EA6C
39EA4C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA52)
39EA4E:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA50:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA52:  LDRH            R0, [R0,#(word_944F0E - 0x944F08)]
39EA54:  CMP             R0, #5
39EA56:  BNE             loc_39EA5C
39EA58:  MOVS            R6, #3
39EA5A:  B               loc_39EA6C
39EA5C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA64)
39EA5E:  MOVS            R6, #0
39EA60:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA62:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA64:  LDRH            R0, [R0,#(word_944F10 - 0x944F08)]
39EA66:  CMP             R0, #5
39EA68:  IT EQ
39EA6A:  MOVEQ           R6, #4
39EA6C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EA74)
39EA6E:  UXTH            R5, R6
39EA70:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EA72:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EA74:  LDRH.W          R1, [R0,R5,LSL#1]
39EA78:  CMP             R1, #3
39EA7A:  BEQ             loc_39EB66
39EA7C:  ADDS            R1, R6, #1
39EA7E:  SXTH            R5, R1
39EA80:  CMP             R5, #5
39EA82:  MOV             R6, R5
39EA84:  BLT             loc_39EA74
39EA86:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EA96)
39EA88:  MOVS            R1, #0x31 ; '1'; int
39EA8A:  VLDR            S0, =0.0
39EA8E:  MOV.W           R3, #0x3F800000; float
39EA92:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EA94:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EA96:  VLDR            S2, [R0]
39EA9A:  LDR             R0, =(AudioEngine_ptr - 0x39EAA4)
39EA9C:  VADD.F32        S0, S2, S0
39EAA0:  ADD             R0, PC; AudioEngine_ptr
39EAA2:  LDR             R4, [R0]; AudioEngine
39EAA4:  MOV             R0, R4; this
39EAA6:  VMOV            R2, S0; float
39EAAA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EAAE:  MOV             R0, R4; this
39EAB0:  MOVS            R1, #0x30 ; '0'; int
39EAB2:  MOVS            R2, #0; float
39EAB4:  MOV.W           R3, #0x3F800000; float
39EAB8:  MOVS            R5, #0
39EABA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EABE:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr - 0x39EAC4)
39EAC0:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr
39EAC2:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nSectionPlaying ...
39EAC4:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_nSectionPlaying
39EAC6:  CMP             R0, #0
39EAC8:  BEQ.W           loc_39EC0C
39EACC:  LDR             R0, =(AudioEngine_ptr - 0x39EADA)
39EACE:  MOVS            R1, #0x30 ; '0'; int
39EAD0:  MOVS            R2, #0; float
39EAD2:  MOV.W           R3, #0x3F800000; float
39EAD6:  ADD             R0, PC; AudioEngine_ptr
39EAD8:  LDR             R0, [R0]; AudioEngine ; this
39EADA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39EADE:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39EAEC)
39EAE2:  MOV.W           R4, #0xFFFFFFFF
39EAE6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EAF2)
39EAE8:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39EAEA:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39EAFC)
39EAEE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EAF0:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EB00)
39EAF4:  LDR.W           R2, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39EAF8:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39EAFA:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EB08)
39EAFC:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EAFE:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EB0C)
39EB02:  STR             R4, [R2,#(dword_944EF0 - 0x944EE0)]
39EB04:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EB06:  STR             R4, [R2,#(dword_944EEC - 0x944EE0)]
39EB08:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EB0A:  STR             R4, [R2,#(dword_944EE8 - 0x944EE0)]
39EB0C:  STR             R4, [R2,#(dword_944EE4 - 0x944EE0)]
39EB0E:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39EB10:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EB18)
39EB12:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39EB14:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EB16:  LDR.W           R12, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39EB1A:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EB1E:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EB20:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39EB22:  LDR             R0, [R6]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EB24:  STRH            R5, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39EB26:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39EB30)
39EB28:  LDR.W           R6, [R9]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EB2C:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39EB2E:  STR             R4, [R3,#(dword_944F04 - 0x944EF4)]
39EB30:  STR             R4, [R3,#(dword_944F00 - 0x944EF4)]
39EB32:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39EB34:  STR             R4, [R3,#(dword_944EFC - 0x944EF4)]
39EB36:  STR             R4, [R3,#(dword_944EF8 - 0x944EF4)]
39EB38:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39EB3A:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EB42)
39EB3C:  STR             R5, [R6]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39EB3E:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EB40:  STR             R4, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39EB42:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EB44:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EB46:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39EB4C)
39EB48:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39EB4A:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39EB4C:  STRB            R5, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39EB4E:  MOVW            R2, #0x2710
39EB52:  ADD             R1, R2
39EB54:  STR.W           R1, [R12]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39EB58:  MOVS            R1, #1
39EB5A:  STRH            R1, [R0,#(word_944F0A - 0x944F08)]
39EB5C:  STRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39EB5E:  STRH            R1, [R0,#(word_944F0C - 0x944F08)]
39EB60:  STRH            R1, [R0,#(word_944F0E - 0x944F08)]
39EB62:  STRH            R1, [R0,#(word_944F10 - 0x944F08)]
39EB64:  B               loc_39ECB0
39EB66:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x39EB70)
39EB68:  ADD             R4, SP, #0xB8+var_8C
39EB6A:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EB74)
39EB6C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
39EB6E:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39EB78)
39EB70:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EB72:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
39EB74:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39EB76:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EB78:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39EB7A:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
39EB7C:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EB7E:  VLDR            S0, [R2]
39EB82:  LDRSB.W         R0, [R0,#0xA4]
39EB86:  ADD.W           R1, R1, R5,LSL#2
39EB8A:  LDRSH.W         R2, [R1,#2]
39EB8E:  MOV.W           R1, #0x3F800000
39EB92:  VMOV            S2, R0
39EB96:  MOVS            R0, #0
39EB98:  VCVT.F32.S32    S2, S2
39EB9C:  STRD.W          R1, R1, [SP,#0xB8+var_A8]
39EBA0:  STRD.W          R1, R0, [SP,#0xB8+var_A0]
39EBA4:  STRD.W          R0, R0, [SP,#0xB8+var_98]
39EBA8:  STR             R0, [SP,#0xB8+var_90]
39EBAA:  STRD.W          R0, R1, [SP,#0xB8+var_B8]
39EBAE:  STR             R0, [SP,#0xB8+var_B0]
39EBB0:  ADD.W           R0, R5, #0x21 ; '!'
39EBB4:  VADD.F32        S0, S0, S2
39EBB8:  SXTH            R1, R0
39EBBA:  MOV             R0, R4
39EBBC:  VSTR            S0, [SP,#0xB8+var_AC]
39EBC0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39EBC4:  SXTH            R1, R6
39EBC6:  LDR             R0, =(AESoundManager_ptr - 0x39EBD2)
39EBC8:  VMOV            S0, R1
39EBCC:  MOVS            R1, #0xA4
39EBCE:  ADD             R0, PC; AESoundManager_ptr
39EBD0:  VCVT.F32.S32    S0, S0
39EBD4:  STR             R1, [SP,#0xB8+var_80]
39EBD6:  LDR             R0, [R0]; AESoundManager ; this
39EBD8:  MOVW            R1, #0x107
39EBDC:  STRH.W          R1, [SP,#0xB8+var_36]
39EBE0:  MOV             R1, R4; CAESound *
39EBE2:  VSTR            S0, [SP,#0xB8+var_7C]
39EBE6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39EBEA:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39EBF2)
39EBEC:  CMP             R0, #0
39EBEE:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39EBF0:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pSound ...
39EBF2:  STR             R0, [R1]; CAEPoliceScannerAudioEntity::s_pSound
39EBF4:  BEQ             loc_39ECB0
39EBF6:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EC00)
39EBF8:  MOVS            R2, #5
39EBFA:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EC02)
39EBFC:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EBFE:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EC00:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EC02:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39EC04:  STRH.W          R2, [R0,R5,LSL#1]
39EC08:  MOVS            R0, #7
39EC0A:  B               loc_39ECAE
39EC0C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr - 0x39EC16)
39EC0E:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39EC18)
39EC10:  LDR             R4, =(_ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr - 0x39EC20)
39EC12:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr
39EC14:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39EC16:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39EC24)
39EC18:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39EC28)
39EC1C:  ADD             R4, PC; _ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr
39EC1E:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr - 0x39EC2C)
39EC20:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39EC22:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime ...
39EC24:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39EC26:  LDR             R6, [R6]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39EC28:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr
39EC2A:  LDR             R4, [R4]; CAEPoliceScannerAudioEntity::s_nSectionPlaying ...
39EC2C:  LDR             R2, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39EC2E:  STR             R5, [R0]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime
39EC30:  LDR.W           R1, [R12]; CAEPoliceScannerAudioEntity::s_SlotState ...
39EC34:  LDR.W           R12, [R3]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime ...
39EC38:  MOVS            R3, #1
39EC3A:  LDRH            R5, [R6,#(dword_944F04+2 - 0x944EF4)]
39EC3C:  STRH            R3, [R4]; CAEPoliceScannerAudioEntity::s_nSectionPlaying
39EC3E:  LDRSH.W         R3, [R6,#(dword_944F04 - 0x944EF4)]
39EC42:  STR             R6, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39EC44:  LSRS            R2, R5, #0xF
39EC46:  CMP             R3, #0
39EC48:  LDRH            R0, [R6,#(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE+2 - 0x944EF4)]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39EC4A:  IT LT
39EC4C:  MOVLT           R2, #1
39EC4E:  LDRSH.W         R3, [R6,#(dword_944EF8 - 0x944EF4)]
39EC52:  STRH            R2, [R1,#(word_944F10 - 0x944F08)]
39EC54:  LDRSH.W         R2, [R6]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39EC58:  LSRS            R0, R0, #0xF
39EC5A:  LDRSH.W         R5, [R6,#(dword_944EFC - 0x944EF4)]
39EC5E:  CMP             R2, #0
39EC60:  LDRSH.W         R4, [R6,#(dword_944F00 - 0x944EF4)]
39EC64:  IT LT
39EC66:  MOVLT           R0, #1
39EC68:  CMP             R3, #0
39EC6A:  STRH            R0, [R1]; CAEPoliceScannerAudioEntity::s_SlotState
39EC6C:  LDRH            R0, [R6,#(dword_944EF8+2 - 0x944EF4)]
39EC6E:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39EC78)
39EC70:  MOV.W           R0, R0,LSR#15
39EC74:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39EC76:  IT LT
39EC78:  MOVLT           R0, #1
39EC7A:  LDRH            R3, [R6,#(dword_944F00+2 - 0x944EF4)]
39EC7C:  LDRH            R6, [R6,#(dword_944EFC+2 - 0x944EF4)]
39EC7E:  CMP             R5, #0
39EC80:  STRH            R0, [R1,#(word_944F0A - 0x944F08)]
39EC82:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
39EC84:  MOV.W           R0, R6,LSR#15
39EC88:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39EC9E)
39EC8A:  IT LT
39EC8C:  MOVLT           R0, #1
39EC8E:  CMP             R4, #0
39EC90:  STRH            R0, [R1,#(word_944F0C - 0x944F08)]
39EC92:  MOV.W           R0, R3,LSR#15
39EC96:  IT LT
39EC98:  MOVLT           R0, #1
39EC9A:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39EC9C:  STRH            R0, [R1,#(word_944F0E - 0x944F08)]
39EC9E:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds
39ECA0:  MOVW            R2, #0x1388
39ECA4:  LDR             R1, [R6]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39ECA6:  ADD             R0, R2
39ECA8:  STR.W           R0, [R12]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime
39ECAC:  MOVS            R0, #2
39ECAE:  STRH            R0, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39ECB0:  ADD             R0, SP, #0xB8+var_8C; this
39ECB2:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
39ECB6:  ADD             SP, SP, #0xA0
39ECB8:  POP.W           {R8,R9,R11}
39ECBC:  POP             {R4-R7,PC}
