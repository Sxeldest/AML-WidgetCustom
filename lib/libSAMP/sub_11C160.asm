; =========================================================
; Game Engine Function: sub_11C160
; Address            : 0x11C160 - 0x11C172
; =========================================================

11C160:  LDR             R2, =(_ZTSZN15function_helperIFjP22TextureDatabaseRuntimejEEC1IN9modloader8texturesEEEMT_FjS1_jEPS7_EUlS1_jE_ - 0x11C16A); type descriptor name
11C162:  LDR             R3, [R1,#4]
11C164:  MOVS            R1, #0
11C166:  ADD             R2, PC; type descriptor name
11C168:  CMP             R3, R2
11C16A:  IT EQ
11C16C:  ADDEQ           R1, R0, #4
11C16E:  MOV             R0, R1
11C170:  BX              LR
