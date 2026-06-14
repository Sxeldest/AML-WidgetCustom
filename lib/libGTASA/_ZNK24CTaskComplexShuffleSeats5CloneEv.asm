; =========================================================
; Game Engine Function: _ZNK24CTaskComplexShuffleSeats5CloneEv
; Address            : 0x4FF72C - 0x4FF768
; =========================================================

4FF72C:  PUSH            {R4,R5,R7,LR}
4FF72E:  ADD             R7, SP, #8
4FF730:  MOV             R5, R0
4FF732:  MOVS            R0, #word_2C; this
4FF734:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FF738:  MOV             R4, R0
4FF73A:  LDR             R5, [R5,#0xC]
4FF73C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FF740:  LDR             R0, =(_ZTV24CTaskComplexShuffleSeats_ptr - 0x4FF74C)
4FF742:  MOVS            R1, #0
4FF744:  STR             R1, [R4,#0x24]
4FF746:  CMP             R5, #0
4FF748:  ADD             R0, PC; _ZTV24CTaskComplexShuffleSeats_ptr
4FF74A:  STRB.W          R1, [R4,#0x28]
4FF74E:  MOV             R1, R4
4FF750:  LDR             R0, [R0]; `vtable for'CTaskComplexShuffleSeats ...
4FF752:  ADD.W           R0, R0, #8
4FF756:  STR             R0, [R4]
4FF758:  STR.W           R5, [R1,#0xC]!; CEntity **
4FF75C:  ITT NE
4FF75E:  MOVNE           R0, R5; this
4FF760:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FF764:  MOV             R0, R4
4FF766:  POP             {R4,R5,R7,PC}
