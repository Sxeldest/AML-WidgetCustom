; =========================================================
; Game Engine Function: _ZN6CCheat12SuicideCheatEv
; Address            : 0x2FDAB8 - 0x2FDB4C
; =========================================================

2FDAB8:  PUSH            {R4,R5,R7,LR}
2FDABA:  ADD             R7, SP, #8
2FDABC:  SUB             SP, SP, #0x68
2FDABE:  MOVS            R2, #0
2FDAC0:  ADD             R0, SP, #0x70+var_1C
2FDAC2:  MOVS            R4, #0
2FDAC4:  MOVS            R5, #3
2FDAC6:  MOVT            R2, #0x447A
2FDACA:  MOVS            R1, #0
2FDACC:  MOVS            R3, #0
2FDACE:  STRD.W          R5, R4, [SP,#0x70+var_70]
2FDAD2:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
2FDAD6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FDAE0)
2FDAD8:  MOVS            R1, #0; this
2FDADA:  MOVS            R3, #0; int
2FDADC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FDADE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FDAE0:  LDR             R2, [R0]; int
2FDAE2:  STRD.W          R5, R4, [SP,#0x70+var_70]; int
2FDAE6:  STRD.W          R4, R4, [SP,#0x70+var_68]; int
2FDAEA:  ADD             R4, SP, #0x70+var_5C
2FDAEC:  MOV             R0, R4; int
2FDAEE:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
2FDAF2:  MOV.W           R0, #0xFFFFFFFF; int
2FDAF6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDAFA:  MOV             R1, R0; CPed *
2FDAFC:  MOV             R0, R4; this
2FDAFE:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
2FDB02:  CMP             R0, #1
2FDB04:  BNE             loc_2FDB1E
2FDB06:  MOV.W           R0, #0xFFFFFFFF; int
2FDB0A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDB0E:  MOV             R1, R0; this
2FDB10:  ADD.W           R2, R4, #0x34 ; '4'
2FDB14:  ADD             R0, SP, #0x70+var_1C; int
2FDB16:  MOVS            R3, #1
2FDB18:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
2FDB1C:  B               loc_2FDB24
2FDB1E:  MOVS            R0, #1
2FDB20:  STRB.W          R0, [SP,#0x70+var_1E]
2FDB24:  MOV.W           R0, #0xFFFFFFFF; int
2FDB28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDB2C:  LDR.W           R0, [R0,#0x440]
2FDB30:  ADD             R4, SP, #0x70+var_5C
2FDB32:  MOVS            R2, #0; bool
2FDB34:  ADDS            R0, #0x68 ; 'h'; this
2FDB36:  MOV             R1, R4; CEvent *
2FDB38:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
2FDB3C:  MOV             R0, R4; this
2FDB3E:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
2FDB42:  ADD             R0, SP, #0x70+var_1C; this
2FDB44:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
2FDB48:  ADD             SP, SP, #0x68 ; 'h'
2FDB4A:  POP             {R4,R5,R7,PC}
