; =========================================================
; Game Engine Function: _ZN12CAudioEngine15ResumeAllSoundsEv
; Address            : 0x3BD958 - 0x3BD962
; =========================================================

3BD958:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD95E)
3BD95A:  ADD             R0, PC; AEAudioHardware_ptr
3BD95C:  LDR             R0, [R0]; AEAudioHardware ; this
3BD95E:  B.W             j_j__ZN16CAEAudioHardware15ResumeAllSoundsEv; j_CAEAudioHardware::ResumeAllSounds(void)
