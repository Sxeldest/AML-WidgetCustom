; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity31DisablePedSpeechForScriptSpeechEs
; Address            : 0x39D100 - 0x39D116
; =========================================================

39D100:  LDRB.W          R2, [R0,#0x90]
39D104:  CMP             R2, #0
39D106:  ITTTT NE
39D108:  MOVNE           R2, #1
39D10A:  STRBNE.W        R2, [R0,#0x9A]
39D10E:  CMPNE           R1, #0
39D110:  BNE.W           _ZN23CAEPedSpeechAudioEntity17StopCurrentSpeechEv; CAEPedSpeechAudioEntity::StopCurrentSpeech(void)
39D114:  BX              LR
