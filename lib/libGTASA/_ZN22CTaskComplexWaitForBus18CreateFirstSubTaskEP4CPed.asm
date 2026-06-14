; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForBus18CreateFirstSubTaskEP4CPed
; Address            : 0x4EE4F0 - 0x4EE50E
; =========================================================

4EE4F0:  PUSH            {R7,LR}
4EE4F2:  MOV             R7, SP
4EE4F4:  MOVS            R0, #(byte_9+3); this
4EE4F6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE4FA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EE4FE:  LDR             R1, =(_ZTV21CTaskSimpleWaitForBus_ptr - 0x4EE508)
4EE500:  MOVS            R2, #0
4EE502:  STR             R2, [R0,#8]
4EE504:  ADD             R1, PC; _ZTV21CTaskSimpleWaitForBus_ptr
4EE506:  LDR             R1, [R1]; `vtable for'CTaskSimpleWaitForBus ...
4EE508:  ADDS            R1, #8
4EE50A:  STR             R1, [R0]
4EE50C:  POP             {R7,PC}
