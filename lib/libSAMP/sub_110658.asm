; =========================================================
; Game Engine Function: sub_110658
; Address            : 0x110658 - 0x11066A
; =========================================================

110658:  LDR             R2, =(_ZTSZN15function_helperIFvP21CWidgetButtonEnterCariibP7CVectoriEEC1I12VehicleSkateEEMT_FvS1_iibS3_iEPS8_EUlS1_iibS3_iE_ - 0x110662); type descriptor name
11065A:  LDR             R3, [R1,#4]
11065C:  MOVS            R1, #0
11065E:  ADD             R2, PC; type descriptor name
110660:  CMP             R3, R2
110662:  IT EQ
110664:  ADDEQ           R1, R0, #4
110666:  MOV             R0, R1
110668:  BX              LR
