; =========================================================
; Game Engine Function: _ZN12CMenuManager15ResetHelperTextEv
; Address            : 0x435FA6 - 0x435FBA
; =========================================================

435FA6:  MOVW            R1, #0x1AB0
435FAA:  MOV.W           R2, #0x12C
435FAE:  STR             R2, [R0,R1]
435FB0:  MOVW            R1, #0x1ADC
435FB4:  MOVS            R2, #0
435FB6:  STR             R2, [R0,R1]
435FB8:  BX              LR
