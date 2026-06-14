; =========================================================
; Game Engine Function: _ZN14CLoadingScreen15SetChunksToLoadEib
; Address            : 0x43B2CC - 0x43B2DC
; =========================================================

43B2CC:  LDR             R2, =(_ZN14CLoadingScreen15m_nChunksToLoadE_ptr - 0x43B2D8)
43B2CE:  CMP             R1, #0
43B2D0:  IT NE
43B2D2:  ADDNE           R0, #0x8C
43B2D4:  ADD             R2, PC; _ZN14CLoadingScreen15m_nChunksToLoadE_ptr
43B2D6:  LDR             R2, [R2]; CLoadingScreen::m_nChunksToLoad ...
43B2D8:  STR             R0, [R2]; CLoadingScreen::m_nChunksToLoad
43B2DA:  BX              LR
