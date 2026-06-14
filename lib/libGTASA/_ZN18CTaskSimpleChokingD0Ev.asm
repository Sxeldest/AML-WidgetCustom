; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChokingD0Ev
; Address            : 0x4DF720 - 0x4DF766
; =========================================================

4DF720:  PUSH            {R4,R6,R7,LR}
4DF722:  ADD             R7, SP, #8
4DF724:  MOV             R4, R0
4DF726:  LDR             R0, =(_ZTV18CTaskSimpleChoking_ptr - 0x4DF72C)
4DF728:  ADD             R0, PC; _ZTV18CTaskSimpleChoking_ptr
4DF72A:  LDR             R1, [R0]; `vtable for'CTaskSimpleChoking ...
4DF72C:  LDR             R0, [R4,#0xC]
4DF72E:  ADDS            R1, #8
4DF730:  STR             R1, [R4]
4DF732:  CBZ             R0, loc_4DF74A
4DF734:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF740)
4DF736:  MOVS            R2, #0xC0800000
4DF73C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF73E:  STR             R2, [R0,#0x1C]
4DF740:  LDR             R0, [R4,#0xC]; this
4DF742:  MOVS            R2, #0; void *
4DF744:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF746:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF74A:  MOV             R1, R4
4DF74C:  LDR.W           R0, [R1,#8]!; CEntity **
4DF750:  CMP             R0, #0
4DF752:  IT NE
4DF754:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DF758:  MOV             R0, R4; this
4DF75A:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4DF75E:  POP.W           {R4,R6,R7,LR}
4DF762:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
