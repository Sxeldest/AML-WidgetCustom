; =========================================================
; Game Engine Function: _ZNK16CTaskComplexJump5CloneEv
; Address            : 0x5331CC - 0x5331F4
; =========================================================

5331CC:  PUSH            {R4,R5,R7,LR}
5331CE:  ADD             R7, SP, #8
5331D0:  MOV             R4, R0
5331D2:  MOVS            R0, #dword_14; this
5331D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5331D8:  LDR             R5, [R4,#0xC]
5331DA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5331DE:  LDR             R1, =(_ZTV16CTaskComplexJump_ptr - 0x5331E8)
5331E0:  MOVS            R2, #0
5331E2:  STR             R5, [R0,#0xC]
5331E4:  ADD             R1, PC; _ZTV16CTaskComplexJump_ptr
5331E6:  STRB            R2, [R0,#0x10]
5331E8:  LDR             R1, [R1]; `vtable for'CTaskComplexJump ...
5331EA:  ADDS            R1, #8
5331EC:  STR             R1, [R0]
5331EE:  LDRB            R1, [R4,#0x10]
5331F0:  STRB            R1, [R0,#0x10]
5331F2:  POP             {R4,R5,R7,PC}
