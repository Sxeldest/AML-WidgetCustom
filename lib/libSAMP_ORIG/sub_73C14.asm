; =========================================================
; Game Engine Function: sub_73C14
; Address            : 0x73C14 - 0x73C26
; =========================================================

73C14:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_5 - 0x73C1E); type descriptor name
73C16:  LDR             R3, [R1,#4]
73C18:  MOVS            R1, #0
73C1A:  ADD             R2, PC; type descriptor name
73C1C:  CMP             R3, R2
73C1E:  IT EQ
73C20:  ADDEQ           R1, R0, #4
73C22:  MOV             R0, R1
73C24:  BX              LR
