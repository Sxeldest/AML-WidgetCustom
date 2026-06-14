; =========================================================
; Game Engine Function: _ZN7CWeapon11FireFromCarEP8CVehiclebb
; Address            : 0x5DEF50 - 0x5DF036
; =========================================================

5DEF50:  PUSH            {R4-R7,LR}
5DEF52:  ADD             R7, SP, #0xC
5DEF54:  PUSH.W          {R11}
5DEF58:  SUB             SP, SP, #8
5DEF5A:  MOV             R4, R0
5DEF5C:  MOV             R5, R1
5DEF5E:  LDR             R0, [R4,#4]
5DEF60:  CMP             R0, #1
5DEF62:  BHI             loc_5DF004
5DEF64:  LDR             R0, [R4,#8]
5DEF66:  CMP             R0, #1
5DEF68:  BLT             loc_5DF004
5DEF6A:  MOV             R0, R4; this
5DEF6C:  MOV             R1, R5; CVehicle *
5DEF6E:  BLX.W           j__ZN7CWeapon21FireInstantHitFromCarEP8CVehiclebb; CWeapon::FireInstantHitFromCar(CVehicle *,bool,bool)
5DEF72:  LDR.W           R0, [R5,#0x464]
5DEF76:  CMP             R0, #0
5DEF78:  ITTT NE
5DEF7A:  ADDNE.W         R0, R0, #0x398; this
5DEF7E:  MOVNE           R1, #0x91; int
5DEF80:  BLXNE.W         j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5DEF84:  NOP
5DEF86:  MOVS            R0, #0; int
5DEF88:  MOVS            R1, #0; bool
5DEF8A:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5DEF8E:  CMP             R0, R5
5DEF90:  BNE             loc_5DEFA4
5DEF92:  BLX.W           j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
5DEF96:  MOVS            R1, #0x14
5DEF98:  MOVS            R2, #3; int
5DEF9A:  STR             R1, [SP,#0x18+var_18]; int
5DEF9C:  MOVS            R1, #2; int
5DEF9E:  MOVS            R3, #0x73 ; 's'; int
5DEFA0:  BLX.W           j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
5DEFA4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x5DEFAA)
5DEFA6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
5DEFA8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
5DEFAA:  LDRB.W          R0, [R0,#(byte_796844 - 0x7967F4)]
5DEFAE:  CBNZ            R0, loc_5DEFEA
5DEFB0:  LDR             R0, [R4,#8]
5DEFB2:  MOVW            R2, #0x61A6
5DEFB6:  CMP             R0, #1
5DEFB8:  ITT GE
5DEFBA:  SUBGE           R0, #1
5DEFBC:  STRGE           R0, [R4,#8]
5DEFBE:  LDR             R0, [R4,#0xC]; this
5DEFC0:  SUBS            R1, R0, #1
5DEFC2:  CMP             R1, R2
5DEFC4:  BHI             loc_5DEFEA
5DEFC6:  LDRB.W          R1, [R5,#0x3A]
5DEFCA:  CMP             R1, #7
5DEFCC:  BHI             loc_5DEFE6
5DEFCE:  BLX.W           j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
5DEFD2:  VLDR            S0, =100.0
5DEFD6:  VMOV            S2, R0
5DEFDA:  VCMPE.F32       S2, S0
5DEFDE:  VMRS            APSR_nzcv, FPSCR
5DEFE2:  BGE             loc_5DEFEA
5DEFE4:  LDR             R0, [R4,#0xC]
5DEFE6:  SUBS            R0, #1
5DEFE8:  STR             R0, [R4,#0xC]
5DEFEA:  LDR             R0, [R4,#8]
5DEFEC:  MOVS            R1, #1
5DEFEE:  STR             R1, [R4,#4]
5DEFF0:  CBZ             R0, loc_5DF010
5DEFF2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DEFF8)
5DEFF4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DEFF6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DEFF8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5DEFFA:  ADD.W           R0, R0, #0x3E8
5DEFFE:  STR             R0, [R4,#0x10]
5DF000:  MOVS            R5, #1
5DF002:  B               loc_5DF006
5DF004:  MOVS            R5, #0
5DF006:  MOV             R0, R5
5DF008:  ADD             SP, SP, #8
5DF00A:  POP.W           {R11}
5DF00E:  POP             {R4-R7,PC}
5DF010:  LDR             R0, [R4,#0xC]
5DF012:  CMP             R0, #0
5DF014:  BEQ             loc_5DF000
5DF016:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DF020)
5DF018:  MOVS            R2, #2
5DF01A:  MOVS            R5, #1
5DF01C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DF01E:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
5DF020:  LDR             R0, [R4]
5DF022:  STR             R2, [R4,#4]
5DF024:  LDR             R6, [R1]; CTimer::m_snTimeInMilliseconds
5DF026:  MOVS            R1, #1
5DF028:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DF02C:  BLX.W           j__ZN11CWeaponInfo19GetWeaponReloadTimeEv; CWeaponInfo::GetWeaponReloadTime(void)
5DF030:  ADD             R0, R6
5DF032:  STR             R0, [R4,#0x10]
5DF034:  B               loc_5DF006
