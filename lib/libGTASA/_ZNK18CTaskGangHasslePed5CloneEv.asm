; =========================================================
; Game Engine Function: _ZNK18CTaskGangHasslePed5CloneEv
; Address            : 0x51C448 - 0x51C49C
; =========================================================

51C448:  PUSH            {R4-R7,LR}
51C44A:  ADD             R7, SP, #0xC
51C44C:  PUSH.W          {R8,R9,R11}
51C450:  MOV             R6, R0
51C452:  MOVS            R0, #word_2C; this
51C454:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51C458:  ADD.W           R9, R6, #0xC
51C45C:  MOV             R4, R0
51C45E:  LDM.W           R9, {R5,R8,R9}
51C462:  LDR             R6, [R6,#0x18]
51C464:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51C468:  LDR             R0, =(_ZTV18CTaskGangHasslePed_ptr - 0x51C474)
51C46A:  MOVS            R1, #0
51C46C:  STRH            R1, [R4,#0x28]
51C46E:  CMP             R5, #0
51C470:  ADD             R0, PC; _ZTV18CTaskGangHasslePed_ptr
51C472:  STRD.W          R8, R9, [R4,#0x10]
51C476:  STR             R6, [R4,#0x18]
51C478:  LDR             R0, [R0]; `vtable for'CTaskGangHasslePed ...
51C47A:  STRB            R1, [R4,#0x1C]
51C47C:  STRD.W          R1, R1, [R4,#0x20]
51C480:  MOV             R1, R4
51C482:  ADD.W           R0, R0, #8
51C486:  STR             R0, [R4]
51C488:  STR.W           R5, [R1,#0xC]!; CEntity **
51C48C:  ITT NE
51C48E:  MOVNE           R0, R5; this
51C490:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51C494:  MOV             R0, R4
51C496:  POP.W           {R8,R9,R11}
51C49A:  POP             {R4-R7,PC}
