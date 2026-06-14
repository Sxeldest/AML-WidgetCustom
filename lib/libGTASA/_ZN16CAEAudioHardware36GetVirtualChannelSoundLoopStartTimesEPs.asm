; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware36GetVirtualChannelSoundLoopStartTimesEPs
; Address            : 0x392CB8 - 0x392CC8
; =========================================================

392CB8:  ADD.W           R2, R0, #0x6C0
392CBC:  MOV             R0, R1; void *
392CBE:  MOV             R1, R2; void *
392CC0:  MOV.W           R2, #0x258; size_t
392CC4:  B.W             j_memcpy_1
