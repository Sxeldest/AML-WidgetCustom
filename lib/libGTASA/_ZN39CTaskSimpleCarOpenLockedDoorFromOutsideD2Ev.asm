; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutsideD2Ev
; Address            : 0x500FE8 - 0x501020
; =========================================================

500FE8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarOpenLockedDoorFromOutside::~CTaskSimpleCarOpenLockedDoorFromOutside()'
500FEA:  ADD             R7, SP, #8
500FEC:  MOV             R4, R0
500FEE:  LDR             R0, =(_ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr - 0x500FF6)
500FF0:  MOV             R1, R4
500FF2:  ADD             R0, PC; _ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr
500FF4:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarOpenLockedDoorFromOutside ...
500FF6:  LDR.W           R0, [R1,#0x10]!; CEntity **
500FFA:  ADDS            R2, #8
500FFC:  STR             R2, [R4]
500FFE:  CMP             R0, #0
501000:  IT NE
501002:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
501006:  LDR             R0, [R4,#0xC]; this
501008:  CBZ             R0, loc_501016
50100A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501012)
50100C:  MOVS            R2, #0; void *
50100E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501010:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501012:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501016:  MOV             R0, R4; this
501018:  POP.W           {R4,R6,R7,LR}
50101C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
