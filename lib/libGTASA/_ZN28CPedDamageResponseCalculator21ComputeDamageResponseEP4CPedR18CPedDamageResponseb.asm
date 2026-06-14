; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb
; Address            : 0x371AEC - 0x371DC2
; =========================================================

371AEC:  PUSH            {R4-R7,LR}
371AEE:  ADD             R7, SP, #0xC
371AF0:  PUSH.W          {R8-R10}
371AF4:  SUB             SP, SP, #0x40
371AF6:  MOV             R6, R2
371AF8:  MOV             R8, R0
371AFA:  LDRB            R0, [R6,#0xA]
371AFC:  MOV             R5, R3
371AFE:  MOV             R4, R1
371B00:  CMP             R0, #0
371B02:  BNE.W           loc_371DBA
371B06:  MOVS            R1, #0
371B08:  MOVS            R0, #0
371B0A:  STRD.W          R0, R0, [R6]
371B0E:  MOVT            R1, #0x101
371B12:  MOV             R0, R4; this
371B14:  STR             R1, [R6,#8]
371B16:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371B1A:  LDR             R1, =(_ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr - 0x371B20)
371B1C:  ADD             R1, PC; _ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr
371B1E:  LDR             R1, [R1]; CPlayerPed::bDebugPlayerInvincible ...
371B20:  LDRB            R1, [R1]; CPlayerPed::bDebugPlayerInvincible
371B22:  CMP             R1, #0
371B24:  IT NE
371B26:  CMPNE           R0, #0
371B28:  BNE.W           loc_371DBA
371B2C:  MOV             R0, R8; int
371B2E:  MOV             R1, R4; this
371B30:  BLX             j__ZN28CPedDamageResponseCalculator24AccountForPedDamageStatsEP4CPedR18CPedDamageResponse; CPedDamageResponseCalculator::AccountForPedDamageStats(CPed *,CPedDamageResponse &)
371B34:  ADDW            R9, R4, #0x54C
371B38:  VLDR            S0, [R9]
371B3C:  VCMP.F32        S0, #0.0
371B40:  VMRS            APSR_nzcv, FPSCR
371B44:  BEQ             loc_371BBE
371B46:  LDR.W           R0, [R8,#0xC]
371B4A:  SUBS            R0, #0x35 ; '5'
371B4C:  CMP             R0, #2
371B4E:  BCC             loc_371BBE
371B50:  MOV.W           R0, #0xFFFFFFFF; int
371B54:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371B58:  CMP             R0, R4
371B5A:  BNE             loc_371B7E
371B5C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x371B68)
371B5E:  MOV.W           R3, #0x194
371B62:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x371B6C)
371B64:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
371B66:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x371B70)
371B68:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
371B6A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
371B6C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
371B6E:  LDR             R1, [R1]; CWorld::Players ...
371B70:  LDR             R0, [R0]; CWorld::PlayerInFocus
371B72:  SMLABB.W        R0, R0, R3, R1
371B76:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
371B78:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
371B7A:  STR.W           R1, [R0,#0xE8]
371B7E:  VLDR            S2, [R9]
371B82:  ADD.W           R0, R8, #4
371B86:  VLDR            S0, [R8,#4]
371B8A:  VCMPE.F32       S0, S2
371B8E:  VMRS            APSR_nzcv, FPSCR
371B92:  BLE             loc_371BA6
371B94:  VSUB.F32        S0, S0, S2
371B98:  VSTR            S0, [R0]
371B9C:  LDR.W           R0, [R9]
371BA0:  STR             R0, [R6,#4]
371BA2:  MOV             R0, R9
371BA4:  B               loc_371BBA
371BA6:  VSTR            S0, [R6,#4]
371BAA:  VLDR            S0, [R0]
371BAE:  VLDR            S2, [R9]
371BB2:  VSUB.F32        S0, S2, S0
371BB6:  VSTR            S0, [R9]
371BBA:  MOVS            R1, #0
371BBC:  STR             R1, [R0]
371BBE:  MOV             R0, R8; int
371BC0:  MOV             R1, R4; this
371BC2:  MOV             R2, R6
371BC4:  MOV             R3, R5
371BC6:  BLX             j__ZN28CPedDamageResponseCalculator18ComputeWillKillPedEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeWillKillPed(CPed *,CPedDamageResponse &,bool)
371BCA:  LDR.W           R5, [R8]
371BCE:  CBZ             R5, loc_371C30
371BD0:  MOV.W           R0, #0xFFFFFFFF; int
371BD4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371BD8:  CMP             R5, R0
371BDA:  BEQ             loc_371BEE
371BDC:  MOV.W           R0, #0xFFFFFFFF; int
371BE0:  MOVS            R1, #0; bool
371BE2:  LDR.W           R5, [R8]
371BE6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
371BEA:  CMP             R5, R0
371BEC:  BNE             loc_371C30
371BEE:  LDR.W           R0, [R8]
371BF2:  CMP             R0, R4
371BF4:  BEQ             loc_371C30
371BF6:  VLDR            S0, [R6]
371BFA:  VMOV.F32        S4, #3.0
371BFE:  VLDR            S2, [R6,#4]
371C02:  VADD.F32        S0, S0, S2
371C06:  VCMPE.F32       S0, S4
371C0A:  VMRS            APSR_nzcv, FPSCR
371C0E:  BLE             loc_371C30
371C10:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x371C1C)
371C12:  MOV.W           R2, #0x194
371C16:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x371C1E)
371C18:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
371C1A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
371C1C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
371C1E:  LDR             R1, [R1]; CWorld::Players ...
371C20:  LDR             R0, [R0]; CWorld::PlayerInFocus
371C22:  SMLABB.W        R0, R0, R2, R1
371C26:  LDR.W           R1, [R0,#0x140]
371C2A:  ADDS            R1, #1
371C2C:  STR.W           R1, [R0,#0x140]
371C30:  MOV.W           R0, #0xFFFFFFFF; int
371C34:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371C38:  CMP             R0, R4
371C3A:  BNE             loc_371C4A
371C3C:  MOV.W           R0, #0xFFFFFFFF; int
371C40:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371C44:  MOVS            R1, #0; bool
371C46:  BLX             j__ZN10CPlayerPed14AnnoyPlayerPedEb; CPlayerPed::AnnoyPlayerPed(bool)
371C4A:  MOV             R0, R4; this
371C4C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371C50:  CMP             R0, #1
371C52:  BNE             loc_371CF2
371C54:  LDR.W           R0, [R8]; this
371C58:  CMP             R0, #0
371C5A:  BEQ             loc_371CF2
371C5C:  LDRB.W          R1, [R0,#0x3A]
371C60:  AND.W           R1, R1, #7
371C64:  CMP             R1, #3
371C66:  BNE             loc_371CF2
371C68:  LDRD.W          R1, R2, [R8,#8]
371C6C:  MOVW            R3, #0x100
371C70:  MOVW            R5, #0xFFFF
371C74:  LDR.W           LR, [R4,#0x484]
371C78:  STRH.W          R5, [SP,#0x58+var_4C]
371C7C:  MOVS            R5, #0
371C7E:  MOVT            R3, #0xC8
371C82:  LDR.W           R12, =(_ZTV12CEventDamage_ptr - 0x371C92)
371C86:  STRB.W          R5, [SP,#0x58+var_38]
371C8A:  MOV             R9, SP
371C8C:  STR             R5, [SP,#0x58+var_54]
371C8E:  ADD             R12, PC; _ZTV12CEventDamage_ptr
371C90:  STR             R3, [SP,#0x58+var_50]
371C92:  ADD.W           R10, R9, #0x10
371C96:  STRD.W          R0, R5, [SP,#0x58+var_48]
371C9A:  STRD.W          R2, R1, [SP,#0x58+var_40]
371C9E:  MOVS            R1, #0xBF
371CA0:  STR             R5, [SP,#0x58+var_34]
371CA2:  STR             R1, [SP,#0x58+var_30]
371CA4:  MOV.W           R1, #0x41000000
371CA8:  STR             R1, [SP,#0x58+var_2C]
371CAA:  MOV.W           R1, #0x3F800000
371CAE:  STRD.W          R5, R5, [SP,#0x58+var_20]
371CB2:  STRD.W          R1, R5, [SP,#0x58+var_28]
371CB6:  MOVS            R1, #8
371CB8:  LDR.W           R2, [R12]; `vtable for'CEventDamage ...
371CBC:  AND.W           R1, R1, LR,LSR#5
371CC0:  STRB.W          R1, [SP,#0x58+var_37]
371CC4:  MOV             R1, R10; CEntity **
371CC6:  ADD.W           R5, R2, #8
371CCA:  STR             R5, [SP,#0x58+var_58]
371CCC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
371CD0:  LDRB.W          R0, [SP,#0x58+var_37]
371CD4:  MOV             R1, R9; CEventDamage *
371CD6:  ORR.W           R0, R0, #8
371CDA:  STRB.W          R0, [SP,#0x58+var_37]
371CDE:  MOV             R0, R4; this
371CE0:  BLX             j__ZN10CPlayerPed36MakeGroupRespondToPlayerTakingDamageERK12CEventDamage; CPlayerPed::MakeGroupRespondToPlayerTakingDamage(CEventDamage const&)
371CE4:  LDR             R0, [SP,#0x58+var_48]; this
371CE6:  STR             R5, [SP,#0x58+var_58]
371CE8:  CMP             R0, #0
371CEA:  ITT NE
371CEC:  MOVNE           R1, R10; CEntity **
371CEE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
371CF2:  VLDR            S0, [R6]
371CF6:  VLDR            S2, [R6,#4]
371CFA:  VADD.F32        S0, S0, S2
371CFE:  VCMPE.F32       S0, #0.0
371D02:  VMRS            APSR_nzcv, FPSCR
371D06:  BLE             loc_371DBA
371D08:  MOV             R0, R4; this
371D0A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371D0E:  CBNZ            R0, loc_371D2A
371D10:  LDR.W           R0, [R8,#0xC]
371D14:  CMP             R0, #9
371D16:  BHI             loc_371D2A
371D18:  MOVS            R1, #1
371D1A:  LSL.W           R0, R1, R0
371D1E:  TST.W           R0, #0x310
371D22:  ITT NE
371D24:  MOVNE           R0, #0xC8
371D26:  STRBNE.W        R0, [R4,#0x737]
371D2A:  MOV.W           R0, #0xFFFFFFFF; int
371D2E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371D32:  CMP             R0, R4
371D34:  BNE             loc_371D58
371D36:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x371D42)
371D38:  MOV.W           R3, #0x194
371D3C:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x371D46)
371D3E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
371D40:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x371D4A)
371D42:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
371D44:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
371D46:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
371D48:  LDR             R1, [R1]; CWorld::Players ...
371D4A:  LDR             R0, [R0]; CWorld::PlayerInFocus
371D4C:  SMLABB.W        R0, R0, R3, R1
371D50:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
371D52:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
371D54:  STR.W           R1, [R0,#0xE4]
371D58:  LDR.W           R0, [R8,#0xC]
371D5C:  STRB.W          R0, [R4,#0x768]
371D60:  LDR.W           R0, [R8]; this
371D64:  CBZ             R0, loc_371DBA
371D66:  ADDW            R1, R4, #0x76C; CEntity **
371D6A:  STR.W           R0, [R4,#0x76C]
371D6E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
371D72:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x371D78)
371D74:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
371D76:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
371D78:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
371D7A:  STR.W           R0, [R4,#0x770]
371D7E:  LDR.W           R0, [R8]; this
371D82:  LDRB.W          R1, [R0,#0x3A]
371D86:  AND.W           R1, R1, #7
371D8A:  CMP             R1, #3
371D8C:  BNE             loc_371DBA
371D8E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371D92:  CMP             R0, #1
371D94:  BNE             loc_371DBA
371D96:  MOV.W           R0, #0xFFFFFFFF; int
371D9A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371D9E:  LDR.W           R0, [R0,#0x444]
371DA2:  MOV.W           R2, #0x2D4
371DA6:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x371DAE)
371DA8:  LDR             R0, [R0,#0x38]
371DAA:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
371DAC:  LDR             R1, [R1]; CPedGroups::ms_groups ...
371DAE:  MLA.W           R0, R0, R2, R1
371DB2:  MOV             R1, R4; CPed *
371DB4:  ADDS            R0, #8; this
371DB6:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
371DBA:  ADD             SP, SP, #0x40 ; '@'
371DBC:  POP.W           {R8-R10}
371DC0:  POP             {R4-R7,PC}
