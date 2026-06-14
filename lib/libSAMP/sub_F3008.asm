; =========================================================
; Game Engine Function: sub_F3008
; Address            : 0xF3008 - 0xF301A
; =========================================================

F3008:  LDR             R2, =(_ZTSZN15function_helperIFbN17ApplicationEvents11OSEventTypeEPvEEC1IS0_EEMT_FbS1_S2_EPS6_EUlS1_S2_E_ - 0xF3012); type descriptor name
F300A:  LDR             R3, [R1,#4]
F300C:  MOVS            R1, #0
F300E:  ADD             R2, PC; type descriptor name
F3010:  CMP             R3, R2
F3012:  IT EQ
F3014:  ADDEQ           R1, R0, #4
F3016:  MOV             R0, R1
F3018:  BX              LR
