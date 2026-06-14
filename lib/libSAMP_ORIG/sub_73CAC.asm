; =========================================================
; Game Engine Function: sub_73CAC
; Address            : 0x73CAC - 0x73CBE
; =========================================================

73CAC:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_6 - 0x73CB6); type descriptor name
73CAE:  LDR             R3, [R1,#4]
73CB0:  MOVS            R1, #0
73CB2:  ADD             R2, PC; type descriptor name
73CB4:  CMP             R3, R2
73CB6:  IT EQ
73CB8:  ADDEQ           R1, R0, #4
73CBA:  MOV             R0, R1
73CBC:  BX              LR
