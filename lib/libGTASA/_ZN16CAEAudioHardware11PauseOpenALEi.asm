; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware11PauseOpenALEi
; Address            : 0x3925C6 - 0x3925D4
; =========================================================

3925C6:  LDR.W           R0, [R0,#0xB80]
3925CA:  CMP             R0, #0
3925CC:  IT NE
3925CE:  BNE.W           sub_19C764
3925D2:  BX              LR
