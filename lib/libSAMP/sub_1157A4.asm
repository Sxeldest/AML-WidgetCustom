; =========================================================
; Game Engine Function: sub_1157A4
; Address            : 0x1157A4 - 0x1157B6
; =========================================================

1157A4:  LDR             R2, =(_ZTSZN10radar_rectC1EvE3$_2 - 0x1157AE); type descriptor name
1157A6:  LDR             R3, [R1,#4]
1157A8:  MOVS            R1, #0
1157AA:  ADD             R2, PC; type descriptor name
1157AC:  CMP             R3, R2
1157AE:  IT EQ
1157B0:  ADDEQ           R1, R0, #4
1157B2:  MOV             R0, R1
1157B4:  BX              LR
