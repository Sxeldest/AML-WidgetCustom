; =========================================================
; Game Engine Function: sub_135E60
; Address            : 0x135E60 - 0x135E72
; =========================================================

135E60:  LDR             R2, =(_ZTSZN14SelectorLayoutC1EvE3$_4 - 0x135E6A); type descriptor name
135E62:  LDR             R3, [R1,#4]
135E64:  MOVS            R1, #0
135E66:  ADD             R2, PC; type descriptor name
135E68:  CMP             R3, R2
135E6A:  IT EQ
135E6C:  ADDEQ           R1, R0, #4
135E6E:  MOV             R0, R1
135E70:  BX              LR
