; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntityD2Ev
; Address            : 0x39DF48 - 0x39E062
; =========================================================

39DF48:  PUSH            {R4-R7,LR}
39DF4A:  ADD             R7, SP, #0xC
39DF4C:  PUSH.W          {R8-R11}
39DF50:  SUB             SP, SP, #4
39DF52:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39DF5C)
39DF54:  MOV             R4, R0
39DF56:  LDR             R0, =(_ZTV27CAEPoliceScannerAudioEntity_ptr - 0x39DF5E)
39DF58:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39DF5A:  ADD             R0, PC; _ZTV27CAEPoliceScannerAudioEntity_ptr
39DF5C:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39DF5E:  LDR             R0, [R0]; `vtable for'CAEPoliceScannerAudioEntity ...
39DF60:  ADDS            R0, #8
39DF62:  STR             R0, [R4]
39DF64:  LDR             R0, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling
39DF66:  CMP             R0, R4
39DF68:  BNE             loc_39E044
39DF6A:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39DF70)
39DF6C:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39DF6E:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39DF70:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39DF72:  CMP             R0, #0
39DF74:  BEQ             loc_39E044
39DF76:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39DF82)
39DF78:  MOV.W           R11, #1
39DF7C:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39DF84)
39DF7E:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39DF80:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39DF82:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39DF84:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39DF86:  LDR             R0, [R0]; this
39DF88:  STRB.W          R11, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39DF8C:  CBZ             R0, loc_39DF9C
39DF8E:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39DF92:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39DF9A)
39DF94:  MOVS            R1, #0
39DF96:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39DF98:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39DF9A:  STR             R1, [R0]; CAEPoliceScannerAudioEntity::s_pSound
39DF9C:  LDR             R0, =(AudioEngine_ptr - 0x39DFAA)
39DF9E:  MOVS            R1, #0x30 ; '0'; int
39DFA0:  MOVS            R2, #0; float
39DFA2:  MOV.W           R3, #0x3F800000; float
39DFA6:  ADD             R0, PC; AudioEngine_ptr
39DFA8:  MOVS            R6, #0
39DFAA:  LDR             R0, [R0]; AudioEngine ; this
39DFAC:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39DFB0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39DFBA)
39DFB2:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39DFC0)
39DFB6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39DFB8:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39DFC8)
39DFBC:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39DFBE:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39DFCE)
39DFC2:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39DFC4:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39DFC6:  LDR.W           R2, [R8]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39DFCA:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39DFCC:  LDR.W           R0, [R12]; CAEPoliceScannerAudioEntity::s_SlotState ...
39DFD0:  LDR.W           R12, [R1]; CTimer::m_snTimeInMilliseconds
39DFD4:  MOV.W           R1, #0xFFFFFFFF
39DFD8:  STR             R1, [R2,#(dword_944EF0 - 0x944EE0)]
39DFDA:  STR             R1, [R2,#(dword_944EEC - 0x944EE0)]
39DFDC:  STR             R1, [R2,#(dword_944EE8 - 0x944EE0)]
39DFDE:  STR             R1, [R2,#(dword_944EE4 - 0x944EE0)]
39DFE0:  STR             R1, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39DFE2:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39DFEC)
39DFE4:  LDR.W           R10, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39DFF2)
39DFE8:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39DFEA:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39DFFA)
39DFEE:  ADD             R10, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39DFF0:  LDR.W           R3, [R9]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39DFF4:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39DFF6:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39DFF8:  LDR.W           R8, [R10]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39DFFC:  LDR.W           R5, [LR]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39E000:  STRH            R6, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E002:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39E00A)
39E004:  STR             R1, [R3,#(dword_944F04 - 0x944EF4)]
39E006:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39E008:  STR             R1, [R3,#(dword_944F00 - 0x944EF4)]
39E00A:  STR             R1, [R3,#(dword_944EFC - 0x944EF4)]
39E00C:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39E00E:  STR             R1, [R3,#(dword_944EF8 - 0x944EF4)]
39E010:  STR             R1, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39E012:  MOVW            R1, #0x2710
39E016:  STR             R6, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39E018:  ADD             R1, R12
39E01A:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39E024)
39E01C:  STRH.W          R11, [R0,#(word_944F0A - 0x944F08)]
39E020:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39E022:  STRH.W          R11, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39E026:  STRH.W          R11, [R0,#(word_944F0C - 0x944F08)]
39E02A:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39E02C:  STRH.W          R11, [R0,#(word_944F0E - 0x944F08)]
39E030:  STR             R6, [R5]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39E032:  STR             R6, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39E034:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39E03E)
39E036:  STR.W           R1, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39E03A:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39E03C:  STRH.W          R11, [R0,#(word_944F10 - 0x944F08)]
39E040:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39E042:  STRB            R6, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39E044:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x39E04A)
39E046:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
39E048:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
39E04A:  ADD.W           R1, R0, #8
39E04E:  MOV             R0, R4
39E050:  STR.W           R1, [R0],#8; this
39E054:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
39E058:  MOV             R0, R4
39E05A:  ADD             SP, SP, #4
39E05C:  POP.W           {R8-R11}
39E060:  POP             {R4-R7,PC}
