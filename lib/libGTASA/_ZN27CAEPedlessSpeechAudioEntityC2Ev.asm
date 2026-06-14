; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntityC2Ev
; Address            : 0x39D73C - 0x39D784
; =========================================================

39D73C:  LDR             R1, =(_ZTV27CAEPedlessSpeechAudioEntity_ptr - 0x39D74A); Alternative name is 'CAEPedlessSpeechAudioEntity::CAEPedlessSpeechAudioEntity(void)'
39D73E:  MOVS            R3, #0
39D740:  MOVS            R2, #0
39D742:  MOVT            R3, #0xC2C8
39D746:  ADD             R1, PC; _ZTV27CAEPedlessSpeechAudioEntity_ptr
39D748:  STR             R2, [R0,#4]
39D74A:  STR.W           R2, [R0,#0xA0]
39D74E:  LDR             R1, [R1]; `vtable for'CAEPedlessSpeechAudioEntity ...
39D750:  STR.W           R3, [R0,#0xAC]
39D754:  STR             R2, [R0,#0x10]
39D756:  ADDS            R1, #8
39D758:  STRH.W          R2, [R0,#0x92]
39D75C:  STRB.W          R2, [R0,#0x90]
39D760:  STRB.W          R2, [R0,#0x98]
39D764:  STRB.W          R2, [R0,#0x99]
39D768:  STRB.W          R2, [R0,#0x9A]
39D76C:  MOVW            R2, #0xFFFF
39D770:  STRH.W          R2, [R0,#0xA4]
39D774:  STRH.W          R2, [R0,#0xA6]
39D778:  STRH.W          R2, [R0,#0xA8]
39D77C:  STRH.W          R2, [R0,#0xB0]
39D780:  STR             R1, [R0]
39D782:  BX              LR
