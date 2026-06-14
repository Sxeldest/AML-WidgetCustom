; =========================================================
; Game Engine Function: sub_135F60
; Address            : 0x135F60 - 0x135F72
; =========================================================

135F60:  LDR             R2, =(_ZTSZN14SelectorLayoutC1EvE3$_5 - 0x135F6A); type descriptor name
135F62:  LDR             R3, [R1,#4]
135F64:  MOVS            R1, #0
135F66:  ADD             R2, PC; type descriptor name
135F68:  CMP             R3, R2
135F6A:  IT EQ
135F6C:  ADDEQ           R1, R0, #4
135F6E:  MOV             R0, R1
135F70:  BX              LR
