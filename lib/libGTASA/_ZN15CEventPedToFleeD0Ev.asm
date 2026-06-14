; =========================================================
; Game Engine Function: _ZN15CEventPedToFleeD0Ev
; Address            : 0x374B50 - 0x374B9A
; =========================================================

374B50:  PUSH            {R4,R6,R7,LR}
374B52:  ADD             R7, SP, #8
374B54:  MOV             R4, R0
374B56:  LDR             R0, =(_ZTV15CEventPedToFlee_ptr - 0x374B5E)
374B58:  MOV             R1, R4
374B5A:  ADD             R0, PC; _ZTV15CEventPedToFlee_ptr
374B5C:  LDR             R2, [R0]; `vtable for'CEventPedToFlee ...
374B5E:  LDR.W           R0, [R1,#0xC]!; CEntity **
374B62:  ADDS            R2, #8
374B64:  STR             R2, [R4]
374B66:  CMP             R0, #0
374B68:  IT NE
374B6A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374B6E:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374B7C)
374B70:  MOV             R3, #0xF0F0F0F1
374B78:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374B7A:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374B7C:  LDR             R0, [R0]; CPools::ms_pEventPool
374B7E:  LDRD.W          R1, R2, [R0]
374B82:  SUBS            R1, R4, R1
374B84:  ASRS            R1, R1, #2
374B86:  MULS            R1, R3
374B88:  LDRB            R3, [R2,R1]
374B8A:  ORR.W           R3, R3, #0x80
374B8E:  STRB            R3, [R2,R1]
374B90:  LDR             R2, [R0,#0xC]
374B92:  CMP             R1, R2
374B94:  IT LT
374B96:  STRLT           R1, [R0,#0xC]
374B98:  POP             {R4,R6,R7,PC}
