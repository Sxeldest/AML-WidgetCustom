; =========================================================
; Game Engine Function: _ZNK26CTaskComplexKillAllThreats5CloneEv
; Address            : 0x4EA5E4 - 0x4EA614
; =========================================================

4EA5E4:  PUSH            {R4-R7,LR}
4EA5E6:  ADD             R7, SP, #0xC
4EA5E8:  PUSH.W          {R11}
4EA5EC:  MOV             R4, R0
4EA5EE:  MOVS            R0, #off_18; this
4EA5F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA5F4:  LDRD.W          R5, R6, [R4,#0xC]
4EA5F8:  LDR             R4, [R4,#0x14]
4EA5FA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA5FE:  LDR             R1, =(_ZTV26CTaskComplexKillAllThreats_ptr - 0x4EA608)
4EA600:  STRD.W          R5, R6, [R0,#0xC]
4EA604:  ADD             R1, PC; _ZTV26CTaskComplexKillAllThreats_ptr
4EA606:  STR             R4, [R0,#0x14]
4EA608:  LDR             R1, [R1]; `vtable for'CTaskComplexKillAllThreats ...
4EA60A:  ADDS            R1, #8
4EA60C:  STR             R1, [R0]
4EA60E:  POP.W           {R11}
4EA612:  POP             {R4-R7,PC}
