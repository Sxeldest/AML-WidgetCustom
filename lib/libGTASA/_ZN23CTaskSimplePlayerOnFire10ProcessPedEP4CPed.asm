; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFire10ProcessPedEP4CPed
; Address            : 0x4EF8D8 - 0x4EFA6A
; =========================================================

4EF8D8:  PUSH            {R4-R7,LR}
4EF8DA:  ADD             R7, SP, #0xC
4EF8DC:  PUSH.W          {R8}
4EF8E0:  SUB             SP, SP, #0x60
4EF8E2:  MOV             R5, R0
4EF8E4:  MOV             R4, R1
4EF8E6:  LDRB            R0, [R5,#0x10]
4EF8E8:  CBNZ            R0, loc_4EF8FE
4EF8EA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EF8F4)
4EF8EC:  MOVW            R1, #0x1388
4EF8F0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EF8F2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EF8F4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EF8F6:  STRD.W          R0, R1, [R5,#8]
4EF8FA:  MOVS            R0, #1
4EF8FC:  STRB            R0, [R5,#0x10]
4EF8FE:  LDR.W           R0, [R4,#0x738]
4EF902:  CBZ             R0, loc_4EF93E
4EF904:  LDRB            R0, [R5,#0x11]
4EF906:  CBZ             R0, loc_4EF91A
4EF908:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EF910)
4EF90A:  MOVS            R1, #0
4EF90C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EF90E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EF910:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EF912:  STRB            R1, [R5,#0x11]
4EF914:  STR             R0, [R5,#8]
4EF916:  MOV             R1, R0
4EF918:  B               loc_4EF924
4EF91A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EF922)
4EF91C:  LDR             R1, [R5,#8]
4EF91E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EF920:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EF922:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EF924:  LDR             R2, [R5,#0xC]
4EF926:  ADD             R1, R2
4EF928:  CMP             R1, R0
4EF92A:  BLS             loc_4EF936
4EF92C:  LDR.W           R0, [R4,#0x440]; this
4EF930:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4EF934:  CBZ             R0, loc_4EF94A
4EF936:  LDR.W           R0, [R4,#0x738]; this
4EF93A:  BLX             j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
4EF93E:  MOVS            R6, #1
4EF940:  MOV             R0, R6
4EF942:  ADD             SP, SP, #0x60 ; '`'
4EF944:  POP.W           {R8}
4EF948:  POP             {R4-R7,PC}
4EF94A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4EF952)
4EF94C:  MOVS            R6, #0
4EF94E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4EF950:  LDR             R0, [R0]; CWorld::Players ...
4EF952:  LDR             R1, [R0]; CWorld::Players
4EF954:  CMP             R1, R4
4EF956:  BNE             loc_4EF960
4EF958:  LDRB.W          R0, [R0,#(byte_96B7EA - 0x96B69C)]
4EF95C:  CMP             R0, #0
4EF95E:  BNE             loc_4EF940
4EF960:  STRD.W          R6, R6, [SP,#0x70+var_20]
4EF964:  STR             R6, [SP,#0x70+var_18]
4EF966:  LDRB.W          R0, [R4,#0x46]
4EF96A:  LSLS            R0, R0, #0x1C; this
4EF96C:  BMI             loc_4EFA44
4EF96E:  LDR.W           R1, [R4,#0x738]
4EF972:  ADDW            R3, R4, #0x73C
4EF976:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4EF98E)
4EF978:  ADD             R6, SP, #0x70+var_60
4EF97A:  CMP             R1, #0
4EF97C:  VLDR            S0, =500.0
4EF980:  ITE NE
4EF982:  LDRNE           R1, [R1,#0x14]
4EF984:  MOVEQ           R1, #0
4EF986:  VLDR            S2, [R3]
4EF98A:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4EF98C:  MOVS            R0, #0
4EF98E:  VMUL.F32        S0, S2, S0
4EF992:  MOVS            R3, #3
4EF994:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4EF996:  VLDR            S2, [R2]
4EF99A:  STRD.W          R3, R0, [SP,#0x70+var_70]
4EF99E:  MOV             R0, R6
4EF9A0:  MOVS            R3, #0x25 ; '%'
4EF9A2:  VMUL.F32        S0, S0, S2
4EF9A6:  VLDR            S2, =1000.0
4EF9AA:  VDIV.F32        S0, S0, S2
4EF9AE:  VMOV            R2, S0
4EF9B2:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4EF9B6:  ADD             R2, SP, #0x70+var_20
4EF9B8:  MOV             R1, R4; this
4EF9BA:  MOVS            R3, #0
4EF9BC:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
4EF9C0:  MOV             R0, R6; this
4EF9C2:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4EF9C6:  LDRB.W          R0, [SP,#0x70+var_18]
4EF9CA:  CBZ             R0, loc_4EFA44
4EF9CC:  LDRB            R0, [R5,#0x14]; this
4EF9CE:  CMP             R0, #0
4EF9D0:  BNE             loc_4EF93E
4EF9D2:  BLX             j__ZN13CLocalisation10PedsOnFireEv; CLocalisation::PedsOnFire(void)
4EF9D6:  CBZ             R0, loc_4EF9F4
4EF9D8:  MOVW            R3, #0xCCCD
4EF9DC:  MOVS            R0, #0
4EF9DE:  STRD.W          R0, R0, [SP,#0x70+var_70]; unsigned __int8
4EF9E2:  MOVT            R3, #0x3DCC; float
4EF9E6:  STR             R0, [SP,#0x70+var_68]; unsigned __int8
4EF9E8:  MOV             R0, R4; this
4EF9EA:  MOV.W           R1, #0x15A; unsigned __int16
4EF9EE:  MOVS            R2, #0; unsigned int
4EF9F0:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4EF9F4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EFA04)
4EF9F6:  ADD.W           R8, SP, #0x70+var_60
4EF9FA:  LDR.W           R1, [R4,#0x484]
4EF9FE:  MOVS            R6, #0
4EFA00:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EFA02:  MOVS            R3, #0x25 ; '%'; int
4EFA04:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EFA06:  LDR             R2, [R0]; int
4EFA08:  UBFX.W          R0, R1, #8, #1
4EFA0C:  MOVS            R1, #3
4EFA0E:  STRD.W          R1, R6, [SP,#0x70+var_70]; int
4EFA12:  MOVS            R1, #0; this
4EFA14:  STRD.W          R6, R0, [SP,#0x70+var_68]; int
4EFA18:  MOV             R0, R8; int
4EFA1A:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
4EFA1E:  VLDR            D16, [SP,#0x70+var_20]
4EFA22:  MOV             R1, R8; CEvent *
4EFA24:  LDR             R0, [SP,#0x70+var_18]
4EFA26:  MOVS            R2, #0; bool
4EFA28:  STR             R0, [SP,#0x70+var_24]
4EFA2A:  VSTR            D16, [SP,#0x70+var_2C]
4EFA2E:  LDR.W           R0, [R4,#0x440]
4EFA32:  ADDS            R0, #0x68 ; 'h'; this
4EFA34:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4EFA38:  MOVS            R0, #1
4EFA3A:  STRB            R0, [R5,#0x14]
4EFA3C:  MOV             R0, R8; this
4EFA3E:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
4EFA42:  B               loc_4EF940
4EFA44:  BLX             j__ZN13CLocalisation10PedsOnFireEv; CLocalisation::PedsOnFire(void)
4EFA48:  CBZ             R0, loc_4EFA66
4EFA4A:  MOVW            R3, #0xCCCD
4EFA4E:  MOVS            R0, #0
4EFA50:  STRD.W          R0, R0, [SP,#0x70+var_70]; unsigned __int8
4EFA54:  MOVT            R3, #0x3DCC; float
4EFA58:  STR             R0, [SP,#0x70+var_68]; unsigned __int8
4EFA5A:  MOV             R0, R4; this
4EFA5C:  MOV.W           R1, #0x15A; unsigned __int16
4EFA60:  MOVS            R2, #0; unsigned int
4EFA62:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4EFA66:  MOVS            R6, #0
4EFA68:  B               loc_4EF940
