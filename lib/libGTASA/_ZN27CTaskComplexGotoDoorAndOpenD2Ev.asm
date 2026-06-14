; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpenD2Ev
; Address            : 0x525A1C - 0x525A44
; =========================================================

525A1C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGotoDoorAndOpen::~CTaskComplexGotoDoorAndOpen()'
525A1E:  ADD             R7, SP, #8
525A20:  MOV             R4, R0
525A22:  LDR             R0, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x525A2A)
525A24:  MOV             R1, R4
525A26:  ADD             R0, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
525A28:  LDR             R2, [R0]; `vtable for'CTaskComplexGotoDoorAndOpen ...
525A2A:  LDR.W           R0, [R1,#0xC]!; CEntity **
525A2E:  ADDS            R2, #8
525A30:  STR             R2, [R4]
525A32:  CMP             R0, #0
525A34:  IT NE
525A36:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
525A3A:  MOV             R0, R4; this
525A3C:  POP.W           {R4,R6,R7,LR}
525A40:  B.W             sub_18EDE8
