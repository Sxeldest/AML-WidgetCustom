; =========================================================
; Game Engine Function: _ZNK18CTaskComplexOnFire5CloneEv
; Address            : 0x4F3B44 - 0x4F3B5E
; =========================================================

4F3B44:  PUSH            {R7,LR}
4F3B46:  MOV             R7, SP
4F3B48:  MOVS            R0, #(byte_9+3); this
4F3B4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3B4E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F3B52:  LDR             R1, =(_ZTV18CTaskComplexOnFire_ptr - 0x4F3B58)
4F3B54:  ADD             R1, PC; _ZTV18CTaskComplexOnFire_ptr
4F3B56:  LDR             R1, [R1]; `vtable for'CTaskComplexOnFire ...
4F3B58:  ADDS            R1, #8
4F3B5A:  STR             R1, [R0]
4F3B5C:  POP             {R7,PC}
