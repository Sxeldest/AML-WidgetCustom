; =========================================================
; Game Engine Function: _ZN29CEventPotentialWalkIntoObjectD2Ev
; Address            : 0x374148 - 0x37416A
; =========================================================

374148:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPotentialWalkIntoObject::~CEventPotentialWalkIntoObject()'
37414A:  ADD             R7, SP, #8
37414C:  MOV             R4, R0
37414E:  LDR             R0, =(_ZTV29CEventPotentialWalkIntoObject_ptr - 0x374156)
374150:  MOV             R1, R4
374152:  ADD             R0, PC; _ZTV29CEventPotentialWalkIntoObject_ptr
374154:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoObject ...
374156:  LDR.W           R0, [R1,#0x10]!; CEntity **
37415A:  ADDS            R2, #8
37415C:  STR             R2, [R4]
37415E:  CMP             R0, #0
374160:  IT NE
374162:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374166:  MOV             R0, R4
374168:  POP             {R4,R6,R7,PC}
