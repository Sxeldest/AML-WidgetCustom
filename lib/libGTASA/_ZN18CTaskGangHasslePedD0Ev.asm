; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePedD0Ev
; Address            : 0x519370 - 0x5193B0
; =========================================================

519370:  PUSH            {R4,R6,R7,LR}
519372:  ADD             R7, SP, #8
519374:  MOV             R4, R0
519376:  LDR             R0, =(_ZTV18CTaskGangHasslePed_ptr - 0x51937E)
519378:  MOV             R1, R4
51937A:  ADD             R0, PC; _ZTV18CTaskGangHasslePed_ptr
51937C:  LDR             R2, [R0]; `vtable for'CTaskGangHasslePed ...
51937E:  LDR.W           R0, [R1,#0xC]!; CEntity **
519382:  ADDS            R2, #8
519384:  STR             R2, [R4]
519386:  CMP             R0, #0
519388:  IT NE
51938A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51938E:  LDRB            R0, [R4,#0x1C]
519390:  CBZ             R0, loc_5193A2
519392:  LDR             R0, =(aGangs - 0x519398); "gangs"
519394:  ADD             R0, PC; "gangs"
519396:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51939A:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51939E:  MOVS            R0, #0
5193A0:  STRB            R0, [R4,#0x1C]
5193A2:  MOV             R0, R4; this
5193A4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5193A8:  POP.W           {R4,R6,R7,LR}
5193AC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
