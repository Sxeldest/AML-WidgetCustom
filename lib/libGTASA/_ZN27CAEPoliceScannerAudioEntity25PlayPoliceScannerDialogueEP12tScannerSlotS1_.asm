; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity25PlayPoliceScannerDialogueEP12tScannerSlotS1_
; Address            : 0x39E760 - 0x39E876
; =========================================================

39E760:  PUSH            {R4-R7,LR}
39E762:  ADD             R7, SP, #0xC
39E764:  PUSH.W          {R8,R9,R11}
39E768:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39E76E)
39E76A:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39E76C:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39E76E:  LDRH            R3, [R3]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E770:  CMP             R3, #0
39E772:  BNE             loc_39E870
39E774:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x39E77C)
39E776:  LDR             R6, =(TheCamera_ptr - 0x39E77E)
39E778:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
39E77A:  ADD             R6, PC; TheCamera_ptr
39E77C:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
39E77E:  LDR             R6, [R6]; TheCamera
39E780:  LDRB            R3, [R3]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
39E782:  LDRB.W          R6, [R6,#(byte_951FE3 - 0x951FA8)]
39E786:  ORRS            R3, R6
39E788:  LSLS            R3, R3, #0x18
39E78A:  BNE             loc_39E870
39E78C:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39E794)
39E78E:  LDR             R6, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39E796)
39E790:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39E792:  ADD             R6, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39E794:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39E796:  LDR             R6, [R6]; CTimer::m_snTimeInMilliseconds ...
39E798:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39E79A:  LDR.W           R12, [R6]; CTimer::m_snTimeInMilliseconds
39E79E:  CMP             R12, R3
39E7A0:  BCC             loc_39E870
39E7A2:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39E7AA)
39E7A4:  LDR             R4, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39E7AE)
39E7A6:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39E7A8:  LDR             R5, [R1]
39E7AA:  ADD             R4, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39E7AC:  LDR             R6, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39E7AE:  LDR             R3, [R4]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39E7B0:  STR             R5, [R6]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39E7B2:  LDR             R4, [R2]
39E7B4:  STR             R4, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39E7B6:  LDR.W           R9, [R1,#4]
39E7BA:  STR.W           R9, [R6,#(dword_944EE4 - 0x944EE0)]
39E7BE:  LDR             R4, [R2,#4]
39E7C0:  STR             R4, [R3,#(dword_944EF8 - 0x944EF4)]
39E7C2:  LDR.W           R8, [R1,#8]
39E7C6:  STR.W           R8, [R6,#(dword_944EE8 - 0x944EE0)]
39E7CA:  LDR             R4, [R2,#8]
39E7CC:  STR             R4, [R3,#(dword_944EFC - 0x944EF4)]
39E7CE:  LDR.W           LR, [R1,#0xC]
39E7D2:  STR.W           LR, [R6,#(dword_944EEC - 0x944EE0)]
39E7D6:  LDR             R4, [R2,#0xC]
39E7D8:  STR             R4, [R3,#(dword_944F00 - 0x944EF4)]
39E7DA:  LDR             R1, [R1,#0x10]
39E7DC:  STR             R1, [R6,#(dword_944EF0 - 0x944EE0)]
39E7DE:  LDR             R2, [R2,#0x10]
39E7E0:  STR             R2, [R3,#(dword_944F04 - 0x944EF4)]
39E7E2:  MOVS            R3, #0
39E7E4:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr - 0x39E7EC)
39E7E6:  LDR             R4, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39E7EE)
39E7E8:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity17s_nSectionPlayingE_ptr
39E7EA:  ADD             R4, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39E7EC:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nSectionPlaying ...
39E7EE:  LDR             R4, [R4]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39E7F0:  STRH            R3, [R2]; CAEPoliceScannerAudioEntity::s_nSectionPlaying
39E7F2:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39E7FC)
39E7F4:  STR             R0, [R4]; CAEPoliceScannerAudioEntity::s_pPSControlling
39E7F6:  LSRS            R4, R5, #0x1F
39E7F8:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39E7FA:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr - 0x39E804)
39E7FC:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr - 0x39E806)
39E7FE:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39E800:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity20s_nPlaybackStartTimeE_ptr
39E802:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity20s_nAbortPlaybackTimeE_ptr
39E804:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime ...
39E806:  STR             R6, [R3]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39E808:  SXTH            R3, R5
39E80A:  CMP             R3, #0
39E80C:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39E81A)
39E80E:  IT LT
39E810:  MOVLT           R4, #1
39E812:  SXTH.W          R6, R8
39E816:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39E818:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime ...
39E81A:  LDR             R5, [R3]; CAEPoliceScannerAudioEntity::s_SlotState ...
39E81C:  SXTH.W          R3, R9
39E820:  CMP             R3, #0
39E822:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39E828)
39E824:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39E826:  STRH            R4, [R5]; CAEPoliceScannerAudioEntity::s_SlotState
39E828:  MOV.W           R4, R9,LSR#31
39E82C:  IT LT
39E82E:  MOVLT           R4, #1
39E830:  CMP             R6, #0
39E832:  STRH            R4, [R5,#(word_944F0A - 0x944F08)]
39E834:  MOV.W           R4, R8,LSR#31
39E838:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39E83A:  IT LT
39E83C:  MOVLT           R4, #1
39E83E:  SXTH.W          R6, LR
39E842:  STRH            R4, [R5,#(word_944F0C - 0x944F08)]
39E844:  CMP             R6, #0
39E846:  MOV.W           R4, LR,LSR#31
39E84A:  MOV.W           R6, #2
39E84E:  IT LT
39E850:  MOVLT           R4, #1
39E852:  STRH            R6, [R3]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E854:  ADD.W           R3, R12, #0x7D0
39E858:  STR             R3, [R2]; CAEPoliceScannerAudioEntity::s_nPlaybackStartTime
39E85A:  MOVW            R2, #0x1388
39E85E:  ADD             R2, R12
39E860:  STR             R2, [R0]; CAEPoliceScannerAudioEntity::s_nAbortPlaybackTime
39E862:  SXTH            R0, R1
39E864:  LSRS            R1, R1, #0x1F
39E866:  CMP             R0, #0
39E868:  STRH            R4, [R5,#(word_944F0E - 0x944F08)]
39E86A:  IT LT
39E86C:  MOVLT           R1, #1
39E86E:  STRH            R1, [R5,#(word_944F10 - 0x944F08)]
39E870:  POP.W           {R8,R9,R11}
39E874:  POP             {R4-R7,PC}
