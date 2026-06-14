; =========================================================
; Game Engine Function: _ZN15CEventAreaCodesD0Ev
; Address            : 0x377AA8 - 0x377AF2
; =========================================================

377AA8:  PUSH            {R4,R6,R7,LR}
377AAA:  ADD             R7, SP, #8
377AAC:  MOV             R4, R0
377AAE:  LDR             R0, =(_ZTV15CEventAreaCodes_ptr - 0x377AB6)
377AB0:  MOV             R1, R4
377AB2:  ADD             R0, PC; _ZTV15CEventAreaCodes_ptr
377AB4:  LDR             R2, [R0]; `vtable for'CEventAreaCodes ...
377AB6:  LDR.W           R0, [R1,#0xC]!; CEntity **
377ABA:  ADDS            R2, #8
377ABC:  STR             R2, [R4]
377ABE:  CMP             R0, #0
377AC0:  IT NE
377AC2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377AC6:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x377AD4)
377AC8:  MOV             R3, #0xF0F0F0F1
377AD0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
377AD2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
377AD4:  LDR             R0, [R0]; CPools::ms_pEventPool
377AD6:  LDRD.W          R1, R2, [R0]
377ADA:  SUBS            R1, R4, R1
377ADC:  ASRS            R1, R1, #2
377ADE:  MULS            R1, R3
377AE0:  LDRB            R3, [R2,R1]
377AE2:  ORR.W           R3, R3, #0x80
377AE6:  STRB            R3, [R2,R1]
377AE8:  LDR             R2, [R0,#0xC]
377AEA:  CMP             R1, R2
377AEC:  IT LT
377AEE:  STRLT           R1, [R0,#0xC]
377AF0:  POP             {R4,R6,R7,PC}
