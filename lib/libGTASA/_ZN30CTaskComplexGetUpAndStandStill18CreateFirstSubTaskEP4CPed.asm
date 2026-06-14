; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStill18CreateFirstSubTaskEP4CPed
; Address            : 0x52B514 - 0x52B534
; =========================================================

52B514:  PUSH            {R7,LR}
52B516:  MOV             R7, SP
52B518:  MOVS            R0, #word_10; this
52B51A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52B51E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52B522:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52B52C)
52B524:  MOVS            R2, #0
52B526:  STRH            R2, [R0,#8]
52B528:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52B52A:  STR             R2, [R0,#0xC]
52B52C:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52B52E:  ADDS            R1, #8
52B530:  STR             R1, [R0]
52B532:  POP             {R7,PC}
