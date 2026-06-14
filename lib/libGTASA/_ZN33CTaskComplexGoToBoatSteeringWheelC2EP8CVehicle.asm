; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheelC2EP8CVehicle
; Address            : 0x505D3C - 0x505D6E
; =========================================================

505D3C:  PUSH            {R4,R5,R7,LR}
505D3E:  ADD             R7, SP, #8
505D40:  MOV             R5, R1
505D42:  MOV             R4, R0
505D44:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
505D48:  LDR             R0, =(_ZTV33CTaskComplexGoToBoatSteeringWheel_ptr - 0x505D54)
505D4A:  MOVS            R1, #0
505D4C:  STRB            R1, [R4,#0x1C]
505D4E:  CMP             R5, #0
505D50:  ADD             R0, PC; _ZTV33CTaskComplexGoToBoatSteeringWheel_ptr
505D52:  STR             R1, [R4,#0x20]
505D54:  MOV             R1, R4
505D56:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToBoatSteeringWheel ...
505D58:  ADD.W           R0, R0, #8
505D5C:  STR             R0, [R4]
505D5E:  STR.W           R5, [R1,#0x18]!; CEntity **
505D62:  ITT NE
505D64:  MOVNE           R0, R5; this
505D66:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
505D6A:  MOV             R0, R4
505D6C:  POP             {R4,R5,R7,PC}
