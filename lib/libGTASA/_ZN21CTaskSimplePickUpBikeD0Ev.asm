; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBikeD0Ev
; Address            : 0x501210 - 0x50124C
; =========================================================

501210:  PUSH            {R4,R6,R7,LR}
501212:  ADD             R7, SP, #8
501214:  MOV             R4, R0
501216:  LDR             R0, =(_ZTV21CTaskSimplePickUpBike_ptr - 0x50121E)
501218:  MOV             R1, R4
50121A:  ADD             R0, PC; _ZTV21CTaskSimplePickUpBike_ptr
50121C:  LDR             R2, [R0]; `vtable for'CTaskSimplePickUpBike ...
50121E:  LDR.W           R0, [R1,#0x10]!; CEntity **
501222:  ADDS            R2, #8
501224:  STR             R2, [R4]
501226:  CMP             R0, #0
501228:  IT NE
50122A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50122E:  LDR             R0, [R4,#0xC]; this
501230:  CBZ             R0, loc_50123E
501232:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50123A)
501234:  MOVS            R2, #0; void *
501236:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501238:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50123A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50123E:  MOV             R0, R4; this
501240:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
501244:  POP.W           {R4,R6,R7,LR}
501248:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
