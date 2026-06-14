; =========================================================
; Game Engine Function: _ZN12CAudioEngine20SetMusicMasterVolumeEa
; Address            : 0x3BD1C8 - 0x3BD1E6
; =========================================================

3BD1C8:  VMOV            S0, R1
3BD1CC:  VLDR            S2, =0.015625
3BD1D0:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD1DA)
3BD1D2:  VCVT.F32.S32    S0, S0
3BD1D6:  ADD             R0, PC; AEAudioHardware_ptr
3BD1D8:  LDR             R0, [R0]; AEAudioHardware ; this
3BD1DA:  VMUL.F32        S0, S0, S2
3BD1DE:  VMOV            R1, S0; float
3BD1E2:  B.W             sub_18A790
