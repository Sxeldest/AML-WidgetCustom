; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUpD2Ev
; Address            : 0x50EBF8 - 0x50EC20
; =========================================================

50EBF8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexEvasiveDiveAndGetUp::~CTaskComplexEvasiveDiveAndGetUp()'
50EBFA:  ADD             R7, SP, #8
50EBFC:  MOV             R4, R0
50EBFE:  LDR             R0, =(_ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr - 0x50EC06)
50EC00:  MOV             R1, R4
50EC02:  ADD             R0, PC; _ZTV31CTaskComplexEvasiveDiveAndGetUp_ptr
50EC04:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveDiveAndGetUp ...
50EC06:  LDR.W           R0, [R1,#0xC]!; CEntity **
50EC0A:  ADDS            R2, #8
50EC0C:  STR             R2, [R4]
50EC0E:  CMP             R0, #0
50EC10:  IT NE
50EC12:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50EC16:  MOV             R0, R4; this
50EC18:  POP.W           {R4,R6,R7,LR}
50EC1C:  B.W             sub_18EDE8
