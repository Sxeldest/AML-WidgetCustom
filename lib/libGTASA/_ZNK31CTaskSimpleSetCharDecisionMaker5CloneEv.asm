; =========================================================
; Game Engine Function: _ZNK31CTaskSimpleSetCharDecisionMaker5CloneEv
; Address            : 0x4F2098 - 0x4F20B8
; =========================================================

4F2098:  PUSH            {R4,R6,R7,LR}
4F209A:  ADD             R7, SP, #8
4F209C:  MOV             R4, R0
4F209E:  MOVS            R0, #(byte_9+3); this
4F20A0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F20A4:  LDR             R4, [R4,#8]
4F20A6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F20AA:  LDR             R1, =(_ZTV31CTaskSimpleSetCharDecisionMaker_ptr - 0x4F20B2)
4F20AC:  STR             R4, [R0,#8]
4F20AE:  ADD             R1, PC; _ZTV31CTaskSimpleSetCharDecisionMaker_ptr
4F20B0:  LDR             R1, [R1]; `vtable for'CTaskSimpleSetCharDecisionMaker ...
4F20B2:  ADDS            R1, #8
4F20B4:  STR             R1, [R0]
4F20B6:  POP             {R4,R6,R7,PC}
