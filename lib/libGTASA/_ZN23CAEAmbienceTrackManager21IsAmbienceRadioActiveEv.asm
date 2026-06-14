; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager21IsAmbienceRadioActiveEv
; Address            : 0x39185C - 0x391866
; =========================================================

39185C:  LDRB            R0, [R0,#3]
39185E:  MOVS            R1, #1
391860:  EOR.W           R0, R1, R0,LSR#7
391864:  BX              LR
