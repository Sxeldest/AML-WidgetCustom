; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutside9StartAnimEPK4CPed
; Address            : 0x500EB8 - 0x500F1A
; =========================================================

500EB8:  PUSH            {R4-R7,LR}
500EBA:  ADD             R7, SP, #0xC
500EBC:  PUSH.W          {R11}
500EC0:  MOV             R4, R0
500EC2:  MOV             R5, R1
500EC4:  LDR             R0, [R4,#0x14]
500EC6:  SUBS            R0, #8
500EC8:  CMP             R0, #2
500ECA:  BHI             loc_500ED6
500ECC:  LDR             R1, =(unk_61E6A8 - 0x500ED2)
500ECE:  ADD             R1, PC; unk_61E6A8
500ED0:  LDR.W           R6, [R1,R0,LSL#2]
500ED4:  B               loc_500EDA
500ED6:  MOVW            R6, #0x165
500EDA:  LDR             R0, [R4,#0x10]
500EDC:  MOVS            R2, #0x94
500EDE:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500EE8)
500EE0:  LDR.W           R0, [R0,#0x388]
500EE4:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500EE6:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500EE8:  LDRB.W          R0, [R0,#0xDE]
500EEC:  SMLABB.W        R0, R0, R2, R1; this
500EF0:  MOV             R1, R6; int
500EF2:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500EF6:  MOV             R1, R0; int
500EF8:  LDR             R0, [R5,#0x18]; int
500EFA:  MOV             R2, R6; unsigned int
500EFC:  MOV.W           R3, #0x40800000
500F00:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
500F04:  LDR             R1, =(_ZN33CTaskSimpleCarOpenDoorFromOutside34FinishAnimCarOpenDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr - 0x500F0E)
500F06:  MOV             R2, R4
500F08:  STR             R0, [R4,#0xC]
500F0A:  ADD             R1, PC; _ZN33CTaskSimpleCarOpenDoorFromOutside34FinishAnimCarOpenDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr
500F0C:  LDR             R1, [R1]; CTaskSimpleCarOpenDoorFromOutside::FinishAnimCarOpenDoorFromOutsideCB(CAnimBlendAssociation *,void *)
500F0E:  POP.W           {R11}
500F12:  POP.W           {R4-R7,LR}
500F16:  B.W             sub_18C20C
