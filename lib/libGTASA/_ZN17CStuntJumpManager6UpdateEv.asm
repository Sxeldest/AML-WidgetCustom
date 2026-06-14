; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager6UpdateEv
; Address            : 0x361674 - 0x361B94
; =========================================================

361674:  PUSH            {R4-R7,LR}
361676:  ADD             R7, SP, #0xC
361678:  PUSH.W          {R8-R11}
36167C:  SUB             SP, SP, #0x34
36167E:  LDR.W           R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x361686)
361682:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
361684:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
361686:  LDR             R0, [R0]; CStuntJumpManager::mp_poolStuntJumps
361688:  CMP             R0, #0
36168A:  BEQ.W           loc_361B8C
36168E:  MOV.W           R0, #0xFFFFFFFF; int
361692:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
361696:  LDR.W           R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3616A4)
36169A:  MOV             R5, R0
36169C:  LDR.W           R0, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x3616A6)
3616A0:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
3616A2:  ADD             R0, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
3616A4:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
3616A6:  LDR             R0, [R0]; CStuntJumpManager::m_jumpState ...
3616A8:  LDR             R6, [R1]; CWorld::PlayerInFocus
3616AA:  LDR             R0, [R0]; CStuntJumpManager::m_jumpState
3616AC:  CMP             R0, #2
3616AE:  BEQ.W           loc_3618C6
3616B2:  LDR.W           R4, [R5,#0x590]
3616B6:  CMP             R0, #1
3616B8:  BEQ.W           loc_361964
3616BC:  CMP             R0, #0
3616BE:  BNE.W           loc_361B8C
3616C2:  LDR.W           R0, =(_ZN17CStuntJumpManager9m_bActiveE_ptr - 0x3616CA)
3616C6:  ADD             R0, PC; _ZN17CStuntJumpManager9m_bActiveE_ptr
3616C8:  LDR             R0, [R0]; CStuntJumpManager::m_bActive ...
3616CA:  LDRB            R0, [R0]; CStuntJumpManager::m_bActive
3616CC:  CMP             R0, #0
3616CE:  BEQ.W           loc_361B8C
3616D2:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3616DE)
3616D6:  MOV.W           R1, #0x194
3616DA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3616DC:  LDR             R0, [R0]; CWorld::Players ...
3616DE:  SMLABB.W        R0, R6, R1, R0
3616E2:  LDRB.W          R0, [R0,#0xDC]
3616E6:  CMP             R0, #0
3616E8:  BNE.W           loc_361B8C
3616EC:  CMP             R4, #0
3616EE:  ITT NE
3616F0:  LDRNE.W         R0, [R5,#0x484]
3616F4:  ANDSNE.W        R0, R0, #0x100
3616F8:  BEQ.W           loc_361B8C
3616FC:  MOV             R0, R4; this
3616FE:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
361702:  CMP             R0, #4
361704:  BEQ.W           loc_361B8C
361708:  LDR.W           R0, [R4,#0x464]
36170C:  CMP             R0, R5
36170E:  BNE.W           loc_361B8C
361712:  MOV             R0, R4; this
361714:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
361718:  CMP             R0, #5
36171A:  BEQ.W           loc_361B8C
36171E:  MOV             R0, R4; this
361720:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
361724:  CMP             R0, #3
361726:  BEQ.W           loc_361B8C
36172A:  LDRB.W          R0, [R4,#0xBD]
36172E:  CMP             R0, #0
361730:  BNE.W           loc_361B8C
361734:  VLDR            S0, [R4,#0x48]
361738:  VLDR            S2, [R4,#0x4C]
36173C:  VMUL.F32        S0, S0, S0
361740:  VLDR            S4, [R4,#0x50]
361744:  VMUL.F32        S2, S2, S2
361748:  VMUL.F32        S4, S4, S4
36174C:  VADD.F32        S0, S0, S2
361750:  VLDR            S2, =50.0
361754:  VADD.F32        S0, S0, S4
361758:  VMOV.F32        S4, #20.0
36175C:  VSQRT.F32       S0, S0
361760:  VMUL.F32        S0, S0, S2
361764:  VCMPE.F32       S0, S4
361768:  VMRS            APSR_nzcv, FPSCR
36176C:  BLT.W           loc_361B8C
361770:  LDR.W           R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x361784)
361774:  MOV.W           R12, #0
361778:  LDR.W           R1, =(_ZN17CStuntJumpManager12m_bHitRewardE_ptr - 0x36178A)
36177C:  MOV.W           R11, #0
361780:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
361782:  LDR.W           R2, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x361792)
361786:  ADD             R1, PC; _ZN17CStuntJumpManager12m_bHitRewardE_ptr
361788:  LDR.W           R3, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x361798)
36178C:  LDR             R6, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
36178E:  ADD             R2, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361790:  LDR.W           R0, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x3617A2)
361794:  ADD             R3, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
361796:  LDR.W           LR, [R1]; CStuntJumpManager::m_bHitReward ...
36179A:  MOV.W           R8, #0
36179E:  ADD             R0, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
3617A0:  LDR.W           R1, =(TheCamera_ptr - 0x3617AE)
3617A4:  LDR             R5, [R2]; CStuntJumpManager::mp_Active ...
3617A6:  LDR.W           R10, [R0]; CStuntJumpManager::m_iTimer ...
3617AA:  ADD             R1, PC; TheCamera_ptr
3617AC:  LDR.W           R0, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x3617B6)
3617B0:  LDR             R3, [R3]; CStuntJumpManager::m_jumpState ...
3617B2:  ADD             R0, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
3617B4:  LDR.W           R9, [R1]; TheCamera
3617B8:  LDR             R0, [R0]; CStuntJumpManager::mp_Active ...
3617BA:  STR             R0, [SP,#0x50+var_30]
3617BC:  LDR.W           R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x3617C4)
3617C0:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
3617C2:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
3617C4:  STR             R0, [SP,#0x50+var_2C]
3617C6:  LDR             R0, [R6]; CStuntJumpManager::mp_poolStuntJumps
3617C8:  LDR             R1, [R0,#4]
3617CA:  LDRSB.W         R1, [R1,R8]
3617CE:  CMP             R1, #0
3617D0:  BLT             loc_3618B4
3617D2:  LDR             R0, [R0]
3617D4:  LDR             R2, [R4,#0x14]; float
3617D6:  ADD             R0, R11
3617D8:  ADD.W           R1, R2, #0x30 ; '0'
3617DC:  CMP             R2, #0
3617DE:  VLDR            S2, [R0]
3617E2:  IT EQ
3617E4:  ADDEQ           R1, R4, #4
3617E6:  VLDR            S0, [R1]
3617EA:  VCMPE.F32       S0, S2
3617EE:  VMRS            APSR_nzcv, FPSCR
3617F2:  BLT             loc_3618B4
3617F4:  VLDR            S2, [R1,#4]
3617F8:  VLDR            S4, [R0,#4]
3617FC:  VCMPE.F32       S2, S4
361800:  VMRS            APSR_nzcv, FPSCR
361804:  BLT             loc_3618B4
361806:  VLDR            S4, [R1,#8]
36180A:  VLDR            S6, [R0,#8]
36180E:  VCMPE.F32       S4, S6
361812:  VMRS            APSR_nzcv, FPSCR
361816:  BLT             loc_3618B4
361818:  VLDR            S6, [R0,#0xC]
36181C:  VCMPE.F32       S0, S6
361820:  VMRS            APSR_nzcv, FPSCR
361824:  BGT             loc_3618B4
361826:  VLDR            S0, [R0,#0x10]
36182A:  VCMPE.F32       S2, S0
36182E:  VMRS            APSR_nzcv, FPSCR
361832:  BGT             loc_3618B4
361834:  VLDR            S0, [R0,#0x14]
361838:  VCMPE.F32       S4, S0
36183C:  VMRS            APSR_nzcv, FPSCR
361840:  BGT             loc_3618B4
361842:  STR.W           R10, [SP,#0x50+var_34]
361846:  STR.W           R12, [R10]; CStuntJumpManager::m_iTimer
36184A:  MOV.W           R10, #1
36184E:  STR             R5, [SP,#0x50+var_38]
361850:  STR             R0, [R5]; CStuntJumpManager::mp_Active
361852:  MOV             R5, LR
361854:  STR             R3, [SP,#0x50+var_3C]
361856:  STR.W           R10, [R3]; CStuntJumpManager::m_jumpState
36185A:  STRB.W          R12, [LR]; CStuntJumpManager::m_bHitReward
36185E:  LDRB.W          R1, [R0,#0x41]
361862:  CBNZ            R1, loc_361876
361864:  STRB.W          R10, [R0,#0x41]
361868:  MOVS            R0, #dword_90; this
36186A:  MOV.W           R1, #0x3F800000; unsigned __int16
36186E:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
361872:  LDR             R0, [SP,#0x50+var_30]
361874:  LDR             R0, [R0]
361876:  LDR             R1, [SP,#0x50+var_2C]
361878:  MOV             R2, #0x3E99999A
361880:  STR             R2, [R1]
361882:  MOVS            R2, #0
361884:  STRD.W          R2, R2, [SP,#0x50+var_28]
361888:  ADD.W           R1, R0, #0x30 ; '0'; CVector *
36188C:  STR             R2, [SP,#0x50+var_20]
36188E:  ADD             R2, SP, #0x50+var_28; CVector *
361890:  MOV             R0, R9; this
361892:  BLX             j__ZN7CCamera26SetCamPositionForFixedModeERK7CVectorS2_; CCamera::SetCamPositionForFixedMode(CVector const&,CVector const&)
361896:  MOV             R0, R9; this
361898:  MOV             R1, R4; CEntity *
36189A:  MOVS            R2, #0xF; __int16
36189C:  MOVS            R3, #2; __int16
36189E:  STR.W           R10, [SP,#0x50+var_50]; int
3618A2:  BLX             j__ZN7CCamera11TakeControlEP7CEntityssi; CCamera::TakeControl(CEntity *,short,short,int)
3618A6:  LDR.W           R10, [SP,#0x50+var_34]
3618AA:  MOV             LR, R5
3618AC:  LDRD.W          R3, R5, [SP,#0x50+var_3C]
3618B0:  MOV.W           R12, #0
3618B4:  ADD.W           R8, R8, #1
3618B8:  ADD.W           R11, R11, #0x44 ; 'D'
3618BC:  CMP.W           R8, #0x100
3618C0:  BNE.W           loc_3617C6
3618C4:  B               loc_361B8C
3618C6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3618D0)
3618C8:  VLDR            S0, =50.0
3618CC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3618CE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3618D0:  VLDR            S2, [R0]
3618D4:  LDR             R0, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x3618DE)
3618D6:  VDIV.F32        S0, S2, S0
3618DA:  ADD             R0, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
3618DC:  LDR             R0, [R0]; CStuntJumpManager::m_iTimer ...
3618DE:  LDR             R1, [R0]; CStuntJumpManager::m_iTimer
3618E0:  VLDR            S2, =1000.0
3618E4:  VMUL.F32        S0, S0, S2
3618E8:  VCVT.U32.F32    S0, S0
3618EC:  VMOV            R2, S0
3618F0:  ADD             R1, R2
3618F2:  STR             R1, [R0]; CStuntJumpManager::m_iTimer
3618F4:  CMP.W           R1, #0x12C
3618F8:  BLT.W           loc_361B8C
3618FC:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x361904)
3618FE:  LDR             R1, =(TheCamera_ptr - 0x361906)
361900:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
361902:  ADD             R1, PC; TheCamera_ptr
361904:  LDR             R2, [R0]; CTimer::ms_fTimeScale ...
361906:  LDR             R0, [R1]; TheCamera ; this
361908:  MOV.W           R1, #0x3F800000
36190C:  STR             R1, [R2]; CTimer::ms_fTimeScale
36190E:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
361912:  LDR             R0, =(_ZN17CStuntJumpManager12m_bHitRewardE_ptr - 0x361918)
361914:  ADD             R0, PC; _ZN17CStuntJumpManager12m_bHitRewardE_ptr
361916:  LDR             R0, [R0]; CStuntJumpManager::m_bHitReward ...
361918:  LDRB            R0, [R0]; CStuntJumpManager::m_bHitReward
36191A:  CMP             R0, #0
36191C:  BEQ.W           loc_361B7A
361920:  LDR             R0, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x361926)
361922:  ADD             R0, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361924:  LDR             R0, [R0]; CStuntJumpManager::mp_Active ...
361926:  LDR             R0, [R0]; CStuntJumpManager::mp_Active
361928:  LDRB.W          R1, [R0,#0x40]
36192C:  CMP             R1, #0
36192E:  BNE.W           loc_361B7A
361932:  LDR             R1, =(_ZN17CStuntJumpManager15m_iNumCompletedE_ptr - 0x361938)
361934:  ADD             R1, PC; _ZN17CStuntJumpManager15m_iNumCompletedE_ptr
361936:  LDR             R4, [R1]; CStuntJumpManager::m_iNumCompleted ...
361938:  MOVS            R1, #1
36193A:  STRB.W          R1, [R0,#0x40]
36193E:  MOV.W           R1, #0x3F800000; unsigned __int16
361942:  LDR             R0, [R4]; CStuntJumpManager::m_iNumCompleted
361944:  ADDS            R0, #1
361946:  STR             R0, [R4]; CStuntJumpManager::m_iNumCompleted
361948:  MOVS            R0, #(dword_90+1); this
36194A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
36194E:  LDR             R0, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x361956)
361950:  LDR             R1, [R4]; CStuntJumpManager::m_iNumCompleted
361952:  ADD             R0, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
361954:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps ...
361956:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps
361958:  CMP             R1, R0
36195A:  BNE.W           loc_361AD0
36195E:  MOVW            R4, #0x2710
361962:  B               loc_361ADA
361964:  LDR             R0, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x36196A)
361966:  ADD             R0, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361968:  LDR             R0, [R0]; CStuntJumpManager::mp_Active ...
36196A:  LDR             R1, [R0]; CStuntJumpManager::mp_Active
36196C:  CBZ             R1, loc_3619C4
36196E:  LDR             R0, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x361978)
361970:  LDRB.W          R2, [R4,#0xBD]
361974:  ADD             R0, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
361976:  CMP             R2, #0
361978:  LDR             R0, [R0]; CStuntJumpManager::m_iTimer ...
36197A:  LDR             R0, [R0]; CStuntJumpManager::m_iTimer
36197C:  BEQ             loc_361982
36197E:  CMP             R0, #0x63 ; 'c'
361980:  BGT             loc_361A4A
361982:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x36198C)
361984:  MOV.W           R3, #0x194
361988:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
36198A:  LDR             R2, [R2]; CWorld::Players ...
36198C:  SMLABB.W        R2, R6, R3, R2
361990:  LDRB.W          R3, [R4,#0x3A]
361994:  AND.W           R3, R3, #0xF8
361998:  LDRB.W          R2, [R2,#0xDC]
36199C:  CMP             R2, #0
36199E:  IT NE
3619A0:  MOVNE           R2, #1
3619A2:  CMP             R3, #0x28 ; '('
3619A4:  BEQ             loc_3619D0
3619A6:  LDRB.W          R3, [R4,#0x42F]
3619AA:  LSLS            R3, R3, #0x19
3619AC:  BMI             loc_3619D0
3619AE:  LDRB.W          R3, [R4,#0x45]
3619B2:  LSLS            R3, R3, #0x1F
3619B4:  BNE             loc_3619D0
3619B6:  LDRB.W          R3, [R5,#0x485]
3619BA:  ORN.W           R2, R2, R3
3619BE:  AND.W           R2, R2, #1
3619C2:  B               loc_3619D2
3619C4:  LDR             R0, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x3619CC)
3619C6:  MOVS            R1, #0
3619C8:  ADD             R0, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
3619CA:  LDR             R0, [R0]; CStuntJumpManager::m_jumpState ...
3619CC:  STR             R1, [R0]; CStuntJumpManager::m_jumpState
3619CE:  B               loc_361B8C
3619D0:  MOVS            R2, #1
3619D2:  LDR             R6, [R4,#0x14]
3619D4:  VLDR            S2, [R1,#0x18]
3619D8:  ADD.W           R3, R6, #0x30 ; '0'
3619DC:  CMP             R6, #0
3619DE:  IT EQ
3619E0:  ADDEQ           R3, R4, #4
3619E2:  VLDR            S0, [R3]
3619E6:  VCMPE.F32       S0, S2
3619EA:  VMRS            APSR_nzcv, FPSCR
3619EE:  BLT             loc_361A48
3619F0:  VLDR            S2, [R3,#4]
3619F4:  VLDR            S4, [R1,#0x1C]
3619F8:  VCMPE.F32       S2, S4
3619FC:  VMRS            APSR_nzcv, FPSCR
361A00:  BLT             loc_361A48
361A02:  VLDR            S4, [R3,#8]
361A06:  VLDR            S6, [R1,#0x20]
361A0A:  VCMPE.F32       S4, S6
361A0E:  VMRS            APSR_nzcv, FPSCR
361A12:  BLT             loc_361A48
361A14:  VLDR            S6, [R1,#0x24]
361A18:  VCMPE.F32       S0, S6
361A1C:  VMRS            APSR_nzcv, FPSCR
361A20:  BGT             loc_361A48
361A22:  VLDR            S0, [R1,#0x28]
361A26:  VCMPE.F32       S2, S0
361A2A:  VMRS            APSR_nzcv, FPSCR
361A2E:  BGT             loc_361A48
361A30:  VLDR            S0, [R1,#0x2C]
361A34:  VCMPE.F32       S4, S0
361A38:  VMRS            APSR_nzcv, FPSCR
361A3C:  BGT             loc_361A48
361A3E:  LDR             R1, =(_ZN17CStuntJumpManager12m_bHitRewardE_ptr - 0x361A46)
361A40:  MOVS            R3, #1
361A42:  ADD             R1, PC; _ZN17CStuntJumpManager12m_bHitRewardE_ptr
361A44:  LDR             R1, [R1]; CStuntJumpManager::m_bHitReward ...
361A46:  STRB            R3, [R1]; CStuntJumpManager::m_bHitReward
361A48:  CBZ             R2, loc_361A5E
361A4A:  LDR             R0, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x361A52)
361A4C:  LDR             R1, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x361A54)
361A4E:  ADD             R0, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
361A50:  ADD             R1, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
361A52:  LDR             R2, [R0]; CStuntJumpManager::m_iTimer ...
361A54:  MOVS            R0, #0
361A56:  LDR             R1, [R1]; CStuntJumpManager::m_jumpState ...
361A58:  STR             R0, [R2]; CStuntJumpManager::m_iTimer
361A5A:  MOVS            R2, #2
361A5C:  STR             R2, [R1]; CStuntJumpManager::m_jumpState
361A5E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x361A6C)
361A60:  CMP.W           R0, #0x3E8
361A64:  VLDR            S0, =50.0
361A68:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
361A6A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
361A6C:  VLDR            S2, [R1]
361A70:  LDR             R1, =(_ZN17CStuntJumpManager8m_iTimerE_ptr - 0x361A7A)
361A72:  VDIV.F32        S0, S2, S0
361A76:  ADD             R1, PC; _ZN17CStuntJumpManager8m_iTimerE_ptr
361A78:  LDR             R2, [R1]; CStuntJumpManager::m_iTimer ...
361A7A:  VLDR            S2, =1000.0
361A7E:  VMUL.F32        S0, S0, S2
361A82:  VCVT.U32.F32    S0, S0
361A86:  VMOV            R1, S0
361A8A:  ADD             R1, R0
361A8C:  STR             R1, [R2]; CStuntJumpManager::m_iTimer
361A8E:  BGT             loc_361B8C
361A90:  CMP.W           R1, #0x3E8
361A94:  BLE             loc_361B8C
361A96:  MOV.W           R0, #0xFFFFFFFF; int
361A9A:  MOVS            R1, #0; bool
361A9C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
361AA0:  CMP             R0, #0
361AA2:  BEQ             loc_361B8C
361AA4:  MOV.W           R0, #0xFFFFFFFF; int
361AA8:  MOVS            R1, #0; bool
361AAA:  MOVS            R4, #0
361AAC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
361AB0:  BLX             j__ZN8CVehicle19PickRandomPassengerEv; CVehicle::PickRandomPassenger(void)
361AB4:  CMP             R0, #0
361AB6:  BEQ             loc_361B8C
361AB8:  MOVS            R1, #0x25 ; '%'; unsigned __int16
361ABA:  MOVS            R2, #0; unsigned int
361ABC:  MOV.W           R3, #0x3F800000; float
361AC0:  STRD.W          R4, R4, [SP,#0x50+var_50]; unsigned __int8
361AC4:  STR             R4, [SP,#0x50+var_48]; unsigned __int8
361AC6:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
361ACA:  B               loc_361B8C
361ACC:  DCFS 50.0
361AD0:  LDR             R0, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x361AD6)
361AD2:  ADD             R0, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361AD4:  LDR             R0, [R0]; CStuntJumpManager::mp_Active ...
361AD6:  LDR             R0, [R0]; CStuntJumpManager::mp_Active
361AD8:  LDR             R4, [R0,#0x3C]
361ADA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x361AE8)
361ADC:  MOV.W           R1, #0x194
361AE0:  MOV.W           R3, #0x3F800000; float
361AE4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
361AE6:  LDR             R0, [R0]; CWorld::Players ...
361AE8:  SMLABB.W        R1, R6, R1, R0
361AEC:  LDR             R0, =(AudioEngine_ptr - 0x361AF2)
361AEE:  ADD             R0, PC; AudioEngine_ptr
361AF0:  LDR             R0, [R0]; AudioEngine ; this
361AF2:  LDR.W           R2, [R1,#0xB8]
361AF6:  ADD             R2, R4
361AF8:  STR.W           R2, [R1,#0xB8]
361AFC:  MOVS            R1, #0x2B ; '+'; int
361AFE:  MOVS            R2, #0; float
361B00:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
361B04:  LDR             R0, =(TheText_ptr - 0x361B0C)
361B06:  ADR             R1, dword_361BD8; CKeyGen *
361B08:  ADD             R0, PC; TheText_ptr
361B0A:  LDR             R0, [R0]; TheText ; this
361B0C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
361B10:  CMP             R0, #0
361B12:  ITTT NE
361B14:  MOVWNE          R1, #(elf_hash_bucket+0x128C); unsigned __int16 *
361B18:  MOVNE           R2, #4; unsigned int
361B1A:  BLXNE           j__ZN9CMessages14AddBigMessageQEPtjt; CMessages::AddBigMessageQ(ushort *,uint,ushort)
361B1E:  LDR             R0, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x361B26)
361B20:  LDR             R1, =(_ZN17CStuntJumpManager15m_iNumCompletedE_ptr - 0x361B28)
361B22:  ADD             R0, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
361B24:  ADD             R1, PC; _ZN17CStuntJumpManager15m_iNumCompletedE_ptr
361B26:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps ...
361B28:  LDR             R1, [R1]; CStuntJumpManager::m_iNumCompleted ...
361B2A:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps
361B2C:  LDR             R1, [R1]; CStuntJumpManager::m_iNumCompleted
361B2E:  CMP             R1, R0
361B30:  BNE             loc_361B52
361B32:  LDR             R0, =(TheText_ptr - 0x361B3A)
361B34:  ADR             R1, aUsjAll; "USJ_ALL"
361B36:  ADD             R0, PC; TheText_ptr
361B38:  LDR             R0, [R0]; TheText ; this
361B3A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
361B3E:  MOV             R1, R0; char *
361B40:  CBZ             R1, loc_361B52
361B42:  MOVS            R0, #0
361B44:  MOVS            R2, #0; unsigned __int16 *
361B46:  STRD.W          R0, R0, [SP,#0x50+var_50]; bool
361B4A:  ADR             R0, aUsjAll; "USJ_ALL"
361B4C:  MOVS            R3, #0; bool
361B4E:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
361B52:  LDR             R0, =(TheText_ptr - 0x361B5A)
361B54:  ADR             R1, aReward; "REWARD"
361B56:  ADD             R0, PC; TheText_ptr
361B58:  LDR             R0, [R0]; TheText ; this
361B5A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
361B5E:  CBZ             R0, loc_361B7A
361B60:  MOV.W           R1, #0xFFFFFFFF
361B64:  MOVS            R2, #5; unsigned int
361B66:  STRD.W          R1, R1, [SP,#0x50+var_50]; int
361B6A:  MOV             R3, R4; unsigned __int16 *
361B6C:  STRD.W          R1, R1, [SP,#0x50+var_48]; int
361B70:  STR             R1, [SP,#0x50+var_40]; int
361B72:  MOVW            R1, #(elf_hash_bucket+0x1674); unsigned __int16 *
361B76:  BLX             j__ZN9CMessages23AddBigMessageWithNumberEPtjtiiiiii; CMessages::AddBigMessageWithNumber(ushort *,uint,ushort,int,int,int,int,int,int)
361B7A:  LDR             R0, =(_ZN17CStuntJumpManager9mp_ActiveE_ptr - 0x361B84)
361B7C:  MOVS            R2, #0
361B7E:  LDR             R1, =(_ZN17CStuntJumpManager11m_jumpStateE_ptr - 0x361B86)
361B80:  ADD             R0, PC; _ZN17CStuntJumpManager9mp_ActiveE_ptr
361B82:  ADD             R1, PC; _ZN17CStuntJumpManager11m_jumpStateE_ptr
361B84:  LDR             R0, [R0]; CStuntJumpManager::mp_Active ...
361B86:  LDR             R1, [R1]; CStuntJumpManager::m_jumpState ...
361B88:  STR             R2, [R0]; CStuntJumpManager::mp_Active
361B8A:  STR             R2, [R1]; CStuntJumpManager::m_jumpState
361B8C:  ADD             SP, SP, #0x34 ; '4'
361B8E:  POP.W           {R8-R11}
361B92:  POP             {R4-R7,PC}
