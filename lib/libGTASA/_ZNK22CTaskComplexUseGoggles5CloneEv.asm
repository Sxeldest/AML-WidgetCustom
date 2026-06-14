; =========================================================
; Game Engine Function: _ZNK22CTaskComplexUseGoggles5CloneEv
; Address            : 0x4F4080 - 0x4F409A
; =========================================================

4F4080:  PUSH            {R7,LR}
4F4082:  MOV             R7, SP
4F4084:  MOVS            R0, #(byte_9+3); this
4F4086:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F408A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F408E:  LDR             R1, =(_ZTV22CTaskComplexUseGoggles_ptr - 0x4F4094)
4F4090:  ADD             R1, PC; _ZTV22CTaskComplexUseGoggles_ptr
4F4092:  LDR             R1, [R1]; `vtable for'CTaskComplexUseGoggles ...
4F4094:  ADDS            R1, #8
4F4096:  STR             R1, [R0]
4F4098:  POP             {R7,PC}
