; =========================================================
; Game Engine Function: _ZNK48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse5CloneEv
; Address            : 0x502504 - 0x502528
; =========================================================

502504:  PUSH            {R4,R6,R7,LR}
502506:  ADD             R7, SP, #8
502508:  SUB             SP, SP, #8
50250A:  MOV             R4, R0
50250C:  MOVS            R0, #word_10; this
50250E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502512:  LDRD.W          R3, R2, [R4,#8]
502516:  LDRD.W          R1, R2, [R2,#8]; int
50251A:  LDR             R4, [R3,#8]
50251C:  ADDS            R3, #0xC; CVector *
50251E:  STR             R4, [SP,#0x10+var_10]; int
502520:  BLX             j__ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUseC2EP8CVehicleiRK7CVectori; CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse::CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse(CVehicle *,int,CVector const&,int)
502524:  ADD             SP, SP, #8
502526:  POP             {R4,R6,R7,PC}
