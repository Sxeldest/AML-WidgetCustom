; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAirD2Ev
; Address            : 0x52C34C - 0x52C384
; =========================================================

52C34C:  PUSH            {R4,R6,R7,LR}
52C34E:  ADD             R7, SP, #8
52C350:  MOV             R4, R0
52C352:  LDR             R0, =(_ZTV16CTaskSimpleInAir_ptr - 0x52C358)
52C354:  ADD             R0, PC; _ZTV16CTaskSimpleInAir_ptr
52C356:  LDR             R1, [R0]; `vtable for'CTaskSimpleInAir ...
52C358:  LDR             R0, [R4,#0x1C]; this
52C35A:  ADDS            R1, #8
52C35C:  STR             R1, [R4]
52C35E:  CBZ             R0, loc_52C36C
52C360:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C368)
52C362:  MOVS            R2, #0; void *
52C364:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52C366:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C368:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C36C:  MOV             R1, R4
52C36E:  LDR.W           R0, [R1,#0x38]!; CEntity **
52C372:  CMP             R0, #0
52C374:  IT NE
52C376:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52C37A:  MOV             R0, R4; this
52C37C:  POP.W           {R4,R6,R7,LR}
52C380:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
