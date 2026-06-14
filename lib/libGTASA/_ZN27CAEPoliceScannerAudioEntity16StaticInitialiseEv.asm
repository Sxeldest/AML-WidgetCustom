; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity16StaticInitialiseEv
; Address            : 0x46D828 - 0x46D870
; =========================================================

46D828:  PUSH            {R4-R7,LR}
46D82A:  ADD             R7, SP, #0xC
46D82C:  PUSH.W          {R11}
46D830:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x46D83A)
46D832:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x46D83E)
46D834:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x46D844)
46D836:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
46D838:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x46D84A)
46D83A:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
46D83C:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x46D84C)
46D840:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
46D842:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x46D850)
46D846:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
46D848:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
46D84A:  LDR             R4, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
46D84C:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
46D84E:  LDR             R5, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
46D850:  LDR             R6, [R3]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
46D852:  MOVS            R3, #0
46D854:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
46D856:  LDR.W           R1, [R12]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
46D85A:  LDR.W           R2, [LR]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
46D85E:  STRB            R3, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
46D860:  STR             R3, [R1]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
46D862:  STRH            R3, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
46D864:  STR             R3, [R4]; CAEPoliceScannerAudioEntity::s_pPSControlling
46D866:  STR             R3, [R5]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
46D868:  STR             R3, [R6]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
46D86A:  POP.W           {R11}
46D86E:  POP             {R4-R7,PC}
