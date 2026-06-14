; =========================================================
; Game Engine Function: sub_111428
; Address            : 0x111428 - 0x11143A
; =========================================================

111428:  LDR             R2, =(_ZTSZN15function_helperIFvP9CPhysicalEEC1I8airbrakeEEMT_FvS1_EPS6_EUlS1_E_ - 0x111432); type descriptor name
11142A:  LDR             R3, [R1,#4]
11142C:  MOVS            R1, #0
11142E:  ADD             R2, PC; type descriptor name
111430:  CMP             R3, R2
111432:  IT EQ
111434:  ADDEQ           R1, R0, #4
111436:  MOV             R0, R1
111438:  BX              LR
