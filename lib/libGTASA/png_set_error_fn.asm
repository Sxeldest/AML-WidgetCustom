; =========================================================
; Game Engine Function: png_set_error_fn
; Address            : 0x1F300A - 0x1F3018
; =========================================================

1F300A:  CMP             R0, #0
1F300C:  ITT NE
1F300E:  STRDNE.W        R2, R3, [R0,#0x10C]
1F3012:  STRNE.W         R1, [R0,#0x114]
1F3016:  BX              LR
