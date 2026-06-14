; =========================================================
; Game Engine Function: _ZNK30CTaskComplexUseEffectSprinting5CloneEv
; Address            : 0x4F4600 - 0x4F465C
; =========================================================

4F4600:  PUSH            {R4-R7,LR}
4F4602:  ADD             R7, SP, #0xC
4F4604:  PUSH.W          {R11}
4F4608:  MOV             R5, R0
4F460A:  MOVS            R0, #dword_24; this
4F460C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F4610:  MOV             R4, R0
4F4612:  LDRD.W          R6, R5, [R5,#0xC]
4F4616:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F461A:  LDR             R0, =(_ZTV21CTaskComplexUseEffect_ptr - 0x4F4626)
4F461C:  MOVS            R1, #0
4F461E:  MOVS            R2, #4
4F4620:  STR             R6, [R4,#0xC]
4F4622:  ADD             R0, PC; _ZTV21CTaskComplexUseEffect_ptr
4F4624:  STRD.W          R1, R1, [R4,#0x14]
4F4628:  STR             R2, [R4,#0x1C]
4F462A:  CMP             R5, #0
4F462C:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffect ...
4F462E:  STRB.W          R1, [R4,#0x20]
4F4632:  MOV             R1, R4
4F4634:  ADD.W           R0, R0, #8
4F4638:  STR             R0, [R4]
4F463A:  STR.W           R5, [R1,#0x10]!; CEntity **
4F463E:  ITT NE
4F4640:  MOVNE           R0, R5; this
4F4642:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F4646:  LDR             R0, =(_ZTV30CTaskComplexUseEffectSprinting_ptr - 0x4F4650)
4F4648:  MOVS            R1, #7
4F464A:  STR             R1, [R4,#0x1C]
4F464C:  ADD             R0, PC; _ZTV30CTaskComplexUseEffectSprinting_ptr
4F464E:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffectSprinting ...
4F4650:  ADDS            R0, #8
4F4652:  STR             R0, [R4]
4F4654:  MOV             R0, R4
4F4656:  POP.W           {R11}
4F465A:  POP             {R4-R7,PC}
