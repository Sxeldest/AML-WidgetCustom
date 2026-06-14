; =========================================================
; Game Engine Function: sub_12C7D8
; Address            : 0x12C7D8 - 0x12C7EA
; =========================================================

12C7D8:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_1 - 0x12C7E2); type descriptor name
12C7DA:  LDR             R3, [R1,#4]
12C7DC:  MOVS            R1, #0
12C7DE:  ADD             R2, PC; type descriptor name
12C7E0:  CMP             R3, R2
12C7E2:  IT EQ
12C7E4:  ADDEQ           R1, R0, #4
12C7E6:  MOV             R0, R1
12C7E8:  BX              LR
