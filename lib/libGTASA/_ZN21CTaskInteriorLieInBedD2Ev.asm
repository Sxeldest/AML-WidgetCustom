; =========================================================
; Game Engine Function: _ZN21CTaskInteriorLieInBedD2Ev
; Address            : 0x52A2A8 - 0x52A2D2
; =========================================================

52A2A8:  PUSH            {R4,R6,R7,LR}
52A2AA:  ADD             R7, SP, #8
52A2AC:  MOV             R4, R0
52A2AE:  LDR             R0, =(_ZTV21CTaskInteriorLieInBed_ptr - 0x52A2B4)
52A2B0:  ADD             R0, PC; _ZTV21CTaskInteriorLieInBed_ptr
52A2B2:  LDR             R1, [R0]; `vtable for'CTaskInteriorLieInBed ...
52A2B4:  LDR             R0, [R4,#0x14]; this
52A2B6:  ADDS            R1, #8
52A2B8:  STR             R1, [R4]
52A2BA:  CBZ             R0, loc_52A2C8
52A2BC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A2C4)
52A2BE:  MOVS            R2, #0; void *
52A2C0:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A2C2:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A2C4:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A2C8:  MOV             R0, R4; this
52A2CA:  POP.W           {R4,R6,R7,LR}
52A2CE:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
