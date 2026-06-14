; =========================================================
; Game Engine Function: _ZN16CEventStuckInAirD0Ev
; Address            : 0x376D58 - 0x376DA2
; =========================================================

376D58:  PUSH            {R4,R6,R7,LR}
376D5A:  ADD             R7, SP, #8
376D5C:  MOV             R4, R0
376D5E:  LDR             R0, =(_ZTV16CEventStuckInAir_ptr - 0x376D66)
376D60:  MOV             R1, R4
376D62:  ADD             R0, PC; _ZTV16CEventStuckInAir_ptr
376D64:  LDR             R2, [R0]; `vtable for'CEventStuckInAir ...
376D66:  LDR.W           R0, [R1,#0xC]!; CEntity **
376D6A:  ADDS            R2, #8
376D6C:  STR             R2, [R4]
376D6E:  CMP             R0, #0
376D70:  IT NE
376D72:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376D76:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x376D84)
376D78:  MOV             R3, #0xF0F0F0F1
376D80:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
376D82:  LDR             R0, [R0]; CPools::ms_pEventPool ...
376D84:  LDR             R0, [R0]; CPools::ms_pEventPool
376D86:  LDRD.W          R1, R2, [R0]
376D8A:  SUBS            R1, R4, R1
376D8C:  ASRS            R1, R1, #2
376D8E:  MULS            R1, R3
376D90:  LDRB            R3, [R2,R1]
376D92:  ORR.W           R3, R3, #0x80
376D96:  STRB            R3, [R2,R1]
376D98:  LDR             R2, [R0,#0xC]
376D9A:  CMP             R1, R2
376D9C:  IT LT
376D9E:  STRLT           R1, [R0,#0xC]
376DA0:  POP             {R4,R6,R7,PC}
