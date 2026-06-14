; =========================================================
; Game Engine Function: _ZNK26CTaskComplexPresentIDToCop5CloneEv
; Address            : 0x512600 - 0x51262E
; =========================================================

512600:  PUSH            {R4,R5,R7,LR}
512602:  ADD             R7, SP, #8
512604:  MOV             R4, R0
512606:  MOVS            R0, #word_10; this
512608:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51260C:  MOV             R5, R0
51260E:  LDR             R4, [R4,#0xC]
512610:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512614:  LDR             R0, =(_ZTV26CTaskComplexPresentIDToCop_ptr - 0x51261C)
512616:  MOV             R1, R5
512618:  ADD             R0, PC; _ZTV26CTaskComplexPresentIDToCop_ptr
51261A:  LDR             R0, [R0]; `vtable for'CTaskComplexPresentIDToCop ...
51261C:  ADDS            R0, #8
51261E:  STR.W           R0, [R1],#0xC; CEntity **
512622:  MOV             R0, R4; this
512624:  STR             R4, [R1]
512626:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51262A:  MOV             R0, R5
51262C:  POP             {R4,R5,R7,PC}
