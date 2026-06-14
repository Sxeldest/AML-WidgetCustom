; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeatsC2EP8CVehicle
; Address            : 0x4FCB24 - 0x4FCB58
; =========================================================

4FCB24:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexShuffleSeats::CTaskComplexShuffleSeats(CVehicle *)'
4FCB26:  ADD             R7, SP, #8
4FCB28:  MOV             R5, R1
4FCB2A:  MOV             R4, R0
4FCB2C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FCB30:  LDR             R0, =(_ZTV24CTaskComplexShuffleSeats_ptr - 0x4FCB3C)
4FCB32:  MOVS            R1, #0
4FCB34:  STR             R1, [R4,#0x24]
4FCB36:  CMP             R5, #0
4FCB38:  ADD             R0, PC; _ZTV24CTaskComplexShuffleSeats_ptr
4FCB3A:  STRB.W          R1, [R4,#0x28]
4FCB3E:  MOV             R1, R4
4FCB40:  LDR             R0, [R0]; `vtable for'CTaskComplexShuffleSeats ...
4FCB42:  ADD.W           R0, R0, #8
4FCB46:  STR             R0, [R4]
4FCB48:  STR.W           R5, [R1,#0xC]!; CEntity **
4FCB4C:  ITT NE
4FCB4E:  MOVNE           R0, R5; this
4FCB50:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FCB54:  MOV             R0, R4
4FCB56:  POP             {R4,R5,R7,PC}
