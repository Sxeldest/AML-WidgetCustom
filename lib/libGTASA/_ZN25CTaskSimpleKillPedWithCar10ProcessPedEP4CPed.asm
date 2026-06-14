; =========================================================
; Game Engine Function: _ZN25CTaskSimpleKillPedWithCar10ProcessPedEP4CPed
; Address            : 0x50BA60 - 0x50BEC6
; =========================================================

50BA60:  PUSH            {R4-R7,LR}
50BA62:  ADD             R7, SP, #0xC
50BA64:  PUSH.W          {R8-R11}
50BA68:  SUB             SP, SP, #4
50BA6A:  VPUSH           {D8-D15}
50BA6E:  SUB             SP, SP, #0x88
50BA70:  MOV             R9, R0
50BA72:  MOV             R5, R1
50BA74:  LDR.W           R1, [R9,#8]; CPed *
50BA78:  ADDS            R4, R5, #4
50BA7A:  LDR             R2, [R5,#0x14]
50BA7C:  MOV             R3, R4
50BA7E:  LDR             R0, [R1,#0x14]
50BA80:  CMP             R2, #0
50BA82:  IT NE
50BA84:  ADDNE.W         R3, R2, #0x30 ; '0'
50BA88:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x50BA9A)
50BA8C:  ADD.W           R6, R0, #0x30 ; '0'
50BA90:  CMP             R0, #0
50BA92:  VLDR            S0, [R3]
50BA96:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
50BA98:  VLDR            S2, [R3,#4]
50BA9C:  VLDR            S4, [R3,#8]
50BAA0:  IT EQ
50BAA2:  ADDEQ           R6, R1, #4
50BAA4:  VLDR            S6, [R6]
50BAA8:  VLDR            S8, [R6,#4]
50BAAC:  VSUB.F32        S16, S0, S6
50BAB0:  VLDR            S0, [R0]
50BAB4:  VSUB.F32        S18, S2, S8
50BAB8:  VLDR            S2, [R0,#4]
50BABC:  VLDR            S10, [R6,#8]
50BAC0:  VLDR            S6, [R0,#8]
50BAC4:  VSUB.F32        S20, S4, S10
50BAC8:  VLDR            S30, [R0,#0x10]
50BACC:  VLDR            S4, [R1,#0x48]
50BAD0:  VLDR            S8, [R1,#0x4C]
50BAD4:  VMUL.F32        S0, S16, S0
50BAD8:  VLDR            S19, [R0,#0x14]
50BADC:  VMUL.F32        S2, S18, S2
50BAE0:  LDRSH.W         R3, [R1,#0x26]
50BAE4:  VMUL.F32        S4, S30, S4
50BAE8:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
50BAEA:  VLDR            S10, [R1,#0x50]
50BAEE:  VMUL.F32        S6, S20, S6
50BAF2:  VLDR            S21, [R0,#0x18]
50BAF6:  LDR.W           R2, [R2,R3,LSL#2]
50BAFA:  VLDR            S23, [R0,#0x20]
50BAFE:  VLDR            S27, [R0,#0x24]
50BB02:  VADD.F32        S0, S0, S2
50BB06:  LDR             R2, [R2,#0x2C]; CPhysical *
50BB08:  VMUL.F32        S2, S19, S8
50BB0C:  VLDR            S25, [R0,#0x28]
50BB10:  MOV             R0, R5; this
50BB12:  VLDR            S24, [R2,#4]
50BB16:  VLDR            S22, [R2,#0x10]
50BB1A:  VLDR            S28, [R2,#0x14]
50BB1E:  VADD.F32        S17, S0, S6
50BB22:  VLDR            S6, [R2,#0xC]
50BB26:  VADD.F32        S2, S4, S2
50BB2A:  VLDR            S4, =0.99
50BB2E:  VMUL.F32        S0, S21, S10
50BB32:  VMUL.F32        S29, S6, S4
50BB36:  VABS.F32        S31, S17
50BB3A:  VADD.F32        S26, S2, S0
50BB3E:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK9CPhysical; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CPhysical const&)
50BB42:  VCMPE.F32       S31, S29
50BB46:  MOV             R8, R0
50BB48:  VMRS            APSR_nzcv, FPSCR
50BB4C:  BLE             loc_50BBE6
50BB4E:  VCMPE.F32       S26, #0.0
50BB52:  MOV.W           R10, #1
50BB56:  VMRS            APSR_nzcv, FPSCR
50BB5A:  VMUL.F32        S0, S18, S19
50BB5E:  VMUL.F32        S2, S16, S30
50BB62:  VMUL.F32        S4, S20, S21
50BB66:  VCMPE.F32       S17, #0.0
50BB6A:  VADD.F32        S0, S2, S0
50BB6E:  VLDR            S2, =0.85
50BB72:  VADD.F32        S0, S0, S4
50BB76:  IT GT
50BB78:  VMOVGT.F32      S24, S22
50BB7C:  VMRS            APSR_nzcv, FPSCR
50BB80:  VMUL.F32        S2, S24, S2
50BB84:  VABS.F32        S0, S0
50BB88:  VABS.F32        S2, S2
50BB8C:  VCMPE.F32       S0, S2
50BB90:  IT GT
50BB92:  MOVGT.W         R10, #3
50BB96:  VMRS            APSR_nzcv, FPSCR
50BB9A:  BGE.W           loc_50BD64
50BB9E:  LDR.W           R0, [R9,#8]
50BBA2:  VLDR            S0, =0.9
50BBA6:  VLDR            S4, [R0,#0x4C]
50BBAA:  VLDR            S2, [R0,#0x48]
50BBAE:  MOVS            R0, #0; this
50BBB0:  VMUL.F32        S4, S4, S0
50BBB4:  STR             R0, [R5,#0x50]
50BBB6:  VMUL.F32        S0, S2, S0
50BBBA:  VSTR            S0, [R5,#0x48]
50BBBE:  VSTR            S4, [R5,#0x4C]
50BBC2:  BLX             j__ZN13CLocalisation13KnockDownPedsEv; CLocalisation::KnockDownPeds(void)
50BBC6:  CBZ             R0, loc_50BBD8
50BBC8:  LDR.W           R0, [R9,#8]
50BBCC:  MOVS            R1, #0x77 ; 'w'; int
50BBCE:  MOVS            R2, #0; float
50BBD0:  ADD.W           R0, R0, #0x13C; this
50BBD4:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
50BBD8:  ORR.W           R0, R8, #2
50BBDC:  CMP             R0, #3
50BBDE:  IT EQ
50BBE0:  MOVEQ.W         R8, #0
50BBE4:  B               loc_50BC92
50BBE6:  VMUL.F32        S0, S18, S27
50BBEA:  LDR.W           R0, [R9,#8]
50BBEE:  VMUL.F32        S2, S16, S23
50BBF2:  VMUL.F32        S4, S20, S25
50BBF6:  VADD.F32        S0, S2, S0
50BBFA:  VADD.F32        S2, S0, S4
50BBFE:  VLDR            S0, =0.1
50BC02:  VCMPE.F32       S2, S0
50BC06:  VMRS            APSR_nzcv, FPSCR
50BC0A:  BLE             loc_50BC4C
50BC0C:  LDR             R1, [R0,#0x14]
50BC0E:  VLDR            S4, =-0.2
50BC12:  VLDR            S2, [R1,#0x18]
50BC16:  VCMPE.F32       S2, S4
50BC1A:  VMRS            APSR_nzcv, FPSCR
50BC1E:  BGE             loc_50BC96
50BC20:  VCMPE.F32       S26, #0.0
50BC24:  VLDR            S0, [R1,#0x28]
50BC28:  VMRS            APSR_nzcv, FPSCR
50BC2C:  VMUL.F32        S2, S24, S2
50BC30:  VMUL.F32        S0, S28, S0
50BC34:  VLDR            S4, =-0.0
50BC38:  VADD.F32        S0, S2, S0
50BC3C:  IT GT
50BC3E:  VMOVGT.F32      S4, S22
50BC42:  VLDR            S2, [R6,#8]
50BC46:  VSUB.F32        S24, S4, S24
50BC4A:  B               loc_50BCD4
50BC4C:  VLDR            S0, =0.9
50BC50:  VLDR            S4, [R0,#0x4C]
50BC54:  VLDR            S2, [R0,#0x48]
50BC58:  MOVS            R0, #0
50BC5A:  VMUL.F32        S4, S4, S0
50BC5E:  STR             R0, [R5,#0x50]
50BC60:  VMUL.F32        S0, S2, S0
50BC64:  ORR.W           R0, R8, #2; this
50BC68:  CMP             R0, #3
50BC6A:  VSTR            S0, [R5,#0x48]
50BC6E:  VSTR            S4, [R5,#0x4C]
50BC72:  IT EQ
50BC74:  MOVEQ.W         R8, #0
50BC78:  BLX             j__ZN13CLocalisation13KnockDownPedsEv; CLocalisation::KnockDownPeds(void)
50BC7C:  CBZ             R0, loc_50BC8E
50BC7E:  LDR.W           R0, [R9,#8]
50BC82:  MOVS            R1, #0x77 ; 'w'; int
50BC84:  MOVS            R2, #0; float
50BC86:  ADD.W           R0, R0, #0x13C; this
50BC8A:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
50BC8E:  MOV.W           R10, #5
50BC92:  MOVS            R6, #0x32 ; '2'
50BC94:  B               loc_50BD66
50BC96:  VCMPE.F32       S2, S0
50BC9A:  VMRS            APSR_nzcv, FPSCR
50BC9E:  BLE             loc_50BCB6
50BCA0:  VLDR            S0, [R1,#0x28]
50BCA4:  VMUL.F32        S2, S22, S2
50BCA8:  VSUB.F32        S24, S22, S24
50BCAC:  VMUL.F32        S0, S28, S0
50BCB0:  VADD.F32        S0, S2, S0
50BCB4:  B               loc_50BCC2
50BCB6:  VLDR            S0, [R1,#0x28]
50BCBA:  VNEG.F32        S24, S24
50BCBE:  VMUL.F32        S0, S28, S0
50BCC2:  VCMPE.F32       S26, #0.0
50BCC6:  VLDR            S2, [R6,#8]
50BCCA:  VMRS            APSR_nzcv, FPSCR
50BCCE:  IT GT
50BCD0:  VMOVGT.F32      S24, S22
50BCD4:  LDR             R1, [R5,#0x14]
50BCD6:  VADD.F32        S22, S2, S0
50BCDA:  VLDR            S26, [R0,#0x48]
50BCDE:  CMP             R1, #0
50BCE0:  VLDR            S28, [R0,#0x4C]
50BCE4:  VLDR            S30, [R0,#0x50]
50BCE8:  IT NE
50BCEA:  ADDNE.W         R4, R1, #0x30 ; '0'
50BCEE:  VLDR            D16, [R0,#0x48]
50BCF2:  LDR             R0, [R0,#0x50]
50BCF4:  VLDR            S17, [R4,#8]
50BCF8:  STR             R0, [SP,#0xE8+var_C0]
50BCFA:  ADD             R0, SP, #0xE8+var_C8; this
50BCFC:  VSTR            D16, [SP,#0xE8+var_C8]
50BD00:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50BD04:  VMUL.F32        S0, S28, S28
50BD08:  VLDR            S6, [SP,#0xE8+var_C0]
50BD0C:  VMUL.F32        S2, S26, S26
50BD10:  MOV             R1, R5; CPed *
50BD12:  VMUL.F32        S4, S30, S30
50BD16:  VADD.F32        S0, S2, S0
50BD1A:  VSUB.F32        S2, S22, S17
50BD1E:  VADD.F32        S0, S0, S4
50BD22:  VLDR            S4, [SP,#0xE8+var_C8+4]
50BD26:  VSQRT.F32       S0, S0
50BD2A:  VDIV.F32        S0, S24, S0
50BD2E:  VDIV.F32        S0, S2, S0
50BD32:  VLDR            S2, [SP,#0xE8+var_C8]
50BD36:  VMUL.F32        S4, S0, S4
50BD3A:  VMUL.F32        S2, S0, S2
50BD3E:  VMUL.F32        S0, S0, S6
50BD42:  VSTR            S2, [SP,#0xE8+var_C8]
50BD46:  VSTR            S4, [SP,#0xE8+var_C8+4]
50BD4A:  VLDR            D16, [SP,#0xE8+var_C8]
50BD4E:  VSTR            S0, [SP,#0xE8+var_C0]
50BD52:  LDR             R0, [SP,#0xE8+var_C0]
50BD54:  STR             R0, [R5,#0x50]
50BD56:  MOV             R0, R9; this
50BD58:  VSTR            D16, [R5,#0x48]
50BD5C:  BLX             j__ZNK25CTaskSimpleKillPedWithCar15DamageCarBonnetEPK4CPed; CTaskSimpleKillPedWithCar::DamageCarBonnet(CPed const*)
50BD60:  MOV.W           R10, #4
50BD64:  MOVS            R6, #0x31 ; '1'
50BD66:  ADD             R4, SP, #0xE8+var_74
50BD68:  LDR.W           R2, [R9,#8]; CVehicle *
50BD6C:  MOV             R1, R5; CPed *
50BD6E:  MOV             R0, R4; this
50BD70:  BLX             j__ZN22CEventVehicleHitAndRunC2EP4CPedP8CVehicle; CEventVehicleHitAndRun::CEventVehicleHitAndRun(CPed *,CVehicle *)
50BD74:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
50BD78:  MOV             R1, R4; CEvent *
50BD7A:  MOVS            R2, #0; bool
50BD7C:  MOV.W           R11, #0
50BD80:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
50BD84:  LDR.W           R1, [R9,#8]
50BD88:  MOVS            R2, #0
50BD8A:  ADD             R0, SP, #0xE8+var_88
50BD8C:  MOVS            R4, #9
50BD8E:  MOVT            R2, #0x447A
50BD92:  MOV             R3, R6
50BD94:  STRD.W          R4, R11, [SP,#0xE8+var_E8]
50BD98:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
50BD9C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50BDA6)
50BD9E:  LDR.W           R3, [R5,#0x484]
50BDA2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50BDA4:  LDR.W           R1, [R9,#8]; this
50BDA8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50BDAA:  LDR             R2, [R0]; int
50BDAC:  UBFX.W          R0, R3, #8, #1
50BDB0:  UXTB.W          R3, R8
50BDB4:  STRD.W          R4, R3, [SP,#0xE8+var_E8]; int
50BDB8:  MOV             R3, R6; int
50BDBA:  STRD.W          R11, R0, [SP,#0xE8+var_E0]; int
50BDBE:  ADD             R0, SP, #0xE8+var_C8; int
50BDC0:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
50BDC4:  EOR.W           R0, R10, #4
50BDC8:  MOVS            R1, #0xA3
50BDCA:  AND.W           R0, R0, #7
50BDCE:  ADD             R6, SP, #0xE8+var_C8
50BDD0:  ADDW            R4, R5, #0x484
50BDD4:  LSRS            R1, R0
50BDD6:  LSLS            R1, R1, #0x1F
50BDD8:  ITTT NE
50BDDA:  ADRNE           R1, dword_50BEE8
50BDDC:  LDRNE.W         R0, [R1,R0,LSL#2]
50BDE0:  STRNE           R0, [SP,#0xE8+var_AC]
50BDE2:  MOV             R0, R6; this
50BDE4:  MOV             R1, R5; CPed *
50BDE6:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
50BDEA:  CMP             R0, #1
50BDEC:  BNE             loc_50BDFE
50BDEE:  ADD.W           R2, R6, #0x34 ; '4'
50BDF2:  ADD             R0, SP, #0xE8+var_88; int
50BDF4:  MOV             R1, R5; this
50BDF6:  MOVS            R3, #1
50BDF8:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
50BDFC:  B               loc_50BE04
50BDFE:  MOVS            R0, #1
50BE00:  STRB.W          R0, [SP,#0xE8+var_8A]
50BE04:  LDR.W           R0, [R5,#0x440]
50BE08:  ADD             R5, SP, #0xE8+var_C8
50BE0A:  MOVS            R2, #0; bool
50BE0C:  ADDS            R0, #0x68 ; 'h'; this
50BE0E:  MOV             R1, R5; CEvent *
50BE10:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
50BE14:  MOV             R0, R9; this
50BE16:  BLX             j__ZNK25CTaskSimpleKillPedWithCar16SetPlayerPadJoltEv; CTaskSimpleKillPedWithCar::SetPlayerPadJolt(void)
50BE1A:  LDRD.W          R0, R1, [R4]
50BE1E:  CMP.W           R10, #4
50BE22:  BIC.W           R1, R1, #0x10
50BE26:  BIC.W           R0, R0, #1
50BE2A:  IT EQ
50BE2C:  ORREQ.W         R1, R1, #0x10
50BE30:  STRD.W          R0, R1, [R4]
50BE34:  ADD             R0, SP, #0xE8+var_D4; this
50BE36:  VSTR            S18, [SP,#0xE8+var_D0]
50BE3A:  VSTR            S16, [SP,#0xE8+var_D4]
50BE3E:  VSTR            S20, [SP,#0xE8+var_CC]
50BE42:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50BE46:  LDR.W           R0, [R9,#8]
50BE4A:  VMOV.F32        S4, #1.0
50BE4E:  VLDR            S0, =1400.0
50BE52:  VLDR            S2, [R0,#0x90]
50BE56:  VDIV.F32        S0, S2, S0
50BE5A:  VCMPE.F32       S0, S4
50BE5E:  VLDR            S2, =-100.0
50BE62:  VMRS            APSR_nzcv, FPSCR
50BE66:  VMUL.F32        S6, S0, S2
50BE6A:  IT GT
50BE6C:  VMOVGT.F32      S6, S2
50BE70:  VLDR            S0, [SP,#0xE8+var_D4]
50BE74:  VLDR            S2, [SP,#0xE8+var_D0]
50BE78:  VLDR            S4, [SP,#0xE8+var_CC]
50BE7C:  VMUL.F32        S0, S0, S6
50BE80:  VMUL.F32        S2, S2, S6
50BE84:  VMUL.F32        S4, S6, S4
50BE88:  VMOV            R1, S0
50BE8C:  VSTR            S0, [SP,#0xE8+var_D4]
50BE90:  VMOV            R2, S2
50BE94:  VSTR            S2, [SP,#0xE8+var_D0]
50BE98:  VMOV            R3, S4
50BE9C:  VSTR            S4, [SP,#0xE8+var_CC]
50BEA0:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
50BEA4:  MOV             R0, R5; this
50BEA6:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
50BEAA:  ADD             R0, SP, #0xE8+var_88; this
50BEAC:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
50BEB0:  ADD             R0, SP, #0xE8+var_74; this
50BEB2:  BLX             j__ZN22CEventVehicleHitAndRunD2Ev; CEventVehicleHitAndRun::~CEventVehicleHitAndRun()
50BEB6:  MOVS            R0, #1
50BEB8:  ADD             SP, SP, #0x88
50BEBA:  VPOP            {D8-D15}
50BEBE:  ADD             SP, SP, #4
50BEC0:  POP.W           {R8-R11}
50BEC4:  POP             {R4-R7,PC}
