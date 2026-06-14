; =========================================================
; Game Engine Function: sub_73EDC
; Address            : 0x73EDC - 0x73EEE
; =========================================================

73EDC:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE4$_10 - 0x73EE6); type descriptor name
73EDE:  LDR             R3, [R1,#4]
73EE0:  MOVS            R1, #0
73EE2:  ADD             R2, PC; type descriptor name
73EE4:  CMP             R3, R2
73EE6:  IT EQ
73EE8:  ADDEQ           R1, R0, #4
73EEA:  MOV             R0, R1
73EEC:  BX              LR
