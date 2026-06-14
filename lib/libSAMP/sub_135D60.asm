; =========================================================
; Game Engine Function: sub_135D60
; Address            : 0x135D60 - 0x135D72
; =========================================================

135D60:  LDR             R2, =(_ZTSZN14SelectorLayoutC1EvE3$_3 - 0x135D6A); type descriptor name
135D62:  LDR             R3, [R1,#4]
135D64:  MOVS            R1, #0
135D66:  ADD             R2, PC; type descriptor name
135D68:  CMP             R3, R2
135D6A:  IT EQ
135D6C:  ADDEQ           R1, R0, #4
135D6E:  MOV             R0, R1
135D70:  BX              LR
