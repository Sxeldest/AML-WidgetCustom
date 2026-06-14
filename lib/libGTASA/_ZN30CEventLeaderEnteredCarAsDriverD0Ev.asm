; =========================================================
; Game Engine Function: _ZN30CEventLeaderEnteredCarAsDriverD0Ev
; Address            : 0x378674 - 0x3786BE
; =========================================================

378674:  PUSH            {R4,R6,R7,LR}
378676:  ADD             R7, SP, #8
378678:  MOV             R4, R0
37867A:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x378682)
37867C:  MOV             R1, R4
37867E:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
378680:  LDR             R2, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
378682:  LDR.W           R0, [R1,#0x10]!; CEntity **
378686:  ADDS            R2, #8
378688:  STR             R2, [R4]
37868A:  CMP             R0, #0
37868C:  IT NE
37868E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378692:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3786A0)
378694:  MOV             R3, #0xF0F0F0F1
37869C:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37869E:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3786A0:  LDR             R0, [R0]; CPools::ms_pEventPool
3786A2:  LDRD.W          R1, R2, [R0]
3786A6:  SUBS            R1, R4, R1
3786A8:  ASRS            R1, R1, #2
3786AA:  MULS            R1, R3
3786AC:  LDRB            R3, [R2,R1]
3786AE:  ORR.W           R3, R3, #0x80
3786B2:  STRB            R3, [R2,R1]
3786B4:  LDR             R2, [R0,#0xC]
3786B6:  CMP             R1, R2
3786B8:  IT LT
3786BA:  STRLT           R1, [R0,#0xC]
3786BC:  POP             {R4,R6,R7,PC}
