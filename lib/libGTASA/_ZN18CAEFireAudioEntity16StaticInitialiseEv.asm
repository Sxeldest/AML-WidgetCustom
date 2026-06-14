; =========================================================
; Game Engine Function: _ZN18CAEFireAudioEntity16StaticInitialiseEv
; Address            : 0x46D810 - 0x46D81E
; =========================================================

46D810:  LDR             R0, =(AEAudioHardware_ptr - 0x46D81A)
46D812:  MOVS            R1, #0x34 ; '4'; unsigned __int16
46D814:  MOVS            R2, #4; __int16
46D816:  ADD             R0, PC; AEAudioHardware_ptr
46D818:  LDR             R0, [R0]; AEAudioHardware ; this
46D81A:  B.W             sub_18B078
