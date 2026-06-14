; =========================================================
; Game Engine Function: _ZNK11CAutomobile18IsComponentPresentEi
; Address            : 0x550772 - 0x550782
; =========================================================

550772:  ADD.W           R0, R0, R1,LSL#2
550776:  LDR.W           R0, [R0,#0x65C]
55077A:  CMP             R0, #0
55077C:  IT NE
55077E:  MOVNE           R0, #1
550780:  BX              LR
