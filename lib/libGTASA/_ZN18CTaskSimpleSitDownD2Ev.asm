; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitDownD2Ev
; Address            : 0x4EBF78 - 0x4EBFA2
; =========================================================

4EBF78:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleSitDown::~CTaskSimpleSitDown()'
4EBF7A:  ADD             R7, SP, #8
4EBF7C:  MOV             R4, R0
4EBF7E:  LDR             R0, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4EBF84)
4EBF80:  ADD             R0, PC; _ZTV18CTaskSimpleSitDown_ptr
4EBF82:  LDR             R1, [R0]; `vtable for'CTaskSimpleSitDown ...
4EBF84:  LDR             R0, [R4,#0xC]; this
4EBF86:  ADDS            R1, #8
4EBF88:  STR             R1, [R4]
4EBF8A:  CBZ             R0, loc_4EBF98
4EBF8C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EBF94)
4EBF8E:  MOVS            R2, #0; void *
4EBF90:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EBF92:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EBF94:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EBF98:  MOV             R0, R4; this
4EBF9A:  POP.W           {R4,R6,R7,LR}
4EBF9E:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
