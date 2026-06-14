; =========================================================
; Game Engine Function: sub_121B1C
; Address            : 0x121B1C - 0x121B2E
; =========================================================

121B1C:  LDR             R2, =(_ZTSZN15function_helperIFjP22TextureDatabaseRuntimejEEC1I21fix_crash_get_textureEEMT_FjS1_jEPS6_EUlS1_jE_ - 0x121B26); type descriptor name
121B1E:  LDR             R3, [R1,#4]
121B20:  MOVS            R1, #0
121B22:  ADD             R2, PC; type descriptor name
121B24:  CMP             R3, R2
121B26:  IT EQ
121B28:  ADDEQ           R1, R0, #4
121B2A:  MOV             R0, R1
121B2C:  BX              LR
