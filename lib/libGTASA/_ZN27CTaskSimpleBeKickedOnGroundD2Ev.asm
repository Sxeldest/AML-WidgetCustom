; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeKickedOnGroundD2Ev
; Address            : 0x4DF100 - 0x4DF134
; =========================================================

4DF100:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleBeKickedOnGround::~CTaskSimpleBeKickedOnGround()'
4DF102:  ADD             R7, SP, #8
4DF104:  MOV             R4, R0
4DF106:  LDR             R0, =(_ZTV27CTaskSimpleBeKickedOnGround_ptr - 0x4DF10C)
4DF108:  ADD             R0, PC; _ZTV27CTaskSimpleBeKickedOnGround_ptr
4DF10A:  LDR             R1, [R0]; `vtable for'CTaskSimpleBeKickedOnGround ...
4DF10C:  LDR             R0, [R4,#0xC]
4DF10E:  ADDS            R1, #8
4DF110:  STR             R1, [R4]
4DF112:  CBZ             R0, loc_4DF12A
4DF114:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF120)
4DF116:  MOVS            R2, #0xC0800000
4DF11C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF11E:  STR             R2, [R0,#0x1C]
4DF120:  LDR             R0, [R4,#0xC]; this
4DF122:  MOVS            R2, #0; void *
4DF124:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF126:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF12A:  MOV             R0, R4; this
4DF12C:  POP.W           {R4,R6,R7,LR}
4DF130:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
