; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity16DisablePedSpeechEs
; Address            : 0x39D0DA - 0x39D0F0
; =========================================================

39D0DA:  LDRB.W          R2, [R0,#0x90]
39D0DE:  CMP             R2, #0
39D0E0:  ITTTT NE
39D0E2:  MOVNE           R2, #1
39D0E4:  STRBNE.W        R2, [R0,#0x99]
39D0E8:  CMPNE           R1, #0
39D0EA:  BNE.W           _ZN23CAEPedSpeechAudioEntity17StopCurrentSpeechEv; CAEPedSpeechAudioEntity::StopCurrentSpeech(void)
39D0EE:  BX              LR
