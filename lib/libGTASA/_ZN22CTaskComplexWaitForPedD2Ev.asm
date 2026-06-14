; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForPedD2Ev
; Address            : 0x536314 - 0x53633C
; =========================================================

536314:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexWaitForPed::~CTaskComplexWaitForPed()'
536316:  ADD             R7, SP, #8
536318:  MOV             R4, R0
53631A:  LDR             R0, =(_ZTV22CTaskComplexWaitForPed_ptr - 0x536322)
53631C:  MOV             R1, R4
53631E:  ADD             R0, PC; _ZTV22CTaskComplexWaitForPed_ptr
536320:  LDR             R2, [R0]; `vtable for'CTaskComplexWaitForPed ...
536322:  LDR.W           R0, [R1,#0xC]!; CEntity **
536326:  ADDS            R2, #8
536328:  STR             R2, [R4]
53632A:  CMP             R0, #0
53632C:  IT NE
53632E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
536332:  MOV             R0, R4; this
536334:  POP.W           {R4,R6,R7,LR}
536338:  B.W             sub_18EDE8
