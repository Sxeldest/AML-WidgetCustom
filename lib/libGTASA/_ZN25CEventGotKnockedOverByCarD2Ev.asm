; =========================================================
; Game Engine Function: _ZN25CEventGotKnockedOverByCarD2Ev
; Address            : 0x377244 - 0x377266
; =========================================================

377244:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventGotKnockedOverByCar::~CEventGotKnockedOverByCar()'
377246:  ADD             R7, SP, #8
377248:  MOV             R4, R0
37724A:  LDR             R0, =(_ZTV25CEventGotKnockedOverByCar_ptr - 0x377252)
37724C:  MOV             R1, R4
37724E:  ADD             R0, PC; _ZTV25CEventGotKnockedOverByCar_ptr
377250:  LDR             R2, [R0]; `vtable for'CEventGotKnockedOverByCar ...
377252:  LDR.W           R0, [R1,#0x10]!; CEntity **
377256:  ADDS            R2, #8
377258:  STR             R2, [R4]
37725A:  CMP             R0, #0
37725C:  IT NE
37725E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
377262:  MOV             R0, R4
377264:  POP             {R4,R6,R7,PC}
