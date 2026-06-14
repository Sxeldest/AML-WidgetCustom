; =========================================================
; Game Engine Function: _ZN17CEventChatPartnerD0Ev
; Address            : 0x374758 - 0x3747A2
; =========================================================

374758:  PUSH            {R4,R6,R7,LR}
37475A:  ADD             R7, SP, #8
37475C:  MOV             R4, R0
37475E:  LDR             R0, =(_ZTV17CEventChatPartner_ptr - 0x374766)
374760:  MOV             R1, R4
374762:  ADD             R0, PC; _ZTV17CEventChatPartner_ptr
374764:  LDR             R2, [R0]; `vtable for'CEventChatPartner ...
374766:  LDR.W           R0, [R1,#0xC]!; CEntity **
37476A:  ADDS            R2, #8
37476C:  STR             R2, [R4]
37476E:  CMP             R0, #0
374770:  IT NE
374772:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374776:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374784)
374778:  MOV             R3, #0xF0F0F0F1
374780:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374782:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374784:  LDR             R0, [R0]; CPools::ms_pEventPool
374786:  LDRD.W          R1, R2, [R0]
37478A:  SUBS            R1, R4, R1
37478C:  ASRS            R1, R1, #2
37478E:  MULS            R1, R3
374790:  LDRB            R3, [R2,R1]
374792:  ORR.W           R3, R3, #0x80
374796:  STRB            R3, [R2,R1]
374798:  LDR             R2, [R0,#0xC]
37479A:  CMP             R1, R2
37479C:  IT LT
37479E:  STRLT           R1, [R0,#0xC]
3747A0:  POP             {R4,R6,R7,PC}
