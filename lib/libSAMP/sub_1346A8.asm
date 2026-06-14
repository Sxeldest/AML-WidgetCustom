; =========================================================
; Game Engine Function: sub_1346A8
; Address            : 0x1346A8 - 0x1346BA
; =========================================================

1346A8:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_3 - 0x1346B2); type descriptor name
1346AA:  LDR             R3, [R1,#4]
1346AC:  MOVS            R1, #0
1346AE:  ADD             R2, PC; type descriptor name
1346B0:  CMP             R3, R2
1346B2:  IT EQ
1346B4:  ADDEQ           R1, R0, #4
1346B6:  MOV             R0, R1
1346B8:  BX              LR
