; =========================================================
; Game Engine Function: sub_1E3398
; Address            : 0x1E3398 - 0x1E33AA
; =========================================================

1E3398:  LDR             R2, =(_ZTSZN4llmo3mem5getFDEPvbE3$_3 - 0x1E33A2); type descriptor name
1E339A:  LDR             R3, [R1,#4]
1E339C:  MOVS            R1, #0
1E339E:  ADD             R2, PC; type descriptor name
1E33A0:  CMP             R3, R2
1E33A2:  IT EQ
1E33A4:  ADDEQ           R1, R0, #4
1E33A6:  MOV             R0, R1
1E33A8:  BX              LR
