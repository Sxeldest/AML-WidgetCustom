; =========================================================
; Game Engine Function: sub_1344CC
; Address            : 0x1344CC - 0x1344DE
; =========================================================

1344CC:  LDR             R2, =(_ZTSZN4menuC1EvE3$_0 - 0x1344D6); type descriptor name
1344CE:  LDR             R3, [R1,#4]
1344D0:  MOVS            R1, #0
1344D2:  ADD             R2, PC; type descriptor name
1344D4:  CMP             R3, R2
1344D6:  IT EQ
1344D8:  ADDEQ           R1, R0, #4
1344DA:  MOV             R0, R1
1344DC:  BX              LR
