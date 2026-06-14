; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlignD2Ev
; Address            : 0x500718 - 0x500750
; =========================================================

500718:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarAlign::~CTaskSimpleCarAlign()'
50071A:  ADD             R7, SP, #8
50071C:  MOV             R4, R0
50071E:  LDR             R0, =(_ZTV19CTaskSimpleCarAlign_ptr - 0x500726)
500720:  MOV             R1, R4
500722:  ADD             R0, PC; _ZTV19CTaskSimpleCarAlign_ptr
500724:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarAlign ...
500726:  LDR.W           R0, [R1,#0x10]!; CEntity **
50072A:  ADDS            R2, #8
50072C:  STR             R2, [R4]
50072E:  CMP             R0, #0
500730:  IT NE
500732:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
500736:  LDR             R0, [R4,#0xC]; this
500738:  CBZ             R0, loc_500746
50073A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x500742)
50073C:  MOVS            R2, #0; void *
50073E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
500740:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500742:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500746:  MOV             R0, R4; this
500748:  POP.W           {R4,R6,R7,LR}
50074C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
