; =========================================================
; Game Engine Function: _ZN22CTaskSimpleStealthKillD0Ev
; Address            : 0x4E8694 - 0x4E86D0
; =========================================================

4E8694:  PUSH            {R4,R6,R7,LR}
4E8696:  ADD             R7, SP, #8
4E8698:  MOV             R4, R0
4E869A:  LDR             R0, =(_ZTV22CTaskSimpleStealthKill_ptr - 0x4E86A2)
4E869C:  MOV             R1, R4
4E869E:  ADD             R0, PC; _ZTV22CTaskSimpleStealthKill_ptr
4E86A0:  LDR             R2, [R0]; `vtable for'CTaskSimpleStealthKill ...
4E86A2:  LDR.W           R0, [R1,#0xC]!; CEntity **
4E86A6:  ADDS            R2, #8
4E86A8:  STR             R2, [R4]
4E86AA:  CMP             R0, #0
4E86AC:  IT NE
4E86AE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E86B2:  LDR             R0, [R4,#0x18]; this
4E86B4:  CBZ             R0, loc_4E86C2
4E86B6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4E86BE)
4E86B8:  MOVS            R2, #0; void *
4E86BA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4E86BC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E86BE:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E86C2:  MOV             R0, R4; this
4E86C4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4E86C8:  POP.W           {R4,R6,R7,LR}
4E86CC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
