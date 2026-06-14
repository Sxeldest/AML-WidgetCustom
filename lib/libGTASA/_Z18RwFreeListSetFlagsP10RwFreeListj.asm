; =========================================================
; Game Engine Function: _Z18RwFreeListSetFlagsP10RwFreeListj
; Address            : 0x1E4774 - 0x1E4780
; =========================================================

1E4774:  LDR             R2, [R0,#0x18]
1E4776:  BIC.W           R1, R1, #1
1E477A:  ORRS            R1, R2
1E477C:  STR             R1, [R0,#0x18]
1E477E:  BX              LR
