; =========================================================
; Game Engine Function: sub_11CC20
; Address            : 0x11CC20 - 0x11CC32
; =========================================================

11CC20:  LDR             R2, =(_ZTSZN9BinCachesC1EvE3$_1 - 0x11CC2A); type descriptor name
11CC22:  LDR             R3, [R1,#4]
11CC24:  MOVS            R1, #0
11CC26:  ADD             R2, PC; type descriptor name
11CC28:  CMP             R3, R2
11CC2A:  IT EQ
11CC2C:  ADDEQ           R1, R0, #4
11CC2E:  MOV             R0, R1
11CC30:  BX              LR
