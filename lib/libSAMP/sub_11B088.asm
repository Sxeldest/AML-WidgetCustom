; =========================================================
; Game Engine Function: sub_11B088
; Address            : 0x11B088 - 0x11B09A
; =========================================================

11B088:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_4 - 0x11B092); type descriptor name
11B08A:  LDR             R3, [R1,#4]
11B08C:  MOVS            R1, #0
11B08E:  ADD             R2, PC; type descriptor name
11B090:  CMP             R3, R2
11B092:  IT EQ
11B094:  ADDEQ           R1, R0, #4
11B096:  MOV             R0, R1
11B098:  BX              LR
