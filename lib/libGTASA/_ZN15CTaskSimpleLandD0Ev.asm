; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLandD0Ev
; Address            : 0x52CBF4 - 0x52CC22
; =========================================================

52CBF4:  PUSH            {R4,R6,R7,LR}
52CBF6:  ADD             R7, SP, #8
52CBF8:  MOV             R4, R0
52CBFA:  LDR             R0, =(_ZTV15CTaskSimpleLand_ptr - 0x52CC00)
52CBFC:  ADD             R0, PC; _ZTV15CTaskSimpleLand_ptr
52CBFE:  LDR             R1, [R0]; `vtable for'CTaskSimpleLand ...
52CC00:  LDR             R0, [R4,#8]; this
52CC02:  ADDS            R1, #8
52CC04:  STR             R1, [R4]
52CC06:  CBZ             R0, loc_52CC14
52CC08:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52CC10)
52CC0A:  MOVS            R2, #0; void *
52CC0C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52CC0E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52CC10:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52CC14:  MOV             R0, R4; this
52CC16:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52CC1A:  POP.W           {R4,R6,R7,LR}
52CC1E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
