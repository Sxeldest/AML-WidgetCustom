; =========================================================
; Game Engine Function: _ZNK28CTaskComplexWalkAlongsidePed5CloneEv
; Address            : 0x5373CC - 0x537410
; =========================================================

5373CC:  PUSH            {R4-R7,LR}
5373CE:  ADD             R7, SP, #0xC
5373D0:  PUSH.W          {R11}
5373D4:  MOV             R4, R0
5373D6:  MOVS            R0, #dword_20; this
5373D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5373DC:  MOV             R5, R0
5373DE:  LDRD.W          R6, R4, [R4,#0xC]
5373E2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5373E6:  LDR             R0, =(_ZTV28CTaskComplexWalkAlongsidePed_ptr - 0x5373F2)
5373E8:  MOVS            R1, #0
5373EA:  STRD.W          R4, R1, [R5,#0x10]
5373EE:  ADD             R0, PC; _ZTV28CTaskComplexWalkAlongsidePed_ptr
5373F0:  STRD.W          R1, R1, [R5,#0x18]
5373F4:  MOV             R1, R5
5373F6:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkAlongsidePed ...
5373F8:  ADDS            R0, #8
5373FA:  STR             R0, [R5]
5373FC:  STR.W           R6, [R1,#0xC]!; CEntity **
537400:  MOV             R0, R6; this
537402:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
537406:  STR             R4, [R5,#0x10]
537408:  MOV             R0, R5
53740A:  POP.W           {R11}
53740E:  POP             {R4-R7,PC}
