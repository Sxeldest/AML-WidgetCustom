; =========================================================
; Game Engine Function: sub_1F2D04
; Address            : 0x1F2D04 - 0x1F2D14
; =========================================================

1F2D04:  LDR             R1, [R0,#0x10]
1F2D06:  LDRB            R2, [R1,#0x18]
1F2D08:  LDR             R0, [R1,#0x20]
1F2D0A:  LSLS            R2, R2, #0x1F
1F2D0C:  IT EQ
1F2D0E:  ADDEQ.W         R0, R1, #0x19
1F2D12:  BX              LR
