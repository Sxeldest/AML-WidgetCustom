; =========================================================
; Game Engine Function: _ZNK25CTaskComplexTreatAccident5CloneEv
; Address            : 0x512354 - 0x512374
; =========================================================

512354:  PUSH            {R4,R6,R7,LR}
512356:  ADD             R7, SP, #8
512358:  MOV             R4, R0
51235A:  MOVS            R0, #word_10; this
51235C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512360:  LDR             R4, [R4,#0xC]
512362:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512366:  LDR             R1, =(_ZTV25CTaskComplexTreatAccident_ptr - 0x51236E)
512368:  STR             R4, [R0,#0xC]
51236A:  ADD             R1, PC; _ZTV25CTaskComplexTreatAccident_ptr
51236C:  LDR             R1, [R1]; `vtable for'CTaskComplexTreatAccident ...
51236E:  ADDS            R1, #8
512370:  STR             R1, [R0]
512372:  POP             {R4,R6,R7,PC}
