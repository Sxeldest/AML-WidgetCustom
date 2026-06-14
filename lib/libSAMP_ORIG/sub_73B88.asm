; =========================================================
; Game Engine Function: sub_73B88
; Address            : 0x73B88 - 0x73B9A
; =========================================================

73B88:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_4 - 0x73B92); type descriptor name
73B8A:  LDR             R3, [R1,#4]
73B8C:  MOVS            R1, #0
73B8E:  ADD             R2, PC; type descriptor name
73B90:  CMP             R3, R2
73B92:  IT EQ
73B94:  ADDEQ           R1, R0, #4
73B96:  MOV             R0, R1
73B98:  BX              LR
