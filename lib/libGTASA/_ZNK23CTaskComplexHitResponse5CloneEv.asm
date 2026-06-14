; =========================================================
; Game Engine Function: _ZNK23CTaskComplexHitResponse5CloneEv
; Address            : 0x4F33E0 - 0x4F3400
; =========================================================

4F33E0:  PUSH            {R4,R6,R7,LR}
4F33E2:  ADD             R7, SP, #8
4F33E4:  MOV             R4, R0
4F33E6:  MOVS            R0, #word_10; this
4F33E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F33EC:  LDR             R4, [R4,#0xC]
4F33EE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F33F2:  LDR             R1, =(_ZTV23CTaskComplexHitResponse_ptr - 0x4F33FA)
4F33F4:  STR             R4, [R0,#0xC]
4F33F6:  ADD             R1, PC; _ZTV23CTaskComplexHitResponse_ptr
4F33F8:  LDR             R1, [R1]; `vtable for'CTaskComplexHitResponse ...
4F33FA:  ADDS            R1, #8
4F33FC:  STR             R1, [R0]
4F33FE:  POP             {R4,R6,R7,PC}
