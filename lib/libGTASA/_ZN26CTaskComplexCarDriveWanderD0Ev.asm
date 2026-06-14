; =========================================================
; Game Engine Function: _ZN26CTaskComplexCarDriveWanderD0Ev
; Address            : 0x4FC008 - 0x4FC05A
; =========================================================

4FC008:  PUSH            {R4,R6,R7,LR}
4FC00A:  ADD             R7, SP, #8
4FC00C:  MOV             R4, R0
4FC00E:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FC016)
4FC010:  MOV             R1, R4
4FC012:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FC014:  LDR             R2, [R0]; `vtable for'CTaskComplexCarDrive ...
4FC016:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FC01A:  ADDS            R2, #8
4FC01C:  STR             R2, [R4]
4FC01E:  CBZ             R0, loc_4FC04C
4FC020:  LDRB.W          R2, [R4,#0x20]
4FC024:  CBZ             R2, loc_4FC048
4FC026:  LDRB            R2, [R4,#0x1D]
4FC028:  STRB.W          R2, [R0,#0x3BD]
4FC02C:  LDR             R0, [R4,#0xC]
4FC02E:  LDRB            R2, [R4,#0x1E]
4FC030:  STRB.W          R2, [R0,#0x3BE]
4FC034:  LDR             R0, [R4,#0xC]
4FC036:  LDRB            R2, [R4,#0x1F]
4FC038:  STRB.W          R2, [R0,#0x3D4]
4FC03C:  LDR             R0, [R4,#0xC]; this
4FC03E:  CMP             R0, #0
4FC040:  IT NE
4FC042:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC046:  B               loc_4FC04C
4FC048:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC04C:  MOV             R0, R4; this
4FC04E:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FC052:  POP.W           {R4,R6,R7,LR}
4FC056:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
