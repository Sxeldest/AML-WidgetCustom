; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeD0Ev
; Address            : 0x37568C - 0x3756E4
; =========================================================

37568C:  PUSH            {R4,R6,R7,LR}
37568E:  ADD             R7, SP, #8
375690:  MOV             R4, R0
375692:  LDR             R0, =(_ZTV18CEventKnockOffBike_ptr - 0x37569A)
375694:  MOV             R1, R4
375696:  ADD             R0, PC; _ZTV18CEventKnockOffBike_ptr
375698:  LDR             R2, [R0]; `vtable for'CEventKnockOffBike ...
37569A:  LDR.W           R0, [R1,#0x38]!; CEntity **
37569E:  ADDS            R2, #8
3756A0:  STR             R2, [R4]
3756A2:  CMP             R0, #0
3756A4:  IT NE
3756A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3756AA:  MOV             R1, R4
3756AC:  LDR.W           R0, [R1,#0x30]!; CEntity **
3756B0:  CMP             R0, #0
3756B2:  IT NE
3756B4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3756B8:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3756C6)
3756BA:  MOV             R3, #0xF0F0F0F1
3756C2:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3756C4:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3756C6:  LDR             R0, [R0]; CPools::ms_pEventPool
3756C8:  LDRD.W          R1, R2, [R0]
3756CC:  SUBS            R1, R4, R1
3756CE:  ASRS            R1, R1, #2
3756D0:  MULS            R1, R3
3756D2:  LDRB            R3, [R2,R1]
3756D4:  ORR.W           R3, R3, #0x80
3756D8:  STRB            R3, [R2,R1]
3756DA:  LDR             R2, [R0,#0xC]
3756DC:  CMP             R1, R2
3756DE:  IT LT
3756E0:  STRLT           R1, [R0,#0xC]
3756E2:  POP             {R4,R6,R7,PC}
