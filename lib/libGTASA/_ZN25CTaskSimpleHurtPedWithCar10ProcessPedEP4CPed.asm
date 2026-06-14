; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCar10ProcessPedEP4CPed
; Address            : 0x50C0C8 - 0x50C24A
; =========================================================

50C0C8:  PUSH            {R4-R7,LR}
50C0CA:  ADD             R7, SP, #0xC
50C0CC:  PUSH.W          {R8,R9,R11}
50C0D0:  SUB             SP, SP, #0x70
50C0D2:  MOV             R4, R0
50C0D4:  MOV             R5, R1
50C0D6:  LDR             R1, [R4,#8]; CPed *
50C0D8:  MOV             R0, R5; this
50C0DA:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK9CPhysical; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CPhysical const&)
50C0DE:  LDR             R1, [R4,#8]
50C0E0:  MOVS            R2, #0
50C0E2:  MOV             R6, R0
50C0E4:  ADD             R0, SP, #0x88+var_2C
50C0E6:  MOV.W           R8, #0
50C0EA:  MOV.W           R9, #3
50C0EE:  MOVT            R2, #0x41F0
50C0F2:  MOVS            R3, #0x31 ; '1'
50C0F4:  STRD.W          R9, R8, [SP,#0x88+var_88]
50C0F8:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
50C0FC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50C106)
50C0FE:  UXTB            R3, R6
50C100:  LDR             R1, [R4,#8]; this
50C102:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50C104:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50C106:  LDR             R2, [R0]; int
50C108:  LDR.W           R0, [R5,#0x484]
50C10C:  UBFX.W          R0, R0, #8, #1
50C110:  STRD.W          R9, R3, [SP,#0x88+var_88]; int
50C114:  MOVS            R3, #0x31 ; '1'; int
50C116:  STRD.W          R8, R0, [SP,#0x88+var_80]; int
50C11A:  ADD.W           R8, SP, #0x88+var_6C
50C11E:  MOV             R0, R8; int
50C120:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
50C124:  MOV             R1, R5; CPed *
50C126:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
50C12A:  ADDW            R6, R5, #0x484
50C12E:  CMP             R0, #1
50C130:  BNE             loc_50C140
50C132:  ADD.W           R2, R8, #0x34 ; '4'
50C136:  ADD             R0, SP, #0x88+var_2C; int
50C138:  MOV             R1, R5; this
50C13A:  MOVS            R3, #1
50C13C:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
50C140:  LDRB.W          R0, [SP,#0x88+var_30]
50C144:  STRB            R0, [R4,#0x10]
50C146:  CBZ             R0, loc_50C156
50C148:  LDR.W           R0, [R5,#0x440]
50C14C:  ADD             R1, SP, #0x88+var_6C; CEvent *
50C14E:  MOVS            R2, #0; bool
50C150:  ADDS            R0, #0x68 ; 'h'; this
50C152:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
50C156:  LDRD.W          R0, R1, [R6]
50C15A:  VMOV.F32        S0, #0.75
50C15E:  BIC.W           R1, R1, #0x10
50C162:  BIC.W           R0, R0, #1
50C166:  STRD.W          R0, R1, [R6]
50C16A:  LDR             R0, [R4,#8]
50C16C:  VLDR            S4, [R0,#0x4C]
50C170:  VLDR            S2, [R0,#0x48]
50C174:  MOVS            R0, #0
50C176:  VMUL.F32        S4, S4, S0
50C17A:  STR             R0, [R5,#0x50]
50C17C:  VMUL.F32        S0, S2, S0
50C180:  VSTR            S0, [R5,#0x48]
50C184:  VSTR            S4, [R5,#0x4C]
50C188:  LDR             R0, [R4,#8]
50C18A:  LDR             R1, [R5,#0x14]
50C18C:  LDR             R2, [R0,#0x14]
50C18E:  ADD.W           R3, R1, #0x30 ; '0'
50C192:  CMP             R1, #0
50C194:  IT EQ
50C196:  ADDEQ           R3, R5, #4
50C198:  ADD.W           R1, R2, #0x30 ; '0'
50C19C:  CMP             R2, #0
50C19E:  VLDR            S0, [R3]
50C1A2:  VLDR            S2, [R3,#4]
50C1A6:  VLDR            S4, [R3,#8]
50C1AA:  IT EQ
50C1AC:  ADDEQ           R1, R0, #4
50C1AE:  VLDR            S6, [R1]
50C1B2:  ADD             R0, SP, #0x88+var_78; this
50C1B4:  VSUB.F32        S0, S0, S6
50C1B8:  VSTR            S0, [SP,#0x88+var_78]
50C1BC:  VLDR            S0, [R1,#4]
50C1C0:  VSUB.F32        S0, S2, S0
50C1C4:  VSTR            S0, [SP,#0x88+var_74]
50C1C8:  VLDR            S0, [R1,#8]
50C1CC:  VSUB.F32        S0, S4, S0
50C1D0:  VSTR            S0, [SP,#0x88+var_70]
50C1D4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50C1D8:  LDR             R0, [R4,#8]
50C1DA:  VMOV.F32        S4, #1.0
50C1DE:  VLDR            S0, =1400.0
50C1E2:  VLDR            S2, [R0,#0x90]
50C1E6:  VDIV.F32        S0, S2, S0
50C1EA:  VCMPE.F32       S0, S4
50C1EE:  VLDR            S2, =-60.0
50C1F2:  VMRS            APSR_nzcv, FPSCR
50C1F6:  VMUL.F32        S6, S0, S2
50C1FA:  IT GT
50C1FC:  VMOVGT.F32      S6, S2
50C200:  VLDR            S0, [SP,#0x88+var_78]
50C204:  VLDR            S2, [SP,#0x88+var_74]
50C208:  VLDR            S4, [SP,#0x88+var_70]
50C20C:  VMUL.F32        S0, S0, S6
50C210:  VMUL.F32        S2, S2, S6
50C214:  VMUL.F32        S4, S6, S4
50C218:  VMOV            R1, S0
50C21C:  VSTR            S0, [SP,#0x88+var_78]
50C220:  VMOV            R2, S2
50C224:  VSTR            S2, [SP,#0x88+var_74]
50C228:  VMOV            R3, S4
50C22C:  VSTR            S4, [SP,#0x88+var_70]
50C230:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
50C234:  ADD             R0, SP, #0x88+var_6C; this
50C236:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
50C23A:  ADD             R0, SP, #0x88+var_2C; this
50C23C:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
50C240:  MOVS            R0, #1
50C242:  ADD             SP, SP, #0x70 ; 'p'
50C244:  POP.W           {R8,R9,R11}
50C248:  POP             {R4-R7,PC}
