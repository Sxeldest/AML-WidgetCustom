; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLandD2Ev
; Address            : 0x52CBC0 - 0x52CBEA
; =========================================================

52CBC0:  PUSH            {R4,R6,R7,LR}
52CBC2:  ADD             R7, SP, #8
52CBC4:  MOV             R4, R0
52CBC6:  LDR             R0, =(_ZTV15CTaskSimpleLand_ptr - 0x52CBCC)
52CBC8:  ADD             R0, PC; _ZTV15CTaskSimpleLand_ptr
52CBCA:  LDR             R1, [R0]; `vtable for'CTaskSimpleLand ...
52CBCC:  LDR             R0, [R4,#8]; this
52CBCE:  ADDS            R1, #8
52CBD0:  STR             R1, [R4]
52CBD2:  CBZ             R0, loc_52CBE0
52CBD4:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52CBDC)
52CBD6:  MOVS            R2, #0; void *
52CBD8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52CBDA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52CBDC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52CBE0:  MOV             R0, R4; this
52CBE2:  POP.W           {R4,R6,R7,LR}
52CBE6:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
