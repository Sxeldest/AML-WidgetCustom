; =========================================================
; Game Engine Function: RpSkinAtomicGetType
; Address            : 0x1C9CCA - 0x1C9CDA
; =========================================================

1C9CCA:  LDR             R0, [R0,#0x6C]
1C9CCC:  LDR             R1, [R0,#0x2C]
1C9CCE:  CMP.W           R1, #0x116
1C9CD2:  ITE EQ
1C9CD4:  LDREQ           R0, [R0,#0x30]
1C9CD6:  MOVNE           R0, #0
1C9CD8:  BX              LR
