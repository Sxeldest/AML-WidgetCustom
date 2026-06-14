; =========================================================
; Game Engine Function: _ZN16CEventPassObjectD2Ev
; Address            : 0x378DE0 - 0x378E02
; =========================================================

378DE0:  PUSH            {R4,R6,R7,LR}
378DE2:  ADD             R7, SP, #8
378DE4:  MOV             R4, R0
378DE6:  LDR             R0, =(_ZTV16CEventPassObject_ptr - 0x378DEE)
378DE8:  MOV             R1, R4
378DEA:  ADD             R0, PC; _ZTV16CEventPassObject_ptr
378DEC:  LDR             R2, [R0]; `vtable for'CEventPassObject ...
378DEE:  LDR.W           R0, [R1,#0xC]!; CEntity **
378DF2:  ADDS            R2, #8
378DF4:  STR             R2, [R4]
378DF6:  CMP             R0, #0
378DF8:  IT NE
378DFA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378DFE:  MOV             R0, R4
378E00:  POP             {R4,R6,R7,PC}
