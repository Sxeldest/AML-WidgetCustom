; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPRD2Ev
; Address            : 0x51025C - 0x510286
; =========================================================

51025C:  PUSH            {R4,R6,R7,LR}
51025E:  ADD             R7, SP, #8
510260:  MOV             R4, R0
510262:  LDR             R0, =(_ZTV18CTaskSimpleGiveCPR_ptr - 0x510268)
510264:  ADD             R0, PC; _ZTV18CTaskSimpleGiveCPR_ptr
510266:  LDR             R1, [R0]; `vtable for'CTaskSimpleGiveCPR ...
510268:  LDR             R0, [R4,#0x10]; this
51026A:  ADDS            R1, #8
51026C:  STR             R1, [R4]
51026E:  CBZ             R0, loc_51027C
510270:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x510278)
510272:  MOVS            R2, #0; void *
510274:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
510276:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
510278:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51027C:  MOV             R0, R4; this
51027E:  POP.W           {R4,R6,R7,LR}
510282:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
