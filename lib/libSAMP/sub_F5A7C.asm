; =========================================================
; Game Engine Function: sub_F5A7C
; Address            : 0xF5A7C - 0xF5A8E
; =========================================================

F5A7C:  LDR             R2, =(_ZTSZN15function_helperIFivEEC1I10FPSLimiterEEMT_FivEPS4_EUlvE_ - 0xF5A86); type descriptor name
F5A7E:  LDR             R3, [R1,#4]
F5A80:  MOVS            R1, #0
F5A82:  ADD             R2, PC; type descriptor name
F5A84:  CMP             R3, R2
F5A86:  IT EQ
F5A88:  ADDEQ           R1, R0, #4
F5A8A:  MOV             R0, R1
F5A8C:  BX              LR
