; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOutD2Ev
; Address            : 0x503164 - 0x50319C
; =========================================================

503164:  PUSH            {R4,R6,R7,LR}
503166:  ADD             R7, SP, #8
503168:  MOV             R4, R0
50316A:  LDR             R0, =(_ZTV20CTaskSimpleCarGetOut_ptr - 0x503172)
50316C:  MOV             R1, R4
50316E:  ADD             R0, PC; _ZTV20CTaskSimpleCarGetOut_ptr
503170:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarGetOut ...
503172:  LDR.W           R0, [R1,#0x14]!; CEntity **
503176:  ADDS            R2, #8
503178:  STR             R2, [R4]
50317A:  CMP             R0, #0
50317C:  IT NE
50317E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
503182:  LDR             R0, [R4,#0xC]; this
503184:  CBZ             R0, loc_503192
503186:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50318E)
503188:  MOVS            R2, #0; void *
50318A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50318C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50318E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
503192:  MOV             R0, R4; this
503194:  POP.W           {R4,R6,R7,LR}
503198:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
