; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDieInCarD0Ev
; Address            : 0x4EAFE0 - 0x4EB00E
; =========================================================

4EAFE0:  PUSH            {R4,R6,R7,LR}
4EAFE2:  ADD             R7, SP, #8
4EAFE4:  MOV             R4, R0
4EAFE6:  LDR             R0, =(_ZTV14CTaskSimpleDie_ptr - 0x4EAFEC)
4EAFE8:  ADD             R0, PC; _ZTV14CTaskSimpleDie_ptr
4EAFEA:  LDR             R1, [R0]; `vtable for'CTaskSimpleDie ...
4EAFEC:  LDR             R0, [R4,#0x24]; this
4EAFEE:  ADDS            R1, #8
4EAFF0:  STR             R1, [R4]
4EAFF2:  CBZ             R0, loc_4EB000
4EAFF4:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EAFFC)
4EAFF6:  MOVS            R2, #0; void *
4EAFF8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EAFFA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EAFFC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EB000:  MOV             R0, R4; this
4EB002:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EB006:  POP.W           {R4,R6,R7,LR}
4EB00A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
