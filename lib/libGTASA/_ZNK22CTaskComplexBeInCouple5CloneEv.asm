; =========================================================
; Game Engine Function: _ZNK22CTaskComplexBeInCouple5CloneEv
; Address            : 0x537474 - 0x5374C8
; =========================================================

537474:  PUSH            {R4-R7,LR}
537476:  ADD             R7, SP, #0xC
537478:  PUSH.W          {R8,R9,R11}
53747C:  MOV             R6, R0
53747E:  MOVS            R0, #dword_20; this
537480:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
537484:  MOV             R4, R0
537486:  LDR             R5, [R6,#0x10]
537488:  LDR.W           R8, [R6,#0x18]
53748C:  LDRB.W          R9, [R6,#0x16]
537490:  LDRH            R6, [R6,#0x14]
537492:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
537496:  LDR             R0, =(_ZTV22CTaskComplexBeInCouple_ptr - 0x5374A2)
537498:  MOVS            R1, #0
53749A:  STRH            R6, [R4,#0x14]
53749C:  CMP             R5, #0
53749E:  ADD             R0, PC; _ZTV22CTaskComplexBeInCouple_ptr
5374A0:  STRB.W          R9, [R4,#0x16]
5374A4:  STR.W           R8, [R4,#0x18]
5374A8:  LDR             R0, [R0]; `vtable for'CTaskComplexBeInCouple ...
5374AA:  STRB            R1, [R4,#0x1C]
5374AC:  MOV             R1, R4
5374AE:  ADD.W           R0, R0, #8
5374B2:  STR             R0, [R4]
5374B4:  STR.W           R5, [R1,#0x10]!; CEntity **
5374B8:  ITT NE
5374BA:  MOVNE           R0, R5; this
5374BC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5374C0:  MOV             R0, R4
5374C2:  POP.W           {R8,R9,R11}
5374C6:  POP             {R4-R7,PC}
