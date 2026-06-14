; =========================================================
; Game Engine Function: RpSkinIsSplit
; Address            : 0x1C9C80 - 0x1C9C8A
; =========================================================

1C9C80:  LDR             R0, [R0,#0x24]
1C9C82:  CMP             R0, #0
1C9C84:  IT NE
1C9C86:  MOVNE           R0, #1
1C9C88:  BX              LR
