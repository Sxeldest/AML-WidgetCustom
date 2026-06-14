; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFistD0Ev
; Address            : 0x540B64 - 0x540B92
; =========================================================

540B64:  PUSH            {R4,R6,R7,LR}
540B66:  ADD             R7, SP, #8
540B68:  MOV             R4, R0
540B6A:  LDR             R0, =(_ZTV20CTaskSimpleShakeFist_ptr - 0x540B70)
540B6C:  ADD             R0, PC; _ZTV20CTaskSimpleShakeFist_ptr
540B6E:  LDR             R1, [R0]; `vtable for'CTaskSimpleShakeFist ...
540B70:  LDR             R0, [R4,#0xC]; this
540B72:  ADDS            R1, #8
540B74:  STR             R1, [R4]
540B76:  CBZ             R0, loc_540B84
540B78:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x540B80)
540B7A:  MOVS            R2, #0; void *
540B7C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
540B7E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
540B80:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
540B84:  MOV             R0, R4; this
540B86:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
540B8A:  POP.W           {R4,R6,R7,LR}
540B8E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
