; =========================================================
; Game Engine Function: _ZNK42CTaskComplexDiveFromAttachedEntityAndGetUp5CloneEv
; Address            : 0x50EC54 - 0x50EC84
; =========================================================

50EC54:  PUSH            {R4,R6,R7,LR}
50EC56:  ADD             R7, SP, #8
50EC58:  MOV             R4, R0
50EC5A:  MOVS            R0, #dword_24; this
50EC5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50EC60:  LDR             R4, [R4,#0x10]
50EC62:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50EC66:  LDR             R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x50EC72)
50EC68:  MOVS            R2, #0
50EC6A:  STRD.W          R2, R4, [R0,#0xC]
50EC6E:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
50EC70:  STRD.W          R2, R2, [R0,#0x14]
50EC74:  STR             R2, [R0,#0x1C]
50EC76:  MOVS            R2, #1
50EC78:  LDR             R1, [R1]; `vtable for'CTaskComplexDiveFromAttachedEntityAndGetUp ...
50EC7A:  STRB.W          R2, [R0,#0x20]
50EC7E:  ADDS            R1, #8
50EC80:  STR             R1, [R0]
50EC82:  POP             {R4,R6,R7,PC}
