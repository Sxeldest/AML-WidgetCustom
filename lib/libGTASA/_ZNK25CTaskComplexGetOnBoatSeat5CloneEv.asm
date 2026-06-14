; =========================================================
; Game Engine Function: _ZNK25CTaskComplexGetOnBoatSeat5CloneEv
; Address            : 0x5073C4 - 0x5073F8
; =========================================================

5073C4:  PUSH            {R4,R5,R7,LR}
5073C6:  ADD             R7, SP, #8
5073C8:  MOV             R5, R0
5073CA:  MOVS            R0, #word_10; this
5073CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5073D0:  MOV             R4, R0
5073D2:  LDR             R5, [R5,#0xC]
5073D4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5073D8:  LDR             R0, =(_ZTV25CTaskComplexGetOnBoatSeat_ptr - 0x5073E2)
5073DA:  MOV             R1, R4
5073DC:  CMP             R5, #0
5073DE:  ADD             R0, PC; _ZTV25CTaskComplexGetOnBoatSeat_ptr
5073E0:  LDR             R0, [R0]; `vtable for'CTaskComplexGetOnBoatSeat ...
5073E2:  ADD.W           R0, R0, #8
5073E6:  STR.W           R0, [R1],#0xC; CEntity **
5073EA:  STR             R5, [R1]
5073EC:  ITT NE
5073EE:  MOVNE           R0, R5; this
5073F0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5073F4:  MOV             R0, R4
5073F6:  POP             {R4,R5,R7,PC}
