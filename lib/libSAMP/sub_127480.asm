; =========================================================
; Game Engine Function: sub_127480
; Address            : 0x127480 - 0x127492
; =========================================================

127480:  LDR             R2, =(_ZTSZN9ImgLimitsC1EvE3$_0 - 0x12748A); type descriptor name
127482:  LDR             R3, [R1,#4]
127484:  MOVS            R1, #0
127486:  ADD             R2, PC; type descriptor name
127488:  CMP             R3, R2
12748A:  IT EQ
12748C:  ADDEQ           R1, R0, #4
12748E:  MOV             R0, R1
127490:  BX              LR
