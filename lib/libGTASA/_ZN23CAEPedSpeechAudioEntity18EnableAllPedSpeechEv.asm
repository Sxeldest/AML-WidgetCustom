; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity18EnableAllPedSpeechEv
; Address            : 0x39C9D8 - 0x39C9E4
; =========================================================

39C9D8:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr - 0x39C9E0)
39C9DA:  MOVS            R1, #0
39C9DC:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr
39C9DE:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled ...
39C9E0:  STRB            R1, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled
39C9E2:  BX              LR
