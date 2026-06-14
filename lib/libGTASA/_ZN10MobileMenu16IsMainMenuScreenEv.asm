; =========================================================
; Game Engine Function: _ZN10MobileMenu16IsMainMenuScreenEv
; Address            : 0x29ADEC - 0x29ADF6
; =========================================================

29ADEC:  LDR             R0, [R0,#0x24]
29ADEE:  CMP             R0, #1
29ADF0:  IT NE
29ADF2:  MOVNE           R0, #0
29ADF4:  BX              LR
