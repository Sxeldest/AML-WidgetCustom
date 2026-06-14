; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot18PlayerControlZeldaEP10CPlayerPedb
; Address            : 0x539AD4 - 0x539F10
; =========================================================

539AD4:  PUSH            {R4-R7,LR}
539AD6:  ADD             R7, SP, #0xC
539AD8:  PUSH.W          {R8-R11}
539ADC:  SUB             SP, SP, #4
539ADE:  VPUSH           {D8-D10}
539AE2:  SUB             SP, SP, #8; float
539AE4:  MOV             R4, R1
539AE6:  MOV             R8, R0
539AE8:  LDR.W           R0, [R4,#0x444]
539AEC:  MOVS            R1, #0
539AEE:  MOV             R9, R2
539AF0:  STRD.W          R1, R1, [R0,#0xC]
539AF4:  MOV             R0, R4; this
539AF6:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
539AFA:  MOV             R10, R0
539AFC:  LDR.W           R0, [R4,#0x100]
539B00:  CBZ             R0, loc_539B10
539B02:  VLDR            S0, =0.0
539B06:  VMOV.F32        S20, S0
539B0A:  VMOV.F32        S18, S0
539B0E:  B               loc_539B44
539B10:  MOV             R0, R10; this
539B12:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
539B16:  VMOV            S0, R0
539B1A:  MOV             R0, R10; this
539B1C:  VCVT.F32.S32    S20, S0
539B20:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
539B24:  VMOV            S0, R0
539B28:  VMUL.F32        S2, S20, S20
539B2C:  VCVT.F32.S32    S0, S0
539B30:  VMUL.F32        S4, S0, S0
539B34:  VADD.F32        S2, S2, S4
539B38:  VLDR            S4, =60.0
539B3C:  VSQRT.F32       S2, S2
539B40:  VDIV.F32        S18, S2, S4
539B44:  VMOV.F32        S16, #1.0
539B48:  LDRH.W          R0, [R10,#0x2A]
539B4C:  VMOV.F32        S2, S18
539B50:  CMP             R0, #0
539B52:  VCMPE.F32       S18, S16
539B56:  IT NE
539B58:  VMOVNE.F32      S2, S16
539B5C:  VMRS            APSR_nzcv, FPSCR
539B60:  IT GT
539B62:  VMOVGT.F32      S18, S2
539B66:  VCMPE.F32       S18, #0.0
539B6A:  VMRS            APSR_nzcv, FPSCR
539B6E:  BLE             loc_539C00
539B70:  VMOV            R0, S20
539B74:  MOVS            R1, #0; float
539B76:  VMOV            R3, S0; float
539B7A:  MOV.W           R11, #0
539B7E:  EOR.W           R2, R0, #0x80000000; float
539B82:  MOVS            R0, #0; this
539B84:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
539B88:  LDR.W           R1, =(TheCamera_ptr - 0x539B94)
539B8C:  VMOV            S0, R0
539B90:  ADD             R1, PC; TheCamera_ptr
539B92:  LDR             R1, [R1]; TheCamera ; float
539B94:  VLDR            S2, [R1,#0x14C]
539B98:  VSUB.F32        S0, S0, S2
539B9C:  VMOV            R0, S0; this
539BA0:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
539BA4:  MOV             R1, R4; unsigned __int8 *
539BA6:  BLX             j__ZN12CMenuManager21AdditionalOptionInputEPhS0_; CMenuManager::AdditionalOptionInput(uchar *,uchar *)
539BAA:  BLX             sinf
539BAE:  MOV             R6, R0
539BB0:  MOV             R0, R5; x
539BB2:  BLX             cosf
539BB6:  EOR.W           R1, R6, #0x80000000
539BBA:  MOV             R2, R0
539BBC:  MOV             R0, R4
539BBE:  MOVS            R3, #0
539BC0:  STR.W           R11, [SP,#0x40+var_40]
539BC4:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
539BC8:  CMP             R0, #1
539BCA:  BNE             loc_539C0A
539BCC:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x539BD8)
539BD0:  LDR.W           R0, [R4,#0x444]
539BD4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
539BD6:  VLDR            S2, =0.07
539BDA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
539BDC:  VLDR            S0, [R0,#0x14]
539BE0:  VLDR            S6, [R1]
539BE4:  VSUB.F32        S4, S18, S0
539BE8:  VMUL.F32        S2, S6, S2
539BEC:  VCMPE.F32       S4, S2
539BF0:  VMRS            APSR_nzcv, FPSCR
539BF4:  BLE             loc_539C14
539BF6:  VADD.F32        S0, S2, S0
539BFA:  VSTR            S0, [R0,#0x14]
539BFE:  B               loc_539C30
539C00:  LDR.W           R0, [R4,#0x444]
539C04:  MOVS            R1, #0
539C06:  STR             R1, [R0,#0x14]
539C08:  B               loc_539C30
539C0A:  LDR.W           R0, [R4,#0x444]
539C0E:  STR.W           R11, [R0,#0x14]
539C12:  B               loc_539C30
539C14:  VNEG.F32        S6, S2
539C18:  VCMPE.F32       S4, S6
539C1C:  VMRS            APSR_nzcv, FPSCR
539C20:  BGE             loc_539C2C
539C22:  VSUB.F32        S0, S0, S2
539C26:  VSTR            S0, [R0,#0x14]
539C2A:  B               loc_539C30
539C2C:  VSTR            S18, [R0,#0x14]
539C30:  LDRSB.W         R0, [R4,#0x71C]
539C34:  MOVS            R1, #1
539C36:  RSB.W           R0, R0, R0,LSL#3
539C3A:  ADD.W           R0, R4, R0,LSL#2
539C3E:  LDR.W           R0, [R0,#0x5A4]
539C42:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
539C46:  LDRB            R0, [R0,#0x19]
539C48:  LSLS            R0, R0, #0x1E
539C4A:  BMI             loc_539CB4
539C4C:  LDR.W           R0, [R4,#0x56C]
539C50:  CBZ             R0, loc_539C5C
539C52:  LDR             R0, [R0,#0x44]
539C54:  AND.W           R0, R0, #0xC
539C58:  CMP             R0, #4
539C5A:  BEQ             loc_539CB4
539C5C:  LDR.W           R0, [R4,#0x440]; this
539C60:  MOVS            R1, #0; bool
539C62:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
539C66:  CBZ             R0, loc_539C76
539C68:  LDR.W           R0, [R4,#0x440]; this
539C6C:  MOVS            R1, #0; bool
539C6E:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
539C72:  LDR             R0, [R0,#0x38]
539C74:  CBNZ            R0, loc_539CB4
539C76:  LDR.W           R0, [R4,#0x444]
539C7A:  LDRB.W          R0, [R0,#0x84]
539C7E:  CBNZ            R0, loc_539CA0
539C80:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x539C8A)
539C82:  LDRB.W          R1, [R4,#0xBE]; unsigned int
539C86:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
539C88:  LDR.W           R5, [R4,#0x4E0]
539C8C:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
539C8E:  LDR             R6, [R0]; CAnimManager::ms_aAnimAssocGroups
539C90:  LDR             R0, =(g_surfaceInfos_ptr - 0x539C96)
539C92:  ADD             R0, PC; g_surfaceInfos_ptr
539C94:  LDR             R0, [R0]; g_surfaceInfos ; this
539C96:  BLX             j__ZN14SurfaceInfos_c12CantSprintOnEj; SurfaceInfos_c::CantSprintOn(uint)
539C9A:  CMP             R0, #0
539C9C:  BEQ.W           loc_539E84
539CA0:  MOV             R0, R10; this
539CA2:  MOVS            R1, #0; int
539CA4:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539CA8:  CMP             R0, #1
539CAA:  BNE             loc_539CB4
539CAC:  MOV             R0, R4
539CAE:  MOVS            R1, #6
539CB0:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
539CB4:  MOV             R0, R4; this
539CB6:  BLX             j__ZN10CPlayerPed15SetRealMoveAnimEv; CPlayerPed::SetRealMoveAnim(void)
539CBA:  LDR             R0, [R4,#0x18]
539CBC:  MOVS            R1, #0xB
539CBE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
539CC2:  LDR             R0, [R4,#0x18]
539CC4:  MOVS            R1, #0xC
539CC6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
539CCA:  MOV             R0, R4; this
539CCC:  BLX             j__ZN15CTaskSimpleDuck10CanPedDuckEP4CPed; CTaskSimpleDuck::CanPedDuck(CPed *)
539CD0:  CBZ             R0, loc_539CEE
539CD2:  CMP.W           R9, #0
539CD6:  BNE             loc_539CEE
539CD8:  MOV             R0, R10; this
539CDA:  MOV             R1, R4; CPed *
539CDC:  BLX             j__ZN4CPad12DuckJustDownEP4CPed; CPad::DuckJustDown(CPed *)
539CE0:  CMP             R0, #1
539CE2:  BNE             loc_539CEE
539CE4:  LDR.W           R0, [R4,#0x440]; this
539CE8:  MOVS            R1, #0; unsigned __int16
539CEA:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
539CEE:  CMP.W           R9, #0
539CF2:  BNE.W           loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539CF6:  LDRB.W          R0, [R4,#0x485]
539CFA:  LSLS            R0, R0, #0x1E
539CFC:  BMI.W           loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539D00:  LDRSB.W         R0, [R4,#0x71C]
539D04:  MOVS            R1, #1
539D06:  RSB.W           R0, R0, R0,LSL#3
539D0A:  ADD.W           R0, R4, R0,LSL#2
539D0E:  LDR.W           R0, [R0,#0x5A4]
539D12:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
539D16:  LDRB            R0, [R0,#0x19]
539D18:  LSLS            R0, R0, #0x1E
539D1A:  BMI             loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539D1C:  MOV             R0, R10; this
539D1E:  BLX             j__ZN4CPad12JumpJustDownEv; CPad::JumpJustDown(void)
539D22:  CMP             R0, #1
539D24:  BNE             loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539D26:  MOV             R0, R10; this
539D28:  MOVS            R1, #0; bool
539D2A:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
539D2E:  CMP             R0, #0
539D30:  ITT EQ
539D32:  LDREQ.W         R0, [R4,#0x100]
539D36:  CMPEQ           R0, #0
539D38:  BNE             loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539D3A:  LDR             R0, =(TheCamera_ptr - 0x539D40)
539D3C:  ADD             R0, PC; TheCamera_ptr
539D3E:  LDR             R0, [R0]; TheCamera
539D40:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
539D44:  ADD.W           R1, R1, R1,LSL#5
539D48:  ADD.W           R0, R0, R1,LSL#4
539D4C:  LDRH.W          R0, [R0,#0x17E]
539D50:  SUBS            R0, #7; switch 45 cases
539D52:  CMP             R0, #0x2C ; ','
539D54:  BHI.W           def_539D58; jumptable 00539D58 default case, cases 9-33,35-44,47-50
539D58:  TBB.W           [PC,R0]; switch jump
539D5C:  DCB 0x17; jump table for switch statement
539D5D:  DCB 0x17
539D5E:  DCB 0xB4
539D5F:  DCB 0xB4
539D60:  DCB 0xB4
539D61:  DCB 0xB4
539D62:  DCB 0xB4
539D63:  DCB 0xB4
539D64:  DCB 0xB4
539D65:  DCB 0xB4
539D66:  DCB 0xB4
539D67:  DCB 0xB4
539D68:  DCB 0xB4
539D69:  DCB 0xB4
539D6A:  DCB 0xB4
539D6B:  DCB 0xB4
539D6C:  DCB 0xB4
539D6D:  DCB 0xB4
539D6E:  DCB 0xB4
539D6F:  DCB 0xB4
539D70:  DCB 0xB4
539D71:  DCB 0xB4
539D72:  DCB 0xB4
539D73:  DCB 0xB4
539D74:  DCB 0xB4
539D75:  DCB 0xB4
539D76:  DCB 0xB4
539D77:  DCB 0x17
539D78:  DCB 0xB4
539D79:  DCB 0xB4
539D7A:  DCB 0xB4
539D7B:  DCB 0xB4
539D7C:  DCB 0xB4
539D7D:  DCB 0xB4
539D7E:  DCB 0xB4
539D7F:  DCB 0xB4
539D80:  DCB 0xB4
539D81:  DCB 0xB4
539D82:  DCB 0x17
539D83:  DCB 0x17
539D84:  DCB 0xB4
539D85:  DCB 0xB4
539D86:  DCB 0xB4
539D87:  DCB 0xB4
539D88:  DCB 0x17
539D89:  ALIGN 2
539D8A:  LDR.W           R0, [R4,#0x440]; jumptable 00539D58 cases 7,8,34,45,46,51
539D8E:  MOVS            R1, #3; int
539D90:  MOV.W           R2, #0x640; int
539D94:  ADDS            R0, #4; this
539D96:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
539D9A:  MOVS            R5, #0
539D9C:  CBZ             R0, loc_539DAC
539D9E:  LDR             R1, [R0]
539DA0:  LDR             R1, [R1,#0x14]
539DA2:  BLX             R1
539DA4:  CMP.W           R0, #0x640
539DA8:  IT EQ
539DAA:  MOVEQ           R5, #1
539DAC:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x539DB2)
539DAE:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
539DB0:  LDR             R0, [R0]; CGame::currArea ...
539DB2:  LDR             R0, [R0]; CGame::currArea
539DB4:  CBZ             R0, loc_539DE4
539DB6:  MOV             R0, R8
539DB8:  MOV             R1, R4
539DBA:  NOP
539DBC:  NOP
539DBE:  LDR.W           R0, [R4,#0x534]
539DC2:  ORR.W           R0, R0, #8
539DC6:  STR.W           R0, [R4,#0x534]
539DCA:  ADD             SP, SP, #8
539DCC:  VPOP            {D8-D10}
539DD0:  ADD             SP, SP, #4
539DD2:  POP.W           {R8-R11}
539DD6:  POP             {R4-R7,PC}
539DD8:  DCFS 0.0
539DDC:  DCFS 60.0
539DE0:  DCFS 0.07
539DE4:  MOV             R0, R10; this
539DE6:  MOVS            R1, #0; int
539DE8:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539DEC:  EOR.W           R0, R0, #1
539DF0:  ORRS            R0, R5
539DF2:  BNE             loc_539DB6
539DF4:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x539DFA)
539DF6:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
539DF8:  LDR             R0, [R0]; MobileSettings::settings ...
539DFA:  LDR.W           R0, [R0,#(dword_6E085C - 0x6E03F4)]
539DFE:  CMP             R0, #0
539E00:  BEQ             loc_539DB6
539E02:  ADD.W           R5, R8, #0x14
539E06:  MOVS            R0, #(stderr+1)
539E08:  ADD.W           R1, R8, #8; CPed *
539E0C:  ADD.W           R3, R8, #0x18; float *
539E10:  STR             R0, [SP,#0x40+var_40]; unsigned __int8 *
539E12:  MOV             R0, R4; this
539E14:  MOV             R2, R5; CVector *
539E16:  BLX             j__ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb; CTaskSimpleClimb::TestForClimb(CPed *,CVector &,float &,uchar &,bool)
539E1A:  CMP             R0, #0
539E1C:  STR.W           R0, [R8,#0x1C]
539E20:  BEQ             loc_539DB6
539E22:  LDR             R0, [R4,#0x14]
539E24:  CBZ             R0, loc_539E38
539E26:  LDRD.W          R2, R1, [R0,#0x10]; x
539E2A:  EOR.W           R0, R2, #0x80000000; y
539E2E:  BLX             atan2f
539E32:  VMOV            S0, R0
539E36:  B               loc_539E3C
539E38:  VLDR            S0, [R4,#0x10]
539E3C:  VMOV.F32        S4, #-0.75
539E40:  VLDR            S2, [R5]
539E44:  VADD.F32        S4, S2, S4
539E48:  VCMPE.F32       S0, S4
539E4C:  VMRS            APSR_nzcv, FPSCR
539E50:  BLE             loc_539DB6
539E52:  VMOV.F32        S4, #0.75
539E56:  VADD.F32        S2, S2, S4
539E5A:  VCMPE.F32       S0, S2
539E5E:  VMRS            APSR_nzcv, FPSCR
539E62:  BGE             loc_539DB6
539E64:  MOVS            R0, #dword_14; this
539E66:  LDR.W           R6, [R4,#0x440]
539E6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
539E6E:  MOVS            R1, #0; int
539E70:  MOV             R5, R0
539E72:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
539E76:  ADDS            R0, R6, #4; this
539E78:  MOV             R1, R5; CTask *
539E7A:  MOVS            R2, #3; int
539E7C:  MOVS            R3, #0; bool
539E7E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
539E82:  B               loc_539DB6
539E84:  ADD.W           R0, R5, R5,LSL#2
539E88:  MOVS            R1, #1; unsigned int
539E8A:  ADD.W           R5, R6, R0,LSL#2
539E8E:  MOV             R0, R5; this
539E90:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
539E94:  LDR             R6, [R0,#0x10]
539E96:  MOV             R0, R5; this
539E98:  MOVS            R1, #2; unsigned int
539E9A:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
539E9E:  LDR             R0, [R0,#0x10]
539EA0:  CMP             R6, R0
539EA2:  BEQ.W           loc_539CA0
539EA6:  MOV             R0, R4
539EA8:  MOVS            R1, #0
539EAA:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
539EAE:  VMOV            S0, R0
539EB2:  VCMPE.F32       S0, S16
539EB6:  VMRS            APSR_nzcv, FPSCR
539EBA:  BLT.W           loc_539CB4
539EBE:  MOV             R0, R4
539EC0:  MOVS            R1, #7
539EC2:  B               loc_539CB0
539EC4:  MOV             R0, R4; jumptable 00539D58 default case, cases 9-33,35-44,47-50
539EC6:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
539ECA:  LDR.W           R0, [R4,#0x440]
539ECE:  ADDS            R0, #4; this
539ED0:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
539ED4:  CMP             R0, #0
539ED6:  BEQ.W           loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539EDA:  LDR.W           R0, [R4,#0x440]
539EDE:  ADDS            R0, #4; this
539EE0:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
539EE4:  LDR             R1, [R0]
539EE6:  LDR             R1, [R1,#0x14]
539EE8:  BLX             R1
539EEA:  CMP             R0, #0xD3
539EEC:  BEQ.W           loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
539EF0:  MOVS            R0, #dword_14; this
539EF2:  LDR.W           R6, [R4,#0x440]
539EF6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
539EFA:  MOVS            R1, #0; int
539EFC:  MOV             R5, R0
539EFE:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
539F02:  ADDS            R0, R6, #4; this
539F04:  MOV             R1, R5; CTask *
539F06:  MOVS            R2, #3; int
539F08:  MOVS            R3, #0; bool
539F0A:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
539F0E:  B               loc_539D8A; jumptable 00539D58 cases 7,8,34,45,46,51
