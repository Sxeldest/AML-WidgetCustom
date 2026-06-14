; =========================================================
; Game Engine Function: sub_73DC4
; Address            : 0x73DC4 - 0x73DD6
; =========================================================

73DC4:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_8 - 0x73DCE); type descriptor name
73DC6:  LDR             R3, [R1,#4]
73DC8:  MOVS            R1, #0
73DCA:  ADD             R2, PC; type descriptor name
73DCC:  CMP             R3, R2
73DCE:  IT EQ
73DD0:  ADDEQ           R1, R0, #4
73DD2:  MOV             R0, R1
73DD4:  BX              LR
