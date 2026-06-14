; =========================================================
; Game Engine Function: _ZN17CEventVehicleDiedD2Ev
; Address            : 0x376750 - 0x376772
; =========================================================

376750:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventVehicleDied::~CEventVehicleDied()'
376752:  ADD             R7, SP, #8
376754:  MOV             R4, R0
376756:  LDR             R0, =(_ZTV17CEventVehicleDied_ptr - 0x37675E)
376758:  MOV             R1, R4
37675A:  ADD             R0, PC; _ZTV17CEventVehicleDied_ptr
37675C:  LDR             R2, [R0]; `vtable for'CEventVehicleDied ...
37675E:  LDR.W           R0, [R1,#0xC]!; CEntity **
376762:  ADDS            R2, #8
376764:  STR             R2, [R4]
376766:  CMP             R0, #0
376768:  IT NE
37676A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37676E:  MOV             R0, R4
376770:  POP             {R4,R6,R7,PC}
