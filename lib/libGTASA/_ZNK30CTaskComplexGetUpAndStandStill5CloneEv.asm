; =========================================================
; Game Engine Function: _ZNK30CTaskComplexGetUpAndStandStill5CloneEv
; Address            : 0x532984 - 0x53299E
; =========================================================

532984:  PUSH            {R7,LR}
532986:  MOV             R7, SP
532988:  MOVS            R0, #(byte_9+3); this
53298A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53298E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532992:  LDR             R1, =(_ZTV30CTaskComplexGetUpAndStandStill_ptr - 0x532998)
532994:  ADD             R1, PC; _ZTV30CTaskComplexGetUpAndStandStill_ptr
532996:  LDR             R1, [R1]; `vtable for'CTaskComplexGetUpAndStandStill ...
532998:  ADDS            R1, #8
53299A:  STR             R1, [R0]
53299C:  POP             {R7,PC}
