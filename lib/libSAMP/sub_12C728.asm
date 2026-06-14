; =========================================================
; Game Engine Function: sub_12C728
; Address            : 0x12C728 - 0x12C73A
; =========================================================

12C728:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_0 - 0x12C732); type descriptor name
12C72A:  LDR             R3, [R1,#4]
12C72C:  MOVS            R1, #0
12C72E:  ADD             R2, PC; type descriptor name
12C730:  CMP             R3, R2
12C732:  IT EQ
12C734:  ADDEQ           R1, R0, #4
12C736:  MOV             R0, R1
12C738:  BX              LR
