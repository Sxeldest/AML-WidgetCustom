; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimbD2Ev
; Address            : 0x52E3CC - 0x52E408
; =========================================================

52E3CC:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleClimb::~CTaskSimpleClimb()'
52E3CE:  ADD             R7, SP, #8
52E3D0:  MOV             R4, R0
52E3D2:  LDR             R0, =(_ZTV16CTaskSimpleClimb_ptr - 0x52E3DA)
52E3D4:  MOV             R1, R4
52E3D6:  ADD             R0, PC; _ZTV16CTaskSimpleClimb_ptr
52E3D8:  LDR             R2, [R0]; `vtable for'CTaskSimpleClimb ...
52E3DA:  LDR.W           R0, [R1,#0x24]!; CEntity **
52E3DE:  ADDS            R2, #8
52E3E0:  STR             R2, [R4]
52E3E2:  CMP             R0, #0
52E3E4:  IT NE
52E3E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52E3EA:  LDR             R0, [R4,#0x2C]; this
52E3EC:  CBZ             R0, loc_52E3FE
52E3EE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52E3F8)
52E3F0:  MOVS            R2, #0; void *
52E3F2:  MOVS            R5, #0
52E3F4:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52E3F6:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52E3F8:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52E3FC:  STR             R5, [R4,#0x2C]
52E3FE:  MOV             R0, R4; this
52E400:  POP.W           {R4,R5,R7,LR}
52E404:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
