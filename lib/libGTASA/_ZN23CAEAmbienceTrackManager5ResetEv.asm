; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager5ResetEv
; Address            : 0x391804 - 0x391818
; =========================================================

391804:  MOV.W           R1, #0xFFFFFFFF
391808:  MOVS            R2, #0
39180A:  STRD.W          R1, R1, [R0,#0xC]
39180E:  MOV.W           R1, #0xFF000000
391812:  STR             R2, [R0,#0x14]
391814:  STR             R1, [R0]
391816:  BX              LR
