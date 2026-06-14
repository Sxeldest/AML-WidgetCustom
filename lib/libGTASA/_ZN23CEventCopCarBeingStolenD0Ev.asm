; =========================================================
; Game Engine Function: _ZN23CEventCopCarBeingStolenD0Ev
; Address            : 0x376F64 - 0x376FBC
; =========================================================

376F64:  PUSH            {R4,R6,R7,LR}
376F66:  ADD             R7, SP, #8
376F68:  MOV             R4, R0
376F6A:  LDR             R0, =(_ZTV23CEventCopCarBeingStolen_ptr - 0x376F72)
376F6C:  MOV             R1, R4
376F6E:  ADD             R0, PC; _ZTV23CEventCopCarBeingStolen_ptr
376F70:  LDR             R2, [R0]; `vtable for'CEventCopCarBeingStolen ...
376F72:  LDR.W           R0, [R1,#0xC]!; CEntity **
376F76:  ADDS            R2, #8
376F78:  STR             R2, [R4]
376F7A:  CMP             R0, #0
376F7C:  IT NE
376F7E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376F82:  MOV             R1, R4
376F84:  LDR.W           R0, [R1,#0x10]!; CEntity **
376F88:  CMP             R0, #0
376F8A:  IT NE
376F8C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376F90:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x376F9E)
376F92:  MOV             R3, #0xF0F0F0F1
376F9A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
376F9C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
376F9E:  LDR             R0, [R0]; CPools::ms_pEventPool
376FA0:  LDRD.W          R1, R2, [R0]
376FA4:  SUBS            R1, R4, R1
376FA6:  ASRS            R1, R1, #2
376FA8:  MULS            R1, R3
376FAA:  LDRB            R3, [R2,R1]
376FAC:  ORR.W           R3, R3, #0x80
376FB0:  STRB            R3, [R2,R1]
376FB2:  LDR             R2, [R0,#0xC]
376FB4:  CMP             R1, R2
376FB6:  IT LT
376FB8:  STRLT           R1, [R0,#0xC]
376FBA:  POP             {R4,R6,R7,PC}
