; =========================================================
; Game Engine Function: _ZN21CEventObjectCollisionD0Ev
; Address            : 0x3715A8 - 0x3715F2
; =========================================================

3715A8:  PUSH            {R4,R6,R7,LR}
3715AA:  ADD             R7, SP, #8
3715AC:  MOV             R4, R0
3715AE:  LDR             R0, =(_ZTV21CEventObjectCollision_ptr - 0x3715B6)
3715B0:  MOV             R1, R4
3715B2:  ADD             R0, PC; _ZTV21CEventObjectCollision_ptr
3715B4:  LDR             R2, [R0]; `vtable for'CEventObjectCollision ...
3715B6:  LDR.W           R0, [R1,#0x14]!; CEntity **
3715BA:  ADDS            R2, #8
3715BC:  STR             R2, [R4]
3715BE:  CMP             R0, #0
3715C0:  IT NE
3715C2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3715C6:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3715D4)
3715C8:  MOV             R3, #0xF0F0F0F1
3715D0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3715D2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3715D4:  LDR             R0, [R0]; CPools::ms_pEventPool
3715D6:  LDRD.W          R1, R2, [R0]
3715DA:  SUBS            R1, R4, R1
3715DC:  ASRS            R1, R1, #2
3715DE:  MULS            R1, R3
3715E0:  LDRB            R3, [R2,R1]
3715E2:  ORR.W           R3, R3, #0x80
3715E6:  STRB            R3, [R2,R1]
3715E8:  LDR             R2, [R0,#0xC]
3715EA:  CMP             R1, R2
3715EC:  IT LT
3715EE:  STRLT           R1, [R0,#0xC]
3715F0:  POP             {R4,R6,R7,PC}
