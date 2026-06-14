; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity14DisableScannerEhh
; Address            : 0x39F454 - 0x39F54C
; =========================================================

39F454:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x39F460)
39F456:  CMP             R0, #0
39F458:  MOV.W           R3, #1
39F45C:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
39F45E:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
39F460:  STRB            R3, [R2]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
39F462:  BEQ             locret_39F54A
39F464:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F46A)
39F466:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F468:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F46A:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F46C:  CMP             R0, #0
39F46E:  BEQ             locret_39F54A
39F470:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39F476)
39F472:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39F474:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39F476:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pPSControlling
39F478:  CMP             R0, #0
39F47A:  BEQ             locret_39F54A
39F47C:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39F488)
39F47E:  CMP             R1, #0
39F480:  MOV.W           R2, #1
39F484:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39F486:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39F488:  STRB            R2, [R0]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39F48A:  IT EQ
39F48C:  BXEQ            LR
39F48E:  PUSH            {R4-R7,LR}
39F490:  ADD             R7, SP, #0x14+var_8
39F492:  PUSH.W          {R8}
39F496:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39F49C)
39F498:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39F49A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39F49C:  LDR             R0, [R0]; this
39F49E:  CBZ             R0, loc_39F4AE
39F4A0:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39F4A4:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39F4AC)
39F4A6:  MOVS            R1, #0
39F4A8:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39F4AA:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39F4AC:  STR             R1, [R0]; CAEPoliceScannerAudioEntity::s_pSound
39F4AE:  LDR             R0, =(AudioEngine_ptr - 0x39F4BC)
39F4B0:  MOVS            R1, #0x30 ; '0'; int
39F4B2:  MOVS            R2, #0; float
39F4B4:  MOV.W           R3, #0x3F800000; float
39F4B8:  ADD             R0, PC; AudioEngine_ptr
39F4BA:  MOVS            R4, #0
39F4BC:  LDR             R0, [R0]; AudioEngine ; this
39F4BE:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39F4C2:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39F4CE)
39F4C4:  MOV.W           R6, #0xFFFFFFFF
39F4C8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39F4D2)
39F4CA:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39F4CC:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39F4D8)
39F4CE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39F4D0:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39F4DE)
39F4D2:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39F4D4:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39F4D6:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F4E6)
39F4DA:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39F4DC:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39F4EA)
39F4E0:  STR             R6, [R1,#(dword_944EF0 - 0x944EE0)]
39F4E2:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F4E4:  STR             R6, [R1,#(dword_944EEC - 0x944EE0)]
39F4E6:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39F4E8:  STR             R6, [R1,#(dword_944EE8 - 0x944EE0)]
39F4EA:  STR             R6, [R1,#(dword_944EE4 - 0x944EE0)]
39F4EC:  STR             R6, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39F4EE:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F4F6)
39F4F0:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds ...
39F4F2:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F4F4:  LDR.W           R8, [R3]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39F4F8:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39F4FA:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F4FC:  LDR             R5, [R5]; CTimer::m_snTimeInMilliseconds
39F4FE:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39F502:  STRH            R4, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F504:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39F50E)
39F506:  LDR.W           R0, [R12]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F50A:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39F50C:  STR             R6, [R2,#(dword_944F04 - 0x944EF4)]
39F50E:  STR             R6, [R2,#(dword_944F00 - 0x944EF4)]
39F510:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39F512:  STR             R6, [R2,#(dword_944EFC - 0x944EF4)]
39F514:  STR             R6, [R2,#(dword_944EF8 - 0x944EF4)]
39F516:  STR             R4, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling
39F518:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F520)
39F51A:  STR             R4, [R3]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39F51C:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F51E:  STR             R6, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39F520:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F522:  STR             R4, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39F524:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39F52A)
39F526:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39F528:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39F52A:  STRB            R4, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39F52C:  MOVW            R1, #0x2710
39F530:  ADD             R1, R5
39F532:  STR.W           R1, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39F536:  MOVS            R1, #1
39F538:  STRH            R1, [R0,#(word_944F0A - 0x944F08)]
39F53A:  STRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39F53C:  STRH            R1, [R0,#(word_944F0C - 0x944F08)]
39F53E:  STRH            R1, [R0,#(word_944F0E - 0x944F08)]
39F540:  STRH            R1, [R0,#(word_944F10 - 0x944F08)]
39F542:  POP.W           {R8}
39F546:  POP.W           {R4-R7,LR}
39F54A:  BX              LR
