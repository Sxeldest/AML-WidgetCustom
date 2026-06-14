; =========================================================
; Game Engine Function: _ZNK12CEventDamage15AffectsPedGroupEP9CPedGroup
; Address            : 0x372A68 - 0x372B96
; =========================================================

372A68:  PUSH            {R4-R7,LR}
372A6A:  ADD             R7, SP, #0xC
372A6C:  PUSH.W          {R8-R10}
372A70:  SUB             SP, SP, #0x10
372A72:  MOV             R4, R0
372A74:  MOV             R5, R1
372A76:  LDR             R0, [R4,#0x18]
372A78:  CMP             R0, #0x17
372A7A:  BNE             loc_372A80
372A7C:  MOVS            R0, #0
372A7E:  B               loc_372B8E
372A80:  LDR             R0, [R4,#0x10]
372A82:  CMP             R0, #0
372A84:  BEQ.W           loc_372B8C
372A88:  LDRB.W          R1, [R0,#0x3A]
372A8C:  AND.W           R1, R1, #7
372A90:  CMP             R1, #3
372A92:  BNE             loc_372B8C
372A94:  LDR.W           R0, [R0,#0x440]
372A98:  ADDS            R0, #4; this
372A9A:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
372A9E:  CMP             R0, #0
372AA0:  BEQ             loc_372B8C
372AA2:  LDR             R0, [R4,#0x10]
372AA4:  LDR.W           R0, [R0,#0x440]
372AA8:  ADDS            R0, #4; this
372AAA:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
372AAE:  LDR             R1, [R0]
372AB0:  LDR             R1, [R1,#0x14]
372AB2:  BLX             R1
372AB4:  MOVW            R1, #0x403
372AB8:  CMP             R0, R1
372ABA:  BNE             loc_372B8C
372ABC:  LDR             R0, =(_ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr - 0x372ACE)
372ABE:  ADD.W           R9, R5, #8
372AC2:  ADD.W           R8, SP, #0x28+var_24
372AC6:  MOV.W           R6, #0xFFFFFFFF
372ACA:  ADD             R0, PC; _ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr
372ACC:  LDR.W           R10, [R0]; CPedAcquaintanceScanner::ms_fThresholdDotProduct ...
372AD0:  ADDS            R6, #1
372AD2:  MOV             R0, R9; this
372AD4:  MOV             R1, R6; int
372AD6:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
372ADA:  MOV             R5, R0
372ADC:  CMP             R5, #0
372ADE:  BEQ             loc_372B86
372AE0:  LDR             R0, [R4,#0x10]
372AE2:  LDR             R1, [R5,#0x14]
372AE4:  LDR             R2, [R0,#0x14]
372AE6:  ADD.W           R3, R1, #0x30 ; '0'
372AEA:  CMP             R1, #0
372AEC:  IT EQ
372AEE:  ADDEQ           R3, R5, #4
372AF0:  ADD.W           R1, R2, #0x30 ; '0'
372AF4:  CMP             R2, #0
372AF6:  VLDR            S0, [R3]
372AFA:  IT EQ
372AFC:  ADDEQ           R1, R0, #4
372AFE:  MOV             R0, R8; this
372B00:  VLDR            S2, [R1]
372B04:  VSUB.F32        S0, S2, S0
372B08:  VSTR            S0, [SP,#0x28+var_24]
372B0C:  VLDR            S0, [R3,#4]
372B10:  VLDR            S2, [R1,#4]
372B14:  VSUB.F32        S0, S2, S0
372B18:  VSTR            S0, [SP,#0x28+var_20]
372B1C:  VLDR            S0, [R3,#8]
372B20:  VLDR            S2, [R1,#8]
372B24:  VSUB.F32        S0, S2, S0
372B28:  VSTR            S0, [SP,#0x28+var_1C]
372B2C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
372B30:  LDR             R1, [R4,#0x10]; CEntity *
372B32:  MOVS            R2, #0; bool
372B34:  LDR.W           R0, [R5,#0x440]; this
372B38:  BLX             j__ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb; CPedIntelligence::CanSeeEntityWithLights(CEntity const*,bool)
372B3C:  VMOV            S0, R0
372B40:  VCMPE.F32       S0, #0.0
372B44:  VMRS            APSR_nzcv, FPSCR
372B48:  BLE             loc_372B86
372B4A:  LDR             R0, [R5,#0x14]
372B4C:  VLDR            S0, [SP,#0x28+var_24]
372B50:  VLDR            S2, [SP,#0x28+var_20]
372B54:  VLDR            S6, [R0,#0x10]
372B58:  VLDR            S8, [R0,#0x14]
372B5C:  VMUL.F32        S0, S6, S0
372B60:  VLDR            S4, [SP,#0x28+var_1C]
372B64:  VMUL.F32        S2, S8, S2
372B68:  VLDR            S10, [R0,#0x18]
372B6C:  VMUL.F32        S4, S10, S4
372B70:  VADD.F32        S0, S0, S2
372B74:  VLDR            S2, [R10]
372B78:  VADD.F32        S0, S0, S4
372B7C:  VCMPE.F32       S0, S2
372B80:  VMRS            APSR_nzcv, FPSCR
372B84:  BGT             loc_372B8C
372B86:  CMP             R6, #7
372B88:  BLT             loc_372AD0
372B8A:  B               loc_372A7C
372B8C:  MOVS            R0, #1
372B8E:  ADD             SP, SP, #0x10
372B90:  POP.W           {R8-R10}
372B94:  POP             {R4-R7,PC}
