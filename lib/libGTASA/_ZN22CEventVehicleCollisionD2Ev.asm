; =========================================================
; Game Engine Function: _ZN22CEventVehicleCollisionD2Ev
; Address            : 0x370F04 - 0x370F26
; =========================================================

370F04:  PUSH            {R4,R6,R7,LR}
370F06:  ADD             R7, SP, #8
370F08:  MOV             R4, R0
370F0A:  LDR             R0, =(_ZTV22CEventVehicleCollision_ptr - 0x370F12)
370F0C:  MOV             R1, R4
370F0E:  ADD             R0, PC; _ZTV22CEventVehicleCollision_ptr
370F10:  LDR             R2, [R0]; `vtable for'CEventVehicleCollision ...
370F12:  LDR.W           R0, [R1,#0x14]!; CEntity **
370F16:  ADDS            R2, #8
370F18:  STR             R2, [R4]
370F1A:  CMP             R0, #0
370F1C:  IT NE
370F1E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
370F22:  MOV             R0, R4
370F24:  POP             {R4,R6,R7,PC}
