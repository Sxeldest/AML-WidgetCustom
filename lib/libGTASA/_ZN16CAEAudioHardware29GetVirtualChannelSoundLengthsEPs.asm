; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware29GetVirtualChannelSoundLengthsEPs
; Address            : 0x392CA8 - 0x392CB8
; =========================================================

392CA8:  ADDW            R2, R0, #0x918
392CAC:  MOV             R0, R1; void *
392CAE:  MOV             R1, R2; void *
392CB0:  MOV.W           R2, #0x258; size_t
392CB4:  B.W             j_memcpy_1
