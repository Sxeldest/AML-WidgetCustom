; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager21IsAmbienceTrackActiveEv
; Address            : 0x39182A - 0x391836
; =========================================================

39182A:  LDR             R1, [R0,#8]
39182C:  MOVS            R0, #0
39182E:  CMP             R1, #8
391830:  IT NE
391832:  MOVNE           R0, #1
391834:  BX              LR
