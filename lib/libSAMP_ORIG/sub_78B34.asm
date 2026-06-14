; =========================================================
; Game Engine Function: sub_78B34
; Address            : 0x78B34 - 0x78B46
; =========================================================

78B34:  LDR             R2, =(_ZTSZN13commandLayoutC1EvE3$_1 - 0x78B3E); type descriptor name
78B36:  LDR             R3, [R1,#4]
78B38:  MOVS            R1, #0
78B3A:  ADD             R2, PC; type descriptor name
78B3C:  CMP             R3, R2
78B3E:  IT EQ
78B40:  ADDEQ           R1, R0, #4
78B42:  MOV             R0, R1
78B44:  BX              LR
