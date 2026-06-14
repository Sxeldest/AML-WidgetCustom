; =========================================================
; Game Engine Function: sub_135C68
; Address            : 0x135C68 - 0x135C7A
; =========================================================

135C68:  LDR             R2, =(_ZTSZN13CommandLayoutC1EvE3$_2 - 0x135C72); type descriptor name
135C6A:  LDR             R3, [R1,#4]
135C6C:  MOVS            R1, #0
135C6E:  ADD             R2, PC; type descriptor name
135C70:  CMP             R3, R2
135C72:  IT EQ
135C74:  ADDEQ           R1, R0, #4
135C76:  MOV             R0, R1
135C78:  BX              LR
