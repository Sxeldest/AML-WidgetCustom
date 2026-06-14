; =========================================================
; Game Engine Function: sub_110CEC
; Address            : 0x110CEC - 0x110CFE
; =========================================================

110CEC:  LDR             R2, =(_ZTSZN15function_helperIFvP8CVehicleiEEC1I14WingFreePlanesEEMT_FvS1_iEPS6_EUlS1_iE_ - 0x110CF6); type descriptor name
110CEE:  LDR             R3, [R1,#4]
110CF0:  MOVS            R1, #0
110CF2:  ADD             R2, PC; type descriptor name
110CF4:  CMP             R3, R2
110CF6:  IT EQ
110CF8:  ADDEQ           R1, R0, #4
110CFA:  MOV             R0, R1
110CFC:  BX              LR
