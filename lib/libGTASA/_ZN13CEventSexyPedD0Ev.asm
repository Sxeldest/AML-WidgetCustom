; =========================================================
; Game Engine Function: _ZN13CEventSexyPedD0Ev
; Address            : 0x374834 - 0x37487E
; =========================================================

374834:  PUSH            {R4,R6,R7,LR}
374836:  ADD             R7, SP, #8
374838:  MOV             R4, R0
37483A:  LDR             R0, =(_ZTV13CEventSexyPed_ptr - 0x374842)
37483C:  MOV             R1, R4
37483E:  ADD             R0, PC; _ZTV13CEventSexyPed_ptr
374840:  LDR             R2, [R0]; `vtable for'CEventSexyPed ...
374842:  LDR.W           R0, [R1,#0x10]!; CEntity **
374846:  ADDS            R2, #8
374848:  STR             R2, [R4]
37484A:  CMP             R0, #0
37484C:  IT NE
37484E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374852:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374860)
374854:  MOV             R3, #0xF0F0F0F1
37485C:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37485E:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374860:  LDR             R0, [R0]; CPools::ms_pEventPool
374862:  LDRD.W          R1, R2, [R0]
374866:  SUBS            R1, R4, R1
374868:  ASRS            R1, R1, #2
37486A:  MULS            R1, R3
37486C:  LDRB            R3, [R2,R1]
37486E:  ORR.W           R3, R3, #0x80
374872:  STRB            R3, [R2,R1]
374874:  LDR             R2, [R0,#0xC]
374876:  CMP             R1, R2
374878:  IT LT
37487A:  STRLT           R1, [R0,#0xC]
37487C:  POP             {R4,R6,R7,PC}
