; =========================================================
; Game Engine Function: sub_10F8A0
; Address            : 0x10F8A0 - 0x10F8B2
; =========================================================

10F8A0:  LDR             R2, =(_ZTSZN15function_helperIFvP12_ENTITY_TYPEEEC1I10ObjectViewEEMT_FvS1_EPS6_EUlS1_E_ - 0x10F8AA); type descriptor name
10F8A2:  LDR             R3, [R1,#4]
10F8A4:  MOVS            R1, #0
10F8A6:  ADD             R2, PC; type descriptor name
10F8A8:  CMP             R3, R2
10F8AA:  IT EQ
10F8AC:  ADDEQ           R1, R0, #4
10F8AE:  MOV             R0, R1
10F8B0:  BX              LR
