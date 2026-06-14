; =========================================================
; Game Engine Function: _ZNK27CTaskComplexKillPedFromBoat5CloneEv
; Address            : 0x4EA6C8 - 0x4EA6FC
; =========================================================

4EA6C8:  PUSH            {R4,R5,R7,LR}
4EA6CA:  ADD             R7, SP, #8
4EA6CC:  MOV             R5, R0
4EA6CE:  MOVS            R0, #word_10; this
4EA6D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA6D4:  MOV             R4, R0
4EA6D6:  LDR             R5, [R5,#0xC]
4EA6D8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA6DC:  LDR             R0, =(_ZTV27CTaskComplexKillPedFromBoat_ptr - 0x4EA6E6)
4EA6DE:  MOV             R1, R4
4EA6E0:  CMP             R5, #0
4EA6E2:  ADD             R0, PC; _ZTV27CTaskComplexKillPedFromBoat_ptr
4EA6E4:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedFromBoat ...
4EA6E6:  ADD.W           R0, R0, #8
4EA6EA:  STR.W           R0, [R1],#0xC; CEntity **
4EA6EE:  STR             R5, [R1]
4EA6F0:  ITT NE
4EA6F2:  MOVNE           R0, R5; this
4EA6F4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EA6F8:  MOV             R0, R4
4EA6FA:  POP             {R4,R5,R7,PC}
