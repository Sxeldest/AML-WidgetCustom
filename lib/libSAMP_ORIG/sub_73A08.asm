; =========================================================
; Game Engine Function: sub_73A08
; Address            : 0x73A08 - 0x73A1A
; =========================================================

73A08:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_2 - 0x73A12); type descriptor name
73A0A:  LDR             R3, [R1,#4]
73A0C:  MOVS            R1, #0
73A0E:  ADD             R2, PC; type descriptor name
73A10:  CMP             R3, R2
73A12:  IT EQ
73A14:  ADDEQ           R1, R0, #4
73A16:  MOV             R0, R1
73A18:  BX              LR
