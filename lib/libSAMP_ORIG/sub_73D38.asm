; =========================================================
; Game Engine Function: sub_73D38
; Address            : 0x73D38 - 0x73D4A
; =========================================================

73D38:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_7 - 0x73D42); type descriptor name
73D3A:  LDR             R3, [R1,#4]
73D3C:  MOVS            R1, #0
73D3E:  ADD             R2, PC; type descriptor name
73D40:  CMP             R3, R2
73D42:  IT EQ
73D44:  ADDEQ           R1, R0, #4
73D46:  MOV             R0, R1
73D48:  BX              LR
