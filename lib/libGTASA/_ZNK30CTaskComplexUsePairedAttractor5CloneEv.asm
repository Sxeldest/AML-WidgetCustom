; =========================================================
; Game Engine Function: _ZNK30CTaskComplexUsePairedAttractor5CloneEv
; Address            : 0x4F3A90 - 0x4F3ABC
; =========================================================

4F3A90:  PUSH            {R4,R6,R7,LR}
4F3A92:  ADD             R7, SP, #8
4F3A94:  MOV             R4, R0
4F3A96:  MOVS            R0, #dword_24; this
4F3A98:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3A9C:  LDR             R4, [R4,#0xC]
4F3A9E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F3AA2:  LDR             R1, =(_ZTV30CTaskComplexUsePairedAttractor_ptr - 0x4F3AAE)
4F3AA4:  MOVS            R2, #0
4F3AA6:  STRD.W          R4, R2, [R0,#0xC]
4F3AAA:  ADD             R1, PC; _ZTV30CTaskComplexUsePairedAttractor_ptr
4F3AAC:  STRB            R2, [R0,#0x14]
4F3AAE:  STRD.W          R2, R2, [R0,#0x18]
4F3AB2:  LDR             R1, [R1]; `vtable for'CTaskComplexUsePairedAttractor ...
4F3AB4:  STR             R2, [R0,#0x20]
4F3AB6:  ADDS            R1, #8
4F3AB8:  STR             R1, [R0]
4F3ABA:  POP             {R4,R6,R7,PC}
