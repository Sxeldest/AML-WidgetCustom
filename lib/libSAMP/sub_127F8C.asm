; =========================================================
; Game Engine Function: sub_127F8C
; Address            : 0x127F8C - 0x127F9E
; =========================================================

127F8C:  LDR             R2, =(_ZTSZN15function_helperIFvPvjEEC1I11PlaneShamalEEMT_FvS0_jEPS5_EUlS0_jE_ - 0x127F96); type descriptor name
127F8E:  LDR             R3, [R1,#4]
127F90:  MOVS            R1, #0
127F92:  ADD             R2, PC; type descriptor name
127F94:  CMP             R3, R2
127F96:  IT EQ
127F98:  ADDEQ           R1, R0, #4
127F9A:  MOV             R0, R1
127F9C:  BX              LR
