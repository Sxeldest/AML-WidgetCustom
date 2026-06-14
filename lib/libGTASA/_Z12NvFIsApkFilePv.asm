; =========================================================
; Game Engine Function: _Z12NvFIsApkFilePv
; Address            : 0x266AD2 - 0x266ADE
; =========================================================

266AD2:  LDR             R1, [R0]
266AD4:  MOVS            R0, #0
266AD6:  CMP             R1, #1
266AD8:  IT NE
266ADA:  MOVNE           R0, #1
266ADC:  BX              LR
