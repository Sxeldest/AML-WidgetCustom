; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChokingD2Ev
; Address            : 0x4DF6D4 - 0x4DF716
; =========================================================

4DF6D4:  PUSH            {R4,R6,R7,LR}
4DF6D6:  ADD             R7, SP, #8
4DF6D8:  MOV             R4, R0
4DF6DA:  LDR             R0, =(_ZTV18CTaskSimpleChoking_ptr - 0x4DF6E0)
4DF6DC:  ADD             R0, PC; _ZTV18CTaskSimpleChoking_ptr
4DF6DE:  LDR             R1, [R0]; `vtable for'CTaskSimpleChoking ...
4DF6E0:  LDR             R0, [R4,#0xC]
4DF6E2:  ADDS            R1, #8
4DF6E4:  STR             R1, [R4]
4DF6E6:  CBZ             R0, loc_4DF6FE
4DF6E8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF6F4)
4DF6EA:  MOVS            R2, #0xC0800000
4DF6F0:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF6F2:  STR             R2, [R0,#0x1C]
4DF6F4:  LDR             R0, [R4,#0xC]; this
4DF6F6:  MOVS            R2, #0; void *
4DF6F8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF6FA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF6FE:  MOV             R1, R4
4DF700:  LDR.W           R0, [R1,#8]!; CEntity **
4DF704:  CMP             R0, #0
4DF706:  IT NE
4DF708:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DF70C:  MOV             R0, R4; this
4DF70E:  POP.W           {R4,R6,R7,LR}
4DF712:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
