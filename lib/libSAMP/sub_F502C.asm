; =========================================================
; Game Engine Function: sub_F502C
; Address            : 0xF502C - 0xF503E
; =========================================================

F502C:  LDR             R2, =(_ZTSZN15function_helperIFiPKcEEC1I13CustomMapIconEEMT_FiS1_EPS6_EUlS1_E_ - 0xF5036); type descriptor name
F502E:  LDR             R3, [R1,#4]
F5030:  MOVS            R1, #0
F5032:  ADD             R2, PC; type descriptor name
F5034:  CMP             R3, R2
F5036:  IT EQ
F5038:  ADDEQ           R1, R0, #4
F503A:  MOV             R0, R1
F503C:  BX              LR
