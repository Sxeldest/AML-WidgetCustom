; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicleD2Ev
; Address            : 0x51A970 - 0x51A9A8
; =========================================================

51A970:  PUSH            {R4,R6,R7,LR}
51A972:  ADD             R7, SP, #8
51A974:  MOV             R4, R0
51A976:  LDR             R0, =(_ZTV18CTaskLeanOnVehicle_ptr - 0x51A97E)
51A978:  MOV             R1, R4
51A97A:  ADD             R0, PC; _ZTV18CTaskLeanOnVehicle_ptr
51A97C:  LDR             R2, [R0]; `vtable for'CTaskLeanOnVehicle ...
51A97E:  LDR.W           R0, [R1,#8]!; CEntity **
51A982:  ADDS            R2, #8
51A984:  STR             R2, [R4]
51A986:  CMP             R0, #0
51A988:  IT NE
51A98A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51A98E:  LDR             R0, [R4,#0x14]; this
51A990:  CBZ             R0, loc_51A99E
51A992:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51A99A)
51A994:  MOVS            R2, #0; void *
51A996:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
51A998:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51A99A:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51A99E:  MOV             R0, R4; this
51A9A0:  POP.W           {R4,R6,R7,LR}
51A9A4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
