; =========================================================
; Game Engine Function: _ZN15CEventAttractorD0Ev
; Address            : 0x374C1C - 0x374C66
; =========================================================

374C1C:  PUSH            {R4,R6,R7,LR}
374C1E:  ADD             R7, SP, #8
374C20:  MOV             R4, R0
374C22:  LDR             R0, =(_ZTV15CEventAttractor_ptr - 0x374C2A)
374C24:  MOV             R1, R4
374C26:  ADD             R0, PC; _ZTV15CEventAttractor_ptr
374C28:  LDR             R2, [R0]; `vtable for'CEventAttractor ...
374C2A:  LDR.W           R0, [R1,#0x14]!; CEntity **
374C2E:  ADDS            R2, #8
374C30:  STR             R2, [R4]
374C32:  CMP             R0, #0
374C34:  IT NE
374C36:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374C3A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374C48)
374C3C:  MOV             R3, #0xF0F0F0F1
374C44:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374C46:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374C48:  LDR             R0, [R0]; CPools::ms_pEventPool
374C4A:  LDRD.W          R1, R2, [R0]
374C4E:  SUBS            R1, R4, R1
374C50:  ASRS            R1, R1, #2
374C52:  MULS            R1, R3
374C54:  LDRB            R3, [R2,R1]
374C56:  ORR.W           R3, R3, #0x80
374C5A:  STRB            R3, [R2,R1]
374C5C:  LDR             R2, [R0,#0xC]
374C5E:  CMP             R1, R2
374C60:  IT LT
374C62:  STRLT           R1, [R0,#0xC]
374C64:  POP             {R4,R6,R7,PC}
