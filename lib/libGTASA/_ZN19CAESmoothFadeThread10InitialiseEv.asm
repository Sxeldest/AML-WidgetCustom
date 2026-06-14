; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread10InitialiseEv
; Address            : 0x3A72E4 - 0x3A7304
; =========================================================

3A72E4:  MOVS            R1, #0
3A72E6:  MOVS            R2, #0
3A72E8:  ADDS            R3, R0, R2
3A72EA:  ADDS            R2, #0x20 ; ' '
3A72EC:  CMP.W           R2, #0x800
3A72F0:  STR             R1, [R3,#4]
3A72F2:  STR             R1, [R3,#0x1C]
3A72F4:  BNE             loc_3A72E8
3A72F6:  MOVS            R1, #1
3A72F8:  STRB.W          R1, [R0,#0x804]
3A72FC:  STRB.W          R1, [R0,#0x810]
3A7300:  MOVS            R0, #1
3A7302:  BX              LR
