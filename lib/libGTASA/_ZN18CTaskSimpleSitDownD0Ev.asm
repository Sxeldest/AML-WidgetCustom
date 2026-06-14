; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitDownD0Ev
; Address            : 0x4EBFAC - 0x4EBFDA
; =========================================================

4EBFAC:  PUSH            {R4,R6,R7,LR}
4EBFAE:  ADD             R7, SP, #8
4EBFB0:  MOV             R4, R0
4EBFB2:  LDR             R0, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4EBFB8)
4EBFB4:  ADD             R0, PC; _ZTV18CTaskSimpleSitDown_ptr
4EBFB6:  LDR             R1, [R0]; `vtable for'CTaskSimpleSitDown ...
4EBFB8:  LDR             R0, [R4,#0xC]; this
4EBFBA:  ADDS            R1, #8
4EBFBC:  STR             R1, [R4]
4EBFBE:  CBZ             R0, loc_4EBFCC
4EBFC0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EBFC8)
4EBFC2:  MOVS            R2, #0; void *
4EBFC4:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EBFC6:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EBFC8:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EBFCC:  MOV             R0, R4; this
4EBFCE:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EBFD2:  POP.W           {R4,R6,R7,LR}
4EBFD6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
