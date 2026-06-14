; =========================================================
; Game Engine Function: png_get_current_row_number
; Address            : 0x2038A0 - 0x2038AE
; =========================================================

2038A0:  CMP             R0, #0
2038A2:  ITE NE
2038A4:  LDRNE.W         R0, [R0,#0x1D8]
2038A8:  MOVEQ.W         R0, #0xFFFFFFFF
2038AC:  BX              LR
