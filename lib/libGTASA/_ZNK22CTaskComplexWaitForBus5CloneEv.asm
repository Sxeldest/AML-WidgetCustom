; =========================================================
; Game Engine Function: _ZNK22CTaskComplexWaitForBus5CloneEv
; Address            : 0x4F36D4 - 0x4F36F2
; =========================================================

4F36D4:  PUSH            {R7,LR}
4F36D6:  MOV             R7, SP
4F36D8:  MOVS            R0, #word_10; this
4F36DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F36DE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F36E2:  LDR             R1, =(_ZTV22CTaskComplexWaitForBus_ptr - 0x4F36EC)
4F36E4:  MOVS            R2, #0
4F36E6:  STR             R2, [R0,#0xC]
4F36E8:  ADD             R1, PC; _ZTV22CTaskComplexWaitForBus_ptr
4F36EA:  LDR             R1, [R1]; `vtable for'CTaskComplexWaitForBus ...
4F36EC:  ADDS            R1, #8
4F36EE:  STR             R1, [R0]
4F36F0:  POP             {R7,PC}
