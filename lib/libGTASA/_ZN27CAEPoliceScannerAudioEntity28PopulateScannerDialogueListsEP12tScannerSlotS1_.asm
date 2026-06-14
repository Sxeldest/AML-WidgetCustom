; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity28PopulateScannerDialogueListsEP12tScannerSlotS1_
; Address            : 0x39F35C - 0x39F3B0
; =========================================================

39F35C:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F362)
39F35E:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F360:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F362:  LDRH            R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F364:  CMP             R2, #0
39F366:  IT NE
39F368:  BXNE            LR
39F36A:  PUSH            {R4,R6,R7,LR}
39F36C:  ADD             R7, SP, #0x10+var_8
39F36E:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39F378)
39F370:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39F37E)
39F374:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39F376:  LDR.W           LR, [R0]
39F37A:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39F37C:  LDR             R4, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39F37E:  LDR.W           R3, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39F382:  STR.W           LR, [R4]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39F386:  LDR             R2, [R1]
39F388:  STR             R2, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39F38A:  LDR             R2, [R0,#4]
39F38C:  STR             R2, [R4,#(dword_944EE4 - 0x944EE0)]
39F38E:  LDR             R2, [R1,#4]
39F390:  STR             R2, [R3,#(dword_944EF8 - 0x944EF4)]
39F392:  LDR             R2, [R0,#8]
39F394:  STR             R2, [R4,#(dword_944EE8 - 0x944EE0)]
39F396:  LDR             R2, [R1,#8]
39F398:  STR             R2, [R3,#(dword_944EFC - 0x944EF4)]
39F39A:  LDR             R2, [R0,#0xC]
39F39C:  STR             R2, [R4,#(dword_944EEC - 0x944EE0)]
39F39E:  LDR             R2, [R1,#0xC]
39F3A0:  STR             R2, [R3,#(dword_944F00 - 0x944EF4)]
39F3A2:  LDR             R0, [R0,#0x10]
39F3A4:  STR             R0, [R4,#(dword_944EF0 - 0x944EE0)]
39F3A6:  LDR             R0, [R1,#0x10]
39F3A8:  STR             R0, [R3,#(dword_944F04 - 0x944EF4)]
39F3AA:  POP.W           {R4,R6,R7,LR}
39F3AE:  BX              LR
