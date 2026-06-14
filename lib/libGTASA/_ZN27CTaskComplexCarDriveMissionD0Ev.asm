; =========================================================
; Game Engine Function: _ZN27CTaskComplexCarDriveMissionD0Ev
; Address            : 0x4FC18C - 0x4FC1F6
; =========================================================

4FC18C:  PUSH            {R4,R6,R7,LR}
4FC18E:  ADD             R7, SP, #8
4FC190:  MOV             R4, R0
4FC192:  LDR             R0, =(_ZTV27CTaskComplexCarDriveMission_ptr - 0x4FC19A)
4FC194:  MOV             R1, R4
4FC196:  ADD             R0, PC; _ZTV27CTaskComplexCarDriveMission_ptr
4FC198:  LDR             R2, [R0]; `vtable for'CTaskComplexCarDriveMission ...
4FC19A:  LDR.W           R0, [R1,#0x24]!; CEntity **
4FC19E:  ADDS            R2, #8
4FC1A0:  STR             R2, [R4]
4FC1A2:  CMP             R0, #0
4FC1A4:  IT NE
4FC1A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC1AA:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FC1B2)
4FC1AC:  MOV             R1, R4
4FC1AE:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FC1B0:  LDR             R2, [R0]; `vtable for'CTaskComplexCarDrive ...
4FC1B2:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FC1B6:  ADDS            R2, #8
4FC1B8:  STR             R2, [R4]
4FC1BA:  CBZ             R0, loc_4FC1E8
4FC1BC:  LDRB.W          R2, [R4,#0x20]
4FC1C0:  CBZ             R2, loc_4FC1E4
4FC1C2:  LDRB            R2, [R4,#0x1D]
4FC1C4:  STRB.W          R2, [R0,#0x3BD]
4FC1C8:  LDR             R0, [R4,#0xC]
4FC1CA:  LDRB            R2, [R4,#0x1E]
4FC1CC:  STRB.W          R2, [R0,#0x3BE]
4FC1D0:  LDR             R0, [R4,#0xC]
4FC1D2:  LDRB            R2, [R4,#0x1F]
4FC1D4:  STRB.W          R2, [R0,#0x3D4]
4FC1D8:  LDR             R0, [R4,#0xC]; this
4FC1DA:  CMP             R0, #0
4FC1DC:  IT NE
4FC1DE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC1E2:  B               loc_4FC1E8
4FC1E4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC1E8:  MOV             R0, R4; this
4FC1EA:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FC1EE:  POP.W           {R4,R6,R7,LR}
4FC1F2:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
