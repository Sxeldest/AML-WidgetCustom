; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity19DisableAllPedSpeechEv
; Address            : 0x39C9C8 - 0x39C9D4
; =========================================================

39C9C8:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr - 0x39C9D0)
39C9CA:  MOVS            R1, #1
39C9CC:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr
39C9CE:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled ...
39C9D0:  STRB            R1, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled
39C9D2:  BX              LR
