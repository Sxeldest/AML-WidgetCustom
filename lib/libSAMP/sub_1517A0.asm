; =========================================================
; Game Engine Function: sub_1517A0
; Address            : 0x1517A0 - 0x1517B2
; =========================================================

1517A0:  LDR             R2, =(_ZTSZN14AudioChannel3D13Set3DPositionERK7_VECTORS2_S2_E3$_2 - 0x1517AA); type descriptor name
1517A2:  LDR             R3, [R1,#4]
1517A4:  MOVS            R1, #0
1517A6:  ADD             R2, PC; type descriptor name
1517A8:  CMP             R3, R2
1517AA:  IT EQ
1517AC:  ADDEQ           R1, R0, #4
1517AE:  MOV             R0, R1
1517B0:  BX              LR
