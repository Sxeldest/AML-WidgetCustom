; =========================================================
; Game Engine Function: _ZN13CEventHandler31ComputeVehicleCollisionResponseEP6CEventP5CTaskS3_
; Address            : 0x37C6B0 - 0x37CA72
; =========================================================

37C6B0:  PUSH            {R4-R7,LR}
37C6B2:  ADD             R7, SP, #0xC
37C6B4:  PUSH.W          {R8-R11}
37C6B8:  SUB             SP, SP, #4
37C6BA:  VPUSH           {D8-D9}
37C6BE:  SUB             SP, SP, #0x30
37C6C0:  MOV             R6, R1
37C6C2:  MOV             R4, R3
37C6C4:  LDR.W           R10, [R6,#0x14]
37C6C8:  MOV             R8, R0
37C6CA:  CMP.W           R10, #0
37C6CE:  BEQ.W           loc_37CA64
37C6D2:  LDR.W           R0, [R8]
37C6D6:  LDR.W           R1, [R0,#0x488]
37C6DA:  BIC.W           R1, R1, #0x8000000; unsigned int
37C6DE:  STR.W           R1, [R0,#0x488]
37C6E2:  LDRH            R0, [R6,#0xC]
37C6E4:  CMP             R0, #1
37C6E6:  BNE             loc_37C70E
37C6E8:  MOVS            R0, #dword_1C; this
37C6EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C6EE:  LDR.W           R1, [R8]; CPed *
37C6F2:  ADD             R6, SP, #0x60+var_3C
37C6F4:  MOV             R4, R0
37C6F6:  MOV             R2, R10; CVehicle *
37C6F8:  MOV             R0, R6; this
37C6FA:  BLX             j__ZN25CTaskComplexHitPedWithCar25ComputeEvasiveStepMoveDirERK4CPedP8CVehicle; CTaskComplexHitPedWithCar::ComputeEvasiveStepMoveDir(CPed const&,CVehicle *)
37C6FE:  MOV             R0, R4; this
37C700:  MOV             R1, R10; CEntity *
37C702:  MOV             R2, R6; CVector *
37C704:  BLX             j__ZN23CTaskComplexEvasiveStepC2EP7CEntityRK7CVector; CTaskComplexEvasiveStep::CTaskComplexEvasiveStep(CEntity *,CVector const&)
37C708:  STR.W           R4, [R8,#0x24]
37C70C:  B               loc_37C9EA
37C70E:  VLDR            S0, [R10,#0x48]
37C712:  VLDR            S2, [R10,#0x4C]
37C716:  VMUL.F32        S0, S0, S0
37C71A:  VLDR            S4, [R10,#0x50]
37C71E:  VMUL.F32        S2, S2, S2
37C722:  LDR             R1, =(_ZN22CEventVehicleCollision24ms_fDamageThresholdSpeedE_ptr - 0x37C730)
37C724:  VMUL.F32        S4, S4, S4
37C728:  LDR.W           R0, [R8]; this
37C72C:  ADD             R1, PC; _ZN22CEventVehicleCollision24ms_fDamageThresholdSpeedE_ptr
37C72E:  VLDR            S16, [R6,#0x10]
37C732:  LDR             R5, [R1]; CEventVehicleCollision::ms_fDamageThresholdSpeed ...
37C734:  VADD.F32        S0, S0, S2
37C738:  VADD.F32        S0, S0, S4
37C73C:  VSQRT.F32       S18, S0
37C740:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37C744:  VLDR            S0, [R5]
37C748:  MOV             R1, R0
37C74A:  LDR.W           R0, [R8]; this
37C74E:  VCMPE.F32       S18, S0
37C752:  VMRS            APSR_nzcv, FPSCR
37C756:  BLE             loc_37C7DC
37C758:  CMP             R1, #1
37C75A:  BNE             loc_37C7B4
37C75C:  LDRB.W          R1, [R0,#0x484]
37C760:  LSLS            R1, R1, #0x1F
37C762:  BEQ             loc_37C7B4
37C764:  LDR             R1, [R0,#0x14]
37C766:  ADD.W           R2, R0, #0x4E8
37C76A:  VLDR            S4, [R6,#0x18]
37C76E:  VLDR            S0, [R2]
37C772:  VLDR            S2, [R1,#0x10]
37C776:  VLDR            D16, [R1,#0x14]
37C77A:  VMUL.F32        S2, S0, S2
37C77E:  VLDR            D17, [R6,#0x1C]
37C782:  VMUL.F32        D16, D16, D0[0]
37C786:  VMUL.F32        D0, D16, D17
37C78A:  VMUL.F32        S2, S2, S4
37C78E:  VADD.F32        S2, S2, S0
37C792:  VADD.F32        S0, S2, S1
37C796:  VCMPE.F32       S0, #0.0
37C79A:  VMRS            APSR_nzcv, FPSCR
37C79E:  BGE             loc_37C7B4
37C7A0:  VLDR            S2, [R0,#0x90]
37C7A4:  VMUL.F32        S0, S0, S2
37C7A8:  VLDR            S2, =0.0
37C7AC:  VADD.F32        S0, S16, S0
37C7B0:  VMAX.F32        D8, D0, D1
37C7B4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37C7B8:  CMP             R0, #1
37C7BA:  BNE.W           loc_37C924
37C7BE:  LDR             R0, =(_ZN22CEventVehicleCollision20ms_fMaxPlayerImpulseE_ptr - 0x37C7C4)
37C7C0:  ADD             R0, PC; _ZN22CEventVehicleCollision20ms_fMaxPlayerImpulseE_ptr
37C7C2:  LDR             R0, [R0]; CEventVehicleCollision::ms_fMaxPlayerImpulse ...
37C7C4:  VLDR            S0, [R0]
37C7C8:  MOVS            R0, #word_28; this
37C7CA:  VMIN.F32        D0, D8, D0
37C7CE:  VMOV            R4, S0
37C7D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C7D6:  MOV             R1, R10
37C7D8:  MOV             R2, R4
37C7DA:  B               loc_37C92E
37C7DC:  CMP             R1, #1
37C7DE:  BNE             loc_37C7EC
37C7E0:  LDR.W           R1, [R0,#0x440]
37C7E4:  LDR             R1, [R1,#0x10]
37C7E6:  CBZ             R1, loc_37C7EC
37C7E8:  CBNZ            R4, loc_37C7F4
37C7EA:  B               loc_37C84E
37C7EC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37C7F0:  CBZ             R4, loc_37C84E
37C7F2:  CBNZ            R0, loc_37C84E
37C7F4:  MOV             R0, R4; this
37C7F6:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37C7FA:  CBZ             R0, loc_37C84E
37C7FC:  LDR.W           R0, [R8]; this
37C800:  LDR.W           R1, [R0,#0x56C]; CPed *
37C804:  CMP             R10, R1
37C806:  BEQ.W           loc_37C972
37C80A:  LDRSB.W         R9, [R6,#0x30]
37C80E:  CMP.W           R9, #1
37C812:  BEQ.W           loc_37CA64
37C816:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
37C81A:  MOV             R5, R0
37C81C:  LDR.W           R0, [R8]
37C820:  LDR.W           R0, [R0,#0x440]; this
37C824:  BLX             j__ZN16CPedIntelligence20IsPedGoingForCarDoorEv; CPedIntelligence::IsPedGoingForCarDoor(void)
37C828:  MOV             R11, R0
37C82A:  MOVS            R0, #dword_58; this
37C82C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C830:  LDRSB.W         R1, [R6,#0x31]
37C834:  CMP             R5, #0
37C836:  ADD.W           R2, R4, #0xC; CVector *
37C83A:  MOV             R3, R10; CVehicle *
37C83C:  STRD.W          R11, R1, [SP,#0x60+var_60]; bool
37C840:  IT NE
37C842:  MOVNE.W         R9, #6
37C846:  MOV             R1, R9; int
37C848:  BLX             j__ZN24CTaskComplexWalkRoundCarC2EiRK7CVectorPK8CVehiclebi; CTaskComplexWalkRoundCar::CTaskComplexWalkRoundCar(int,CVector const&,CVehicle const*,bool,int)
37C84C:  B               loc_37C96C
37C84E:  LDR.W           R0, [R8]; this
37C852:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37C856:  CMP             R0, #1
37C858:  BNE             loc_37C950
37C85A:  LDR.W           R4, [R8]
37C85E:  LDRB.W          R0, [R4,#0x485]
37C862:  LSLS            R0, R0, #0x1E
37C864:  BMI             loc_37C950
37C866:  LDR.W           R0, [R4,#0x444]
37C86A:  VLDR            S0, [R0,#0x14]
37C86E:  VCMP.F32        S0, #0.0
37C872:  VMRS            APSR_nzcv, FPSCR
37C876:  BNE.W           loc_37C9B0
37C87A:  LDR.W           R0, [R10,#0x464]
37C87E:  CMP             R0, #0
37C880:  BEQ.W           loc_37C9B0
37C884:  MOV             R0, R4; this
37C886:  MOVS            R1, #0; bool
37C888:  MOVS            R5, #0
37C88A:  BLX             j__ZN10CPlayerPed14AnnoyPlayerPedEb; CPlayerPed::AnnoyPlayerPed(bool)
37C88E:  LDR             R0, =(g_ikChainMan_ptr - 0x37C89E)
37C890:  MOVS            R3, #3
37C892:  LDR.W           R2, [R8]; CPed *
37C896:  ADR             R1, aCompvehiclecol; "CompVehicleCollResp"
37C898:  STR             R5, [SP,#0x60+var_44]; int
37C89A:  ADD             R0, PC; g_ikChainMan_ptr
37C89C:  STR             R3, [SP,#0x60+var_48]; int
37C89E:  MOV.W           R3, #0x1F4
37C8A2:  STR             R3, [SP,#0x60+var_4C]; int
37C8A4:  MOV.W           R3, #0x3E800000
37C8A8:  STR             R3, [SP,#0x60+var_50]; float
37C8AA:  MOVS            R3, #1
37C8AC:  STRD.W          R5, R3, [SP,#0x60+var_58]; int
37C8B0:  MOV.W           R3, #0xFFFFFFFF
37C8B4:  LDR             R0, [R0]; g_ikChainMan ; int
37C8B6:  STR             R3, [SP,#0x60+var_5C]; int
37C8B8:  MOVW            R3, #0x514
37C8BC:  STR             R3, [SP,#0x60+var_60]; int
37C8BE:  MOV             R3, R10; int
37C8C0:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37C8C4:  LDRSB.W         R0, [R4,#0x71C]
37C8C8:  RSB.W           R0, R0, R0,LSL#3
37C8CC:  ADD.W           R0, R4, R0,LSL#2
37C8D0:  LDR.W           R1, [R0,#0x5A4]
37C8D4:  CBZ             R1, loc_37C914
37C8D6:  MOV             R0, R4
37C8D8:  BLX             j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
37C8DC:  CMP             R0, #2
37C8DE:  BEQ             loc_37C914
37C8E0:  LDRSB.W         R0, [R4,#0x71C]
37C8E4:  RSB.W           R0, R0, R0,LSL#3
37C8E8:  ADD.W           R0, R4, R0,LSL#2
37C8EC:  LDR.W           R1, [R0,#0x5A4]
37C8F0:  MOV             R0, R4
37C8F2:  BLX             j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
37C8F6:  CMP             R0, #4
37C8F8:  BEQ             loc_37C914
37C8FA:  LDRSB.W         R0, [R4,#0x71C]
37C8FE:  RSB.W           R0, R0, R0,LSL#3
37C902:  ADD.W           R0, R4, R0,LSL#2
37C906:  LDR.W           R1, [R0,#0x5A4]
37C90A:  MOV             R0, R4
37C90C:  BLX             j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
37C910:  CMP             R0, #1
37C912:  BNE             loc_37C9EA
37C914:  MOVS            R0, #word_10; this
37C916:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C91A:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37C91E:  STR.W           R0, [R8,#0x30]
37C922:  B               loc_37C9EA
37C924:  MOVS            R0, #word_28; this
37C926:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C92A:  LDR             R2, [R6,#0x10]; float
37C92C:  MOV             R1, R10; CVehicle *
37C92E:  BLX             j__ZN25CTaskComplexHitPedWithCarC2EP8CVehiclef; CTaskComplexHitPedWithCar::CTaskComplexHitPedWithCar(CVehicle *,float)
37C932:  LDR.W           R1, [R8]
37C936:  STR.W           R0, [R8,#0x24]
37C93A:  LDR.W           R0, [R1,#0x12C]
37C93E:  CMP             R0, R10
37C940:  ITTT NE
37C942:  LDRNE.W         R0, [R1,#0x488]
37C946:  ORRNE.W         R0, R0, #0x8000000
37C94A:  STRNE.W         R0, [R1,#0x488]
37C94E:  B               loc_37C9EA
37C950:  VLDR            S0, =0.001
37C954:  VCMPE.F32       S18, S0
37C958:  VMRS            APSR_nzcv, FPSCR
37C95C:  BLE             loc_37C9EA
37C95E:  MOVS            R0, #word_28; this
37C960:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C964:  LDR             R2, [R6,#0x10]; float
37C966:  MOV             R1, R10; CVehicle *
37C968:  BLX             j__ZN25CTaskComplexHitPedWithCarC2EP8CVehiclef; CTaskComplexHitPedWithCar::CTaskComplexHitPedWithCar(CVehicle *,float)
37C96C:  STR.W           R0, [R8,#0x24]
37C970:  B               loc_37C9EA
37C972:  ADD.W           R1, R0, #0x560
37C976:  VLDR            S0, [R1]
37C97A:  ADDW            R1, R0, #0x55C
37C97E:  VLDR            S2, [R1]
37C982:  VSUB.F32        S0, S2, S0
37C986:  VLDR            S2, =0.01
37C98A:  VABS.F32        S0, S0
37C98E:  VCMPE.F32       S0, S2
37C992:  VMRS            APSR_nzcv, FPSCR
37C996:  BGE             loc_37C9EA
37C998:  MOV             R1, R10; CPed *
37C99A:  BLX             j__ZN20CPedGeometryAnalyser18CanPedJumpObstacleERK4CPedRK7CEntity; CPedGeometryAnalyser::CanPedJumpObstacle(CPed const&,CEntity const&)
37C99E:  CMP             R0, #1
37C9A0:  BNE             loc_37C9EA
37C9A2:  MOVS            R0, #dword_14; this
37C9A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C9A8:  MOVS            R1, #0; int
37C9AA:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
37C9AE:  B               loc_37C96C
37C9B0:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37C9C2)
37C9B4:  MOV.W           R0, #0xFFFFFFFF
37C9B8:  MOV.W           R2, #0x320
37C9BC:  MOVS            R1, #0
37C9BE:  ADD             R12, PC; g_ikChainMan_ptr
37C9C0:  STRD.W          R2, R0, [SP,#0x60+var_60]; int
37C9C4:  MOV.W           R6, #0x3E800000
37C9C8:  MOVS            R5, #1
37C9CA:  ADD             R0, SP, #0x60+var_58
37C9CC:  MOV.W           LR, #3
37C9D0:  STM             R0!, {R1,R5,R6}
37C9D2:  MOV.W           R3, #0x1F4
37C9D6:  MOV             R2, R4; CPed *
37C9D8:  LDR.W           R0, [R12]; g_ikChainMan ; int
37C9DC:  STRD.W          R3, LR, [SP,#0x60+var_4C]; int
37C9E0:  MOV             R3, R10; int
37C9E2:  STR             R1, [SP,#0x60+var_44]; int
37C9E4:  ADR             R1, aCompvehiclecol; "CompVehicleCollResp"
37C9E6:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37C9EA:  LDR.W           R0, [R8,#0x24]
37C9EE:  CBZ             R0, loc_37CA64
37C9F0:  LDR             R1, [R0]
37C9F2:  LDR             R1, [R1,#0x14]
37C9F4:  BLX             R1
37C9F6:  MOVW            R1, #0x1F9
37C9FA:  CMP             R0, R1
37C9FC:  BNE             loc_37CA64
37C9FE:  LDR.W           R0, [R10,#0x464]; this
37CA02:  CBZ             R0, loc_37CA64
37CA04:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37CA08:  CMP             R0, #1
37CA0A:  BNE             loc_37CA64
37CA0C:  LDR.W           R0, [R8]
37CA10:  LDR.W           R0, [R0,#0x440]
37CA14:  LDRB.W          R1, [R0,#0x180]
37CA18:  CBZ             R1, loc_37CA64
37CA1A:  LDRB.W          R1, [R0,#0x181]
37CA1E:  CBZ             R1, loc_37CA36
37CA20:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37CA28)
37CA22:  MOVS            R2, #0
37CA24:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37CA26:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
37CA28:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
37CA2A:  STRB.W          R2, [R0,#0x181]
37CA2E:  STR.W           R1, [R0,#0x178]
37CA32:  MOV             R2, R1
37CA34:  B               loc_37CA42
37CA36:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37CA40)
37CA38:  LDR.W           R2, [R0,#0x178]
37CA3C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37CA3E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
37CA40:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
37CA42:  LDR.W           R3, [R0,#0x17C]
37CA46:  ADD             R2, R3
37CA48:  CMP             R2, R1
37CA4A:  BHI             loc_37CA64
37CA4C:  MOVW            R2, #0xBB8
37CA50:  STRD.W          R1, R2, [R0,#0x178]
37CA54:  MOVS            R2, #1
37CA56:  LDRB.W          R1, [R0,#0x174]
37CA5A:  STRB.W          R2, [R0,#0x180]
37CA5E:  ADDS            R1, #2
37CA60:  STRB.W          R1, [R0,#0x174]
37CA64:  ADD             SP, SP, #0x30 ; '0'
37CA66:  VPOP            {D8-D9}
37CA6A:  ADD             SP, SP, #4
37CA6C:  POP.W           {R8-R11}
37CA70:  POP             {R4-R7,PC}
