; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity9PrepSlotsEv
; Address            : 0x39F3BC - 0x39F43A
; =========================================================

39F3BC:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x39F3C2)
39F3BE:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
39F3C0:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
39F3C2:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
39F3C4:  CMP             R0, #0
39F3C6:  IT EQ
39F3C8:  BXEQ            LR
39F3CA:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F3D4)
39F3CC:  LDRSH.W         R1, [R0]
39F3D0:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F3D2:  CMP             R1, #0
39F3D4:  ITTE GE
39F3D6:  LDRHGE          R1, [R0,#2]
39F3D8:  LSRGE           R1, R1, #0xF
39F3DA:  MOVLT           R1, #1
39F3DC:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F3DE:  STRH            R1, [R2]; CAEPoliceScannerAudioEntity::s_SlotState
39F3E0:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F3EA)
39F3E2:  LDRSH.W         R1, [R0,#4]
39F3E6:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F3E8:  CMP             R1, #0
39F3EA:  ITTE GE
39F3EC:  LDRHGE          R1, [R0,#6]
39F3EE:  LSRGE           R1, R1, #0xF
39F3F0:  MOVLT           R1, #1
39F3F2:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F3F4:  STRH            R1, [R2,#(word_944F0A - 0x944F08)]
39F3F6:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F400)
39F3F8:  LDRSH.W         R1, [R0,#8]
39F3FC:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F3FE:  CMP             R1, #0
39F400:  ITTE GE
39F402:  LDRHGE          R1, [R0,#0xA]
39F404:  LSRGE           R1, R1, #0xF
39F406:  MOVLT           R1, #1
39F408:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F40A:  STRH            R1, [R2,#(word_944F0C - 0x944F08)]
39F40C:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F416)
39F40E:  LDRSH.W         R1, [R0,#0xC]
39F412:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F414:  CMP             R1, #0
39F416:  ITTE GE
39F418:  LDRHGE          R1, [R0,#0xE]
39F41A:  LSRGE           R1, R1, #0xF
39F41C:  MOVLT           R1, #1
39F41E:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F420:  STRH            R1, [R2,#(word_944F0E - 0x944F08)]
39F422:  LDRSH.W         R1, [R0,#0x10]
39F426:  CMP             R1, #0
39F428:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr - 0x39F436)
39F42A:  ITTE GE
39F42C:  LDRHGE          R0, [R0,#0x12]
39F42E:  LSRGE           R0, R0, #0xF
39F430:  MOVLT           R0, #1
39F432:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity11s_SlotStateE_ptr
39F434:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_SlotState ...
39F436:  STRH            R0, [R1,#(word_944F10 - 0x944F08)]
39F438:  BX              LR
