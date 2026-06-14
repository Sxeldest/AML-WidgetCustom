; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDieD0Ev
; Address            : 0x4EAD80 - 0x4EADAE
; =========================================================

4EAD80:  PUSH            {R4,R6,R7,LR}
4EAD82:  ADD             R7, SP, #8
4EAD84:  MOV             R4, R0
4EAD86:  LDR             R0, =(_ZTV14CTaskSimpleDie_ptr - 0x4EAD8C)
4EAD88:  ADD             R0, PC; _ZTV14CTaskSimpleDie_ptr
4EAD8A:  LDR             R1, [R0]; `vtable for'CTaskSimpleDie ...
4EAD8C:  LDR             R0, [R4,#0x24]; this
4EAD8E:  ADDS            R1, #8
4EAD90:  STR             R1, [R4]
4EAD92:  CBZ             R0, loc_4EADA0
4EAD94:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EAD9C)
4EAD96:  MOVS            R2, #0; void *
4EAD98:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EAD9A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EAD9C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EADA0:  MOV             R0, R4; this
4EADA2:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EADA6:  POP.W           {R4,R6,R7,LR}
4EADAA:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
