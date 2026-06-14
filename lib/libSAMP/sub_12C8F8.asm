; =========================================================
; Game Engine Function: sub_12C8F8
; Address            : 0x12C8F8 - 0x12C90A
; =========================================================

12C8F8:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_3 - 0x12C902); type descriptor name
12C8FA:  LDR             R3, [R1,#4]
12C8FC:  MOVS            R1, #0
12C8FE:  ADD             R2, PC; type descriptor name
12C900:  CMP             R3, R2
12C902:  IT EQ
12C904:  ADDEQ           R1, R0, #4
12C906:  MOV             R0, R1
12C908:  BX              LR
