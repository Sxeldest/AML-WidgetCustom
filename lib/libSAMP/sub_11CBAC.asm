; =========================================================
; Game Engine Function: sub_11CBAC
; Address            : 0x11CBAC - 0x11CBBE
; =========================================================

11CBAC:  LDR             R2, =(_ZTSZN9BinCachesC1EvE3$_0 - 0x11CBB6); type descriptor name
11CBAE:  LDR             R3, [R1,#4]
11CBB0:  MOVS            R1, #0
11CBB2:  ADD             R2, PC; type descriptor name
11CBB4:  CMP             R3, R2
11CBB6:  IT EQ
11CBB8:  ADDEQ           R1, R0, #4
11CBBA:  MOV             R0, R1
11CBBC:  BX              LR
