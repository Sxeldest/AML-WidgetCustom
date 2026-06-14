; =========================================================
; Game Engine Function: sub_11F158
; Address            : 0x11F158 - 0x11F16A
; =========================================================

11F158:  LDR             R2, =(_ZTSZN15function_helperIFvvEEC1I14FixMatrixStackEEMT_FvvEPS4_EUlvE_ - 0x11F162); type descriptor name
11F15A:  LDR             R3, [R1,#4]
11F15C:  MOVS            R1, #0
11F15E:  ADD             R2, PC; type descriptor name
11F160:  CMP             R3, R2
11F162:  IT EQ
11F164:  ADDEQ           R1, R0, #4
11F166:  MOV             R0, R1
11F168:  BX              LR
