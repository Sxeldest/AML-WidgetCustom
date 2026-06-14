; =========================================================
; Game Engine Function: _ZN13CEventHandler21ComputeOnFireResponseEP6CEventP5CTaskS3_
; Address            : 0x3829D4 - 0x382A14
; =========================================================

3829D4:  PUSH            {R4,R6,R7,LR}
3829D6:  ADD             R7, SP, #8
3829D8:  MOV             R4, R0
3829DA:  LDR             R0, [R4]; this
3829DC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3829E0:  CMP             R0, #1
3829E2:  BNE             loc_382A06
3829E4:  LDR             R0, [R4]
3829E6:  MOVS            R1, #4; int
3829E8:  LDR.W           R0, [R0,#0x440]
3829EC:  ADDS            R0, #4; this
3829EE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
3829F2:  CMP             R0, #0
3829F4:  IT NE
3829F6:  POPNE           {R4,R6,R7,PC}
3829F8:  MOVS            R0, #off_18; this
3829FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3829FE:  BLX             j__ZN23CTaskSimplePlayerOnFireC2Ev; CTaskSimplePlayerOnFire::CTaskSimplePlayerOnFire(void)
382A02:  STR             R0, [R4,#0x30]
382A04:  POP             {R4,R6,R7,PC}
382A06:  MOVS            R0, #(byte_9+3); this
382A08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382A0C:  BLX             j__ZN18CTaskComplexOnFireC2Ev; CTaskComplexOnFire::CTaskComplexOnFire(void)
382A10:  STR             R0, [R4,#0x24]
382A12:  POP             {R4,R6,R7,PC}
