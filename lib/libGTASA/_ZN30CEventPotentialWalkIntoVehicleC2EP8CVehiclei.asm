; =========================================================
; Game Engine Function: _ZN30CEventPotentialWalkIntoVehicleC2EP8CVehiclei
; Address            : 0x373EFC - 0x373F3A
; =========================================================

373EFC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPotentialWalkIntoVehicle::CEventPotentialWalkIntoVehicle(CVehicle *, int)'
373EFE:  ADD             R7, SP, #8
373F00:  MOV             R4, R0
373F02:  LDR             R0, =(_ZTV30CEventPotentialWalkIntoVehicle_ptr - 0x373F0C)
373F04:  MOVS            R3, #0
373F06:  CMP             R1, #0
373F08:  ADD             R0, PC; _ZTV30CEventPotentialWalkIntoVehicle_ptr
373F0A:  STR             R3, [R4,#4]
373F0C:  MOV             R3, #0xC80100
373F14:  LDR             R0, [R0]; `vtable for'CEventPotentialWalkIntoVehicle ...
373F16:  STR             R3, [R4,#8]
373F18:  MOVW            R3, #0xFFFF
373F1C:  STRH            R3, [R4,#0xC]
373F1E:  ADD.W           R0, R0, #8
373F22:  STR             R2, [R4,#0x14]
373F24:  MOV             R2, R4
373F26:  STR             R0, [R4]
373F28:  STR.W           R1, [R2,#0x10]!
373F2C:  ITTT NE
373F2E:  MOVNE           R0, R1; this
373F30:  MOVNE           R1, R2; CEntity **
373F32:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
373F36:  MOV             R0, R4
373F38:  POP             {R4,R6,R7,PC}
