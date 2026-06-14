; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity30EnablePedSpeechForScriptSpeechEv
; Address            : 0x39D116 - 0x39D126
; =========================================================

39D116:  LDRB.W          R1, [R0,#0x90]
39D11A:  CMP             R1, #0
39D11C:  ITT NE
39D11E:  MOVNE           R1, #0
39D120:  STRBNE.W        R1, [R0,#0x9A]
39D124:  BX              LR
