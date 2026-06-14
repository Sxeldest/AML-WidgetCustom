; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor18CreateFirstSubTaskEP4CPed
; Address            : 0x4EF2B4 - 0x4EF2EC
; =========================================================

4EF2B4:  PUSH            {R4,R5,R7,LR}
4EF2B6:  ADD             R7, SP, #8
4EF2B8:  MOV             R4, R0
4EF2BA:  MOV             R5, R4
4EF2BC:  LDR.W           R0, [R5,#0x10]!; this
4EF2C0:  CBZ             R0, loc_4EF2CC
4EF2C2:  MOV             R1, R5; CEntity **
4EF2C4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EF2C8:  MOVS            R0, #0
4EF2CA:  STR             R0, [R5]
4EF2CC:  MOVS            R0, #0
4EF2CE:  STR             R0, [R4,#0x18]
4EF2D0:  STRB            R0, [R4,#0x14]
4EF2D2:  MOVS            R0, #word_10; this
4EF2D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF2D8:  LDR             R4, [R4,#0xC]
4EF2DA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF2DE:  LDR             R1, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4EF2E6)
4EF2E0:  STR             R4, [R0,#0xC]
4EF2E2:  ADD             R1, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4EF2E4:  LDR             R1, [R1]; `vtable for'CTaskComplexUseScriptedAttractor ...
4EF2E6:  ADDS            R1, #8
4EF2E8:  STR             R1, [R0]
4EF2EA:  POP             {R4,R5,R7,PC}
