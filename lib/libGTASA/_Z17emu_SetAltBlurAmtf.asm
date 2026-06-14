; =========================================================
; Game Engine Function: _Z17emu_SetAltBlurAmtf
; Address            : 0x1BC9AC - 0x1BC9B6
; =========================================================

1BC9AC:  LDR             R1, =(gradeBlur_ptr - 0x1BC9B2)
1BC9AE:  ADD             R1, PC; gradeBlur_ptr
1BC9B0:  LDR             R1, [R1]; gradeBlur
1BC9B2:  STR             R0, [R1]
1BC9B4:  BX              LR
