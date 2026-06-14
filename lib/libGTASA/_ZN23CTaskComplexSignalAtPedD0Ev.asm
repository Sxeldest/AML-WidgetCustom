; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPedD0Ev
; Address            : 0x519F00 - 0x519F44
; =========================================================

519F00:  PUSH            {R4,R6,R7,LR}
519F02:  ADD             R7, SP, #8
519F04:  MOV             R4, R0
519F06:  LDR             R0, =(_ZTV23CTaskComplexSignalAtPed_ptr - 0x519F0E)
519F08:  LDRB            R1, [R4,#0x15]; char *
519F0A:  ADD             R0, PC; _ZTV23CTaskComplexSignalAtPed_ptr
519F0C:  CMP             R1, #0
519F0E:  LDR             R0, [R0]; `vtable for'CTaskComplexSignalAtPed ...
519F10:  ADD.W           R0, R0, #8
519F14:  STR             R0, [R4]
519F16:  BEQ             loc_519F28
519F18:  LDR             R0, =(aGangs - 0x519F1E); "gangs"
519F1A:  ADD             R0, PC; "gangs"
519F1C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519F20:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
519F24:  MOVS            R0, #0
519F26:  STRB            R0, [R4,#0x15]
519F28:  MOV             R1, R4
519F2A:  LDR.W           R0, [R1,#0xC]!; CEntity **
519F2E:  CMP             R0, #0
519F30:  IT NE
519F32:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
519F36:  MOV             R0, R4; this
519F38:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
519F3C:  POP.W           {R4,R6,R7,LR}
519F40:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
