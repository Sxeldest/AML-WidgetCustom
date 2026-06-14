; =========================================================
; Game Engine Function: sub_83778
; Address            : 0x83778 - 0x8378A
; =========================================================

83778:  LDR             R2, =(_ZTSZN6Record4InitEjE3$_0 - 0x83782); type descriptor name
8377A:  LDR             R3, [R1,#4]
8377C:  MOVS            R1, #0
8377E:  ADD             R2, PC; type descriptor name
83780:  CMP             R3, R2
83782:  IT EQ
83784:  ADDEQ           R1, R0, #4
83786:  MOV             R0, R1
83788:  BX              LR
