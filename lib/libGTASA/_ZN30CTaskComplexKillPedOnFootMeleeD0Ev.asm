; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootMeleeD0Ev
; Address            : 0x4E1848 - 0x4E1874
; =========================================================

4E1848:  PUSH            {R4,R6,R7,LR}
4E184A:  ADD             R7, SP, #8
4E184C:  MOV             R4, R0
4E184E:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootMelee_ptr - 0x4E1856)
4E1850:  MOV             R1, R4
4E1852:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootMelee_ptr
4E1854:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedOnFootMelee ...
4E1856:  LDR.W           R0, [R1,#0xC]!; CEntity **
4E185A:  ADDS            R2, #8
4E185C:  STR             R2, [R4]
4E185E:  CMP             R0, #0
4E1860:  IT NE
4E1862:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E1866:  MOV             R0, R4; this
4E1868:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E186C:  POP.W           {R4,R6,R7,LR}
4E1870:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
