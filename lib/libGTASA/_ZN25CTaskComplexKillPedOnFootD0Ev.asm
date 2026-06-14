; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFootD0Ev
; Address            : 0x4E0258 - 0x4E0284
; =========================================================

4E0258:  PUSH            {R4,R6,R7,LR}
4E025A:  ADD             R7, SP, #8
4E025C:  MOV             R4, R0
4E025E:  LDR             R0, =(_ZTV25CTaskComplexKillPedOnFoot_ptr - 0x4E0266)
4E0260:  MOV             R1, R4
4E0262:  ADD             R0, PC; _ZTV25CTaskComplexKillPedOnFoot_ptr
4E0264:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedOnFoot ...
4E0266:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E026A:  ADDS            R2, #8
4E026C:  STR             R2, [R4]
4E026E:  CMP             R0, #0
4E0270:  IT NE
4E0272:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E0276:  MOV             R0, R4; this
4E0278:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E027C:  POP.W           {R4,R6,R7,LR}
4E0280:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
