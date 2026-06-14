; =========================================================
; Game Engine Function: sub_129D34
; Address            : 0x129D34 - 0x129D46
; =========================================================

129D34:  LDR             R2, =(_ZTSZN19extend_render_poolsC1EvE3$_0 - 0x129D3E); type descriptor name
129D36:  LDR             R3, [R1,#4]
129D38:  MOVS            R1, #0
129D3A:  ADD             R2, PC; type descriptor name
129D3C:  CMP             R3, R2
129D3E:  IT EQ
129D40:  ADDEQ           R1, R0, #4
129D42:  MOV             R0, R1
129D44:  BX              LR
