; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUpD0Ev
; Address            : 0x52B03C - 0x52B06A
; =========================================================

52B03C:  PUSH            {R4,R6,R7,LR}
52B03E:  ADD             R7, SP, #8
52B040:  MOV             R4, R0
52B042:  LDR             R0, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52B048)
52B044:  ADD             R0, PC; _ZTV16CTaskSimpleGetUp_ptr
52B046:  LDR             R1, [R0]; `vtable for'CTaskSimpleGetUp ...
52B048:  LDR             R0, [R4,#0xC]; this
52B04A:  ADDS            R1, #8
52B04C:  STR             R1, [R4]
52B04E:  CBZ             R0, loc_52B05C
52B050:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52B058)
52B052:  MOVS            R2, #0; void *
52B054:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52B056:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B058:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B05C:  MOV             R0, R4; this
52B05E:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52B062:  POP.W           {R4,R6,R7,LR}
52B066:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
