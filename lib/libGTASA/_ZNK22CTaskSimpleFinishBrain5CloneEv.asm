; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleFinishBrain5CloneEv
; Address            : 0x32EC14 - 0x32EC2E
; =========================================================

32EC14:  PUSH            {R7,LR}
32EC16:  MOV             R7, SP
32EC18:  MOVS            R0, #byte_8; this
32EC1A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32EC1E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
32EC22:  LDR             R1, =(_ZTV22CTaskSimpleFinishBrain_ptr - 0x32EC28)
32EC24:  ADD             R1, PC; _ZTV22CTaskSimpleFinishBrain_ptr
32EC26:  LDR             R1, [R1]; `vtable for'CTaskSimpleFinishBrain ...
32EC28:  ADDS            R1, #8
32EC2A:  STR             R1, [R0]
32EC2C:  POP             {R7,PC}
