; =========================================================
; Game Engine Function: _ZN31CEventPotentialWalkIntoBuildingD0Ev
; Address            : 0x3789B0 - 0x3789FA
; =========================================================

3789B0:  PUSH            {R4,R6,R7,LR}
3789B2:  ADD             R7, SP, #8
3789B4:  MOV             R4, R0
3789B6:  LDR             R0, =(_ZTV23CEventBuildingCollision_ptr - 0x3789BE)
3789B8:  MOV             R1, R4
3789BA:  ADD             R0, PC; _ZTV23CEventBuildingCollision_ptr
3789BC:  LDR             R2, [R0]; `vtable for'CEventBuildingCollision ...
3789BE:  LDR.W           R0, [R1,#0x14]!; CEntity **
3789C2:  ADDS            R2, #8
3789C4:  STR             R2, [R4]
3789C6:  CMP             R0, #0
3789C8:  IT NE
3789CA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3789CE:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3789DC)
3789D0:  MOV             R3, #0xF0F0F0F1
3789D8:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3789DA:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3789DC:  LDR             R0, [R0]; CPools::ms_pEventPool
3789DE:  LDRD.W          R1, R2, [R0]
3789E2:  SUBS            R1, R4, R1
3789E4:  ASRS            R1, R1, #2
3789E6:  MULS            R1, R3
3789E8:  LDRB            R3, [R2,R1]
3789EA:  ORR.W           R3, R3, #0x80
3789EE:  STRB            R3, [R2,R1]
3789F0:  LDR             R2, [R0,#0xC]
3789F2:  CMP             R1, R2
3789F4:  IT LT
3789F6:  STRLT           R1, [R0,#0xC]
3789F8:  POP             {R4,R6,R7,PC}
