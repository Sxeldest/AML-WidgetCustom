; =========================================================
; Game Engine Function: sub_1155A0
; Address            : 0x1155A0 - 0x1155B2
; =========================================================

1155A0:  LDR             R2, =(_ZTSZN10radar_rectC1EvE3$_0 - 0x1155AA); type descriptor name
1155A2:  LDR             R3, [R1,#4]
1155A4:  MOVS            R1, #0
1155A6:  ADD             R2, PC; type descriptor name
1155A8:  CMP             R3, R2
1155AA:  IT EQ
1155AC:  ADDEQ           R1, R0, #4
1155AE:  MOV             R0, R1
1155B0:  BX              LR
