; =========================================================
; Game Engine Function: _ZNK26CTaskSimpleUninterruptable5CloneEv
; Address            : 0x3076E0 - 0x3076FA
; =========================================================

3076E0:  PUSH            {R7,LR}
3076E2:  MOV             R7, SP
3076E4:  MOVS            R0, #byte_8; this
3076E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3076EA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
3076EE:  LDR             R1, =(_ZTV26CTaskSimpleUninterruptable_ptr - 0x3076F4)
3076F0:  ADD             R1, PC; _ZTV26CTaskSimpleUninterruptable_ptr
3076F2:  LDR             R1, [R1]; `vtable for'CTaskSimpleUninterruptable ...
3076F4:  ADDS            R1, #8
3076F6:  STR             R1, [R0]
3076F8:  POP             {R7,PC}
