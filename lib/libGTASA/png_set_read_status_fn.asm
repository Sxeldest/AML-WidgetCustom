; =========================================================
; Game Engine Function: png_set_read_status_fn
; Address            : 0x1F63EC - 0x1F63F6
; =========================================================

1F63EC:  CMP             R0, #0
1F63EE:  IT NE
1F63F0:  STRNE.W         R1, [R0,#0x27C]
1F63F4:  BX              LR
