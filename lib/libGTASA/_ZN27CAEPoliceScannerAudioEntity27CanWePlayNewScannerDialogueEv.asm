; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity27CanWePlayNewScannerDialogueEv
; Address            : 0x39F300 - 0x39F348
; =========================================================

39F300:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F306)
39F302:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F304:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F306:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F308:  CMP             R0, #0
39F30A:  ITT NE
39F30C:  MOVNE           R0, #0
39F30E:  BXNE            LR
39F310:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39F318)
39F312:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39F31A)
39F314:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39F316:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39F318:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39F31A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39F31C:  LDR             R2, [R0]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39F31E:  MOVS            R0, #0
39F320:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39F322:  CMP             R1, R2
39F324:  BCC             locret_39F346
39F326:  LDR             R1, =(TheCamera_ptr - 0x39F32C)
39F328:  ADD             R1, PC; TheCamera_ptr
39F32A:  LDR             R1, [R1]; TheCamera
39F32C:  LDRB.W          R1, [R1,#(byte_951FE3 - 0x951FA8)]
39F330:  CMP             R1, #0
39F332:  IT NE
39F334:  BXNE            LR
39F336:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x39F33C)
39F338:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
39F33A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
39F33C:  LDRB            R1, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
39F33E:  MOVS            R0, #0
39F340:  CMP             R1, #0
39F342:  IT EQ
39F344:  MOVEQ           R0, #1
39F346:  BX              LR
