; =========================================================
; Game Engine Function: _ZN10CommonSize4InitEi
; Address            : 0x5D22D4 - 0x5D22E6
; =========================================================

5D22D4:  ADD.W           R2, R0, #0x18
5D22D8:  STR             R2, [R0,#0x10]
5D22DA:  MOVS            R2, #0
5D22DC:  ADD.W           R3, R0, #0x2C ; ','
5D22E0:  STM             R3!, {R0-R2}
5D22E2:  STR             R2, [R0,#0x38]
5D22E4:  BX              LR
