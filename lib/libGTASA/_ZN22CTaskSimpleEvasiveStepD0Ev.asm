; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStepD0Ev
; Address            : 0x50ADA0 - 0x50ADDC
; =========================================================

50ADA0:  PUSH            {R4,R6,R7,LR}
50ADA2:  ADD             R7, SP, #8
50ADA4:  MOV             R4, R0
50ADA6:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveStep_ptr - 0x50ADAC)
50ADA8:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveStep_ptr
50ADAA:  LDR             R1, [R0]; `vtable for'CTaskSimpleEvasiveStep ...
50ADAC:  LDR             R0, [R4,#0x10]; this
50ADAE:  ADDS            R1, #8
50ADB0:  STR             R1, [R4]
50ADB2:  CBZ             R0, loc_50ADC0
50ADB4:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50ADBC)
50ADB6:  MOVS            R2, #0; void *
50ADB8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50ADBA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50ADBC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50ADC0:  MOV             R1, R4
50ADC2:  LDR.W           R0, [R1,#8]!; CEntity **
50ADC6:  CMP             R0, #0
50ADC8:  IT NE
50ADCA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50ADCE:  MOV             R0, R4; this
50ADD0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50ADD4:  POP.W           {R4,R6,R7,LR}
50ADD8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
