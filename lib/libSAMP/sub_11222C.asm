; =========================================================
; Game Engine Function: sub_11222C
; Address            : 0x11222C - 0x11223E
; =========================================================

11222C:  LDR             R2, =(_ZTSZN15function_helperIFvvEEC1I12custom_radarEEMT_FvvEPS4_EUlvE_ - 0x112236); type descriptor name
11222E:  LDR             R3, [R1,#4]
112230:  MOVS            R1, #0
112232:  ADD             R2, PC; type descriptor name
112234:  CMP             R3, R2
112236:  IT EQ
112238:  ADDEQ           R1, R0, #4
11223A:  MOV             R0, R1
11223C:  BX              LR
