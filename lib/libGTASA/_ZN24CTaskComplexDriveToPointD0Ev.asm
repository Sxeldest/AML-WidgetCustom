; =========================================================
; Game Engine Function: _ZN24CTaskComplexDriveToPointD0Ev
; Address            : 0x4FC33C - 0x4FC38E
; =========================================================

4FC33C:  PUSH            {R4,R6,R7,LR}
4FC33E:  ADD             R7, SP, #8
4FC340:  MOV             R4, R0
4FC342:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FC34A)
4FC344:  MOV             R1, R4
4FC346:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FC348:  LDR             R2, [R0]; `vtable for'CTaskComplexCarDrive ...
4FC34A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FC34E:  ADDS            R2, #8
4FC350:  STR             R2, [R4]
4FC352:  CBZ             R0, loc_4FC380
4FC354:  LDRB.W          R2, [R4,#0x20]
4FC358:  CBZ             R2, loc_4FC37C
4FC35A:  LDRB            R2, [R4,#0x1D]
4FC35C:  STRB.W          R2, [R0,#0x3BD]
4FC360:  LDR             R0, [R4,#0xC]
4FC362:  LDRB            R2, [R4,#0x1E]
4FC364:  STRB.W          R2, [R0,#0x3BE]
4FC368:  LDR             R0, [R4,#0xC]
4FC36A:  LDRB            R2, [R4,#0x1F]
4FC36C:  STRB.W          R2, [R0,#0x3D4]
4FC370:  LDR             R0, [R4,#0xC]; this
4FC372:  CMP             R0, #0
4FC374:  IT NE
4FC376:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC37A:  B               loc_4FC380
4FC37C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FC380:  MOV             R0, R4; this
4FC382:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FC386:  POP.W           {R4,R6,R7,LR}
4FC38A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
