; =========================================================
; Game Engine Function: sub_157E92
; Address            : 0x157E92 - 0x157EA4
; =========================================================

157E92:  MOV             R1, R0
157E94:  LDRB            R0, [R0,#0x10]
157E96:  CBZ             R0, loc_157E9C
157E98:  MOVS            R2, #0
157E9A:  STRB            R2, [R1,#0x10]
157E9C:  CMP             R0, #0
157E9E:  IT NE
157EA0:  MOVNE           R0, #1
157EA2:  BX              LR
