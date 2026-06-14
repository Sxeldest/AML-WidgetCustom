; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy16GetSequenceBlockEv
; Address            : 0x38A4E2 - 0x38A4F0
; =========================================================

38A4E2:  LDR             R0, [R0,#4]
38A4E4:  LDRB            R1, [R0,#4]
38A4E6:  LSLS            R1, R1, #0x1C
38A4E8:  ITE MI
38A4EA:  LDRMI           R0, [R0,#8]
38A4EC:  MOVPL           R0, #0
38A4EE:  BX              LR
