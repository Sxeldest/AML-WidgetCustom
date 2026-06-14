; =========================================================
; Game Engine Function: sub_78CF8
; Address            : 0x78CF8 - 0x78D0A
; =========================================================

78CF8:  LDR             R2, =(_ZTSZN14selectorLayoutC1EvE3$_3 - 0x78D02); type descriptor name
78CFA:  LDR             R3, [R1,#4]
78CFC:  MOVS            R1, #0
78CFE:  ADD             R2, PC; type descriptor name
78D00:  CMP             R3, R2
78D02:  IT EQ
78D04:  ADDEQ           R1, R0, #4
78D06:  MOV             R0, R1
78D08:  BX              LR
