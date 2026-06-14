; =========================================================
; Game Engine Function: sub_78EBC
; Address            : 0x78EBC - 0x78ECE
; =========================================================

78EBC:  LDR             R2, =(_ZTSZN12coordsLayoutC1EvE3$_5 - 0x78EC6); type descriptor name
78EBE:  LDR             R3, [R1,#4]
78EC0:  MOVS            R1, #0
78EC2:  ADD             R2, PC; type descriptor name
78EC4:  CMP             R3, R2
78EC6:  IT EQ
78EC8:  ADDEQ           R1, R0, #4
78ECA:  MOV             R0, R1
78ECC:  BX              LR
