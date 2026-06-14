; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity38IsGlobalContextImportantForInteruptingEs
; Address            : 0x39A80C - 0x39A824
; =========================================================

39A80C:  SUB.W           R2, R1, #0x7D ; '}'
39A810:  MOVS            R0, #1
39A812:  CMP             R2, #3
39A814:  IT CC
39A816:  BXCC            LR
39A818:  CMP             R1, #0xD
39A81A:  BEQ             locret_39A822
39A81C:  CMP             R1, #0xF
39A81E:  IT NE
39A820:  MOVNE           R0, #0
39A822:  BX              LR
