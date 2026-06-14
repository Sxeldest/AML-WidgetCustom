; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleClearLookAt5CloneEv
; Address            : 0x4F3E80 - 0x4F3E9A
; =========================================================

4F3E80:  PUSH            {R7,LR}
4F3E82:  MOV             R7, SP
4F3E84:  MOVS            R0, #byte_8; this
4F3E86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3E8A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F3E8E:  LDR             R1, =(_ZTV22CTaskSimpleClearLookAt_ptr - 0x4F3E94)
4F3E90:  ADD             R1, PC; _ZTV22CTaskSimpleClearLookAt_ptr
4F3E92:  LDR             R1, [R1]; `vtable for'CTaskSimpleClearLookAt ...
4F3E94:  ADDS            R1, #8
4F3E96:  STR             R1, [R0]
4F3E98:  POP             {R7,PC}
