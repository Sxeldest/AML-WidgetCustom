; =========================================================
; Game Engine Function: sub_1274F4
; Address            : 0x1274F4 - 0x127506
; =========================================================

1274F4:  LDR             R2, =(_ZTSZN9ImgLimitsC1EvE3$_1 - 0x1274FE); type descriptor name
1274F6:  LDR             R3, [R1,#4]
1274F8:  MOVS            R1, #0
1274FA:  ADD             R2, PC; type descriptor name
1274FC:  CMP             R3, R2
1274FE:  IT EQ
127500:  ADDEQ           R1, R0, #4
127502:  MOV             R0, R1
127504:  BX              LR
