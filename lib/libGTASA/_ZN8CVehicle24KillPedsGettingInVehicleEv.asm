; =========================================================
; Game Engine Function: _ZN8CVehicle24KillPedsGettingInVehicleEv
; Address            : 0x584B14 - 0x584C74
; =========================================================

584B14:  PUSH            {R4-R7,LR}
584B16:  ADD             R7, SP, #0xC
584B18:  PUSH.W          {R8-R11}
584B1C:  SUB             SP, SP, #0x74
584B1E:  STR             R0, [SP,#0x90+var_74]
584B20:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x584B26)
584B22:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
584B24:  LDR             R0, [R0]; CPools::ms_pPedPool ...
584B26:  LDR.W           R8, [R0]; CPools::ms_pPedPool
584B2A:  LDR.W           R0, [R8,#8]
584B2E:  CMP             R0, #0
584B30:  BEQ.W           loc_584C6C
584B34:  MOVW            R1, #0x7CC
584B38:  SUB.W           R10, R0, #1
584B3C:  MULS            R1, R0
584B3E:  ADD             R0, SP, #0x90+var_70
584B40:  ADDS            R0, #0x34 ; '4'
584B42:  STR             R0, [SP,#0x90+var_80]
584B44:  MOVW            R6, #0xF850
584B48:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x584B52)
584B4A:  MOVT            R6, #0xFFFF
584B4E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
584B50:  SUB.W           R9, R1, #0x38C
584B54:  ADD             R1, SP, #0x90+var_30
584B56:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
584B58:  STR             R0, [SP,#0x90+var_7C]
584B5A:  B               loc_584B60
584B5C:  MOVS            R0, #0
584B5E:  B               loc_584BB8
584B60:  LDR.W           R0, [R8,#4]
584B64:  LDRSB.W         R0, [R0,R10]
584B68:  CMP             R0, #0
584B6A:  BLT             loc_584C5C
584B6C:  LDR.W           R11, [R8]
584B70:  ADD.W           R5, R11, R9
584B74:  CMP.W           R5, #0x440
584B78:  BEQ             loc_584C5C
584B7A:  LDRB.W          R0, [R5,#0x45]
584B7E:  LSLS            R0, R0, #0x1F
584B80:  ITTTT EQ
584B82:  ADDEQ.W         R0, R11, R6
584B86:  ADDEQ           R0, R9
584B88:  LDRBEQ.W        R0, [R0,#0x38C]
584B8C:  MOVSEQ.W        R0, R0,LSL#31
584B90:  BNE             loc_584C5C
584B92:  LDR.W           R0, [R11,R9]
584B96:  MOV             R4, R1
584B98:  MOVW            R1, #0x2BD; int
584B9C:  ADDS            R0, #4; this
584B9E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
584BA2:  CBNZ            R0, loc_584BB6
584BA4:  LDR.W           R0, [R11,R9]
584BA8:  MOV.W           R1, #0x2BC; int
584BAC:  ADDS            R0, #4; this
584BAE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
584BB2:  CMP             R0, #0
584BB4:  BEQ             loc_584B5C
584BB6:  LDR             R0, [R0,#0xC]
584BB8:  LDR             R1, [SP,#0x90+var_74]
584BBA:  CMP             R0, R1
584BBC:  MOV             R1, R4
584BBE:  BNE             loc_584C5C
584BC0:  SUB.W           R0, R5, #0x7B0
584BC4:  ADD.W           R4, R5, #0x44 ; 'D'
584BC8:  ADD.W           R0, R0, #0x370
584BCC:  SUB.W           R5, R5, #0x440
584BD0:  MOVS            R2, #0
584BD2:  STR             R0, [SP,#0x90+var_78]
584BD4:  MOVS            R0, #3
584BD6:  MOVS            R6, #0
584BD8:  STR             R0, [SP,#0x90+var_90]
584BDA:  MOV             R0, R1
584BDC:  MOV             R1, R5
584BDE:  MOVT            R2, #0x447A
584BE2:  MOVS            R3, #0x33 ; '3'
584BE4:  STR             R6, [SP,#0x90+var_8C]; int
584BE6:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
584BEA:  LDR             R0, [R4]
584BEC:  MOVS            R3, #0x33 ; '3'; int
584BEE:  LDRD.W          R1, R4, [SP,#0x90+var_7C]
584BF2:  LDR             R2, [R1]; int
584BF4:  UBFX.W          R0, R0, #8, #1
584BF8:  MOVS            R1, #3
584BFA:  STRD.W          R1, R6, [SP,#0x90+var_90]; int
584BFE:  MOV             R1, R5; this
584C00:  STRD.W          R6, R0, [SP,#0x90+var_88]; int
584C04:  ADD             R0, SP, #0x90+var_70; int
584C06:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
584C0A:  MOV             R1, R4; CPed *
584C0C:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
584C10:  CMP             R0, #1
584C12:  BNE             loc_584C2E
584C14:  ADD             R5, SP, #0x90+var_30
584C16:  LDR             R2, [SP,#0x90+var_80]
584C18:  MOV             R1, R4; this
584C1A:  MOVS            R3, #1
584C1C:  MOV             R0, R5; int
584C1E:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
584C22:  MOVW            R6, #0xF850
584C26:  MOV             R4, R5
584C28:  MOVT            R6, #0xFFFF
584C2C:  B               loc_584C3E
584C2E:  MOVW            R6, #0xF850
584C32:  ADD             R4, SP, #0x90+var_30
584C34:  MOVS            R0, #1
584C36:  MOVT            R6, #0xFFFF
584C3A:  STRB.W          R0, [SP,#0x90+var_32]
584C3E:  LDR.W           R0, [R11,R9]
584C42:  ADD             R5, SP, #0x90+var_70
584C44:  MOVS            R2, #0; bool
584C46:  ADDS            R0, #0x68 ; 'h'; this
584C48:  MOV             R1, R5; CEvent *
584C4A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
584C4E:  MOV             R0, R5; this
584C50:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
584C54:  MOV             R0, R4; this
584C56:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
584C5A:  MOV             R1, R4
584C5C:  SUB.W           R10, R10, #1
584C60:  SUBW            R9, R9, #0x7CC
584C64:  ADDS.W          R0, R10, #1
584C68:  BNE.W           loc_584B60
584C6C:  ADD             SP, SP, #0x74 ; 't'
584C6E:  POP.W           {R8-R11}
584C72:  POP             {R4-R7,PC}
