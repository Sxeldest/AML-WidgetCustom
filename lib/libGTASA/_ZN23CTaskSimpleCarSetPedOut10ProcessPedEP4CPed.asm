; =========================================================
; Game Engine Function: _ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed
; Address            : 0x502A60 - 0x502CAE
; =========================================================

502A60:  PUSH            {R4-R7,LR}
502A62:  ADD             R7, SP, #0xC
502A64:  PUSH.W          {R8-R10}
502A68:  SUB             SP, SP, #0x18
502A6A:  MOV             R4, R1
502A6C:  MOV             R10, R0
502A6E:  LDR.W           R0, [R4,#0x484]
502A72:  LDR             R1, [R4,#0x1C]
502A74:  BIC.W           R0, R0, #0x100
502A78:  STR.W           R0, [R4,#0x484]
502A7C:  ORR.W           R0, R1, #1
502A80:  STR             R0, [R4,#0x1C]
502A82:  MOV             R0, R4; this
502A84:  BLX             j__ZN4CPed24UpdateStatLeavingVehicleEv; CPed::UpdateStatLeavingVehicle(void)
502A88:  LDRB.W          R0, [R10,#0x13]
502A8C:  CBNZ            R0, loc_502A9A
502A8E:  LDR.W           R2, [R10,#0xC]; CVehicle *
502A92:  MOV             R0, R4; this
502A94:  MOVS            R1, #0; CPed *
502A96:  BLX             j__ZN23CTaskSimpleCarSetPedOut25PositionPedOutOfCollisionEP4CPedP8CVehiclei; CTaskSimpleCarSetPedOut::PositionPedOutOfCollision(CPed *,CVehicle *,int)
502A9A:  MOV             R0, R4; this
502A9C:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
502AA0:  MOV             R0, R4; this
502AA2:  BLX             j__ZN4CPed22RestartNonPartialAnimsEv; CPed::RestartNonPartialAnims(void)
502AA6:  LDRB.W          R0, [R10,#0x13]
502AAA:  CMP             R0, #0
502AAC:  ITT EQ
502AAE:  LDRBEQ.W        R0, [R10,#0x12]
502AB2:  CMPEQ           R0, #0
502AB4:  BEQ.W           loc_502C4A
502AB8:  LDR.W           R0, [R4,#0x590]
502ABC:  CMP             R0, #0
502ABE:  BEQ             loc_502B94
502AC0:  LDRB.W          R1, [R10,#0x14]; unsigned __int8
502AC4:  CMP             R1, #0
502AC6:  ITT NE
502AC8:  LDRNE.W         R0, [R10,#8]; this
502ACC:  BLXNE           j__ZN8CVehicle20ClearGettingOutFlagsEh; CVehicle::ClearGettingOutFlags(uchar)
502AD0:  LDRB.W          R0, [R10,#0x15]
502AD4:  CMP             R0, #0
502AD6:  ITTTT NE
502AD8:  LDRNE.W         R1, [R10,#8]
502ADC:  LDRBNE.W        R2, [R1,#0x489]
502AE0:  SUBNE           R0, R2, R0
502AE2:  STRBNE.W        R0, [R1,#0x489]
502AE6:  LDR.W           R0, [R4,#0x590]; this
502AEA:  LDR.W           R1, [R0,#0x464]
502AEE:  CMP             R1, R4
502AF0:  BEQ             loc_502AFA
502AF2:  MOV             R1, R4; CPed *
502AF4:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
502AF8:  B               loc_502B4A
502AFA:  LDRB.W          R2, [R10,#0x10]
502AFE:  MOVS            R1, #0
502B00:  CMP             R2, #0
502B02:  IT EQ
502B04:  MOVEQ           R1, #1; bool
502B06:  BLX             j__ZN8CVehicle12RemoveDriverEb; CVehicle::RemoveDriver(bool)
502B0A:  LDR.W           R0, [R4,#0x590]
502B0E:  MOVS            R2, #4
502B10:  LDRB.W          R1, [R0,#0x3A]
502B14:  BFI.W           R1, R2, #3, #0x1D
502B18:  STRB.W          R1, [R0,#0x3A]
502B1C:  LDR.W           R0, [R4,#0x590]
502B20:  LDR.W           R1, [R0,#0x508]
502B24:  CMP             R1, #5
502B26:  ITT EQ
502B28:  MOVEQ           R1, #1
502B2A:  STREQ.W         R1, [R0,#0x508]
502B2E:  LDR.W           R0, [R4,#0x59C]
502B32:  CMP             R0, #6
502B34:  BNE             loc_502B4A
502B36:  LDR.W           R0, [R4,#0x590]; this
502B3A:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
502B3E:  CBZ             R0, loc_502B4A
502B40:  LDR.W           R0, [R4,#0x590]; this
502B44:  MOVS            R1, #0; unsigned __int8
502B46:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
502B4A:  LDR             R0, [R4,#0x14]
502B4C:  ADD.W           R1, R0, #0x30 ; '0'
502B50:  CMP             R0, #0
502B52:  IT EQ
502B54:  ADDEQ           R1, R4, #4; CVector *
502B56:  LDR             R0, [R1,#8]
502B58:  VLDR            D16, [R1]
502B5C:  STR             R0, [SP,#0x30+var_20]
502B5E:  ADD             R0, SP, #0x30+var_28; this
502B60:  VSTR            D16, [SP,#0x30+var_28]
502B64:  BLX             j__ZN8CGarages22IsPointWithinAnyGarageER7CVector; CGarages::IsPointWithinAnyGarage(CVector &)
502B68:  CMP             R0, #1
502B6A:  BNE             loc_502B94
502B6C:  LDR.W           R0, [R4,#0x590]
502B70:  LDRB.W          R1, [R0,#0x4B2]
502B74:  AND.W           R1, R1, #0xE7
502B78:  STRB.W          R1, [R0,#0x4B2]
502B7C:  LDR.W           R0, [R4,#0x590]
502B80:  LDR.W           R1, [R0,#0x42C]
502B84:  LDR.W           R2, [R0,#0x430]
502B88:  BIC.W           R1, R1, #0x40 ; '@'
502B8C:  STR.W           R1, [R0,#0x42C]
502B90:  STR.W           R2, [R0,#0x430]
502B94:  LDRB.W          R0, [R10,#0x12]
502B98:  ADDW            R8, R4, #0x484
502B9C:  CMP             R0, #0
502B9E:  ITT EQ
502BA0:  LDRBEQ.W        R0, [R10,#0x13]
502BA4:  CMPEQ           R0, #0
502BA6:  BEQ             loc_502C60
502BA8:  MOV             R0, R4; this
502BAA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
502BAE:  CMP             R0, #1
502BB0:  BNE             loc_502BC8
502BB2:  MOVS            R0, #dword_34; this
502BB4:  LDR.W           R5, [R4,#0x440]
502BB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502BBC:  MOV             R6, R0
502BBE:  BLX             j__ZN23CTaskSimplePlayerOnFootC2Ev; CTaskSimplePlayerOnFoot::CTaskSimplePlayerOnFoot(void)
502BC2:  ADDS            R0, R5, #4
502BC4:  MOV             R1, R6
502BC6:  B               loc_502C08
502BC8:  LDRB.W          R0, [R4,#0x448]
502BCC:  LDR.W           R9, [R4,#0x440]
502BD0:  CMP             R0, #2
502BD2:  BNE             loc_502BFC
502BD4:  MOVS            R0, #dword_20; this
502BD6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
502BDA:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
502BDE:  MOV             R6, R0
502BE0:  MOV.W           R0, #0x41000000
502BE4:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x25); int
502BE8:  STR             R0, [SP,#0x30+var_30]; float
502BEA:  MOV             R0, R6; this
502BEC:  MOVS            R2, #1; bool
502BEE:  MOVS            R3, #0; bool
502BF0:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
502BF4:  ADD.W           R0, R9, #4
502BF8:  MOV             R1, R6
502BFA:  B               loc_502C08
502BFC:  MOV             R0, R4; this
502BFE:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
502C02:  MOV             R1, R0; CTask *
502C04:  ADD.W           R0, R9, #4; this
502C08:  MOVS            R2, #4; int
502C0A:  MOVS            R3, #0; bool
502C0C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
502C10:  MOV             R0, R4; this
502C12:  BLX             j__ZN4CPed31ReplaceWeaponWhenExitingVehicleEv; CPed::ReplaceWeaponWhenExitingVehicle(void)
502C16:  LDR.W           R0, [R8,#8]
502C1A:  MOVS            R1, #1
502C1C:  ORR.W           R0, R0, #8
502C20:  STR.W           R0, [R8,#8]
502C24:  MOV             R0, R4; CPed *
502C26:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
502C2A:  LDR.W           R0, [R10,#8]
502C2E:  CBZ             R0, loc_502C40
502C30:  LDRB.W          R0, [R0,#0x47]
502C34:  LSLS            R0, R0, #0x1C
502C36:  ITTT MI
502C38:  LDRMI           R0, [R4,#0x44]
502C3A:  ORRMI.W         R0, R0, #0x8000000
502C3E:  STRMI           R0, [R4,#0x44]
502C40:  MOVS            R0, #1
502C42:  ADD             SP, SP, #0x18
502C44:  POP.W           {R8-R10}
502C48:  POP             {R4-R7,PC}
502C4A:  LDR.W           R0, [R10,#8]
502C4E:  LDR.W           R0, [R0,#0x5A4]
502C52:  CMP             R0, #5
502C54:  ITTT NE
502C56:  MOVNE           R0, #0
502C58:  STRDNE.W        R0, R0, [R4,#0x48]
502C5C:  STRNE           R0, [R4,#0x50]
502C5E:  B               loc_502AB8
502C60:  LDR.W           R0, [R4,#0x590]
502C64:  CMP             R0, #0
502C66:  BEQ             loc_502BA8
502C68:  LDR.W           R1, [R0,#0x5A0]
502C6C:  CMP             R1, #9
502C6E:  BNE             loc_502BA8
502C70:  VLDR            S0, [R0,#0x48]
502C74:  VLDR            D16, =0.1
502C78:  VABS.F32        S0, S0
502C7C:  VCVT.F64.F32    D17, S0
502C80:  VCMPE.F64       D17, D16
502C84:  VMRS            APSR_nzcv, FPSCR
502C88:  BGE             loc_502BA8
502C8A:  VLDR            S0, [R0,#0x4C]
502C8E:  VABS.F32        S0, S0
502C92:  VCVT.F64.F32    D17, S0
502C96:  VCMPE.F64       D17, D16
502C9A:  VMRS            APSR_nzcv, FPSCR
502C9E:  ITTT LT
502CA0:  LDRBLT.W        R1, [R0,#0x628]
502CA4:  ORRLT.W         R1, R1, #0x10
502CA8:  STRBLT.W        R1, [R0,#0x628]
502CAC:  B               loc_502BA8
