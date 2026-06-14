; =========================================================
; Game Engine Function: sub_1372A8
; Address            : 0x1372A8 - 0x1372BA
; =========================================================

1372A8:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_0 - 0x1372B2); type descriptor name
1372AA:  LDR             R3, [R1,#4]
1372AC:  MOVS            R1, #0
1372AE:  ADD             R2, PC; type descriptor name
1372B0:  CMP             R3, R2
1372B2:  IT EQ
1372B4:  ADDEQ           R1, R0, #4
1372B6:  MOV             R0, R1
1372B8:  BX              LR
