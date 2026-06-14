; =========================================================
; Game Engine Function: _ZN23CEventCreatePartnerTaskD2Ev
; Address            : 0x4B8C88 - 0x4B8CB0
; =========================================================

4B8C88:  PUSH            {R4,R6,R7,LR}
4B8C8A:  ADD             R7, SP, #8
4B8C8C:  MOV             R4, R0
4B8C8E:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B8C96)
4B8C90:  MOV             R1, R4
4B8C92:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B8C94:  LDR             R2, [R0]; `vtable for'CEventCreatePartnerTask ...
4B8C96:  LDR.W           R0, [R1,#0x10]!; CEntity **
4B8C9A:  ADDS            R2, #8
4B8C9C:  STR             R2, [R4]
4B8C9E:  CMP             R0, #0
4B8CA0:  IT NE
4B8CA2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4B8CA6:  MOV             R0, R4; this
4B8CA8:  POP.W           {R4,R6,R7,LR}
4B8CAC:  B.W             j_j__ZN6CEventD2Ev_3; j_CEvent::~CEvent()
