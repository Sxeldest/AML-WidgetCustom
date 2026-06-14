; =========================================================
; Game Engine Function: _ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType
; Address            : 0x37700C - 0x37705E
; =========================================================

37700C:  PUSH            {R4,R5,R7,LR}
37700E:  ADD             R7, SP, #8
377010:  MOV             R4, R0
377012:  LDR             R0, =(_ZTV19CEventVehicleDamage_ptr - 0x37701C)
377014:  MOVS            R5, #0
377016:  CMP             R1, #0
377018:  ADD             R0, PC; _ZTV19CEventVehicleDamage_ptr
37701A:  STR             R5, [R4,#4]
37701C:  MOV             R5, #0xC80100
377024:  LDR             R0, [R0]; `vtable for'CEventVehicleDamage ...
377026:  STR             R5, [R4,#8]
377028:  MOVW            R5, #0xFFFF
37702C:  STRH            R5, [R4,#0xC]
37702E:  MOV             R5, R4
377030:  STR             R3, [R4,#0x18]
377032:  MOV             R3, R4
377034:  ADD.W           R0, R0, #8
377038:  STR             R0, [R4]
37703A:  STR.W           R2, [R5,#0x14]!
37703E:  STR.W           R1, [R3,#0x10]!
377042:  BEQ             loc_37704E
377044:  MOV             R0, R1; this
377046:  MOV             R1, R3; CEntity **
377048:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37704C:  LDR             R2, [R5]
37704E:  CMP             R2, #0
377050:  ITTT NE
377052:  MOVNE           R0, R2; this
377054:  MOVNE           R1, R5; CEntity **
377056:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37705A:  MOV             R0, R4
37705C:  POP             {R4,R5,R7,PC}
