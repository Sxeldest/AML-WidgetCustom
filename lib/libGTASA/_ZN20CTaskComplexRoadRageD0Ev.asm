; =========================================================
; Game Engine Function: _ZN20CTaskComplexRoadRageD0Ev
; Address            : 0x4E79A0 - 0x4E79CC
; =========================================================

4E79A0:  PUSH            {R4,R6,R7,LR}
4E79A2:  ADD             R7, SP, #8
4E79A4:  MOV             R4, R0
4E79A6:  LDR             R0, =(_ZTV20CTaskComplexRoadRage_ptr - 0x4E79AE)
4E79A8:  MOV             R1, R4
4E79AA:  ADD             R0, PC; _ZTV20CTaskComplexRoadRage_ptr
4E79AC:  LDR             R2, [R0]; `vtable for'CTaskComplexRoadRage ...
4E79AE:  LDR.W           R0, [R1,#0xC]!; CEntity **
4E79B2:  ADDS            R2, #8
4E79B4:  STR             R2, [R4]
4E79B6:  CMP             R0, #0
4E79B8:  IT NE
4E79BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E79BE:  MOV             R0, R4; this
4E79C0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E79C4:  POP.W           {R4,R6,R7,LR}
4E79C8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
