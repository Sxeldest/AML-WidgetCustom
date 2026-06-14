; =========================================================
; Game Engine Function: sub_11B2B4
; Address            : 0x11B2B4 - 0x11B2C6
; =========================================================

11B2B4:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_6 - 0x11B2BE); type descriptor name
11B2B6:  LDR             R3, [R1,#4]
11B2B8:  MOVS            R1, #0
11B2BA:  ADD             R2, PC; type descriptor name
11B2BC:  CMP             R3, R2
11B2BE:  IT EQ
11B2C0:  ADDEQ           R1, R0, #4
11B2C2:  MOV             R0, R1
11B2C4:  BX              LR
