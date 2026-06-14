; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleHitHead5CloneEv
; Address            : 0x50ED30 - 0x50ED50
; =========================================================

50ED30:  PUSH            {R7,LR}
50ED32:  MOV             R7, SP
50ED34:  MOVS            R0, #word_10; this
50ED36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50ED3A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50ED3E:  LDR             R1, =(_ZTV18CTaskSimpleHitHead_ptr - 0x50ED48)
50ED40:  MOVS            R2, #0
50ED42:  STRB            R2, [R0,#8]
50ED44:  ADD             R1, PC; _ZTV18CTaskSimpleHitHead_ptr
50ED46:  STR             R2, [R0,#0xC]
50ED48:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitHead ...
50ED4A:  ADDS            R1, #8
50ED4C:  STR             R1, [R0]
50ED4E:  POP             {R7,PC}
