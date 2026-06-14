; =========================================================
; Game Engine Function: _Z16_rwSListGetArrayP7RwSList
; Address            : 0x1E2BBE - 0x1E2BCA
; =========================================================

1E2BBE:  LDR             R1, [R0,#4]
1E2BC0:  CMP             R1, #0
1E2BC2:  ITE NE
1E2BC4:  LDRNE           R0, [R0]
1E2BC6:  MOVEQ           R0, #0
1E2BC8:  BX              LR
