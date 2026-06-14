; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStillD0Ev
; Address            : 0x4FFAA8 - 0x4FFADE
; =========================================================

4FFAA8:  PUSH            {R4,R6,R7,LR}
4FFAAA:  ADD             R7, SP, #8
4FFAAC:  MOV             R4, R0
4FFAAE:  LDR             R0, =(_ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr - 0x4FFAB6)
4FFAB0:  MOV             R1, R4
4FFAB2:  ADD             R0, PC; _ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr
4FFAB4:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToCarDoorAndStandStill ...
4FFAB6:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FFABA:  ADDS            R2, #8
4FFABC:  STR             R2, [R4]
4FFABE:  CMP             R0, #0
4FFAC0:  IT NE
4FFAC2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FFAC6:  LDR             R0, [R4,#0x4C]; void *
4FFAC8:  CMP             R0, #0
4FFACA:  IT NE
4FFACC:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
4FFAD0:  MOV             R0, R4; this
4FFAD2:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FFAD6:  POP.W           {R4,R6,R7,LR}
4FFADA:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
