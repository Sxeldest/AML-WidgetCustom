; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOutD0Ev
; Address            : 0x5031A4 - 0x5031E0
; =========================================================

5031A4:  PUSH            {R4,R6,R7,LR}
5031A6:  ADD             R7, SP, #8
5031A8:  MOV             R4, R0
5031AA:  LDR             R0, =(_ZTV20CTaskSimpleCarGetOut_ptr - 0x5031B2)
5031AC:  MOV             R1, R4
5031AE:  ADD             R0, PC; _ZTV20CTaskSimpleCarGetOut_ptr
5031B0:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarGetOut ...
5031B2:  LDR.W           R0, [R1,#0x14]!; CEntity **
5031B6:  ADDS            R2, #8
5031B8:  STR             R2, [R4]
5031BA:  CMP             R0, #0
5031BC:  IT NE
5031BE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5031C2:  LDR             R0, [R4,#0xC]; this
5031C4:  CBZ             R0, loc_5031D2
5031C6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5031CE)
5031C8:  MOVS            R2, #0; void *
5031CA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5031CC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5031CE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5031D2:  MOV             R0, R4; this
5031D4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5031D8:  POP.W           {R4,R6,R7,LR}
5031DC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
