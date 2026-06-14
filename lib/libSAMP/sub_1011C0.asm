; =========================================================
; Game Engine Function: sub_1011C0
; Address            : 0x1011C0 - 0x1011D2
; =========================================================

1011C0:  LDR             R2, =(_ZTSZ32AllVehicles__ProcessControl_hookjE3$_4 - 0x1011CA); type descriptor name
1011C2:  LDR             R3, [R1,#4]
1011C4:  MOVS            R1, #0
1011C6:  ADD             R2, PC; type descriptor name
1011C8:  CMP             R3, R2
1011CA:  IT EQ
1011CC:  ADDEQ           R1, R0, #4
1011CE:  MOV             R0, R1
1011D0:  BX              LR
