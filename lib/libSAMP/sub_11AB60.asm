; =========================================================
; Game Engine Function: sub_11AB60
; Address            : 0x11AB60 - 0x11AB72
; =========================================================

11AB60:  LDR             R2, =(_ZTSZN9modloader6modelsC1EvE3$_1 - 0x11AB6A); type descriptor name
11AB62:  LDR             R3, [R1,#4]
11AB64:  MOVS            R1, #0
11AB66:  ADD             R2, PC; type descriptor name
11AB68:  CMP             R3, R2
11AB6A:  IT EQ
11AB6C:  ADDEQ           R1, R0, #4
11AB6E:  MOV             R0, R1
11AB70:  BX              LR
