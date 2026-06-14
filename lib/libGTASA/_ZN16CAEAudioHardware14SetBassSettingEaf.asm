; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware14SetBassSettingEaf
; Address            : 0x39323C - 0x39324E
; =========================================================

39323C:  LDR.W           R3, [R0,#0xB88]
393240:  STR.W           R1, [R0,#0xB70]
393244:  STR.W           R2, [R0,#0xB74]
393248:  MOV             R0, R3; this
39324A:  B.W             sub_19092C
