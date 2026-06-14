; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity5ResetEv
; Address            : 0x39E1C4 - 0x39E33A
; =========================================================

39E1C4:  PUSH            {R4-R7,LR}
39E1C6:  ADD             R7, SP, #0xC
39E1C8:  PUSH.W          {R8,R9,R11}
39E1CC:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39E1D2)
39E1CE:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39E1D0:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39E1D2:  LDRH            R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E1D4:  CMP             R0, #0
39E1D6:  BEQ             loc_39E29A
39E1D8:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39E1E4)
39E1DA:  MOV.W           R9, #1
39E1DE:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39E1E6)
39E1E0:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39E1E2:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39E1E4:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39E1E6:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39E1E8:  LDR             R0, [R0]; this
39E1EA:  STRB.W          R9, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39E1EE:  CBZ             R0, loc_39E1FE
39E1F0:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39E1F4:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr - 0x39E1FC)
39E1F6:  MOVS            R1, #0
39E1F8:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity8s_pSoundE_ptr
39E1FA:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pSound ...
39E1FC:  STR             R1, [R0]; CAEPoliceScannerAudioEntity::s_pSound
39E1FE:  LDR             R0, =(AudioEngine_ptr - 0x39E20C)
39E200:  MOVS            R1, #0x30 ; '0'; int
39E202:  MOVS            R2, #0; float
39E204:  MOV.W           R3, #0x3F800000; float
39E208:  ADD             R0, PC; AudioEngine_ptr
39E20A:  MOVS            R5, #0
39E20C:  LDR             R0, [R0]; AudioEngine ; this
39E20E:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39E212:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39E21E)
39E214:  MOV.W           R4, #0xFFFFFFFF
39E218:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39E224)
39E21A:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39E21C:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39E228)
39E21E:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39E22E)
39E220:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39E222:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39E224:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39E226:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39E236)
39E22A:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39E22C:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39E23A)
39E230:  STR             R4, [R1,#(dword_944EF0 - 0x944EE0)]
39E232:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39E234:  STR             R4, [R1,#(dword_944EEC - 0x944EE0)]
39E236:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39E238:  STR             R4, [R1,#(dword_944EE8 - 0x944EE0)]
39E23A:  STR             R4, [R1,#(dword_944EE4 - 0x944EE0)]
39E23C:  STR             R4, [R1]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39E23E:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39E246)
39E240:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds ...
39E242:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39E244:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39E246:  LDR.W           R8, [R3]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39E24A:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39E24C:  LDR.W           R0, [R12]; CAEPoliceScannerAudioEntity::s_SlotState ...
39E250:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39E254:  STRH            R5, [R1]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E256:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39E25E)
39E258:  LDR             R6, [R6]; CTimer::m_snTimeInMilliseconds
39E25A:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39E25C:  STR             R4, [R2,#(dword_944F04 - 0x944EF4)]
39E25E:  STR             R4, [R2,#(dword_944F00 - 0x944EF4)]
39E260:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39E262:  STR             R4, [R2,#(dword_944EFC - 0x944EF4)]
39E264:  STR             R4, [R2,#(dword_944EF8 - 0x944EF4)]
39E266:  STR             R5, [R1]; CAEPoliceScannerAudioEntity::s_pPSControlling
39E268:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39E272)
39E26A:  STRH.W          R9, [R0,#(word_944F0A - 0x944F08)]
39E26E:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39E270:  STRH.W          R9, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39E274:  STRH.W          R9, [R0,#(word_944F0C - 0x944F08)]
39E278:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39E27A:  STRH.W          R9, [R0,#(word_944F0E - 0x944F08)]
39E27E:  STR             R5, [R3]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39E280:  STR             R5, [R1]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39E282:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39E28A)
39E284:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39E286:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39E288:  STRH.W          R9, [R0,#(word_944F10 - 0x944F08)]
39E28C:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39E28E:  STRB            R5, [R1]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39E290:  MOVW            R1, #0x2710
39E294:  ADD             R1, R6
39E296:  STR.W           R1, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39E29A:  LDR             R0, =(AudioEngine_ptr - 0x39E2A8)
39E29C:  MOVS            R1, #0x30 ; '0'; int
39E29E:  MOVS            R2, #0; float
39E2A0:  MOV.W           R3, #0x3F800000; float
39E2A4:  ADD             R0, PC; AudioEngine_ptr
39E2A6:  MOVS            R4, #0
39E2A8:  LDR             R0, [R0]; AudioEngine ; this
39E2AA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
39E2AE:  LDR.W           R12, =(_ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr - 0x39E2BC)
39E2B2:  MOV.W           R5, #0xFFFFFFFF
39E2B6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39E2C2)
39E2B8:  ADD             R12, PC; _ZN27CAEPoliceScannerAudioEntity18s_ScannerSlotFirstE_ptr
39E2BA:  LDR.W           R8, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x39E2CC)
39E2BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39E2C0:  LDR.W           LR, =(_ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr - 0x39E2D0)
39E2C4:  LDR.W           R2, [R12]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst ...
39E2C8:  ADD             R8, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
39E2CA:  LDR             R6, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39E2D8)
39E2CC:  ADD             LR, PC; _ZN27CAEPoliceScannerAudioEntity19s_ScannerSlotSecondE_ptr
39E2CE:  LDR.W           R9, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x39E2DC)
39E2D2:  STR             R5, [R2,#(dword_944EF0 - 0x944EE0)]
39E2D4:  ADD             R6, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39E2D6:  STR             R5, [R2,#(dword_944EEC - 0x944EE0)]
39E2D8:  ADD             R9, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
39E2DA:  STR             R5, [R2,#(dword_944EE8 - 0x944EE0)]
39E2DC:  STR             R5, [R2,#(dword_944EE4 - 0x944EE0)]
39E2DE:  STR             R5, [R2]; CAEPoliceScannerAudioEntity::s_ScannerSlotFirst
39E2E0:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39E2E8)
39E2E2:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
39E2E4:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39E2E6:  LDR.W           R12, [R8]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
39E2EA:  LDR.W           R3, [LR]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond ...
39E2EE:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39E2F0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39E2F2:  LDR             R0, [R6]; CAEPoliceScannerAudioEntity::s_SlotState ...
39E2F4:  STRH            R4, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39E2F6:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x39E300)
39E2F8:  LDR.W           R6, [R9]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
39E2FC:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
39E2FE:  STR             R5, [R3,#(dword_944F04 - 0x944EF4)]
39E300:  STR             R5, [R3,#(dword_944F00 - 0x944EF4)]
39E302:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
39E304:  STR             R5, [R3,#(dword_944EFC - 0x944EF4)]
39E306:  STR             R5, [R3,#(dword_944EF8 - 0x944EF4)]
39E308:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pPSControlling
39E30A:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39E312)
39E30C:  STR             R4, [R6]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
39E30E:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39E310:  STR             R5, [R3]; CAEPoliceScannerAudioEntity::s_ScannerSlotSecond
39E312:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39E314:  STR             R4, [R2]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39E316:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr - 0x39E31C)
39E318:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity18s_bStoppingScannerE_ptr
39E31A:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner ...
39E31C:  STRB            R4, [R2]; CAEPoliceScannerAudioEntity::s_bStoppingScanner
39E31E:  MOVW            R2, #0x2710
39E322:  ADD             R1, R2
39E324:  STR.W           R1, [R12]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
39E328:  MOVS            R1, #1
39E32A:  STRH            R1, [R0,#(word_944F0A - 0x944F08)]
39E32C:  STRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_SlotState
39E32E:  STRH            R1, [R0,#(word_944F0C - 0x944F08)]
39E330:  STRH            R1, [R0,#(word_944F0E - 0x944F08)]
39E332:  STRH            R1, [R0,#(word_944F10 - 0x944F08)]
39E334:  POP.W           {R8,R9,R11}
39E338:  POP             {R4-R7,PC}
