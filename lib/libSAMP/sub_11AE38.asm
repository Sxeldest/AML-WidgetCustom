; =========================================================
; Game Engine Function: sub_11AE38
; Address            : 0x11AE38 - 0x11AE4A
; =========================================================

11AE38:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_2 - 0x11AE42); type descriptor name
11AE3A:  LDR             R3, [R1,#4]
11AE3C:  MOVS            R1, #0
11AE3E:  ADD             R2, PC; type descriptor name
11AE40:  CMP             R3, R2
11AE42:  IT EQ
11AE44:  ADDEQ           R1, R0, #4
11AE46:  MOV             R0, R1
11AE48:  BX              LR
