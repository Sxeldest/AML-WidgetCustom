; =========================================================
; Game Engine Function: _ZN29CEventPotentialWalkIntoObjectC2EP7CObjecti
; Address            : 0x374104 - 0x374142
; =========================================================

374104:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPotentialWalkIntoObject::CEventPotentialWalkIntoObject(CObject *, int)'
374106:  ADD             R7, SP, #8
374108:  MOV             R4, R0
37410A:  LDR             R0, =(_ZTV29CEventPotentialWalkIntoObject_ptr - 0x374114)
37410C:  MOVS            R3, #0
37410E:  CMP             R1, #0
374110:  ADD             R0, PC; _ZTV29CEventPotentialWalkIntoObject_ptr
374112:  STR             R3, [R4,#4]
374114:  MOV             R3, #0xC80100
37411C:  LDR             R0, [R0]; `vtable for'CEventPotentialWalkIntoObject ...
37411E:  STR             R3, [R4,#8]
374120:  MOVW            R3, #0xFFFF
374124:  STRH            R3, [R4,#0xC]
374126:  ADD.W           R0, R0, #8
37412A:  STR             R2, [R4,#0x14]
37412C:  MOV             R2, R4
37412E:  STR             R0, [R4]
374130:  STR.W           R1, [R2,#0x10]!
374134:  ITTT NE
374136:  MOVNE           R0, R1; this
374138:  MOVNE           R1, R2; CEntity **
37413A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37413E:  MOV             R0, R4
374140:  POP             {R4,R6,R7,PC}
