; =========================================================
; Game Engine Function: sub_73F9C
; Address            : 0x73F9C - 0x73FAE
; =========================================================

73F9C:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE4$_11 - 0x73FA6); type descriptor name
73F9E:  LDR             R3, [R1,#4]
73FA0:  MOVS            R1, #0
73FA2:  ADD             R2, PC; type descriptor name
73FA4:  CMP             R3, R2
73FA6:  IT EQ
73FA8:  ADDEQ           R1, R0, #4
73FAA:  MOV             R0, R1
73FAC:  BX              LR
