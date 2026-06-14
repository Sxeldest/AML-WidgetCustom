; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUpD2Ev
; Address            : 0x52B008 - 0x52B032
; =========================================================

52B008:  PUSH            {R4,R6,R7,LR}
52B00A:  ADD             R7, SP, #8
52B00C:  MOV             R4, R0
52B00E:  LDR             R0, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52B014)
52B010:  ADD             R0, PC; _ZTV16CTaskSimpleGetUp_ptr
52B012:  LDR             R1, [R0]; `vtable for'CTaskSimpleGetUp ...
52B014:  LDR             R0, [R4,#0xC]; this
52B016:  ADDS            R1, #8
52B018:  STR             R1, [R4]
52B01A:  CBZ             R0, loc_52B028
52B01C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52B024)
52B01E:  MOVS            R2, #0; void *
52B020:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52B022:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B024:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B028:  MOV             R0, R4; this
52B02A:  POP.W           {R4,R6,R7,LR}
52B02E:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
