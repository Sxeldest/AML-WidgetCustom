; =========================================================
; Game Engine Function: sub_11CCA0
; Address            : 0x11CCA0 - 0x11CCB2
; =========================================================

11CCA0:  LDR             R2, =(_ZTSZN9BinCachesC1EvE3$_2 - 0x11CCAA); type descriptor name
11CCA2:  LDR             R3, [R1,#4]
11CCA4:  MOVS            R1, #0
11CCA6:  ADD             R2, PC; type descriptor name
11CCA8:  CMP             R3, R2
11CCAA:  IT EQ
11CCAC:  ADDEQ           R1, R0, #4
11CCAE:  MOV             R0, R1
11CCB0:  BX              LR
