; =========================================================
; Game Engine Function: sub_124304
; Address            : 0x124304 - 0x124316
; =========================================================

124304:  LDR             R2, =(_ZTSZN15function_helperIFvvEEC1I16CCollisionLimitsEEMT_FvvEPS4_EUlvE_ - 0x12430E); type descriptor name
124306:  LDR             R3, [R1,#4]
124308:  MOVS            R1, #0
12430A:  ADD             R2, PC; type descriptor name
12430C:  CMP             R3, R2
12430E:  IT EQ
124310:  ADDEQ           R1, R0, #4
124312:  MOV             R0, R1
124314:  BX              LR
