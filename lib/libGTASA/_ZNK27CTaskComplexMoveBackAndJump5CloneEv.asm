; =========================================================
; Game Engine Function: _ZNK27CTaskComplexMoveBackAndJump5CloneEv
; Address            : 0x50FE44 - 0x50FE5E
; =========================================================

50FE44:  PUSH            {R7,LR}
50FE46:  MOV             R7, SP
50FE48:  MOVS            R0, #(byte_9+3); this
50FE4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50FE4E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50FE52:  LDR             R1, =(_ZTV27CTaskComplexMoveBackAndJump_ptr - 0x50FE58)
50FE54:  ADD             R1, PC; _ZTV27CTaskComplexMoveBackAndJump_ptr
50FE56:  LDR             R1, [R1]; `vtable for'CTaskComplexMoveBackAndJump ...
50FE58:  ADDS            R1, #8
50FE5A:  STR             R1, [R0]
50FE5C:  POP             {R7,PC}
