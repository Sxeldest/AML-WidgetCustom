; =========================================================
; Game Engine Function: sub_1546DC
; Address            : 0x1546DC - 0x1546EC
; =========================================================

1546DC:  LDRB            R2, [R0,#0xC]
1546DE:  LDR             R1, [R0,#0x14]
1546E0:  LSLS            R2, R2, #0x1F
1546E2:  IT EQ
1546E4:  ADDEQ.W         R1, R0, #0xD
1546E8:  MOV             R0, R1
1546EA:  BX              LR
