; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitHeadD0Ev
; Address            : 0x50AC30 - 0x50AC5E
; =========================================================

50AC30:  PUSH            {R4,R6,R7,LR}
50AC32:  ADD             R7, SP, #8
50AC34:  MOV             R4, R0
50AC36:  LDR             R0, =(_ZTV18CTaskSimpleHitHead_ptr - 0x50AC3C)
50AC38:  ADD             R0, PC; _ZTV18CTaskSimpleHitHead_ptr
50AC3A:  LDR             R1, [R0]; `vtable for'CTaskSimpleHitHead ...
50AC3C:  LDR             R0, [R4,#0xC]; this
50AC3E:  ADDS            R1, #8
50AC40:  STR             R1, [R4]
50AC42:  CBZ             R0, loc_50AC50
50AC44:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50AC4C)
50AC46:  MOVS            R2, #0; void *
50AC48:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50AC4A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50AC4C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50AC50:  MOV             R0, R4; this
50AC52:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50AC56:  POP.W           {R4,R6,R7,LR}
50AC5A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
