; =========================================================
; Game Engine Function: sub_129ACC
; Address            : 0x129ACC - 0x129ADE
; =========================================================

129ACC:  LDR             R2, =(_ZTSZN15function_helperIFvvEEC1I13VehicleStructEEMT_FvvEPS4_EUlvE_ - 0x129AD6); type descriptor name
129ACE:  LDR             R3, [R1,#4]
129AD0:  MOVS            R1, #0
129AD2:  ADD             R2, PC; type descriptor name
129AD4:  CMP             R3, R2
129AD6:  IT EQ
129AD8:  ADDEQ           R1, R0, #4
129ADA:  MOV             R0, R1
129ADC:  BX              LR
