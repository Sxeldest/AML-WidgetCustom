; =========================================================
; Game Engine Function: _ZNK9CAccident6IsFreeEv
; Address            : 0x3BEE3C - 0x3BEE5E
; =========================================================

3BEE3C:  LDR             R1, [R0]
3BEE3E:  CBZ             R1, loc_3BEE44
3BEE40:  LDRB            R2, [R0,#4]
3BEE42:  CBZ             R2, loc_3BEE48
3BEE44:  MOVS            R0, #0
3BEE46:  BX              LR
3BEE48:  LDRB            R2, [R0,#5]
3BEE4A:  MOVS            R0, #0
3BEE4C:  CMP             R2, #0
3BEE4E:  IT NE
3BEE50:  BXNE            LR
3BEE52:  LDRB.W          R1, [R1,#0x45]
3BEE56:  LSLS            R1, R1, #0x1F
3BEE58:  IT EQ
3BEE5A:  MOVEQ           R0, #1
3BEE5C:  BX              LR
