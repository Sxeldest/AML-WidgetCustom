; =========================================================
; Game Engine Function: _ZN6CMBlurC2Ev
; Address            : 0x2CF348 - 0x2CF354
; =========================================================

2CF348:  LDR             R1, =(_ZN6CMBlur12pFrontBufferE_ptr - 0x2CF350)
2CF34A:  MOVS            R2, #0
2CF34C:  ADD             R1, PC; _ZN6CMBlur12pFrontBufferE_ptr
2CF34E:  LDR             R1, [R1]; CMBlur::pFrontBuffer ...
2CF350:  STR             R2, [R1]; CMBlur::pFrontBuffer
2CF352:  BX              LR
