; =========================================================
; Game Engine Function: _ZNK19CTaskComplexBeStill5CloneEv
; Address            : 0x4F1E44 - 0x4F1E5E
; =========================================================

4F1E44:  PUSH            {R7,LR}
4F1E46:  MOV             R7, SP
4F1E48:  MOVS            R0, #(byte_9+3); this
4F1E4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1E4E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F1E52:  LDR             R1, =(_ZTV19CTaskComplexBeStill_ptr - 0x4F1E58)
4F1E54:  ADD             R1, PC; _ZTV19CTaskComplexBeStill_ptr
4F1E56:  LDR             R1, [R1]; `vtable for'CTaskComplexBeStill ...
4F1E58:  ADDS            R1, #8
4F1E5A:  STR             R1, [R0]
4F1E5C:  POP             {R7,PC}
