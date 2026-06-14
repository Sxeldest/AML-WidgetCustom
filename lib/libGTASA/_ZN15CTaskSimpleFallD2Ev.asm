; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFallD2Ev
; Address            : 0x52B570 - 0x52B59A
; =========================================================

52B570:  PUSH            {R4,R6,R7,LR}
52B572:  ADD             R7, SP, #8
52B574:  MOV             R4, R0
52B576:  LDR             R0, =(_ZTV15CTaskSimpleFall_ptr - 0x52B57C)
52B578:  ADD             R0, PC; _ZTV15CTaskSimpleFall_ptr
52B57A:  LDR             R1, [R0]; `vtable for'CTaskSimpleFall ...
52B57C:  LDR             R0, [R4,#0x14]; this
52B57E:  ADDS            R1, #8
52B580:  STR             R1, [R4]
52B582:  CBZ             R0, loc_52B590
52B584:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52B58C)
52B586:  MOVS            R2, #0; void *
52B588:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52B58A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B58C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B590:  MOV             R0, R4; this
52B592:  POP.W           {R4,R6,R7,LR}
52B596:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
