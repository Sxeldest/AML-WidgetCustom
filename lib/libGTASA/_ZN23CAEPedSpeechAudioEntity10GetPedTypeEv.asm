; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity10GetPedTypeEv
; Address            : 0x39D36A - 0x39D37E
; =========================================================

39D36A:  LDRB.W          R1, [R0,#0x90]
39D36E:  CMP             R1, #0
39D370:  ITE NE
39D372:  LDRHNE.W        R0, [R0,#0x92]
39D376:  MOVWEQ          R0, #0xFFFF
39D37A:  SXTH            R0, R0
39D37C:  BX              LR
