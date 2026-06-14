; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFallD0Ev
; Address            : 0x52B5A4 - 0x52B5D2
; =========================================================

52B5A4:  PUSH            {R4,R6,R7,LR}
52B5A6:  ADD             R7, SP, #8
52B5A8:  MOV             R4, R0
52B5AA:  LDR             R0, =(_ZTV15CTaskSimpleFall_ptr - 0x52B5B0)
52B5AC:  ADD             R0, PC; _ZTV15CTaskSimpleFall_ptr
52B5AE:  LDR             R1, [R0]; `vtable for'CTaskSimpleFall ...
52B5B0:  LDR             R0, [R4,#0x14]; this
52B5B2:  ADDS            R1, #8
52B5B4:  STR             R1, [R4]
52B5B6:  CBZ             R0, loc_52B5C4
52B5B8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52B5C0)
52B5BA:  MOVS            R2, #0; void *
52B5BC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52B5BE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B5C0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B5C4:  MOV             R0, R4; this
52B5C6:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52B5CA:  POP.W           {R4,R6,R7,LR}
52B5CE:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
