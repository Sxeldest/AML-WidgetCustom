; =========================================================
; Game Engine Function: _Z20RwImageStreamGetSizePK7RwImage
; Address            : 0x1DA11C - 0x1DA138
; =========================================================

1DA11C:  LDRD.W          R12, R2, [R0,#8]
1DA120:  MOVS            R1, #4
1DA122:  LDR             R0, [R0,#0x10]
1DA124:  LSLS            R1, R2
1DA126:  CMP             R2, #9
1DA128:  MUL.W           R3, R0, R12
1DA12C:  IT LT
1DA12E:  MLALT.W         R3, R0, R12, R1
1DA132:  ADD.W           R0, R3, #0x1C
1DA136:  BX              LR
