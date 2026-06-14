; =========================================================
; Game Engine Function: sub_11B56C
; Address            : 0x11B56C - 0x11B57E
; =========================================================

11B56C:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_8 - 0x11B576); type descriptor name
11B56E:  LDR             R3, [R1,#4]
11B570:  MOVS            R1, #0
11B572:  ADD             R2, PC; type descriptor name
11B574:  CMP             R3, R2
11B576:  IT EQ
11B578:  ADDEQ           R1, R0, #4
11B57A:  MOV             R0, R1
11B57C:  BX              LR
