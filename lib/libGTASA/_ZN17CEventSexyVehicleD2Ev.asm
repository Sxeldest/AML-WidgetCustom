; =========================================================
; Game Engine Function: _ZN17CEventSexyVehicleD2Ev
; Address            : 0x3749A0 - 0x3749C2
; =========================================================

3749A0:  PUSH            {R4,R6,R7,LR}
3749A2:  ADD             R7, SP, #8
3749A4:  MOV             R4, R0
3749A6:  LDR             R0, =(_ZTV17CEventSexyVehicle_ptr - 0x3749AE)
3749A8:  MOV             R1, R4
3749AA:  ADD             R0, PC; _ZTV17CEventSexyVehicle_ptr
3749AC:  LDR             R2, [R0]; `vtable for'CEventSexyVehicle ...
3749AE:  LDR.W           R0, [R1,#0xC]!; CEntity **
3749B2:  ADDS            R2, #8
3749B4:  STR             R2, [R4]
3749B6:  CMP             R0, #0
3749B8:  IT NE
3749BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3749BE:  MOV             R0, R4
3749C0:  POP             {R4,R6,R7,PC}
