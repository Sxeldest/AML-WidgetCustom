; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleNone5CloneEv
; Address            : 0x4B8CDC - 0x4B8CF6
; =========================================================

4B8CDC:  PUSH            {R7,LR}
4B8CDE:  MOV             R7, SP
4B8CE0:  MOVS            R0, #byte_8; this
4B8CE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4B8CE6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B8CEA:  LDR             R1, =(_ZTV15CTaskSimpleNone_ptr - 0x4B8CF0)
4B8CEC:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
4B8CEE:  LDR             R1, [R1]; `vtable for'CTaskSimpleNone ...
4B8CF0:  ADDS            R1, #8
4B8CF2:  STR             R1, [R0]
4B8CF4:  POP             {R7,PC}
