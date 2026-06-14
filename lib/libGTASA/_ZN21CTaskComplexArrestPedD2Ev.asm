; =========================================================
; Game Engine Function: _ZN21CTaskComplexArrestPedD2Ev
; Address            : 0x53CC14 - 0x53CC3C
; =========================================================

53CC14:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexArrestPed::~CTaskComplexArrestPed()'
53CC16:  ADD             R7, SP, #8
53CC18:  MOV             R4, R0
53CC1A:  LDR             R0, =(_ZTV21CTaskComplexArrestPed_ptr - 0x53CC22)
53CC1C:  MOV             R1, R4
53CC1E:  ADD             R0, PC; _ZTV21CTaskComplexArrestPed_ptr
53CC20:  LDR             R2, [R0]; `vtable for'CTaskComplexArrestPed ...
53CC22:  LDR.W           R0, [R1,#0x10]!; CEntity **
53CC26:  ADDS            R2, #8
53CC28:  STR             R2, [R4]
53CC2A:  CMP             R0, #0
53CC2C:  IT NE
53CC2E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53CC32:  MOV             R0, R4; this
53CC34:  POP.W           {R4,R6,R7,LR}
53CC38:  B.W             sub_18EDE8
