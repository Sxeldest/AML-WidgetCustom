; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread11WaitForExitEv
; Address            : 0x3A7314 - 0x3A7320
; =========================================================

3A7314:  LDR             R0, [R0]; void *
3A7316:  CMP             R0, #0
3A7318:  IT NE
3A731A:  BNE.W           sub_196824
3A731E:  BX              LR
