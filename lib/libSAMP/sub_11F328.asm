; =========================================================
; Game Engine Function: sub_11F328
; Address            : 0x11F328 - 0x11F33A
; =========================================================

11F328:  LDR             R2, =(_ZTSZN15function_helperIFvPfEEC1I14FixMatrixStackEEMT_FvS0_EPS5_EUlS0_E_ - 0x11F332); type descriptor name
11F32A:  LDR             R3, [R1,#4]
11F32C:  MOVS            R1, #0
11F32E:  ADD             R2, PC; type descriptor name
11F330:  CMP             R3, R2
11F332:  IT EQ
11F334:  ADDEQ           R1, R0, #4
11F336:  MOV             R0, R1
11F338:  BX              LR
