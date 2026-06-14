; =========================================================
; Game Engine Function: _ZNK28CTaskComplexUseScriptedBrain5CloneEv
; Address            : 0x4F4430 - 0x4F4462
; =========================================================

4F4430:  PUSH            {R4,R5,R7,LR}
4F4432:  ADD             R7, SP, #8
4F4434:  MOV             R4, R0
4F4436:  MOVS            R0, #dword_1C; this
4F4438:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F443C:  MOV             R5, R0
4F443E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F4442:  LDR             R0, =(_ZTV28CTaskComplexUseScriptedBrain_ptr - 0x4F444C)
4F4444:  MOVS            R1, #0
4F4446:  STRB            R1, [R5,#0xC]
4F4448:  ADD             R0, PC; _ZTV28CTaskComplexUseScriptedBrain_ptr
4F444A:  STR             R1, [R5,#0x18]
4F444C:  ADD.W           R1, R4, #0xD; char *
4F4450:  LDR             R0, [R0]; `vtable for'CTaskComplexUseScriptedBrain ...
4F4452:  ADDS            R0, #8
4F4454:  STR             R0, [R5]
4F4456:  ADD.W           R0, R5, #0xD; char *
4F445A:  BLX             strcpy
4F445E:  MOV             R0, R5
4F4460:  POP             {R4,R5,R7,PC}
