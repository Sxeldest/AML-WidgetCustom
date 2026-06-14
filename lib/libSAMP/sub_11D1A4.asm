; =========================================================
; Game Engine Function: sub_11D1A4
; Address            : 0x11D1A4 - 0x11D1B6
; =========================================================

11D1A4:  LDR             R2, =(_ZTSZN15function_helperIFvPvjiEEC1I16CCarEnterExitFixEEMT_FvS0_jiEPS5_EUlS0_jiE_ - 0x11D1AE); type descriptor name
11D1A6:  LDR             R3, [R1,#4]
11D1A8:  MOVS            R1, #0
11D1AA:  ADD             R2, PC; type descriptor name
11D1AC:  CMP             R3, R2
11D1AE:  IT EQ
11D1B0:  ADDEQ           R1, R0, #4
11D1B2:  MOV             R0, R1
11D1B4:  BX              LR
