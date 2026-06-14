; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdED2Ev
; Address            : 0x49B3F0 - 0x49B418
; =========================================================

49B3F0:  PUSH            {R4,R6,R7,LR}
49B3F2:  ADD             R7, SP, #8
49B3F4:  MOV             R4, R0
49B3F6:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr - 0x49B3FE)
49B3F8:  MOV             R1, R4
49B3FA:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr
49B3FC:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId> ...
49B3FE:  LDR.W           R0, [R1,#0xC]!; CEntity **
49B402:  ADDS            R2, #8
49B404:  STR             R2, [R4]
49B406:  CMP             R0, #0
49B408:  IT NE
49B40A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49B40E:  MOV             R0, R4; this
49B410:  POP.W           {R4,R6,R7,LR}
49B414:  B.W             sub_18EDE8
