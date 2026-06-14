; =========================================================
; Game Engine Function: _ZN21CAEWeatherAudioEntity16StaticInitialiseEv
; Address            : 0x46D7E8 - 0x46D7F6
; =========================================================

46D7E8:  LDR             R0, =(AEAudioHardware_ptr - 0x46D7F2)
46D7EA:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
46D7EC:  MOVS            R2, #6; __int16
46D7EE:  ADD             R0, PC; AEAudioHardware_ptr
46D7F0:  LDR             R0, [R0]; AEAudioHardware ; this
46D7F2:  B.W             sub_18B078
