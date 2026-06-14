; =========================================================
; Game Engine Function: _ZN12CEventDamageD0Ev
; Address            : 0x37242C - 0x372476
; =========================================================

37242C:  PUSH            {R4,R6,R7,LR}
37242E:  ADD             R7, SP, #8
372430:  MOV             R4, R0
372432:  LDR             R0, =(_ZTV12CEventDamage_ptr - 0x37243A)
372434:  MOV             R1, R4
372436:  ADD             R0, PC; _ZTV12CEventDamage_ptr
372438:  LDR             R2, [R0]; `vtable for'CEventDamage ...
37243A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37243E:  ADDS            R2, #8
372440:  STR             R2, [R4]
372442:  CMP             R0, #0
372444:  IT NE
372446:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37244A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x372458)
37244C:  MOV             R3, #0xF0F0F0F1
372454:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
372456:  LDR             R0, [R0]; CPools::ms_pEventPool ...
372458:  LDR             R0, [R0]; CPools::ms_pEventPool
37245A:  LDRD.W          R1, R2, [R0]
37245E:  SUBS            R1, R4, R1
372460:  ASRS            R1, R1, #2
372462:  MULS            R1, R3
372464:  LDRB            R3, [R2,R1]
372466:  ORR.W           R3, R3, #0x80
37246A:  STRB            R3, [R2,R1]
37246C:  LDR             R2, [R0,#0xC]
37246E:  CMP             R1, R2
372470:  IT LT
372472:  STRLT           R1, [R0,#0xC]
372474:  POP             {R4,R6,R7,PC}
