; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeKickedOnGroundD0Ev
; Address            : 0x4DF13C - 0x4DF174
; =========================================================

4DF13C:  PUSH            {R4,R6,R7,LR}
4DF13E:  ADD             R7, SP, #8
4DF140:  MOV             R4, R0
4DF142:  LDR             R0, =(_ZTV27CTaskSimpleBeKickedOnGround_ptr - 0x4DF148)
4DF144:  ADD             R0, PC; _ZTV27CTaskSimpleBeKickedOnGround_ptr
4DF146:  LDR             R1, [R0]; `vtable for'CTaskSimpleBeKickedOnGround ...
4DF148:  LDR             R0, [R4,#0xC]
4DF14A:  ADDS            R1, #8
4DF14C:  STR             R1, [R4]
4DF14E:  CBZ             R0, loc_4DF166
4DF150:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF15C)
4DF152:  MOVS            R2, #0xC0800000
4DF158:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF15A:  STR             R2, [R0,#0x1C]
4DF15C:  LDR             R0, [R4,#0xC]; this
4DF15E:  MOVS            R2, #0; void *
4DF160:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF162:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF166:  MOV             R0, R4; this
4DF168:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4DF16C:  POP.W           {R4,R6,R7,LR}
4DF170:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
