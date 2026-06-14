; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempActionD2Ev
; Address            : 0x4FD06C - 0x4FD0C6
; =========================================================

4FD06C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarDrive::~CTaskSimpleCarDrive()'
4FD06E:  ADD             R7, SP, #8
4FD070:  MOV             R4, R0
4FD072:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FD07A)
4FD074:  MOV             R1, R4
4FD076:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FD078:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FD07A:  LDR.W           R0, [R1,#8]!; CEntity **
4FD07E:  ADDS            R2, #8
4FD080:  STR             R2, [R4]
4FD082:  CMP             R0, #0
4FD084:  IT NE
4FD086:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FD08A:  LDR             R0, [R4,#0x10]; this
4FD08C:  CBZ             R0, loc_4FD09A
4FD08E:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
4FD092:  BLX             _ZdlPv; operator delete(void *)
4FD096:  MOVS            R0, #0
4FD098:  STR             R0, [R4,#0x10]
4FD09A:  LDRB.W          R0, [R4,#0x5C]
4FD09E:  LSLS            R0, R0, #0x1A
4FD0A0:  BPL             loc_4FD0BC
4FD0A2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4FD0AC)
4FD0A4:  MOVS            R2, #0; void *
4FD0A6:  LDR             R0, [R4,#0xC]; this
4FD0A8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4FD0AA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4FD0AC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4FD0B0:  LDR             R0, [R4,#8]; this
4FD0B2:  CMP             R0, #0
4FD0B4:  ITT NE
4FD0B6:  MOVNE           R1, #1; unsigned __int8
4FD0B8:  BLXNE           j__ZN8CVehicle20ClearGettingOutFlagsEh; CVehicle::ClearGettingOutFlags(uchar)
4FD0BC:  MOV             R0, R4; this
4FD0BE:  POP.W           {R4,R6,R7,LR}
4FD0C2:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
