; =========================================================
; Game Engine Function: _ZN30CEventPotentialWalkIntoVehicleD0Ev
; Address            : 0x373F68 - 0x373FB2
; =========================================================

373F68:  PUSH            {R4,R6,R7,LR}
373F6A:  ADD             R7, SP, #8
373F6C:  MOV             R4, R0
373F6E:  LDR             R0, =(_ZTV30CEventPotentialWalkIntoVehicle_ptr - 0x373F76)
373F70:  MOV             R1, R4
373F72:  ADD             R0, PC; _ZTV30CEventPotentialWalkIntoVehicle_ptr
373F74:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoVehicle ...
373F76:  LDR.W           R0, [R1,#0x10]!; CEntity **
373F7A:  ADDS            R2, #8
373F7C:  STR             R2, [R4]
373F7E:  CMP             R0, #0
373F80:  IT NE
373F82:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373F86:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x373F94)
373F88:  MOV             R3, #0xF0F0F0F1
373F90:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
373F92:  LDR             R0, [R0]; CPools::ms_pEventPool ...
373F94:  LDR             R0, [R0]; CPools::ms_pEventPool
373F96:  LDRD.W          R1, R2, [R0]
373F9A:  SUBS            R1, R4, R1
373F9C:  ASRS            R1, R1, #2
373F9E:  MULS            R1, R3
373FA0:  LDRB            R3, [R2,R1]
373FA2:  ORR.W           R3, R3, #0x80
373FA6:  STRB            R3, [R2,R1]
373FA8:  LDR             R2, [R0,#0xC]
373FAA:  CMP             R1, R2
373FAC:  IT LT
373FAE:  STRLT           R1, [R0,#0xC]
373FB0:  POP             {R4,R6,R7,PC}
