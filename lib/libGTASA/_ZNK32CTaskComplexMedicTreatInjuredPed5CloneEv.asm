; =========================================================
; Game Engine Function: _ZNK32CTaskComplexMedicTreatInjuredPed5CloneEv
; Address            : 0x51244C - 0x5124AC
; =========================================================

51244C:  PUSH            {R4-R7,LR}
51244E:  ADD             R7, SP, #0xC
512450:  PUSH.W          {R8}
512454:  MOV             R6, R0
512456:  MOVS            R0, #word_2C; this
512458:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51245C:  LDRD.W          R8, R5, [R6,#0xC]
512460:  MOV             R4, R0
512462:  LDRB            R6, [R6,#0x14]
512464:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512468:  LDR             R0, =(_ZTV32CTaskComplexMedicTreatInjuredPed_ptr - 0x512474)
51246A:  MOVS            R1, #0
51246C:  STRB            R6, [R4,#0x14]
51246E:  MOV             R6, R4
512470:  ADD             R0, PC; _ZTV32CTaskComplexMedicTreatInjuredPed_ptr
512472:  STR             R1, [R4,#0x18]
512474:  STRB.W          R1, [R4,#0x28]
512478:  MOV             R1, R4
51247A:  LDR             R0, [R0]; `vtable for'CTaskComplexMedicTreatInjuredPed ...
51247C:  CMP.W           R8, #0
512480:  ADD.W           R0, R0, #8
512484:  STR             R0, [R4]
512486:  STR.W           R5, [R6,#0x10]!
51248A:  STR.W           R8, [R1,#0xC]!; CEntity **
51248E:  BEQ             loc_512498
512490:  MOV             R0, R8; this
512492:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
512496:  LDR             R5, [R6]
512498:  CMP             R5, #0
51249A:  ITTT NE
51249C:  MOVNE           R0, R5; this
51249E:  MOVNE           R1, R6; CEntity **
5124A0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5124A4:  MOV             R0, R4
5124A6:  POP.W           {R8}
5124AA:  POP             {R4-R7,PC}
