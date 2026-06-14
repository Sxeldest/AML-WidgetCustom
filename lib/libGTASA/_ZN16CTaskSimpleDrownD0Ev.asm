; =========================================================
; Game Engine Function: _ZN16CTaskSimpleDrownD0Ev
; Address            : 0x4EB44C - 0x4EB47A
; =========================================================

4EB44C:  PUSH            {R4,R6,R7,LR}
4EB44E:  ADD             R7, SP, #8
4EB450:  MOV             R4, R0
4EB452:  LDR             R0, =(_ZTV14CTaskSimpleDie_ptr - 0x4EB458)
4EB454:  ADD             R0, PC; _ZTV14CTaskSimpleDie_ptr
4EB456:  LDR             R1, [R0]; `vtable for'CTaskSimpleDie ...
4EB458:  LDR             R0, [R4,#0x24]; this
4EB45A:  ADDS            R1, #8
4EB45C:  STR             R1, [R4]
4EB45E:  CBZ             R0, loc_4EB46C
4EB460:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EB468)
4EB462:  MOVS            R2, #0; void *
4EB464:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EB466:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EB468:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EB46C:  MOV             R0, R4; this
4EB46E:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EB472:  POP.W           {R4,R6,R7,LR}
4EB476:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
