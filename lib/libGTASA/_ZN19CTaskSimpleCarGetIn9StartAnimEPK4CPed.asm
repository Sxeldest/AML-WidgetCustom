; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn9StartAnimEPK4CPed
; Address            : 0x501E2C - 0x501ED6
; =========================================================

501E2C:  PUSH            {R4-R7,LR}
501E2E:  ADD             R7, SP, #0xC
501E30:  PUSH.W          {R11}
501E34:  MOV             R4, R0
501E36:  MOV             R5, R1
501E38:  LDR             R0, [R4,#0x1C]
501E3A:  MOVW            R6, #0x167
501E3E:  SUBS            R0, #8; switch 11 cases
501E40:  CMP             R0, #0xA
501E42:  BHI             def_501E44; jumptable 00501E44 default case, cases 10,12-17
501E44:  TBB.W           [PC,R0]; switch jump
501E48:  DCB 6; jump table for switch statement
501E49:  DCB 9
501E4A:  DCB 0x11
501E4B:  DCB 0xC
501E4C:  DCB 0x11
501E4D:  DCB 0x11
501E4E:  DCB 0x11
501E4F:  DCB 0x11
501E50:  DCB 0x11
501E51:  DCB 0x11
501E52:  DCB 0xF
501E53:  ALIGN 2
501E54:  MOV.W           R6, #0x168; jumptable 00501E44 case 8
501E58:  B               def_501E44; jumptable 00501E44 default case, cases 10,12-17
501E5A:  MOV.W           R6, #0x16A; jumptable 00501E44 case 9
501E5E:  B               def_501E44; jumptable 00501E44 default case, cases 10,12-17
501E60:  MOVW            R6, #0x169; jumptable 00501E44 case 11
501E64:  B               def_501E44; jumptable 00501E44 default case, cases 10,12-17
501E66:  MOVW            R6, #0x16B; jumptable 00501E44 case 18
501E6A:  LDR             R0, [R4,#0x18]; jumptable 00501E44 default case, cases 10,12-17
501E6C:  MOVS            R2, #0x94
501E6E:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501E78)
501E70:  LDR.W           R0, [R0,#0x388]
501E74:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501E76:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501E78:  LDRB.W          R0, [R0,#0xDE]
501E7C:  SMLABB.W        R0, R0, R2, R1; this
501E80:  MOV             R1, R6; int
501E82:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501E86:  MOV             R1, R0
501E88:  CMP             R1, #0x6B ; 'k'
501E8A:  BNE             loc_501EB4
501E8C:  LDR             R0, [R4,#0x1C]
501E8E:  CMP             R0, #0xA
501E90:  BNE             loc_501EAE
501E92:  LDR             R0, [R4,#0x18]
501E94:  LDR             R1, [R0]
501E96:  LDR.W           R2, [R1,#0x9C]
501E9A:  MOVS            R1, #0xA
501E9C:  BLX             R2
501E9E:  CBNZ            R0, loc_501EB2
501EA0:  LDRD.W          R0, R1, [R4,#0x18]
501EA4:  LDR             R2, [R0]
501EA6:  LDR.W           R2, [R2,#0x98]
501EAA:  BLX             R2
501EAC:  CBZ             R0, loc_501EB2
501EAE:  MOVS            R1, #0x6B ; 'k'
501EB0:  B               loc_501EB4
501EB2:  MOVS            R1, #0x58 ; 'X'; int
501EB4:  LDR             R0, [R5,#0x18]; int
501EB6:  MOV             R2, R6; unsigned int
501EB8:  MOV.W           R3, #0x40800000
501EBC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
501EC0:  LDR             R1, =(_ZN19CTaskSimpleCarGetIn20FinishAnimCarGetInCBEP21CAnimBlendAssociationPv_ptr - 0x501ECA)
501EC2:  MOV             R2, R4
501EC4:  STR             R0, [R4,#0xC]
501EC6:  ADD             R1, PC; _ZN19CTaskSimpleCarGetIn20FinishAnimCarGetInCBEP21CAnimBlendAssociationPv_ptr
501EC8:  LDR             R1, [R1]; CTaskSimpleCarGetIn::FinishAnimCarGetInCB(CAnimBlendAssociation *,void *)
501ECA:  POP.W           {R11}
501ECE:  POP.W           {R4-R7,LR}
501ED2:  B.W             sub_18C20C
