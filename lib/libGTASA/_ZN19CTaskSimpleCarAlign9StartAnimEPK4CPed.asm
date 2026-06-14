; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlign9StartAnimEPK4CPed
; Address            : 0x5009E4 - 0x500A88
; =========================================================

5009E4:  PUSH            {R4-R7,LR}
5009E6:  ADD             R7, SP, #0xC
5009E8:  PUSH.W          {R11}
5009EC:  SUB             SP, SP, #0x10
5009EE:  MOV             R4, R0
5009F0:  MOV             R5, R1
5009F2:  LDR             R1, [R4,#0x10]; CVehicle *
5009F4:  ADD             R0, SP, #0x20+var_1C; this
5009F6:  LDR             R2, [R4,#0x20]; int
5009F8:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5009FC:  LDR             R0, [R4,#0x10]
5009FE:  LDR             R2, [R5,#0x14]
500A00:  LDR             R1, [R4,#0x20]
500A02:  ADD.W           R6, R2, #0x30 ; '0'
500A06:  CMP             R2, #0
500A08:  VLDR            S0, [SP,#0x20+var_14]
500A0C:  MOVW            R2, #0x15F
500A10:  LDR.W           R0, [R0,#0x388]
500A14:  IT EQ
500A16:  ADDEQ           R6, R5, #4
500A18:  VLDR            S2, [R6,#8]
500A1C:  MOVS            R6, #0x94
500A1E:  VLDR            S6, =0.0
500A22:  BIC.W           R1, R1, #1
500A26:  VSUB.F32        S0, S0, S2
500A2A:  VLDR            S4, =4.4
500A2E:  LDR             R3, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500A38)
500A30:  LDRB.W          R0, [R0,#0xDE]
500A34:  ADD             R3, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500A36:  LDR             R3, [R3]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500A38:  VMAX.F32        D0, D0, D3
500A3C:  SMLABB.W        R0, R0, R6, R3; this
500A40:  MOV.W           R6, #0x160
500A44:  VCMPE.F32       S0, S4
500A48:  VMRS            APSR_nzcv, FPSCR
500A4C:  IT GT
500A4E:  MOVWGT          R2, #0x161
500A52:  IT GT
500A54:  MOVGT.W         R6, #0x162
500A58:  CMP             R1, #0xA
500A5A:  IT EQ
500A5C:  MOVEQ           R6, R2
500A5E:  MOV             R1, R6; int
500A60:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500A64:  MOV             R1, R0; int
500A66:  LDR             R0, [R5,#0x18]; int
500A68:  MOV             R2, R6; unsigned int
500A6A:  MOV.W           R3, #0x40800000
500A6E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
500A72:  LDR             R1, =(_ZN19CTaskSimpleCarAlign20FinishAnimCarAlignCBEP21CAnimBlendAssociationPv_ptr - 0x500A7C)
500A74:  MOV             R2, R4; void *
500A76:  STR             R0, [R4,#0xC]
500A78:  ADD             R1, PC; _ZN19CTaskSimpleCarAlign20FinishAnimCarAlignCBEP21CAnimBlendAssociationPv_ptr
500A7A:  LDR             R1, [R1]; CTaskSimpleCarAlign::FinishAnimCarAlignCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500A7C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500A80:  ADD             SP, SP, #0x10
500A82:  POP.W           {R11}
500A86:  POP             {R4-R7,PC}
