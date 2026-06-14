; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutside10ProcessPedEP4CPed
; Address            : 0x500CBC - 0x500E88
; =========================================================

500CBC:  PUSH            {R4-R7,LR}
500CBE:  ADD             R7, SP, #0xC
500CC0:  PUSH.W          {R11}
500CC4:  SUB             SP, SP, #8
500CC6:  MOV             R5, R0
500CC8:  MOV             R4, R1
500CCA:  LDRB            R0, [R5,#8]
500CCC:  CBZ             R0, loc_500CDA
500CCE:  MOVS            R5, #1
500CD0:  MOV             R0, R5
500CD2:  ADD             SP, SP, #8
500CD4:  POP.W           {R11}
500CD8:  POP             {R4-R7,PC}
500CDA:  LDR             R0, [R5,#0x10]
500CDC:  CMP             R0, #0
500CDE:  BEQ             loc_500CCE
500CE0:  LDR.W           R1, [R0,#0x388]
500CE4:  MOVS            R3, #0x94
500CE6:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500CEC)
500CE8:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500CEA:  LDRB.W          R1, [R1,#0xDE]
500CEE:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500CF0:  SMLABB.W        R2, R1, R3, R2
500CF4:  LDRB            R2, [R2,#8]
500CF6:  LSLS            R2, R2, #0x19
500CF8:  BMI             loc_500D20
500CFA:  LDR             R1, [R5,#0xC]
500CFC:  CMP             R1, #0
500CFE:  BNE             loc_500DEC
500D00:  LDR             R2, [R0]
500D02:  LDR             R1, [R5,#0x14]
500D04:  LDR.W           R2, [R2,#0x8C]
500D08:  BLX             R2
500D0A:  LDR             R1, [R5,#0x14]
500D0C:  STR             R0, [R5,#0x20]
500D0E:  SUB.W           R0, R1, #8
500D12:  CMP             R0, #2
500D14:  BHI             loc_500D60
500D16:  LDR             R1, =(unk_61E6A8 - 0x500D1C)
500D18:  ADD             R1, PC; unk_61E6A8
500D1A:  LDR.W           R6, [R1,R0,LSL#2]
500D1E:  B               loc_500D64
500D20:  LDR             R0, [R5,#0x14]
500D22:  SUBS            R0, #8
500D24:  CMP             R0, #2
500D26:  BHI             loc_500D32
500D28:  LDR             R2, =(unk_61E6A8 - 0x500D2E)
500D2A:  ADD             R2, PC; unk_61E6A8
500D2C:  LDR.W           R6, [R2,R0,LSL#2]
500D30:  B               loc_500D36
500D32:  MOVW            R6, #0x165
500D36:  LDR             R0, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500D3E)
500D38:  MOVS            R2, #0x94
500D3A:  ADD             R0, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500D3C:  LDR             R0, [R0]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500D3E:  SMLABB.W        R0, R1, R2, R0; this
500D42:  MOV             R1, R6; int
500D44:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500D48:  MOV             R3, R0
500D4A:  LDRD.W          R0, R2, [R5,#0x10]
500D4E:  LDR             R1, [R0]
500D50:  LDR             R5, [R1,#0x74]
500D52:  MOV.W           R1, #0x3F800000
500D56:  STRD.W          R6, R1, [SP,#0x18+var_18]
500D5A:  MOV             R1, R4
500D5C:  BLX             R5
500D5E:  B               loc_500CCE
500D60:  MOVW            R6, #0x165
500D64:  LDR             R0, [R5,#0x10]
500D66:  MOVS            R2, #0x94
500D68:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500D72)
500D6A:  LDR.W           R0, [R0,#0x388]
500D6E:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500D70:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500D72:  LDRB.W          R0, [R0,#0xDE]
500D76:  SMLABB.W        R0, R0, R2, R1; this
500D7A:  MOV             R1, R6; int
500D7C:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500D80:  MOV             R1, R0; int
500D82:  LDR             R0, [R4,#0x18]; int
500D84:  MOV             R2, R6; unsigned int
500D86:  MOV.W           R3, #0x40800000
500D8A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
500D8E:  LDR             R1, =(_ZN33CTaskSimpleCarOpenDoorFromOutside34FinishAnimCarOpenDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr - 0x500D98)
500D90:  MOV             R2, R5; void *
500D92:  STR             R0, [R5,#0xC]
500D94:  ADD             R1, PC; _ZN33CTaskSimpleCarOpenDoorFromOutside34FinishAnimCarOpenDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr
500D96:  LDR             R1, [R1]; CTaskSimpleCarOpenDoorFromOutside::FinishAnimCarOpenDoorFromOutsideCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
500D98:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500D9C:  LDR             R0, [R5,#0x10]
500D9E:  CMP             R0, #0
500DA0:  ITT NE
500DA2:  LDRNE.W         R0, [R0,#0x464]; this
500DA6:  CMPNE           R0, #0
500DA8:  BEQ             loc_500DEC
500DAA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
500DAE:  CMP             R0, #1
500DB0:  BNE             loc_500DEC
500DB2:  LDRB            R0, [R5,#0x18]
500DB4:  CBZ             R0, loc_500DEC
500DB6:  LDR.W           R0, [R4,#0x59C]
500DBA:  CMP             R0, #6
500DBC:  BNE             loc_500DEC
500DBE:  LDR             R0, [R5,#0x10]
500DC0:  LDR.W           R0, [R0,#0x464]
500DC4:  LDR.W           R3, [R0,#0x48C]
500DC8:  LDR.W           R1, [R0,#0x484]
500DCC:  LDR.W           R2, [R0,#0x488]
500DD0:  BIC.W           R3, R3, #0x4000000
500DD4:  LDR.W           R6, [R0,#0x490]
500DD8:  STR.W           R1, [R0,#0x484]
500DDC:  STR.W           R2, [R0,#0x488]
500DE0:  STR.W           R3, [R0,#0x48C]
500DE4:  STR.W           R6, [R0,#0x490]
500DE8:  MOVS            R0, #1
500DEA:  STRB            R0, [R5,#0x19]
500DEC:  LDRD.W          R1, R0, [R5,#0xC]
500DF0:  LDR.W           R2, [R0,#0x388]
500DF4:  LDR             R3, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500DFE)
500DF6:  VLDR            S0, [R1,#0x20]
500DFA:  ADD             R3, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500DFC:  LDRB.W          R2, [R2,#0xDE]
500E00:  LDR             R6, [R3]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500E02:  MOVS            R3, #0x94
500E04:  SMLABB.W        R6, R2, R3, R6
500E08:  VLDR            S2, [R6,#0x20]
500E0C:  VCMPE.F32       S0, S2
500E10:  VMRS            APSR_nzcv, FPSCR
500E14:  BGE             loc_500E1C
500E16:  LDR.W           R6, [R0,#0x5A0]
500E1A:  CBZ             R6, loc_500E50
500E1C:  LDR             R0, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500E26)
500E1E:  LDRSH.W         R1, [R1,#0x2C]; int
500E22:  ADD             R0, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500E24:  LDR             R0, [R0]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500E26:  SMLABB.W        R0, R2, R3, R0; this
500E2A:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500E2E:  MOV             R3, R0
500E30:  LDRD.W          R1, R0, [R5,#0xC]
500E34:  LDR             R6, [R0]
500E36:  LDR             R2, [R5,#0x14]
500E38:  VLDR            S0, [R1,#0x20]
500E3C:  LDR             R6, [R6,#0x74]
500E3E:  LDRSH.W         R5, [R1,#0x2C]
500E42:  MOV             R1, R4
500E44:  VSTR            S0, [SP,#0x18+var_14]
500E48:  STR             R5, [SP,#0x18+var_18]
500E4A:  BLX             R6
500E4C:  MOVS            R5, #0
500E4E:  B               loc_500CD0
500E50:  VDIV.F32        S0, S0, S2
500E54:  LDR             R2, [R5,#0x14]
500E56:  SUB.W           R1, R2, #8
500E5A:  CMP             R1, #3
500E5C:  ITTE LS
500E5E:  ADRLS           R3, dword_500EA8
500E60:  LDRLS.W         R3, [R3,R1,LSL#2]
500E64:  MOVHI           R3, #2
500E66:  LDR             R1, [R0]
500E68:  LDR             R6, [R1,#0x70]
500E6A:  MOV             R1, R4
500E6C:  VMOV.F32        S2, #1.0
500E70:  VSUB.F32        S0, S2, S0
500E74:  VLDR            S2, [R5,#0x20]
500E78:  MOVS            R5, #0
500E7A:  STR             R5, [SP,#0x18+var_14]
500E7C:  VMUL.F32        S0, S0, S2
500E80:  VSTR            S0, [SP,#0x18+var_18]
500E84:  BLX             R6
500E86:  B               loc_500CD0
