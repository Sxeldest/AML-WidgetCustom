; =========================================================
; Game Engine Function: _ZNK32CTaskComplexUseScriptedAttractor5CloneEv
; Address            : 0x4F3B1C - 0x4F3B3C
; =========================================================

4F3B1C:  PUSH            {R4,R6,R7,LR}
4F3B1E:  ADD             R7, SP, #8
4F3B20:  MOV             R4, R0
4F3B22:  MOVS            R0, #word_10; this
4F3B24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3B28:  LDR             R4, [R4,#0xC]
4F3B2A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F3B2E:  LDR             R1, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4F3B36)
4F3B30:  STR             R4, [R0,#0xC]
4F3B32:  ADD             R1, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4F3B34:  LDR             R1, [R1]; `vtable for'CTaskComplexUseScriptedAttractor ...
4F3B36:  ADDS            R1, #8
4F3B38:  STR             R1, [R0]
4F3B3A:  POP             {R4,R6,R7,PC}
