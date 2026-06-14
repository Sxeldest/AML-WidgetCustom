; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollowerD0Ev
; Address            : 0x5164F0 - 0x51653C
; =========================================================

5164F0:  PUSH            {R4,R6,R7,LR}
5164F2:  ADD             R7, SP, #8
5164F4:  MOV             R4, R0
5164F6:  LDR             R0, =(_ZTV24CTaskComplexGangFollower_ptr - 0x5164FE)
5164F8:  MOV             R1, R4
5164FA:  ADD             R0, PC; _ZTV24CTaskComplexGangFollower_ptr
5164FC:  LDR             R2, [R0]; `vtable for'CTaskComplexGangFollower ...
5164FE:  LDR.W           R0, [R1,#0x10]!; CEntity **
516502:  ADDS            R2, #8
516504:  STR             R2, [R4]
516506:  CMP             R0, #0
516508:  IT NE
51650A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51650E:  LDRB.W          R0, [R4,#0x3D]
516512:  LSLS            R0, R0, #0x1F
516514:  BEQ             loc_51652E
516516:  LDR             R0, =(aGangs - 0x51651C); "gangs"
516518:  ADD             R0, PC; "gangs"
51651A:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51651E:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
516522:  LDRB.W          R0, [R4,#0x3D]
516526:  AND.W           R0, R0, #0xFE
51652A:  STRB.W          R0, [R4,#0x3D]
51652E:  MOV             R0, R4; this
516530:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
516534:  POP.W           {R4,R6,R7,LR}
516538:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
