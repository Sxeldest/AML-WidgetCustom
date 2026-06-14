; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity15EnablePedSpeechEv
; Address            : 0x39D0F0 - 0x39D100
; =========================================================

39D0F0:  LDRB.W          R1, [R0,#0x90]
39D0F4:  CMP             R1, #0
39D0F6:  ITT NE
39D0F8:  MOVNE           R1, #0
39D0FA:  STRBNE.W        R1, [R0,#0x99]
39D0FE:  BX              LR
