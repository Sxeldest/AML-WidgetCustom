; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutsideD2Ev
; Address            : 0x500B18 - 0x500B6C
; =========================================================

500B18:  PUSH            {R4,R6,R7,LR}
500B1A:  ADD             R7, SP, #8
500B1C:  MOV             R4, R0
500B1E:  LDR             R0, =(_ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr - 0x500B26)
500B20:  MOV             R1, R4
500B22:  ADD             R0, PC; _ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr
500B24:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarOpenDoorFromOutside ...
500B26:  LDR.W           R0, [R1,#0x10]!; CEntity **
500B2A:  ADDS            R2, #8
500B2C:  STR             R2, [R4]
500B2E:  CMP             R0, #0
500B30:  IT NE
500B32:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
500B36:  LDR             R0, [R4,#0xC]; this
500B38:  CBZ             R0, loc_500B46
500B3A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x500B42)
500B3C:  MOVS            R2, #0; void *
500B3E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
500B40:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500B42:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500B46:  LDRB            R0, [R4,#0x19]
500B48:  CBZ             R0, loc_500B62
500B4A:  MOVS            R0, #0
500B4C:  STRB            R0, [R4,#0x19]
500B4E:  MOV.W           R0, #0xFFFFFFFF; int
500B52:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
500B56:  LDR.W           R1, [R0,#0x48C]
500B5A:  ORR.W           R1, R1, #0x4000000
500B5E:  STR.W           R1, [R0,#0x48C]
500B62:  MOV             R0, R4; this
500B64:  POP.W           {R4,R6,R7,LR}
500B68:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
