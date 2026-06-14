; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRopeD2Ev
; Address            : 0x511B5C - 0x511B8A
; =========================================================

511B5C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexUseSwatRope::~CTaskComplexUseSwatRope()'
511B5E:  ADD             R7, SP, #8
511B60:  MOV             R4, R0
511B62:  LDR             R0, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x511B6A)
511B64:  LDRB            R1, [R4,#0x14]
511B66:  ADD             R0, PC; _ZTV23CTaskComplexUseSwatRope_ptr
511B68:  LDR             R0, [R0]; `vtable for'CTaskComplexUseSwatRope ...
511B6A:  ADDS            R0, #8
511B6C:  STR             R0, [R4]
511B6E:  LSLS            R0, R1, #0x1F
511B70:  BEQ             loc_511B80
511B72:  MOV             R1, R4
511B74:  LDR.W           R0, [R1,#0x18]!; CEntity **
511B78:  CMP             R0, #0
511B7A:  IT NE
511B7C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
511B80:  MOV             R0, R4; this
511B82:  POP.W           {R4,R6,R7,LR}
511B86:  B.W             sub_18EDE8
