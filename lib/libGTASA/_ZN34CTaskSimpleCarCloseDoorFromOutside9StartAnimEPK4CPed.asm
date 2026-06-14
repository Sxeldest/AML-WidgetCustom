; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutside9StartAnimEPK4CPed
; Address            : 0x501A28 - 0x501C0A
; =========================================================

501A28:  PUSH            {R4-R7,LR}
501A2A:  ADD             R7, SP, #0xC
501A2C:  PUSH.W          {R8}
501A30:  SUB             SP, SP, #0x10
501A32:  MOV             R5, R1
501A34:  MOV             R4, R0
501A36:  LDR             R0, [R5,#0x14]
501A38:  ADDS            R6, R5, #4
501A3A:  CMP             R0, #0
501A3C:  MOV             R1, R6
501A3E:  IT NE
501A40:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
501A44:  VLDR            D16, [R1]
501A48:  LDR             R0, [R1,#8]
501A4A:  STR             R0, [SP,#0x20+var_18]
501A4C:  MOV             R0, SP; this
501A4E:  VSTR            D16, [SP,#0x20+var_20]
501A52:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
501A56:  VMOV.F32        S0, #-1.0
501A5A:  LDR             R0, [R5,#0x14]
501A5C:  CMP             R0, #0
501A5E:  IT NE
501A60:  ADDNE.W         R6, R0, #0x30 ; '0'
501A64:  VLDR            S2, [R6,#8]
501A68:  VADD.F32        S0, S2, S0
501A6C:  VLDR            S2, [SP,#0x20+var_18]
501A70:  VCMPE.F32       S2, S0
501A74:  VMRS            APSR_nzcv, FPSCR
501A78:  BGE             loc_501A80
501A7A:  MOVS            R0, #1
501A7C:  STRB            R0, [R4,#8]
501A7E:  B               loc_501BC4
501A80:  LDR             R0, [R4,#0x10]
501A82:  MOVS            R1, #0
501A84:  VLDR            S0, =0.001
501A88:  STRB.W          R1, [R0,#0xBC]
501A8C:  LDR             R0, [R4,#0x10]
501A8E:  VLDR            S2, [R0,#0x48]
501A92:  VLDR            S4, [R0,#0x4C]
501A96:  VLDR            S6, [R0,#0x50]
501A9A:  VADD.F32        S2, S2, S0
501A9E:  VADD.F32        S4, S4, S0
501AA2:  VADD.F32        S6, S6, S0
501AA6:  VSTR            S2, [R0,#0x48]
501AAA:  VSTR            S4, [R0,#0x4C]
501AAE:  VSTR            S6, [R0,#0x50]
501AB2:  LDR             R0, [R4,#0x10]
501AB4:  VLDR            S2, [R0,#0x54]
501AB8:  VLDR            S4, [R0,#0x58]
501ABC:  VLDR            S6, [R0,#0x5C]
501AC0:  VADD.F32        S2, S2, S0
501AC4:  VADD.F32        S4, S4, S0
501AC8:  VADD.F32        S0, S6, S0
501ACC:  VSTR            S2, [R0,#0x54]
501AD0:  VSTR            S4, [R0,#0x58]
501AD4:  VSTR            S0, [R0,#0x5C]
501AD8:  MOV             R0, R5; this
501ADA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
501ADE:  CMP             R0, #1
501AE0:  BNE             loc_501B7A
501AE2:  LDR.W           R0, [R5,#0x59C]
501AE6:  CMP             R0, #1
501AE8:  BEQ             loc_501AF0
501AEA:  CBNZ            R0, loc_501AFA
501AEC:  MOVS            R0, #0
501AEE:  B               loc_501AF2
501AF0:  MOVS            R0, #(stderr+1); this
501AF2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
501AF6:  MOV             R8, R0
501AF8:  B               loc_501AFE
501AFA:  MOV.W           R8, #0
501AFE:  LDR             R0, [R4,#0x10]
501B00:  MOVS            R6, #0
501B02:  LDR.W           R1, [R0,#0x5A0]
501B06:  CBNZ            R1, loc_501B16
501B08:  ADDW            R0, R0, #0x5B4; this
501B0C:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
501B10:  CMP             R0, #0xE0
501B12:  IT HI
501B14:  MOVHI           R6, #1
501B16:  LDRH.W          R0, [R8,#0x110]
501B1A:  CBNZ            R0, loc_501B26
501B1C:  LDR             R0, [R4,#0x10]
501B1E:  LDR.W           R0, [R0,#0x508]
501B22:  CMP             R0, #6
501B24:  BNE             loc_501BCC
501B26:  LDR             R0, [R4,#0x10]
501B28:  LDR.W           R0, [R0,#0x494]
501B2C:  CMP             R0, #0
501B2E:  IT NE
501B30:  MOVNE           R0, #1
501B32:  ORRS            R0, R6
501B34:  BEQ             loc_501B7A
501B36:  LDR             R0, [R4,#0x10]
501B38:  LDR.W           R1, [R0,#0x5A0]
501B3C:  CMP             R1, #0
501B3E:  BNE             loc_501A7A
501B40:  LDR             R1, [R4,#0x14]; int
501B42:  ADDW            R0, R0, #0x5B4; this
501B46:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
501B4A:  CBZ             R0, loc_501B5E
501B4C:  LDRD.W          R0, R1, [R4,#0x10]; int
501B50:  ADDW            R0, R0, #0x5B4; this
501B54:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
501B58:  CMP             R0, #2
501B5A:  BNE.W           loc_501A7A
501B5E:  LDRD.W          R0, R1, [R4,#0x10]; int
501B62:  ADDW            R0, R0, #0x5B4; this
501B66:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
501B6A:  LDRD.W          R3, R1, [R4,#0x10]; int
501B6E:  ADDS            R2, R0, #1; unsigned int
501B70:  ADDW            R0, R3, #0x5B4; this
501B74:  BLX             j__ZN14CDamageManager13SetDoorStatusEij; CDamageManager::SetDoorStatus(int,uint)
501B78:  B               loc_501A7A
501B7A:  LDR             R0, [R4,#0x14]
501B7C:  SUBS            R0, #8
501B7E:  CMP             R0, #2
501B80:  BHI             loc_501B8C
501B82:  LDR             R1, =(unk_61E6C0 - 0x501B88)
501B84:  ADD             R1, PC; unk_61E6C0
501B86:  LDR.W           R6, [R1,R0,LSL#2]
501B8A:  B               loc_501B90
501B8C:  MOV.W           R6, #0x17E
501B90:  LDR             R0, [R4,#0x10]
501B92:  MOVS            R2, #0x94
501B94:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501B9E)
501B96:  LDR.W           R0, [R0,#0x388]
501B9A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501B9C:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501B9E:  LDRB.W          R0, [R0,#0xDE]
501BA2:  SMLABB.W        R0, R0, R2, R1; this
501BA6:  MOV             R1, R6; int
501BA8:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501BAC:  MOV             R1, R0; int
501BAE:  LDR             R0, [R5,#0x18]; int
501BB0:  MOV             R2, R6; unsigned int
501BB2:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
501BB6:  LDR             R1, =(_ZN34CTaskSimpleCarCloseDoorFromOutside35FinishAnimCarCloseDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr - 0x501BC0)
501BB8:  MOV             R2, R4; void *
501BBA:  STR             R0, [R4,#0xC]
501BBC:  ADD             R1, PC; _ZN34CTaskSimpleCarCloseDoorFromOutside35FinishAnimCarCloseDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr
501BBE:  LDR             R1, [R1]; CTaskSimpleCarCloseDoorFromOutside::FinishAnimCarCloseDoorFromOutsideCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501BC0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501BC4:  ADD             SP, SP, #0x10
501BC6:  POP.W           {R8}
501BCA:  POP             {R4-R7,PC}
501BCC:  MOV             R0, R8; this
501BCE:  MOVS            R1, #0; bool
501BD0:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
501BD4:  CMP             R0, #0
501BD6:  BNE             loc_501B36
501BD8:  LDRH.W          R0, [R8]
501BDC:  CMP             R0, #0
501BDE:  ITT EQ
501BE0:  LDRHEQ.W        R0, [R8,#2]
501BE4:  CMPEQ           R0, #0
501BE6:  BNE             loc_501B36
501BE8:  LDRH.W          R0, [R8,#0x10]
501BEC:  CMP             R0, #0
501BEE:  ITT EQ
501BF0:  LDRHEQ.W        R0, [R8,#0x12]
501BF4:  CMPEQ           R0, #0
501BF6:  BNE             loc_501B36
501BF8:  LDRH.W          R0, [R8,#0x14]
501BFC:  CMP             R0, #0
501BFE:  ITT EQ
501C00:  LDRHEQ.W        R0, [R8,#0x16]
501C04:  CMPEQ           R0, #0
501C06:  BNE             loc_501B36
501C08:  B               loc_501B26
