; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntityC2Ev
; Address            : 0x39A1D4 - 0x39A21C
; =========================================================

39A1D4:  LDR             R1, =(_ZTV23CAEPedSpeechAudioEntity_ptr - 0x39A1E2); Alternative name is 'CAEPedSpeechAudioEntity::CAEPedSpeechAudioEntity(void)'
39A1D6:  MOVS            R3, #0
39A1D8:  MOVS            R2, #0
39A1DA:  MOVT            R3, #0xC2C8
39A1DE:  ADD             R1, PC; _ZTV23CAEPedSpeechAudioEntity_ptr
39A1E0:  STR             R2, [R0,#4]
39A1E2:  STR.W           R2, [R0,#0xA0]
39A1E6:  LDR             R1, [R1]; `vtable for'CAEPedSpeechAudioEntity ...
39A1E8:  STR.W           R3, [R0,#0xAC]
39A1EC:  STR             R2, [R0,#0x10]
39A1EE:  ADDS            R1, #8
39A1F0:  STRB.W          R2, [R0,#0x90]
39A1F4:  STRH.W          R2, [R0,#0x92]
39A1F8:  STRB.W          R2, [R0,#0x98]
39A1FC:  STRB.W          R2, [R0,#0x99]
39A200:  STRB.W          R2, [R0,#0x9A]
39A204:  MOVW            R2, #0xFFFF
39A208:  STRH.W          R2, [R0,#0xA4]
39A20C:  STRH.W          R2, [R0,#0xA6]
39A210:  STRH.W          R2, [R0,#0xA8]
39A214:  STRH.W          R2, [R0,#0xB0]
39A218:  STR             R1, [R0]
39A21A:  BX              LR
