; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDeskD0Ev
; Address            : 0x52A874 - 0x52A8A2
; =========================================================

52A874:  PUSH            {R4,R6,R7,LR}
52A876:  ADD             R7, SP, #8
52A878:  MOV             R4, R0
52A87A:  LDR             R0, =(_ZTV22CTaskInteriorSitAtDesk_ptr - 0x52A880)
52A87C:  ADD             R0, PC; _ZTV22CTaskInteriorSitAtDesk_ptr
52A87E:  LDR             R1, [R0]; `vtable for'CTaskInteriorSitAtDesk ...
52A880:  LDR             R0, [R4,#0x14]; this
52A882:  ADDS            R1, #8
52A884:  STR             R1, [R4]
52A886:  CBZ             R0, loc_52A894
52A888:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A890)
52A88A:  MOVS            R2, #0; void *
52A88C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A88E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A890:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A894:  MOV             R0, R4; this
52A896:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52A89A:  POP.W           {R4,R6,R7,LR}
52A89E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
