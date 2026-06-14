; =========================================================
; Game Engine Function: _ZN25CEventPedEnteredMyVehicleD0Ev
; Address            : 0x374600 - 0x374658
; =========================================================

374600:  PUSH            {R4,R6,R7,LR}
374602:  ADD             R7, SP, #8
374604:  MOV             R4, R0
374606:  LDR             R0, =(_ZTV25CEventPedEnteredMyVehicle_ptr - 0x37460E)
374608:  MOV             R1, R4
37460A:  ADD             R0, PC; _ZTV25CEventPedEnteredMyVehicle_ptr
37460C:  LDR             R2, [R0]; `vtable for'CEventPedEnteredMyVehicle ...
37460E:  LDR.W           R0, [R1,#0x10]!; CEntity **
374612:  ADDS            R2, #8
374614:  STR             R2, [R4]
374616:  CMP             R0, #0
374618:  IT NE
37461A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37461E:  MOV             R1, R4
374620:  LDR.W           R0, [R1,#0x14]!; CEntity **
374624:  CMP             R0, #0
374626:  IT NE
374628:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37462C:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37463A)
37462E:  MOV             R3, #0xF0F0F0F1
374636:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374638:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37463A:  LDR             R0, [R0]; CPools::ms_pEventPool
37463C:  LDRD.W          R1, R2, [R0]
374640:  SUBS            R1, R4, R1
374642:  ASRS            R1, R1, #2
374644:  MULS            R1, R3
374646:  LDRB            R3, [R2,R1]
374648:  ORR.W           R3, R3, #0x80
37464C:  STRB            R3, [R2,R1]
37464E:  LDR             R2, [R0,#0xC]
374650:  CMP             R1, R2
374652:  IT LT
374654:  STRLT           R1, [R0,#0xC]
374656:  POP             {R4,R6,R7,PC}
