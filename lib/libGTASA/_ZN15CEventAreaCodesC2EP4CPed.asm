; =========================================================
; Game Engine Function: _ZN15CEventAreaCodesC2EP4CPed
; Address            : 0x377A74 - 0x377AA2
; =========================================================

377A74:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventAreaCodes::CEventAreaCodes(CPed *)'
377A76:  ADD             R7, SP, #8
377A78:  MOV             R4, R0
377A7A:  LDR             R0, =(_ZTV15CEventAreaCodes_ptr - 0x377A84)
377A7C:  MOVS            R2, #0
377A7E:  CMP             R1, #0
377A80:  ADD             R0, PC; _ZTV15CEventAreaCodes_ptr
377A82:  STRB            R2, [R4,#8]
377A84:  LDR             R0, [R0]; `vtable for'CEventAreaCodes ...
377A86:  ADD.W           R0, R0, #8
377A8A:  STRD.W          R0, R2, [R4]
377A8E:  MOV             R2, R4
377A90:  STR.W           R1, [R2,#0xC]!
377A94:  ITTT NE
377A96:  MOVNE           R0, R1; this
377A98:  MOVNE           R1, R2; CEntity **
377A9A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
377A9E:  MOV             R0, R4
377AA0:  POP             {R4,R6,R7,PC}
