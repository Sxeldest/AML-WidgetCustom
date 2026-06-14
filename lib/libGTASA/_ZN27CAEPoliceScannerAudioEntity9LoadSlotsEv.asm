; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity9LoadSlotsEv
; Address            : 0x39F1C0 - 0x39F2D4
; =========================================================

39F1C0:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F1C6)
39F1C2:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F1C4:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F1C6:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39F1C8:  CMP             R0, #0
39F1CA:  BEQ.W           locret_39F2D2
39F1CE:  PUSH            {R4-R7,LR}
39F1D0:  ADD             R7, SP, #0x14+var_8
39F1D2:  PUSH.W          {R8-R11}
39F1D6:  SUB             SP, SP, #0x14
39F1D8:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F1E8)
39F1DA:  MOVS            R5, #0
39F1DC:  MOV.W           R9, #2
39F1E0:  MOV.W           R10, #1
39F1E4:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F1E6:  LDR             R6, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F1E8:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F1EE)
39F1EA:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F1EC:  LDR.W           R11, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F1F0:  LDR             R0, =(AEAudioHardware_ptr - 0x39F1F6)
39F1F2:  ADD             R0, PC; AEAudioHardware_ptr
39F1F4:  LDR             R4, [R0]; AEAudioHardware
39F1F6:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F1FC)
39F1F8:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F1FA:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F1FC:  STR             R0, [SP,#0x38+var_2C]
39F1FE:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F204)
39F200:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F202:  LDR.W           R8, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F206:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F20C)
39F208:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F20A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F20C:  STR             R0, [SP,#0x38+var_30]
39F20E:  LDR             R0, =(AEAudioHardware_ptr - 0x39F214)
39F210:  ADD             R0, PC; AEAudioHardware_ptr
39F212:  LDR             R0, [R0]; AEAudioHardware
39F214:  STR             R0, [SP,#0x38+var_34]
39F216:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F21C)
39F218:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F21A:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F21C:  STR             R0, [SP,#0x38+var_38]
39F21E:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F224)
39F220:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F222:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F224:  STR             R0, [SP,#0x38+var_28]
39F226:  LDRSH.W         R0, [R6,R5,LSL#1]
39F22A:  CMP             R0, #2
39F22C:  BEQ             loc_39F276
39F22E:  CBNZ            R0, loc_39F2AA
39F230:  LDR.W           R0, [R8]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39F234:  ADD.W           R1, R0, R9
39F238:  LDRSH.W         R1, [R1,#-2]
39F23C:  CMP             R1, #0
39F23E:  BLT             loc_39F29C
39F240:  LDRSH.W         R0, [R0,R9]; this
39F244:  MOV.W           R1, #0xFFFFFFFF
39F248:  CMP             R0, R1
39F24A:  BLE             loc_39F29C
39F24C:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
39F250:  CBNZ            R0, loc_39F2A6
39F252:  LDR             R0, [SP,#0x38+var_30]
39F254:  LDR             R0, [R0]
39F256:  LDRH.W          R2, [R0,R9]; unsigned __int16
39F25A:  ADD             R0, R9
39F25C:  LDRH.W          R1, [R0,#-2]; unsigned __int16
39F260:  ADD.W           R0, R5, #0x21 ; '!'
39F264:  SXTH            R3, R0; __int16
39F266:  LDR             R0, [SP,#0x38+var_34]; this
39F268:  BLX             j__ZN16CAEAudioHardware9LoadSoundEtts; CAEAudioHardware::LoadSound(ushort,ushort,short)
39F26C:  LDR             R1, [SP,#0x38+var_38]
39F26E:  MOVS            R0, #2
39F270:  MOV.W           R10, #0
39F274:  B               loc_39F2A0
39F276:  LDR.W           R0, [R11]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39F27A:  LDRH.W          R2, [R0,R9]; unsigned __int16
39F27E:  ADD             R0, R9
39F280:  LDRH.W          R1, [R0,#-2]; unsigned __int16
39F284:  ADD.W           R0, R5, #0x21 ; '!'
39F288:  SXTH            R3, R0; __int16
39F28A:  MOV             R0, R4; this
39F28C:  BLX             j__ZN16CAEAudioHardware13IsSoundLoadedEtts; CAEAudioHardware::IsSoundLoaded(ushort,ushort,short)
39F290:  CBZ             R0, loc_39F2A6
39F292:  LDR             R0, [SP,#0x38+var_2C]
39F294:  MOVS            R1, #3
39F296:  STRH.W          R1, [R0,R5,LSL#1]
39F29A:  B               loc_39F2AA
39F29C:  LDR             R1, [SP,#0x38+var_28]
39F29E:  MOVS            R0, #1
39F2A0:  STRH.W          R0, [R1,R5,LSL#1]
39F2A4:  B               loc_39F2AA
39F2A6:  MOV.W           R10, #0
39F2AA:  ADD.W           R9, R9, #4
39F2AE:  ADDS            R5, #1
39F2B0:  CMP.W           R9, #0x16
39F2B4:  BNE             loc_39F226
39F2B6:  MOVS.W          R0, R10,LSL#24
39F2BA:  ADD             SP, SP, #0x14
39F2BC:  POP.W           {R8-R11}
39F2C0:  POP.W           {R4-R7,LR}
39F2C4:  IT EQ
39F2C6:  BXEQ            LR
39F2C8:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x39F2D0)
39F2CA:  MOVS            R1, #4
39F2CC:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
39F2CE:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
39F2D0:  STRH            R1, [R0]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
39F2D2:  BX              LR
