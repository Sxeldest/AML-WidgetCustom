; =========================================================
; Game Engine Function: _Z24GetCurrentAtomicObjectCBP8RwObjectPv
; Address            : 0x54E250 - 0x54E25A
; =========================================================

54E250:  LDRB            R2, [R0,#2]
54E252:  LSLS            R2, R2, #0x1D
54E254:  IT MI
54E256:  STRMI           R0, [R1]
54E258:  BX              LR
