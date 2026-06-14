; =========================================================
; Game Engine Function: _ZNK23CTaskComplexLeaveAnyCar5CloneEv
; Address            : 0x4FD31C - 0x4FD340
; =========================================================

4FD31C:  PUSH            {R4,R5,R7,LR}
4FD31E:  ADD             R7, SP, #8
4FD320:  MOV             R4, R0
4FD322:  MOVS            R0, #dword_14; this
4FD324:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FD328:  LDRH            R5, [R4,#0x10]
4FD32A:  LDR             R4, [R4,#0xC]
4FD32C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FD330:  LDR             R1, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x4FD338)
4FD332:  STR             R4, [R0,#0xC]
4FD334:  ADD             R1, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
4FD336:  STRH            R5, [R0,#0x10]
4FD338:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveAnyCar ...
4FD33A:  ADDS            R1, #8
4FD33C:  STR             R1, [R0]
4FD33E:  POP             {R4,R5,R7,PC}
