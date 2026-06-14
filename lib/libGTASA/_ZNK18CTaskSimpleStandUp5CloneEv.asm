; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleStandUp5CloneEv
; Address            : 0x4F2EDC - 0x4F2F02
; =========================================================

4F2EDC:  PUSH            {R4,R6,R7,LR}
4F2EDE:  ADD             R7, SP, #8
4F2EE0:  MOV             R4, R0
4F2EE2:  MOVS            R0, #word_10; this
4F2EE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2EE8:  LDRB            R4, [R4,#8]
4F2EEA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F2EEE:  LDR             R1, =(_ZTV18CTaskSimpleStandUp_ptr - 0x4F2EF8)
4F2EF0:  MOVS            R2, #0
4F2EF2:  STRB            R4, [R0,#8]
4F2EF4:  ADD             R1, PC; _ZTV18CTaskSimpleStandUp_ptr
4F2EF6:  STRB            R2, [R0,#9]
4F2EF8:  STR             R2, [R0,#0xC]
4F2EFA:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandUp ...
4F2EFC:  ADDS            R1, #8
4F2EFE:  STR             R1, [R0]
4F2F00:  POP             {R4,R6,R7,PC}
