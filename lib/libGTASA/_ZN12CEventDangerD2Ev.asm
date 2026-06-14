; =========================================================
; Game Engine Function: _ZN12CEventDangerD2Ev
; Address            : 0x377E7C - 0x377E9E
; =========================================================

377E7C:  PUSH            {R4,R6,R7,LR}
377E7E:  ADD             R7, SP, #8
377E80:  MOV             R4, R0
377E82:  LDR             R0, =(_ZTV12CEventDanger_ptr - 0x377E8A)
377E84:  MOV             R1, R4
377E86:  ADD             R0, PC; _ZTV12CEventDanger_ptr
377E88:  LDR             R2, [R0]; `vtable for'CEventDanger ...
377E8A:  LDR.W           R0, [R1,#0x10]!; CEntity **
377E8E:  ADDS            R2, #8
377E90:  STR             R2, [R4]
377E92:  CMP             R0, #0
377E94:  IT NE
377E96:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377E9A:  MOV             R0, R4
377E9C:  POP             {R4,R6,R7,PC}
