; =========================================================
; Game Engine Function: sub_115C40
; Address            : 0x115C40 - 0x115C52
; =========================================================

115C40:  LDR             R2, =(_ZTSZN15function_helperIFvP7CWidgetEEC1I10radar_rectEEMT_FvS1_EPS6_EUlS1_E_ - 0x115C4A); type descriptor name
115C42:  LDR             R3, [R1,#4]
115C44:  MOVS            R1, #0
115C46:  ADD             R2, PC; type descriptor name
115C48:  CMP             R3, R2
115C4A:  IT EQ
115C4C:  ADDEQ           R1, R0, #4
115C4E:  MOV             R0, R1
115C50:  BX              LR
