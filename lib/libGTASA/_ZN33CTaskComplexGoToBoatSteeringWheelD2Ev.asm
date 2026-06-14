; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheelD2Ev
; Address            : 0x505D74 - 0x505D9C
; =========================================================

505D74:  PUSH            {R4,R6,R7,LR}
505D76:  ADD             R7, SP, #8
505D78:  MOV             R4, R0
505D7A:  LDR             R0, =(_ZTV33CTaskComplexGoToBoatSteeringWheel_ptr - 0x505D82)
505D7C:  MOV             R1, R4
505D7E:  ADD             R0, PC; _ZTV33CTaskComplexGoToBoatSteeringWheel_ptr
505D80:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToBoatSteeringWheel ...
505D82:  LDR.W           R0, [R1,#0x18]!; CEntity **
505D86:  ADDS            R2, #8
505D88:  STR             R2, [R4]
505D8A:  CMP             R0, #0
505D8C:  IT NE
505D8E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
505D92:  MOV             R0, R4; this
505D94:  POP.W           {R4,R6,R7,LR}
505D98:  B.W             sub_18EDE8
