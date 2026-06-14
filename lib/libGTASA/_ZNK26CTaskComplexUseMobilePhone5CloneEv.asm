; =========================================================
; Game Engine Function: _ZNK26CTaskComplexUseMobilePhone5CloneEv
; Address            : 0x4F3FAC - 0x4F3FD6
; =========================================================

4F3FAC:  PUSH            {R4,R6,R7,LR}
4F3FAE:  ADD             R7, SP, #8
4F3FB0:  MOV             R4, R0
4F3FB2:  MOVS            R0, #dword_20; this
4F3FB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3FB8:  LDR             R4, [R4,#0xC]
4F3FBA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F3FBE:  LDR             R1, =(_ZTV26CTaskComplexUseMobilePhone_ptr - 0x4F3FC8)
4F3FC0:  MOVS            R2, #0
4F3FC2:  STR             R4, [R0,#0xC]
4F3FC4:  ADD             R1, PC; _ZTV26CTaskComplexUseMobilePhone_ptr
4F3FC6:  STRH            R2, [R0,#0x18]
4F3FC8:  STRH            R2, [R0,#0x1C]
4F3FCA:  LDR             R1, [R1]; `vtable for'CTaskComplexUseMobilePhone ...
4F3FCC:  STRD.W          R2, R2, [R0,#0x10]
4F3FD0:  ADDS            R1, #8
4F3FD2:  STR             R1, [R0]
4F3FD4:  POP             {R4,R6,R7,PC}
