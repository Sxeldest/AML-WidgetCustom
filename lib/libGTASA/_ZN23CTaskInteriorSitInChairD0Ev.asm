; =========================================================
; Game Engine Function: _ZN23CTaskInteriorSitInChairD0Ev
; Address            : 0x529C1C - 0x529C4A
; =========================================================

529C1C:  PUSH            {R4,R6,R7,LR}
529C1E:  ADD             R7, SP, #8
529C20:  MOV             R4, R0
529C22:  LDR             R0, =(_ZTV23CTaskInteriorSitInChair_ptr - 0x529C28)
529C24:  ADD             R0, PC; _ZTV23CTaskInteriorSitInChair_ptr
529C26:  LDR             R1, [R0]; `vtable for'CTaskInteriorSitInChair ...
529C28:  LDR             R0, [R4,#0x14]; this
529C2A:  ADDS            R1, #8
529C2C:  STR             R1, [R4]
529C2E:  CBZ             R0, loc_529C3C
529C30:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529C38)
529C32:  MOVS            R2, #0; void *
529C34:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
529C36:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529C38:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529C3C:  MOV             R0, R4; this
529C3E:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
529C42:  POP.W           {R4,R6,R7,LR}
529C46:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
