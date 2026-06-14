; =========================================================
; Game Engine Function: _ZN22CEventVehicleHitAndRunD2Ev
; Address            : 0x3744EC - 0x37451C
; =========================================================

3744EC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventVehicleHitAndRun::~CEventVehicleHitAndRun()'
3744EE:  ADD             R7, SP, #8
3744F0:  MOV             R4, R0
3744F2:  LDR             R0, =(_ZTV22CEventVehicleHitAndRun_ptr - 0x3744FA)
3744F4:  MOV             R1, R4
3744F6:  ADD             R0, PC; _ZTV22CEventVehicleHitAndRun_ptr
3744F8:  LDR             R2, [R0]; `vtable for'CEventVehicleHitAndRun ...
3744FA:  LDR.W           R0, [R1,#0x10]!; CEntity **
3744FE:  ADDS            R2, #8
374500:  STR             R2, [R4]
374502:  CMP             R0, #0
374504:  IT NE
374506:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37450A:  MOV             R1, R4
37450C:  LDR.W           R0, [R1,#0xC]!; CEntity **
374510:  CMP             R0, #0
374512:  IT NE
374514:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374518:  MOV             R0, R4
37451A:  POP             {R4,R6,R7,PC}
