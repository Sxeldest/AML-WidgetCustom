; =========================================================
; Game Engine Function: _ZN12CEventDangerD0Ev
; Address            : 0x377EA4 - 0x377EEE
; =========================================================

377EA4:  PUSH            {R4,R6,R7,LR}
377EA6:  ADD             R7, SP, #8
377EA8:  MOV             R4, R0
377EAA:  LDR             R0, =(_ZTV12CEventDanger_ptr - 0x377EB2)
377EAC:  MOV             R1, R4
377EAE:  ADD             R0, PC; _ZTV12CEventDanger_ptr
377EB0:  LDR             R2, [R0]; `vtable for'CEventDanger ...
377EB2:  LDR.W           R0, [R1,#0x10]!; CEntity **
377EB6:  ADDS            R2, #8
377EB8:  STR             R2, [R4]
377EBA:  CMP             R0, #0
377EBC:  IT NE
377EBE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377EC2:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x377ED0)
377EC4:  MOV             R3, #0xF0F0F0F1
377ECC:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
377ECE:  LDR             R0, [R0]; CPools::ms_pEventPool ...
377ED0:  LDR             R0, [R0]; CPools::ms_pEventPool
377ED2:  LDRD.W          R1, R2, [R0]
377ED6:  SUBS            R1, R4, R1
377ED8:  ASRS            R1, R1, #2
377EDA:  MULS            R1, R3
377EDC:  LDRB            R3, [R2,R1]
377EDE:  ORR.W           R3, R3, #0x80
377EE2:  STRB            R3, [R2,R1]
377EE4:  LDR             R2, [R0,#0xC]
377EE6:  CMP             R1, R2
377EE8:  IT LT
377EEA:  STRLT           R1, [R0,#0xC]
377EEC:  POP             {R4,R6,R7,PC}
