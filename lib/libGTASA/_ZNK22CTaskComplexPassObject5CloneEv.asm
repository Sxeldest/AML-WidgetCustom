; =========================================================
; Game Engine Function: _ZNK22CTaskComplexPassObject5CloneEv
; Address            : 0x51C55C - 0x51C5A4
; =========================================================

51C55C:  PUSH            {R4-R7,LR}
51C55E:  ADD             R7, SP, #0xC
51C560:  PUSH.W          {R11}
51C564:  MOV             R6, R0
51C566:  MOVS            R0, #word_30; this
51C568:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51C56C:  LDR             R5, [R6,#0xC]
51C56E:  MOV             R4, R0
51C570:  LDRB            R6, [R6,#0x10]
51C572:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51C576:  LDR             R0, =(_ZTV22CTaskComplexPassObject_ptr - 0x51C582)
51C578:  MOVS            R1, #0
51C57A:  STRH            R1, [R4,#0x28]
51C57C:  CMP             R5, #0
51C57E:  ADD             R0, PC; _ZTV22CTaskComplexPassObject_ptr
51C580:  STRB            R6, [R4,#0x10]
51C582:  STRD.W          R1, R1, [R4,#0x20]
51C586:  MOV             R1, R4
51C588:  LDR             R0, [R0]; `vtable for'CTaskComplexPassObject ...
51C58A:  ADD.W           R0, R0, #8
51C58E:  STR             R0, [R4]
51C590:  STR.W           R5, [R1,#0xC]!; CEntity **
51C594:  ITT NE
51C596:  MOVNE           R0, R5; this
51C598:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51C59C:  MOV             R0, R4
51C59E:  POP.W           {R11}
51C5A2:  POP             {R4-R7,PC}
