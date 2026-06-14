; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveByD2Ev
; Address            : 0x4E43E8 - 0x4E4448
; =========================================================

4E43E8:  PUSH            {R4,R6,R7,LR}
4E43EA:  ADD             R7, SP, #8
4E43EC:  MOV             R4, R0
4E43EE:  LDR             R0, =(_ZTV22CTaskSimpleGangDriveBy_ptr - 0x4E43F6)
4E43F0:  LDRB            R1, [R4,#9]
4E43F2:  ADD             R0, PC; _ZTV22CTaskSimpleGangDriveBy_ptr
4E43F4:  CMP             R1, #0
4E43F6:  LDR             R0, [R0]; `vtable for'CTaskSimpleGangDriveBy ...
4E43F8:  ADD.W           R0, R0, #8
4E43FC:  STR             R0, [R4]
4E43FE:  BEQ             loc_4E4420
4E4400:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4E4408)
4E4402:  LDR             R2, [R4,#0x28]
4E4404:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4E4406:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4E440E)
4E4408:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
4E440A:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4E440C:  ADD.W           R2, R2, R2,LSL#2
4E4410:  LDR             R1, [R1]; int
4E4412:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
4E4414:  LDR.W           R0, [R0,R2,LSL#2]
4E4418:  SUBS            R0, R0, R1
4E441A:  ASRS            R0, R0, #5; this
4E441C:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4E4420:  LDR             R0, [R4,#0x2C]; this
4E4422:  CBZ             R0, loc_4E4430
4E4424:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4E442C)
4E4426:  MOVS            R2, #0; void *
4E4428:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4E442A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E442C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E4430:  MOV             R1, R4
4E4432:  LDR.W           R0, [R1,#0x34]!; CEntity **
4E4436:  CMP             R0, #0
4E4438:  IT NE
4E443A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E443E:  MOV             R0, R4; this
4E4440:  POP.W           {R4,R6,R7,LR}
4E4444:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
