; =========================================================
; Game Engine Function: _Z29_rpSkinSplitDataStreamGetSizePK6RpSkin
; Address            : 0x1C7AAC - 0x1C7AC6
; =========================================================

1C7AAC:  LDR             R1, [R0,#0x24]
1C7AAE:  CMP             R1, #0
1C7AB0:  ITTTT NE
1C7AB2:  LDRNE           R2, [R0]
1C7AB4:  LDRNE           R0, [R0,#0x28]
1C7AB6:  ADDNE           R0, R1
1C7AB8:  ADDNE.W         R0, R2, R0,LSL#1
1C7ABC:  ITT NE
1C7ABE:  ADDNE           R0, #0xC
1C7AC0:  BXNE            LR
1C7AC2:  MOVS            R0, #0xC
1C7AC4:  BX              LR
