; =========================================================
; Game Engine Function: sub_11B15C
; Address            : 0x11B15C - 0x11B16E
; =========================================================

11B15C:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_5 - 0x11B166); type descriptor name
11B15E:  LDR             R3, [R1,#4]
11B160:  MOVS            R1, #0
11B162:  ADD             R2, PC; type descriptor name
11B164:  CMP             R3, R2
11B166:  IT EQ
11B168:  ADDEQ           R1, R0, #4
11B16A:  MOV             R0, R1
11B16C:  BX              LR
