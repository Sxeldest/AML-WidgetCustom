; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity10InitialiseEv
; Address            : 0x46D888 - 0x46D8D6
; =========================================================

46D888:  MOVS            R3, #0
46D88A:  MOV.W           R1, #0xFFFFFFFF
46D88E:  MOVT            R3, #0xC47A
46D892:  MOVS            R2, #0
46D894:  STRD.W          R3, R3, [R0,#0x90]
46D898:  STRD.W          R3, R2, [R0,#0x98]
46D89C:  STRD.W          R2, R1, [R0,#0xA0]
46D8A0:  STRD.W          R1, R1, [R0,#0xA8]
46D8A4:  STRD.W          R3, R3, [R0,#0xB0]
46D8A8:  STRD.W          R3, R2, [R0,#0xB8]
46D8AC:  STRD.W          R2, R1, [R0,#0xC0]
46D8B0:  STRD.W          R1, R1, [R0,#0xC8]
46D8B4:  STRD.W          R3, R3, [R0,#0xD0]
46D8B8:  STRD.W          R3, R2, [R0,#0xD8]
46D8BC:  STRD.W          R2, R1, [R0,#0xE0]
46D8C0:  STRD.W          R1, R1, [R0,#0xE8]
46D8C4:  STRD.W          R3, R3, [R0,#0xF0]
46D8C8:  STRD.W          R3, R2, [R0,#0xF8]
46D8CC:  STRD.W          R2, R1, [R0,#0x100]
46D8D0:  STRD.W          R1, R1, [R0,#0x108]
46D8D4:  BX              LR
