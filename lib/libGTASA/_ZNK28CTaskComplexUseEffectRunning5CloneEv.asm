; =========================================================
; Game Engine Function: _ZNK28CTaskComplexUseEffectRunning5CloneEv
; Address            : 0x4F4548 - 0x4F45A4
; =========================================================

4F4548:  PUSH            {R4-R7,LR}
4F454A:  ADD             R7, SP, #0xC
4F454C:  PUSH.W          {R11}
4F4550:  MOV             R5, R0
4F4552:  MOVS            R0, #dword_24; this
4F4554:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F4558:  MOV             R4, R0
4F455A:  LDRD.W          R6, R5, [R5,#0xC]
4F455E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F4562:  LDR             R0, =(_ZTV21CTaskComplexUseEffect_ptr - 0x4F456E)
4F4564:  MOVS            R1, #0
4F4566:  MOVS            R2, #4
4F4568:  STR             R6, [R4,#0xC]
4F456A:  ADD             R0, PC; _ZTV21CTaskComplexUseEffect_ptr
4F456C:  STRD.W          R1, R1, [R4,#0x14]
4F4570:  STR             R2, [R4,#0x1C]
4F4572:  CMP             R5, #0
4F4574:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffect ...
4F4576:  STRB.W          R1, [R4,#0x20]
4F457A:  MOV             R1, R4
4F457C:  ADD.W           R0, R0, #8
4F4580:  STR             R0, [R4]
4F4582:  STR.W           R5, [R1,#0x10]!; CEntity **
4F4586:  ITT NE
4F4588:  MOVNE           R0, R5; this
4F458A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F458E:  LDR             R0, =(_ZTV28CTaskComplexUseEffectRunning_ptr - 0x4F4598)
4F4590:  MOVS            R1, #6
4F4592:  STR             R1, [R4,#0x1C]
4F4594:  ADD             R0, PC; _ZTV28CTaskComplexUseEffectRunning_ptr
4F4596:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffectRunning ...
4F4598:  ADDS            R0, #8
4F459A:  STR             R0, [R4]
4F459C:  MOV             R0, R4
4F459E:  POP.W           {R11}
4F45A2:  POP             {R4-R7,PC}
