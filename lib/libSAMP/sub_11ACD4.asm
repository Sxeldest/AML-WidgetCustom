; =========================================================
; Game Engine Function: sub_11ACD4
; Address            : 0x11ACD4 - 0x11ACE6
; =========================================================

11ACD4:  LDR             R2, =(_ZTSZN15function_helperIFvvEEC1IN9modloader6modelsEEEMT_FvvEPS5_EUlvE_ - 0x11ACDE); type descriptor name
11ACD6:  LDR             R3, [R1,#4]
11ACD8:  MOVS            R1, #0
11ACDA:  ADD             R2, PC; type descriptor name
11ACDC:  CMP             R3, R2
11ACDE:  IT EQ
11ACE0:  ADDEQ           R1, R0, #4
11ACE2:  MOV             R0, R1
11ACE4:  BX              LR
