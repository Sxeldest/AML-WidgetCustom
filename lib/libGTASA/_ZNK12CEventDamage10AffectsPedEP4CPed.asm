; =========================================================
; Game Engine Function: _ZNK12CEventDamage10AffectsPedEP4CPed
; Address            : 0x372758 - 0x372A5C
; =========================================================

372758:  PUSH            {R4-R7,LR}
37275A:  ADD             R7, SP, #0xC
37275C:  PUSH.W          {R11}
372760:  SUB             SP, SP, #0x10
372762:  MOV             R5, R0
372764:  MOV             R4, R1
372766:  LDRB.W          R0, [R5,#0x3E]
37276A:  CBZ             R0, loc_372774
37276C:  LDRB.W          R0, [R5,#0x3F]
372770:  CMP             R0, #0
372772:  BEQ             loc_372868
372774:  MOV             R0, R4; this
372776:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37277A:  CMP             R0, #1
37277C:  BNE.W           loc_372A24
372780:  MOV.W           R0, #0xFFFFFFFF; int
372784:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
372788:  CMP             R0, R4
37278A:  BNE             loc_3727A2
37278C:  MOV.W           R0, #0xFFFFFFFF; int
372790:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
372794:  LDR.W           R0, [R0,#0x444]
372798:  LDRB.W          R0, [R0,#0x34]
37279C:  LSLS            R0, R0, #0x1B
37279E:  BPL.W           loc_372A24
3727A2:  LDR             R0, [R5,#0x18]
3727A4:  CMP             R0, #0x35 ; '5'
3727A6:  BNE             loc_3727B2
3727A8:  LDRB.W          R0, [R4,#0x48A]
3727AC:  LSLS            R0, R0, #0x1B
3727AE:  BPL.W           loc_372A24
3727B2:  MOV.W           R0, #0xFFFFFFFF; int
3727B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3727BA:  CMP             R0, R4
3727BC:  BEQ             loc_37286C
3727BE:  MOV.W           R0, #0xFFFFFFFF; int
3727C2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3727C6:  CMP             R0, R4
3727C8:  BEQ             loc_3728AA
3727CA:  LDRB.W          R0, [R4,#0x46]
3727CE:  LSLS            R0, R0, #0x19
3727D0:  BPL             loc_372806
3727D2:  LDR             R0, [R5]
3727D4:  LDR             R1, [R0,#0x2C]
3727D6:  MOV             R0, R5
3727D8:  BLX             R1
3727DA:  MOV             R6, R0
3727DC:  MOV.W           R0, #0xFFFFFFFF; int
3727E0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3727E4:  CMP             R6, R0
3727E6:  BEQ             loc_372806
3727E8:  LDR             R0, [R5,#0x18]
3727EA:  CMP             R0, #0x33 ; '3'
3727EC:  IT NE
3727EE:  CMPNE           R0, #0x35 ; '5'
3727F0:  BEQ             loc_372806
3727F2:  ADDW            R0, R4, #0x544
3727F6:  VLDR            S0, [R0]
3727FA:  VCMPE.F32       S0, #0.0
3727FE:  VMRS            APSR_nzcv, FPSCR
372802:  BGT.W           loc_372A24
372806:  LDRB.W          R0, [R4,#0x490]
37280A:  LSLS            R0, R0, #0x1F
37280C:  BEQ             loc_372826
37280E:  LDR             R0, [R5,#0x18]
372810:  MOVS            R1, #1
372812:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
372816:  LDR             R0, [R0]
372818:  CMP             R0, #1
37281A:  BNE             loc_372826
37281C:  LDR             R0, [R5,#0x1C]
37281E:  SUBS            R0, #3
372820:  CMP             R0, #2
372822:  BCC.W           loc_372A24
372826:  LDRB            R0, [R5,#9]
372828:  CMP             R0, #0
37282A:  BEQ             loc_3728DA
37282C:  ADD.W           R6, R5, #0x10
372830:  LDR             R0, [R6]; this
372832:  CMP             R0, #0
372834:  BEQ.W           loc_3729FE
372838:  LDRB.W          R1, [R0,#0x3A]
37283C:  AND.W           R1, R1, #7
372840:  CMP             R1, #3
372842:  BNE.W           loc_3729FE
372846:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37284A:  CMP             R0, #0
37284C:  BNE.W           loc_3729FE
372850:  LDR             R1, [R6]; CPed *
372852:  MOV             R0, R4; this
372854:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
372858:  CMP             R0, #1
37285A:  BNE.W           loc_3729FE
37285E:  LDR             R0, [R5,#0x18]
372860:  CMP             R0, #0x33 ; '3'
372862:  BEQ.W           loc_3729FE
372866:  B               loc_372A24
372868:  MOVS            R0, #1
37286A:  B               loc_372A26
37286C:  LDR             R0, [R5,#0x10]
37286E:  CMP             R0, #0
372870:  BEQ             loc_3727BE
372872:  LDRB.W          R1, [R0,#0x3A]
372876:  AND.W           R1, R1, #7
37287A:  CMP             R1, #3
37287C:  ITT EQ
37287E:  LDREQ.W         R1, [R0,#0x59C]
372882:  CMPEQ           R1, #8
372884:  BNE             loc_3727BE
372886:  LDR             R1, [R5,#0x18]
372888:  CMP             R1, #0x10
37288A:  BLT             loc_3727BE
37288C:  LDR.W           R0, [R0,#0x440]
372890:  MOV.W           R1, #0x3E8; int
372894:  ADDS            R0, #4; this
372896:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37289A:  CMP             R0, #0
37289C:  BEQ.W           loc_372A24
3728A0:  LDR             R0, [R0,#0x10]
3728A2:  CMP             R0, R4
3728A4:  BNE.W           loc_372A24
3728A8:  B               loc_3727BE
3728AA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3728B6)
3728AC:  MOV.W           R2, #0x194
3728B0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3728B8)
3728B2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3728B4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3728B6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3728B8:  LDR             R1, [R1]; CWorld::Players ...
3728BA:  LDR             R0, [R0]; CWorld::PlayerInFocus
3728BC:  SMLABB.W        R0, R0, R2, R1
3728C0:  LDRB.W          R0, [R0,#0x14E]
3728C4:  CMP             R0, #0
3728C6:  BEQ.W           loc_3727CA
3728CA:  LDR             R1, [R5,#0x18]
3728CC:  MOVS            R0, #0
3728CE:  CMP             R1, #0x12
3728D0:  IT NE
3728D2:  CMPNE           R1, #0x25 ; '%'
3728D4:  BEQ.W           loc_372A26
3728D8:  B               loc_3727CA
3728DA:  MOV             R6, R5
3728DC:  LDR.W           R0, [R6,#0x10]!
3728E0:  LDR             R1, [R6,#8]
3728E2:  CMP             R1, #0x17
3728E4:  BNE             loc_372910
3728E6:  CMP             R0, #0
3728E8:  BEQ.W           loc_372A24
3728EC:  LDRB.W          R1, [R0,#0x3A]
3728F0:  AND.W           R1, R1, #7
3728F4:  CMP             R1, #3
3728F6:  BNE.W           loc_372A24
3728FA:  LDRB.W          R1, [R5,#0x21]
3728FE:  LSLS            R1, R1, #0x1C
372900:  BPL.W           loc_372A24
372904:  ADDW            R1, R4, #0x484
372908:  LDRB            R1, [R1,#1]
37290A:  LSLS            R1, R1, #0x1F
37290C:  BNE             loc_372914
37290E:  B               loc_372A24
372910:  CMP             R0, #0
372912:  BEQ             loc_3729FE
372914:  LDRB.W          R1, [R0,#0x3A]
372918:  AND.W           R1, R1, #7
37291C:  CMP             R1, #3
37291E:  BNE.W           loc_372830
372922:  LDR.W           R0, [R0,#0x440]
372926:  ADDS            R0, #4; this
372928:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37292C:  CMP             R0, #0
37292E:  BEQ.W           loc_372830
372932:  LDR             R0, [R6]
372934:  LDR.W           R0, [R0,#0x440]
372938:  ADDS            R0, #4; this
37293A:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37293E:  LDR             R1, [R0]
372940:  LDR             R1, [R1,#0x14]
372942:  BLX             R1
372944:  MOVW            R1, #0x403
372948:  CMP             R0, R1
37294A:  BNE.W           loc_372830
37294E:  LDR             R0, [R6]
372950:  LDR             R1, [R4,#0x14]
372952:  LDR             R2, [R0,#0x14]
372954:  ADD.W           R3, R1, #0x30 ; '0'
372958:  CMP             R1, #0
37295A:  IT EQ
37295C:  ADDEQ           R3, R4, #4
37295E:  ADD.W           R1, R2, #0x30 ; '0'
372962:  CMP             R2, #0
372964:  VLDR            S0, [R3]
372968:  VLDR            S2, [R3,#4]
37296C:  VLDR            S4, [R3,#8]
372970:  IT EQ
372972:  ADDEQ           R1, R0, #4
372974:  VLDR            S6, [R1]
372978:  ADD             R0, SP, #0x20+var_1C; this
37297A:  VSUB.F32        S0, S6, S0
37297E:  VSTR            S0, [SP,#0x20+var_1C]
372982:  VLDR            S0, [R1,#4]
372986:  VSUB.F32        S0, S0, S2
37298A:  VSTR            S0, [SP,#0x20+var_18]
37298E:  VLDR            S0, [R1,#8]
372992:  VSUB.F32        S0, S0, S4
372996:  VSTR            S0, [SP,#0x20+var_14]
37299A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
37299E:  LDR             R1, [R6]; CEntity *
3729A0:  MOVS            R2, #0; bool
3729A2:  LDR.W           R0, [R4,#0x440]; this
3729A6:  BLX             j__ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb; CPedIntelligence::CanSeeEntityWithLights(CEntity const*,bool)
3729AA:  VMOV            S0, R0
3729AE:  VCMPE.F32       S0, #0.0
3729B2:  VMRS            APSR_nzcv, FPSCR
3729B6:  BLE             loc_372A24
3729B8:  LDR             R0, [R4,#0x14]
3729BA:  VLDR            S0, [SP,#0x20+var_1C]
3729BE:  VLDR            S2, [SP,#0x20+var_18]
3729C2:  VLDR            S6, [R0,#0x10]
3729C6:  VLDR            S8, [R0,#0x14]
3729CA:  VMUL.F32        S0, S6, S0
3729CE:  VLDR            S10, [R0,#0x18]
3729D2:  VMUL.F32        S2, S8, S2
3729D6:  VLDR            S4, [SP,#0x20+var_14]
3729DA:  LDR             R0, =(_ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr - 0x3729E4)
3729DC:  VMUL.F32        S4, S10, S4
3729E0:  ADD             R0, PC; _ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr
3729E2:  LDR             R0, [R0]; CPedAcquaintanceScanner::ms_fThresholdDotProduct ...
3729E4:  VADD.F32        S0, S0, S2
3729E8:  VLDR            S2, [R0]
3729EC:  VADD.F32        S0, S0, S4
3729F0:  VCMPE.F32       S0, S2
3729F4:  VMRS            APSR_nzcv, FPSCR
3729F8:  BGE.W           loc_372830
3729FC:  B               loc_372A24
3729FE:  LDR             R1, [R5,#0x18]
372A00:  MOV             R0, R4
372A02:  MOVS            R2, #0
372A04:  BLX             j__ZN9CPhysical20CanPhysicalBeDamagedE11eWeaponTypePh; CPhysical::CanPhysicalBeDamaged(eWeaponType,uchar *)
372A08:  LDR             R1, [R5,#0x18]
372A0A:  MOV             R6, R0
372A0C:  CMP             R6, #0
372A0E:  IT NE
372A10:  MOVNE           R0, #1
372A12:  CMP             R1, #0x36 ; '6'
372A14:  BNE             loc_372A26
372A16:  LDRB.W          R1, [R4,#0x46]
372A1A:  LSLS            R1, R1, #0x1B
372A1C:  BMI             loc_372A24
372A1E:  LDR.W           R1, [R4,#0x100]
372A22:  CBZ             R1, loc_372A2E
372A24:  MOVS            R0, #0
372A26:  ADD             SP, SP, #0x10
372A28:  POP.W           {R11}
372A2C:  POP             {R4-R7,PC}
372A2E:  ADDW            R1, R4, #0x544
372A32:  VLDR            S0, [R1]
372A36:  VCMPE.F32       S0, #0.0
372A3A:  VMRS            APSR_nzcv, FPSCR
372A3E:  BLE             loc_372A26
372A40:  LDR.W           R0, [R4,#0x440]; this
372A44:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
372A48:  MOVS            R1, #0
372A4A:  CMP             R0, #0
372A4C:  IT EQ
372A4E:  MOVEQ           R1, #1
372A50:  CMP             R6, #0
372A52:  IT NE
372A54:  MOVNE           R6, #1
372A56:  AND.W           R0, R6, R1
372A5A:  B               loc_372A26
