; =========================================================
; Game Engine Function: _ZN16CEventPedToChaseD0Ev
; Address            : 0x374A98 - 0x374AE2
; =========================================================

374A98:  PUSH            {R4,R6,R7,LR}
374A9A:  ADD             R7, SP, #8
374A9C:  MOV             R4, R0
374A9E:  LDR             R0, =(_ZTV16CEventPedToChase_ptr - 0x374AA6)
374AA0:  MOV             R1, R4
374AA2:  ADD             R0, PC; _ZTV16CEventPedToChase_ptr
374AA4:  LDR             R2, [R0]; `vtable for'CEventPedToChase ...
374AA6:  LDR.W           R0, [R1,#0xC]!; CEntity **
374AAA:  ADDS            R2, #8
374AAC:  STR             R2, [R4]
374AAE:  CMP             R0, #0
374AB0:  IT NE
374AB2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374AB6:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374AC4)
374AB8:  MOV             R3, #0xF0F0F0F1
374AC0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374AC2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374AC4:  LDR             R0, [R0]; CPools::ms_pEventPool
374AC6:  LDRD.W          R1, R2, [R0]
374ACA:  SUBS            R1, R4, R1
374ACC:  ASRS            R1, R1, #2
374ACE:  MULS            R1, R3
374AD0:  LDRB            R3, [R2,R1]
374AD2:  ORR.W           R3, R3, #0x80
374AD6:  STRB            R3, [R2,R1]
374AD8:  LDR             R2, [R0,#0xC]
374ADA:  CMP             R1, R2
374ADC:  IT LT
374ADE:  STRLT           R1, [R0,#0xC]
374AE0:  POP             {R4,R6,R7,PC}
