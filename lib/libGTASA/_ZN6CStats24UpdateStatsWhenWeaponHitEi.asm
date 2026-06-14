; =========================================================
; Game Engine Function: _ZN6CStats24UpdateStatsWhenWeaponHitEi
; Address            : 0x41BC70 - 0x41BD4C
; =========================================================

41BC70:  PUSH            {R4-R7,LR}
41BC72:  ADD             R7, SP, #0xC
41BC74:  PUSH.W          {R8}
41BC78:  VPUSH           {D8}
41BC7C:  BLX             j__ZN11CWeaponInfo17GetSkillStatIndexE11eWeaponType; CWeaponInfo::GetSkillStatIndex(eWeaponType)
41BC80:  MOV             R4, R0
41BC82:  UXTH            R5, R4
41BC84:  CMP             R5, #0x51 ; 'Q'
41BC86:  BHI             loc_41BC98
41BC88:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BC8E)
41BC8A:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BC8C:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BC8E:  ADD.W           R0, R0, R5,LSL#2
41BC92:  VLDR            S16, [R0]
41BC96:  B               loc_41BCAA
41BC98:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41BC9E)
41BC9A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41BC9C:  LDR             R0, [R0]; CStats::StatTypesInt ...
41BC9E:  ADD.W           R0, R0, R5,LSL#2; this
41BCA2:  VLDR            S0, [R0,#-0x1E0]
41BCA6:  VCVT.F32.S32    S16, S0
41BCAA:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
41BCAE:  VLDR            S0, =1000.0
41BCB2:  VCMPE.F32       S16, S0
41BCB6:  VMRS            APSR_nzcv, FPSCR
41BCBA:  BGE             loc_41BD42
41BCBC:  CMP             R0, #0
41BCBE:  BNE             loc_41BD42
41BCC0:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BCCA)
41BCC2:  SUB.W           R8, R4, #0x45 ; 'E'
41BCC6:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BCC8:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BCCA:  ADD.W           R6, R0, R4,LSL#2
41BCCE:  MOV             R0, R5; this
41BCD0:  LDR.W           R1, [R6,#-0xE4]!; unsigned __int16
41BCD4:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
41BCD8:  LDR             R0, =(_ZN6CStats21m_LastWeaponTypeFiredE_ptr - 0x41BCDE)
41BCDA:  ADD             R0, PC; _ZN6CStats21m_LastWeaponTypeFiredE_ptr
41BCDC:  LDR             R0, [R0]; CStats::m_LastWeaponTypeFired ...
41BCDE:  LDR             R0, [R0]; CStats::m_LastWeaponTypeFired
41BCE0:  CMP             R0, R8
41BCE2:  BNE             loc_41BD24
41BCE4:  LDR             R0, =(_ZN6CStats15m_WeaponCounterE_ptr - 0x41BCEC)
41BCE6:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BCEE)
41BCE8:  ADD             R0, PC; _ZN6CStats15m_WeaponCounterE_ptr
41BCEA:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
41BCEC:  LDR             R0, [R0]; CStats::m_WeaponCounter ...
41BCEE:  LDR             R1, [R1]; CStats::StatReactionValue ...
41BCF0:  LDR             R0, [R0]; CStats::m_WeaponCounter
41BCF2:  ADD.W           R1, R1, R4,LSL#2
41BCF6:  VMOV            S0, R0
41BCFA:  VCVT.F32.U32    S0, S0
41BCFE:  VLDR            S2, [R1,#-0x5C]
41BD02:  VCMPE.F32       S2, S0
41BD06:  VMRS            APSR_nzcv, FPSCR
41BD0A:  BGE             loc_41BD38
41BD0C:  VLDR            S2, [R6]
41BD10:  MOVS            R0, #(stderr+1); this
41BD12:  MOV             R1, R4; unsigned __int8
41BD14:  VMUL.F32        S0, S2, S0
41BD18:  VMOV            R2, S0; unsigned int
41BD1C:  BLX             j__ZN6CStats30DisplayScriptStatUpdateMessageEhjf; CStats::DisplayScriptStatUpdateMessage(uchar,uint,float)
41BD20:  MOVS            R0, #0
41BD22:  B               loc_41BD3A
41BD24:  LDR             R0, =(_ZN6CStats21m_LastWeaponTypeFiredE_ptr - 0x41BD2C)
41BD26:  LDR             R1, =(_ZN6CStats15m_WeaponCounterE_ptr - 0x41BD2E)
41BD28:  ADD             R0, PC; _ZN6CStats21m_LastWeaponTypeFiredE_ptr
41BD2A:  ADD             R1, PC; _ZN6CStats15m_WeaponCounterE_ptr
41BD2C:  LDR             R0, [R0]; CStats::m_LastWeaponTypeFired ...
41BD2E:  LDR             R1, [R1]; CStats::m_WeaponCounter ...
41BD30:  STR.W           R8, [R0]; CStats::m_LastWeaponTypeFired
41BD34:  MOVS            R0, #0
41BD36:  B               loc_41BD40
41BD38:  ADDS            R0, #1
41BD3A:  LDR             R1, =(_ZN6CStats15m_WeaponCounterE_ptr - 0x41BD40)
41BD3C:  ADD             R1, PC; _ZN6CStats15m_WeaponCounterE_ptr
41BD3E:  LDR             R1, [R1]; CStats::m_WeaponCounter ...
41BD40:  STR             R0, [R1]; CStats::m_WeaponCounter
41BD42:  VPOP            {D8}
41BD46:  POP.W           {R8}
41BD4A:  POP             {R4-R7,PC}
