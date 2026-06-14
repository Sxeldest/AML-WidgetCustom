; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutsideD0Ev
; Address            : 0x500B74 - 0x500BCC
; =========================================================

500B74:  PUSH            {R4,R6,R7,LR}
500B76:  ADD             R7, SP, #8
500B78:  MOV             R4, R0
500B7A:  LDR             R0, =(_ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr - 0x500B82)
500B7C:  MOV             R1, R4
500B7E:  ADD             R0, PC; _ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr
500B80:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarOpenDoorFromOutside ...
500B82:  LDR.W           R0, [R1,#0x10]!; CEntity **
500B86:  ADDS            R2, #8
500B88:  STR             R2, [R4]
500B8A:  CMP             R0, #0
500B8C:  IT NE
500B8E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
500B92:  LDR             R0, [R4,#0xC]; this
500B94:  CBZ             R0, loc_500BA2
500B96:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x500B9E)
500B98:  MOVS            R2, #0; void *
500B9A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
500B9C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500B9E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500BA2:  LDRB            R0, [R4,#0x19]
500BA4:  CBZ             R0, loc_500BBE
500BA6:  MOVS            R0, #0
500BA8:  STRB            R0, [R4,#0x19]
500BAA:  MOV.W           R0, #0xFFFFFFFF; int
500BAE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
500BB2:  LDR.W           R1, [R0,#0x48C]
500BB6:  ORR.W           R1, R1, #0x4000000
500BBA:  STR.W           R1, [R0,#0x48C]
500BBE:  MOV             R0, R4; this
500BC0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
500BC4:  POP.W           {R4,R6,R7,LR}
500BC8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
