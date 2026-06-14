; =========================================================
; Game Engine Function: png_permit_mng_features
; Address            : 0x202D30 - 0x202D42
; =========================================================

202D30:  MOV             R2, R0
202D32:  CMP             R2, #0
202D34:  ITEE EQ
202D36:  MOVEQ           R0, #0
202D38:  ANDNE.W         R0, R1, #5
202D3C:  STRNE.W         R0, [R2,#0x30C]
202D40:  BX              LR
