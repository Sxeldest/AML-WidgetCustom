; =========================================================
; Game Engine Function: _ZN12FxInfoSize_c4LoadEji
; Address            : 0x36B498 - 0x36B4A6
; =========================================================

36B498:  CMP             R2, #0x68 ; 'h'
36B49A:  ITT LE
36B49C:  MOVLE           R2, #2
36B49E:  STRBLE          R2, [R0,#0xE]
36B4A0:  ADDS            R0, #8; this
36B4A2:  B.W             sub_198CC4
