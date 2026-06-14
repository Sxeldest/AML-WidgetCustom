; =========================================================
; Game Engine Function: _ZN18CTaskSimpleStandUpD2Ev
; Address            : 0x4EC634 - 0x4EC65E
; =========================================================

4EC634:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleStandUp::~CTaskSimpleStandUp()'
4EC636:  ADD             R7, SP, #8
4EC638:  MOV             R4, R0
4EC63A:  LDR             R0, =(_ZTV18CTaskSimpleStandUp_ptr - 0x4EC640)
4EC63C:  ADD             R0, PC; _ZTV18CTaskSimpleStandUp_ptr
4EC63E:  LDR             R1, [R0]; `vtable for'CTaskSimpleStandUp ...
4EC640:  LDR             R0, [R4,#0xC]; this
4EC642:  ADDS            R1, #8
4EC644:  STR             R1, [R4]
4EC646:  CBZ             R0, loc_4EC654
4EC648:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC650)
4EC64A:  MOVS            R2, #0; void *
4EC64C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC64E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EC650:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EC654:  MOV             R0, R4; this
4EC656:  POP.W           {R4,R6,R7,LR}
4EC65A:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
