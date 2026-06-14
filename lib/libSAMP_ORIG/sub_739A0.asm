; =========================================================
; Game Engine Function: sub_739A0
; Address            : 0x739A0 - 0x739B2
; =========================================================

739A0:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_1 - 0x739AA); type descriptor name
739A2:  LDR             R3, [R1,#4]
739A4:  MOVS            R1, #0
739A6:  ADD             R2, PC; type descriptor name
739A8:  CMP             R3, R2
739AA:  IT EQ
739AC:  ADDEQ           R1, R0, #4
739AE:  MOV             R0, R1
739B0:  BX              LR
