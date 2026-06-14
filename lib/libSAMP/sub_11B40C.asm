; =========================================================
; Game Engine Function: sub_11B40C
; Address            : 0x11B40C - 0x11B41E
; =========================================================

11B40C:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_7 - 0x11B416); type descriptor name
11B40E:  LDR             R3, [R1,#4]
11B410:  MOVS            R1, #0
11B412:  ADD             R2, PC; type descriptor name
11B414:  CMP             R3, R2
11B416:  IT EQ
11B418:  ADDEQ           R1, R0, #4
11B41A:  MOV             R0, R1
11B41C:  BX              LR
