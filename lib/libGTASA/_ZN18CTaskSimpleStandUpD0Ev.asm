; =========================================================
; Game Engine Function: _ZN18CTaskSimpleStandUpD0Ev
; Address            : 0x4EC668 - 0x4EC696
; =========================================================

4EC668:  PUSH            {R4,R6,R7,LR}
4EC66A:  ADD             R7, SP, #8
4EC66C:  MOV             R4, R0
4EC66E:  LDR             R0, =(_ZTV18CTaskSimpleStandUp_ptr - 0x4EC674)
4EC670:  ADD             R0, PC; _ZTV18CTaskSimpleStandUp_ptr
4EC672:  LDR             R1, [R0]; `vtable for'CTaskSimpleStandUp ...
4EC674:  LDR             R0, [R4,#0xC]; this
4EC676:  ADDS            R1, #8
4EC678:  STR             R1, [R4]
4EC67A:  CBZ             R0, loc_4EC688
4EC67C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC684)
4EC67E:  MOVS            R2, #0; void *
4EC680:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC682:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EC684:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EC688:  MOV             R0, R4; this
4EC68A:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EC68E:  POP.W           {R4,R6,R7,LR}
4EC692:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
