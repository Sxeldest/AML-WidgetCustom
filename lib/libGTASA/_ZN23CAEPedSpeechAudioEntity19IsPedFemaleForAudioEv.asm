; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv
; Address            : 0x39D37E - 0x39D390
; =========================================================

39D37E:  LDRB.W          R1, [R0,#0x90]
39D382:  CMP             R1, #0
39D384:  ITE NE
39D386:  LDRBNE.W        R0, [R0,#0x96]
39D38A:  MOVEQ           R0, #0
39D38C:  UXTB            R0, R0
39D38E:  BX              LR
