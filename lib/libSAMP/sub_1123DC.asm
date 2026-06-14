; =========================================================
; Game Engine Function: sub_1123DC
; Address            : 0x1123DC - 0x1123EE
; =========================================================

1123DC:  LDR             R2, =(_ZTSZN12custom_radarD1EvE3$_1 - 0x1123E6); type descriptor name
1123DE:  LDR             R3, [R1,#4]
1123E0:  MOVS            R1, #0
1123E2:  ADD             R2, PC; type descriptor name
1123E4:  CMP             R3, R2
1123E6:  IT EQ
1123E8:  ADDEQ           R1, R0, #4
1123EA:  MOV             R0, R1
1123EC:  BX              LR
