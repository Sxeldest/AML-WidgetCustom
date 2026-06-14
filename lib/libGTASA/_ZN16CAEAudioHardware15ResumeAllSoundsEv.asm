; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware15ResumeAllSoundsEv
; Address            : 0x393304 - 0x393310
; =========================================================

393304:  LDRB            R1, [R0]
393306:  CMP             R1, #0
393308:  IT NE
39330A:  BNE.W           _ZN16CAEAudioHardware21RescaleChannelVolumesEv; CAEAudioHardware::RescaleChannelVolumes(void)
39330E:  BX              LR
