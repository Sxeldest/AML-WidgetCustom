; =========================================================
; Game Engine Function: sub_11AFB4
; Address            : 0x11AFB4 - 0x11AFC6
; =========================================================

11AFB4:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_3 - 0x11AFBE); type descriptor name
11AFB6:  LDR             R3, [R1,#4]
11AFB8:  MOVS            R1, #0
11AFBA:  ADD             R2, PC; type descriptor name
11AFBC:  CMP             R3, R2
11AFBE:  IT EQ
11AFC0:  ADDEQ           R1, R0, #4
11AFC2:  MOV             R0, R1
11AFC4:  BX              LR
