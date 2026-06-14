; =========================================================
; Game Engine Function: _ZNK23CTaskComplexUseSequence5CloneEv
; Address            : 0x4F41AC - 0x4F41F0
; =========================================================

4F41AC:  PUSH            {R4,R5,R7,LR}
4F41AE:  ADD             R7, SP, #8
4F41B0:  MOV             R4, R0
4F41B2:  MOVS            R0, #dword_1C; this
4F41B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F41B8:  LDR             R5, [R4,#0xC]
4F41BA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F41BE:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F41CC)
4F41C0:  MOVS            R3, #0
4F41C2:  LDR             R2, =(_ZTV23CTaskComplexUseSequence_ptr - 0x4F41D2)
4F41C4:  MOV.W           R12, #0xFFFFFFFF
4F41C8:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F41CA:  STRD.W          R5, R3, [R0,#0xC]
4F41CE:  ADD             R2, PC; _ZTV23CTaskComplexUseSequence_ptr
4F41D0:  STRD.W          R12, R3, [R0,#0x14]
4F41D4:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
4F41D6:  LDR             R2, [R2]; `vtable for'CTaskComplexUseSequence ...
4F41D8:  ADD.W           R1, R1, R5,LSL#6
4F41DC:  ADDS            R2, #8
4F41DE:  STR             R2, [R0]
4F41E0:  LDR             R2, [R1,#0x3C]
4F41E2:  ADDS            R2, #1
4F41E4:  STR             R2, [R1,#0x3C]
4F41E6:  LDR             R1, [R4,#0x10]
4F41E8:  STR             R1, [R0,#0x10]
4F41EA:  LDR             R1, [R4,#0x14]
4F41EC:  STR             R1, [R0,#0x14]
4F41EE:  POP             {R4,R5,R7,PC}
