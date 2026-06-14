; =========================================================
; Game Engine Function: sub_E82F0
; Address            : 0xE82F0 - 0xE8302
; =========================================================

E82F0:  LDR             R1, [R0,#4]
E82F2:  LDRB            R0, [R0]
E82F4:  LSLS            R2, R0, #0x1F
E82F6:  IT EQ
E82F8:  LSREQ           R1, R0, #1
E82FA:  CLZ.W           R0, R1
E82FE:  LSRS            R0, R0, #5
E8300:  BX              LR
