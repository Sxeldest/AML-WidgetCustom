; =========================================================
; Game Engine Function: sub_135BD0
; Address            : 0x135BD0 - 0x135BE2
; =========================================================

135BD0:  LDR             R2, =(_ZTSZN13CommandLayoutC1EvE3$_1 - 0x135BDA); type descriptor name
135BD2:  LDR             R3, [R1,#4]
135BD4:  MOVS            R1, #0
135BD6:  ADD             R2, PC; type descriptor name
135BD8:  CMP             R3, R2
135BDA:  IT EQ
135BDC:  ADDEQ           R1, R0, #4
135BDE:  MOV             R0, R1
135BE0:  BX              LR
