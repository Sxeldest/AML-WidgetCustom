; =========================================================
; Game Engine Function: _ZN17CEventSignalAtPedD2Ev
; Address            : 0x378BA4 - 0x378BC6
; =========================================================

378BA4:  PUSH            {R4,R6,R7,LR}
378BA6:  ADD             R7, SP, #8
378BA8:  MOV             R4, R0
378BAA:  LDR             R0, =(_ZTV17CEventSignalAtPed_ptr - 0x378BB2)
378BAC:  MOV             R1, R4
378BAE:  ADD             R0, PC; _ZTV17CEventSignalAtPed_ptr
378BB0:  LDR             R2, [R0]; `vtable for'CEventSignalAtPed ...
378BB2:  LDR.W           R0, [R1,#0xC]!; CEntity **
378BB6:  ADDS            R2, #8
378BB8:  STR             R2, [R4]
378BBA:  CMP             R0, #0
378BBC:  IT NE
378BBE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378BC2:  MOV             R0, R4
378BC4:  POP             {R4,R6,R7,PC}
