; =========================================================
; Game Engine Function: _ZN23CTaskInteriorSitInChairD2Ev
; Address            : 0x529BE8 - 0x529C12
; =========================================================

529BE8:  PUSH            {R4,R6,R7,LR}
529BEA:  ADD             R7, SP, #8
529BEC:  MOV             R4, R0
529BEE:  LDR             R0, =(_ZTV23CTaskInteriorSitInChair_ptr - 0x529BF4)
529BF0:  ADD             R0, PC; _ZTV23CTaskInteriorSitInChair_ptr
529BF2:  LDR             R1, [R0]; `vtable for'CTaskInteriorSitInChair ...
529BF4:  LDR             R0, [R4,#0x14]; this
529BF6:  ADDS            R1, #8
529BF8:  STR             R1, [R4]
529BFA:  CBZ             R0, loc_529C08
529BFC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529C04)
529BFE:  MOVS            R2, #0; void *
529C00:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
529C02:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529C04:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529C08:  MOV             R0, R4; this
529C0A:  POP.W           {R4,R6,R7,LR}
529C0E:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
