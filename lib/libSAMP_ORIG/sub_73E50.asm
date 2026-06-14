; =========================================================
; Game Engine Function: sub_73E50
; Address            : 0x73E50 - 0x73E62
; =========================================================

73E50:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_9 - 0x73E5A); type descriptor name
73E52:  LDR             R3, [R1,#4]
73E54:  MOVS            R1, #0
73E56:  ADD             R2, PC; type descriptor name
73E58:  CMP             R3, R2
73E5A:  IT EQ
73E5C:  ADDEQ           R1, R0, #4
73E5E:  MOV             R0, R1
73E60:  BX              LR
