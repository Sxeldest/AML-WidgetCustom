; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntityD2Ev
; Address            : 0x513C70 - 0x513C98
; =========================================================

513C70:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexSmartFleeEntity::~CTaskComplexSmartFleeEntity()'
513C72:  ADD             R7, SP, #8
513C74:  MOV             R4, R0
513C76:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x513C7E)
513C78:  MOV             R1, R4
513C7A:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
513C7C:  LDR             R2, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
513C7E:  LDR.W           R0, [R1,#0xC]!; CEntity **
513C82:  ADDS            R2, #8
513C84:  STR             R2, [R4]
513C86:  CMP             R0, #0
513C88:  IT NE
513C8A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
513C8E:  MOV             R0, R4; this
513C90:  POP.W           {R4,R6,R7,LR}
513C94:  B.W             sub_18EDE8
