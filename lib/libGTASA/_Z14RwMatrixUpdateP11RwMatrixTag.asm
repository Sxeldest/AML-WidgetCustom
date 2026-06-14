; =========================================================
; Game Engine Function: _Z14RwMatrixUpdateP11RwMatrixTag
; Address            : 0x1E3454 - 0x1E3464
; =========================================================

1E3454:  LDR             R1, [R0,#0xC]
1E3456:  MOV             R2, #0xFFFDFFFC
1E345E:  ANDS            R1, R2
1E3460:  STR             R1, [R0,#0xC]
1E3462:  BX              LR
