; =========================================================
; Game Engine Function: _ZNK22CTaskComplexStuckInAir5CloneEv
; Address            : 0x5337A8 - 0x5337C2
; =========================================================

5337A8:  PUSH            {R7,LR}
5337AA:  MOV             R7, SP
5337AC:  MOVS            R0, #(byte_9+3); this
5337AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5337B2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5337B6:  LDR             R1, =(_ZTV22CTaskComplexStuckInAir_ptr - 0x5337BC)
5337B8:  ADD             R1, PC; _ZTV22CTaskComplexStuckInAir_ptr
5337BA:  LDR             R1, [R1]; `vtable for'CTaskComplexStuckInAir ...
5337BC:  ADDS            R1, #8
5337BE:  STR             R1, [R0]
5337C0:  POP             {R7,PC}
