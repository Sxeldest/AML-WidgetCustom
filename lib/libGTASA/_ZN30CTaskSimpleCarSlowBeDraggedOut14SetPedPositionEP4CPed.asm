; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOut14SetPedPositionEP4CPed
; Address            : 0x50496C - 0x5049FA
; =========================================================

50496C:  PUSH            {R4-R7,LR}
50496E:  ADD             R7, SP, #0xC
504970:  PUSH.W          {R11}
504974:  MOV             R4, R0
504976:  MOV             R5, R1
504978:  LDR             R2, [R4,#0x10]; CVehicle *
50497A:  CBZ             R2, loc_5049F2
50497C:  LDRB            R0, [R4,#8]
50497E:  LDR             R3, [R4,#0xC]; CAnimBlendAssociation *
504980:  CBZ             R0, loc_50498E
504982:  CBZ             R3, loc_5049A8
504984:  LDR             R0, [R4,#0x1C]; this
504986:  MOV             R1, R5; CPed *
504988:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
50498C:  B               loc_5049F2
50498E:  CMP             R3, #0
504990:  ITTT NE
504992:  VLDRNE          S0, [R3,#0x18]
504996:  VCMPNE.F32      S0, #0.0
50499A:  VMRSNE          APSR_nzcv, FPSCR
50499E:  BNE             loc_504984
5049A0:  MOV             R0, R5; this
5049A2:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
5049A6:  B               loc_5049F2
5049A8:  LDR.W           R0, [R2,#0x388]
5049AC:  MOVS            R3, #0x94
5049AE:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5049BA)
5049B0:  MOVW            R6, #0x17B
5049B4:  LDR             R2, [R4,#0x14]
5049B6:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5049B8:  LDRB.W          R0, [R0,#0xDE]
5049BC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5049BE:  SMLABB.W        R0, R0, R3, R1; this
5049C2:  BIC.W           R1, R2, #1
5049C6:  CMP             R1, #0xA
5049C8:  IT EQ
5049CA:  MOVEQ.W         R6, #0x17A
5049CE:  MOV             R1, R6; int
5049D0:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5049D4:  LDR             R0, [R5,#0x18]
5049D6:  MOV             R1, R6
5049D8:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5049DC:  MOV             R3, R0; CAnimBlendAssociation *
5049DE:  CMP             R3, #0
5049E0:  STR             R3, [R4,#0xC]
5049E2:  BEQ             loc_5049EE
5049E4:  LDR             R2, [R4,#0x10]; CVehicle *
5049E6:  MOV             R1, R5; CPed *
5049E8:  LDR             R0, [R4,#0x1C]; this
5049EA:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
5049EE:  MOVS            R0, #0
5049F0:  STR             R0, [R4,#0xC]
5049F2:  MOVS            R0, #1
5049F4:  POP.W           {R11}
5049F8:  POP             {R4-R7,PC}
