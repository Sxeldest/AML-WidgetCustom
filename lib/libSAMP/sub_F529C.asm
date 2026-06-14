; =========================================================
; Game Engine Function: sub_F529C
; Address            : 0xF529C - 0xF52AE
; =========================================================

F529C:  LDR             R2, =(_ZTSZN15function_helperIFivEEC1I13CustomMapIconEEMT_FivEPS4_EUlvE_ - 0xF52A6); type descriptor name
F529E:  LDR             R3, [R1,#4]
F52A0:  MOVS            R1, #0
F52A2:  ADD             R2, PC; type descriptor name
F52A4:  CMP             R3, R2
F52A6:  IT EQ
F52A8:  ADDEQ           R1, R0, #4
F52AA:  MOV             R0, R1
F52AC:  BX              LR
