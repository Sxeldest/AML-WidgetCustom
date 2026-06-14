; =========================================================
; Game Engine Function: _ZNK31CTaskComplexEnterAnyCarAsDriver5CloneEv
; Address            : 0x4FF694 - 0x4FF6AE
; =========================================================

4FF694:  PUSH            {R7,LR}
4FF696:  MOV             R7, SP
4FF698:  MOVS            R0, #(byte_9+3); this
4FF69A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FF69E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FF6A2:  LDR             R1, =(_ZTV31CTaskComplexEnterAnyCarAsDriver_ptr - 0x4FF6A8)
4FF6A4:  ADD             R1, PC; _ZTV31CTaskComplexEnterAnyCarAsDriver_ptr
4FF6A6:  LDR             R1, [R1]; `vtable for'CTaskComplexEnterAnyCarAsDriver ...
4FF6A8:  ADDS            R1, #8
4FF6AA:  STR             R1, [R0]
4FF6AC:  POP             {R7,PC}
