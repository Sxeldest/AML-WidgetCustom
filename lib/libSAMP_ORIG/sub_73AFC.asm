; =========================================================
; Game Engine Function: sub_73AFC
; Address            : 0x73AFC - 0x73B0E
; =========================================================

73AFC:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_3 - 0x73B06); type descriptor name
73AFE:  LDR             R3, [R1,#4]
73B00:  MOVS            R1, #0
73B02:  ADD             R2, PC; type descriptor name
73B04:  CMP             R3, R2
73B06:  IT EQ
73B08:  ADDEQ           R1, R0, #4
73B0A:  MOV             R0, R1
73B0C:  BX              LR
