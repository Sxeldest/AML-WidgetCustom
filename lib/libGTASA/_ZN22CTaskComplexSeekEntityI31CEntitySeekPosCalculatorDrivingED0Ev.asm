; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingED0Ev
; Address            : 0x49C480 - 0x49C4AC
; =========================================================

49C480:  PUSH            {R4,R6,R7,LR}
49C482:  ADD             R7, SP, #8
49C484:  MOV             R4, R0
49C486:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE_ptr - 0x49C48E)
49C488:  MOV             R1, R4
49C48A:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE_ptr
49C48C:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorDriving> ...
49C48E:  LDR.W           R0, [R1,#0xC]!; CEntity **
49C492:  ADDS            R2, #8
49C494:  STR             R2, [R4]
49C496:  CMP             R0, #0
49C498:  IT NE
49C49A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49C49E:  MOV             R0, R4; this
49C4A0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
49C4A4:  POP.W           {R4,R6,R7,LR}
49C4A8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
