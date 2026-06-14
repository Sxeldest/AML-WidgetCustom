; =========================================================
; Game Engine Function: sub_F4E5C
; Address            : 0xF4E5C - 0xF4E6E
; =========================================================

F4E5C:  LDR             R2, =(_ZTSZN13CustomMapIconC1EvE3$_0 - 0xF4E66); type descriptor name
F4E5E:  LDR             R3, [R1,#4]
F4E60:  MOVS            R1, #0
F4E62:  ADD             R2, PC; type descriptor name
F4E64:  CMP             R3, R2
F4E66:  IT EQ
F4E68:  ADDEQ           R1, R0, #4
F4E6A:  MOV             R0, R1
F4E6C:  BX              LR
