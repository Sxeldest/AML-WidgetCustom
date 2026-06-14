; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity19IsGlobalContextPainEs
; Address            : 0x39A7FC - 0x39A80C
; =========================================================

39A7FC:  SUB.W           R0, R1, #0x154
39A800:  UXTH            R1, R0
39A802:  MOVS            R0, #0
39A804:  CMP             R1, #0x13
39A806:  IT CC
39A808:  MOVCC           R0, #1
39A80A:  BX              LR
