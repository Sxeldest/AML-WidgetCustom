; =========================================================
; Game Engine Function: png_set_write_user_transform_fn
; Address            : 0x204802 - 0x204818
; =========================================================

204802:  CMP             R0, #0
204804:  ITTTT NE
204806:  LDRNE.W         R2, [R0,#0x13C]
20480A:  STRNE.W         R1, [R0,#0x128]
20480E:  ORRNE.W         R1, R2, #0x100000
204812:  STRNE.W         R1, [R0,#0x13C]
204816:  BX              LR
