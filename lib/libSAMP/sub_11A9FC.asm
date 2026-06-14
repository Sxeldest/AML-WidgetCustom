; =========================================================
; Game Engine Function: sub_11A9FC
; Address            : 0x11A9FC - 0x11AA0E
; =========================================================

11A9FC:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_0 - 0x11AA06); type descriptor name
11A9FE:  LDR             R3, [R1,#4]
11AA00:  MOVS            R1, #0
11AA02:  ADD             R2, PC; type descriptor name
11AA04:  CMP             R3, R2
11AA06:  IT EQ
11AA08:  ADDEQ           R1, R0, #4
11AA0A:  MOV             R0, R1
11AA0C:  BX              LR
