; =========================================================
; Game Engine Function: _ZN18CTaskSimpleTurn180D2Ev
; Address            : 0x4ECDD4 - 0x4ECDFE
; =========================================================

4ECDD4:  PUSH            {R4,R6,R7,LR}
4ECDD6:  ADD             R7, SP, #8
4ECDD8:  MOV             R4, R0
4ECDDA:  LDR             R0, =(_ZTV18CTaskSimpleTurn180_ptr - 0x4ECDE0)
4ECDDC:  ADD             R0, PC; _ZTV18CTaskSimpleTurn180_ptr
4ECDDE:  LDR             R1, [R0]; `vtable for'CTaskSimpleTurn180 ...
4ECDE0:  LDR             R0, [R4,#0xC]; this
4ECDE2:  ADDS            R1, #8
4ECDE4:  STR             R1, [R4]
4ECDE6:  CBZ             R0, loc_4ECDF4
4ECDE8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4ECDF0)
4ECDEA:  MOVS            R2, #0; void *
4ECDEC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4ECDEE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4ECDF0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4ECDF4:  MOV             R0, R4; this
4ECDF6:  POP.W           {R4,R6,R7,LR}
4ECDFA:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
