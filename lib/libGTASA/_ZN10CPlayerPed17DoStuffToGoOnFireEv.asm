; =========================================================
; Game Engine Function: _ZN10CPlayerPed17DoStuffToGoOnFireEv
; Address            : 0x4C998C - 0x4C99A0
; =========================================================

4C998C:  LDR.W           R0, [R0,#0x44C]
4C9990:  CMP             R0, #0xC
4C9992:  IT NE
4C9994:  BXNE            LR
4C9996:  LDR             R0, =(TheCamera_ptr - 0x4C999C)
4C9998:  ADD             R0, PC; TheCamera_ptr
4C999A:  LDR             R0, [R0]; TheCamera ; this
4C999C:  B.W             sub_1966C8
