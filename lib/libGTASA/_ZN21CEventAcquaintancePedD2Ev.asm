; =========================================================
; Game Engine Function: _ZN21CEventAcquaintancePedD2Ev
; Address            : 0x378028 - 0x37804A
; =========================================================

378028:  PUSH            {R4,R6,R7,LR}
37802A:  ADD             R7, SP, #8
37802C:  MOV             R4, R0
37802E:  LDR             R0, =(_ZTV21CEventAcquaintancePed_ptr - 0x378036)
378030:  MOV             R1, R4
378032:  ADD             R0, PC; _ZTV21CEventAcquaintancePed_ptr
378034:  LDR             R2, [R0]; `vtable for'CEventAcquaintancePed ...
378036:  LDR.W           R0, [R1,#0x10]!; CEntity **
37803A:  ADDS            R2, #8
37803C:  STR             R2, [R4]
37803E:  CMP             R0, #0
378040:  IT NE
378042:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378046:  MOV             R0, R4
378048:  POP             {R4,R6,R7,PC}
