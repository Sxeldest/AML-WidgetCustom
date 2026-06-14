; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStillC2Ev
; Address            : 0x52B45C - 0x52B470
; =========================================================

52B45C:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexGetUpAndStandStill::CTaskComplexGetUpAndStandStill(void)'
52B45E:  MOV             R7, SP
52B460:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52B464:  LDR             R1, =(_ZTV30CTaskComplexGetUpAndStandStill_ptr - 0x52B46A)
52B466:  ADD             R1, PC; _ZTV30CTaskComplexGetUpAndStandStill_ptr
52B468:  LDR             R1, [R1]; `vtable for'CTaskComplexGetUpAndStandStill ...
52B46A:  ADDS            R1, #8
52B46C:  STR             R1, [R0]
52B46E:  POP             {R7,PC}
