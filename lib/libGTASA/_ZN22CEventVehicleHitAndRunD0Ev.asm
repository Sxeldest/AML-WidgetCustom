; =========================================================
; Game Engine Function: _ZN22CEventVehicleHitAndRunD0Ev
; Address            : 0x374520 - 0x374578
; =========================================================

374520:  PUSH            {R4,R6,R7,LR}
374522:  ADD             R7, SP, #8
374524:  MOV             R4, R0
374526:  LDR             R0, =(_ZTV22CEventVehicleHitAndRun_ptr - 0x37452E)
374528:  MOV             R1, R4
37452A:  ADD             R0, PC; _ZTV22CEventVehicleHitAndRun_ptr
37452C:  LDR             R2, [R0]; `vtable for'CEventVehicleHitAndRun ...
37452E:  LDR.W           R0, [R1,#0x10]!; CEntity **
374532:  ADDS            R2, #8
374534:  STR             R2, [R4]
374536:  CMP             R0, #0
374538:  IT NE
37453A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37453E:  MOV             R1, R4
374540:  LDR.W           R0, [R1,#0xC]!; CEntity **
374544:  CMP             R0, #0
374546:  IT NE
374548:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37454C:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37455A)
37454E:  MOV             R3, #0xF0F0F0F1
374556:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374558:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37455A:  LDR             R0, [R0]; CPools::ms_pEventPool
37455C:  LDRD.W          R1, R2, [R0]
374560:  SUBS            R1, R4, R1
374562:  ASRS            R1, R1, #2
374564:  MULS            R1, R3
374566:  LDRB            R3, [R2,R1]
374568:  ORR.W           R3, R3, #0x80
37456C:  STRB            R3, [R2,R1]
37456E:  LDR             R2, [R0,#0xC]
374570:  CMP             R1, R2
374572:  IT LT
374574:  STRLT           R1, [R0,#0xC]
374576:  POP             {R4,R6,R7,PC}
