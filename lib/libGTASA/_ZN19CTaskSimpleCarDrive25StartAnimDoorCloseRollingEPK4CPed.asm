; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive25StartAnimDoorCloseRollingEPK4CPed
; Address            : 0x4FAB0C - 0x4FAB52
; =========================================================

4FAB0C:  PUSH            {R4,R5,R7,LR}
4FAB0E:  ADD             R7, SP, #8
4FAB10:  MOV             R4, R1
4FAB12:  MOV             R5, R0
4FAB14:  LDR.W           R0, [R4,#0x590]
4FAB18:  MOVS            R2, #0x94
4FAB1A:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x4FAB24)
4FAB1C:  LDR.W           R0, [R0,#0x388]
4FAB20:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
4FAB22:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
4FAB24:  LDRB.W          R0, [R0,#0xDE]
4FAB28:  SMLABB.W        R0, R0, R2, R1; this
4FAB2C:  MOV.W           R1, #0x182; int
4FAB30:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
4FAB34:  MOV             R1, R0; int
4FAB36:  LDR             R0, [R4,#0x18]; int
4FAB38:  MOV.W           R2, #0x182; unsigned int
4FAB3C:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4FAB40:  LDR             R1, =(_ZN19CTaskSimpleCarDrive28FinishAnimCloseDoorRollingCBEP21CAnimBlendAssociationPv_ptr - 0x4FAB4A)
4FAB42:  MOV             R2, R5
4FAB44:  STR             R0, [R5,#0xC]
4FAB46:  ADD             R1, PC; _ZN19CTaskSimpleCarDrive28FinishAnimCloseDoorRollingCBEP21CAnimBlendAssociationPv_ptr
4FAB48:  LDR             R1, [R1]; CTaskSimpleCarDrive::FinishAnimCloseDoorRollingCB(CAnimBlendAssociation *,void *)
4FAB4A:  POP.W           {R4,R5,R7,LR}
4FAB4E:  B.W             sub_18C20C
