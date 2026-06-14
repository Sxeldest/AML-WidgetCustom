; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity13GetPedTalkingEv
; Address            : 0x39D0CA - 0x39D0DA
; =========================================================

39D0CA:  LDRB.W          R1, [R0,#0x90]
39D0CE:  CMP             R1, #0
39D0D0:  ITE NE
39D0D2:  LDRBNE.W        R0, [R0,#0x98]
39D0D6:  MOVEQ           R0, #0
39D0D8:  BX              LR
