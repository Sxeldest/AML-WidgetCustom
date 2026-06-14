; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicleD0Ev
; Address            : 0x51A9B0 - 0x51A9EC
; =========================================================

51A9B0:  PUSH            {R4,R6,R7,LR}
51A9B2:  ADD             R7, SP, #8
51A9B4:  MOV             R4, R0
51A9B6:  LDR             R0, =(_ZTV18CTaskLeanOnVehicle_ptr - 0x51A9BE)
51A9B8:  MOV             R1, R4
51A9BA:  ADD             R0, PC; _ZTV18CTaskLeanOnVehicle_ptr
51A9BC:  LDR             R2, [R0]; `vtable for'CTaskLeanOnVehicle ...
51A9BE:  LDR.W           R0, [R1,#8]!; CEntity **
51A9C2:  ADDS            R2, #8
51A9C4:  STR             R2, [R4]
51A9C6:  CMP             R0, #0
51A9C8:  IT NE
51A9CA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51A9CE:  LDR             R0, [R4,#0x14]; this
51A9D0:  CBZ             R0, loc_51A9DE
51A9D2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51A9DA)
51A9D4:  MOVS            R2, #0; void *
51A9D6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
51A9D8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51A9DA:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51A9DE:  MOV             R0, R4; this
51A9E0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
51A9E4:  POP.W           {R4,R6,R7,LR}
51A9E8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
