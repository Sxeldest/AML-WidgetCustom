; =========================================================
; Game Engine Function: _ZN22CCollisionEventScanner22ScanForCollisionEventsER4CPedP11CEventGroup
; Address            : 0x4BEEEC - 0x4BF9D0
; =========================================================

4BEEEC:  PUSH            {R4-R7,LR}
4BEEEE:  ADD             R7, SP, #0xC
4BEEF0:  PUSH.W          {R8-R11}
4BEEF4:  SUB             SP, SP, #4
4BEEF6:  VPUSH           {D8-D14}
4BEEFA:  SUB             SP, SP, #0x80
4BEEFC:  MOV             R5, R1
4BEEFE:  MOV             R8, R0
4BEF00:  LDR.W           R0, [R5,#0xE0]
4BEF04:  MOV             R9, R2
4BEF06:  CMP             R0, #0
4BEF08:  ITTT NE
4BEF0A:  VLDRNE          S0, [R5,#0xDC]
4BEF0E:  VCMPNE.F32      S0, #0.0
4BEF12:  VMRSNE          APSR_nzcv, FPSCR
4BEF16:  BEQ.W           loc_4BF9BC
4BEF1A:  LDR.W           R0, [R5,#0x440]
4BEF1E:  ADDS            R0, #4; this
4BEF20:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BEF24:  MOV             R6, R0
4BEF26:  CBZ             R6, loc_4BEF3C
4BEF28:  MOV             R0, R6; this
4BEF2A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BEF2E:  CMP             R0, #0
4BEF30:  ITE NE
4BEF32:  LDRNE.W         R11, [R6,#8]
4BEF36:  MOVEQ.W         R11, #1
4BEF3A:  B               loc_4BEF40
4BEF3C:  MOV.W           R11, #1
4BEF40:  LDR.W           R10, [R5,#0xE0]
4BEF44:  LDRB.W          R0, [R10,#0x3A]
4BEF48:  AND.W           R0, R0, #7
4BEF4C:  SUBS            R0, #1; switch 4 cases
4BEF4E:  CMP             R0, #3
4BEF50:  BHI.W           def_4BEF54; jumptable 004BEF54 default case
4BEF54:  TBB.W           [PC,R0]; switch jump
4BEF58:  DCB 2; jump table for switch statement
4BEF59:  DCB 0x9D
4BEF5A:  DCB 0x1D
4BEF5B:  DCB 0x2E
4BEF5C:  LDR.W           R2, [R5,#0xDC]; jumptable 004BEF54 case 1
4BEF60:  ADD.W           R0, R5, #0xF0
4BEF64:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BEF68:  ADD             R6, SP, #0xD8+var_B0
4BEF6A:  ADD.W           R3, R5, #0xE4
4BEF6E:  STRD.W          R3, R0, [SP,#0xD8+var_D8]; CVector *
4BEF72:  MOV             R0, R6; this
4BEF74:  MOV             R3, R10; CBuilding *
4BEF76:  STR.W           R11, [SP,#0xD8+var_D0]; int
4BEF7A:  BLX             j__ZN23CEventBuildingCollisionC2EtfPK9CBuildingRK7CVectorS5_i; CEventBuildingCollision::CEventBuildingCollision(ushort,float,CBuilding const*,CVector const&,CVector const&,int)
4BEF7E:  MOV             R0, R9; this
4BEF80:  MOV             R1, R6; CEvent *
4BEF82:  MOVS            R2, #0; bool
4BEF84:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BEF88:  MOV             R0, R6; this
4BEF8A:  BLX             j__ZN23CEventBuildingCollisionD2Ev; CEventBuildingCollision::~CEventBuildingCollision()
4BEF8E:  B.W             def_4BEF54; jumptable 004BEF54 default case
4BEF92:  LDR.W           R0, [R10,#0x440]; jumptable 004BEF54 case 3
4BEF96:  ADDS            R0, #4; this
4BEF98:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BEF9C:  MOV             R6, R0
4BEF9E:  CMP             R6, #0
4BEFA0:  BEQ.W           loc_4BF186
4BEFA4:  MOV             R0, R6; this
4BEFA6:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BEFAA:  CMP             R0, #0
4BEFAC:  ITE NE
4BEFAE:  LDRNE           R4, [R6,#8]
4BEFB0:  MOVEQ           R4, #1
4BEFB2:  B               loc_4BF188
4BEFB4:  VLDR            S0, [R5,#0xDC]; jumptable 004BEF54 case 4
4BEFB8:  LDR.W           R0, [R5,#0x484]
4BEFBC:  VMOV            D1, D0
4BEFC0:  ANDS.W          R0, R0, #1
4BEFC4:  BEQ             loc_4BF01A
4BEFC6:  LDR.W           R1, [R10,#0x1C]
4BEFCA:  VMOV            D1, D0
4BEFCE:  TST.W           R1, #0x40004
4BEFD2:  BNE             loc_4BF01A
4BEFD4:  ADD.W           R1, R5, #0x558
4BEFD8:  VLDR            S2, [R5,#0xE4]
4BEFDC:  VLDR            S4, [R5,#0xE8]
4BEFE0:  VLDR            S6, [R1]
4BEFE4:  ADDW            R1, R5, #0x554
4BEFE8:  VLDR            S8, [R1]
4BEFEC:  VMUL.F32        S4, S4, S6
4BEFF0:  VMUL.F32        S2, S2, S8
4BEFF4:  VADD.F32        S4, S2, S4
4BEFF8:  VMOV            D1, D0
4BEFFC:  VCMPE.F32       S4, #0.0
4BF000:  VMRS            APSR_nzcv, FPSCR
4BF004:  BGE             loc_4BF01A
4BF006:  VLDR            S2, [R5,#0x90]
4BF00A:  VMUL.F32        S2, S4, S2
4BF00E:  VLDR            S4, =0.0
4BF012:  VADD.F32        S2, S0, S2
4BF016:  VMAX.F32        D1, D1, D2
4BF01A:  VMOV.F32        S6, #1.0
4BF01E:  LDR.W           R1, [R5,#0x444]
4BF022:  VMOV.F32        S4, #2.0
4BF026:  CMP             R1, #0
4BF028:  IT EQ
4BF02A:  VMOVEQ.F32      S4, S6
4BF02E:  VCMPE.F32       S2, S4
4BF032:  VMRS            APSR_nzcv, FPSCR
4BF036:  BLE             loc_4BF05E
4BF038:  LDR.W           R1, [R10,#0x1C]
4BF03C:  TST.W           R1, #0x40004
4BF040:  BNE             loc_4BF05E
4BF042:  CMP             R0, #0
4BF044:  ITT NE
4BF046:  LDRNE.W         R0, [R5,#0x588]
4BF04A:  CMPNE           R10, R0
4BF04C:  BEQ             loc_4BF05E
4BF04E:  LDR.W           R0, [R10,#0x100]
4BF052:  CMP             R0, #0
4BF054:  BEQ.W           loc_4BF318
4BF058:  CMP             R10, R0
4BF05A:  BNE.W           loc_4BF318
4BF05E:  VMOV            R2, S0; float
4BF062:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF066:  ADD.W           R0, R5, #0xF0
4BF06A:  ADD             R6, SP, #0xD8+var_B0
4BF06C:  ADD.W           R3, R5, #0xE4
4BF070:  STRD.W          R3, R0, [SP,#0xD8+var_D8]; CVector *
4BF074:  MOV             R0, R6; this
4BF076:  MOV             R3, R10; CObject *
4BF078:  STR.W           R11, [SP,#0xD8+var_D0]; int
4BF07C:  BLX             j__ZN21CEventObjectCollisionC2EtfPK7CObjectRK7CVectorS5_i; CEventObjectCollision::CEventObjectCollision(ushort,float,CObject const*,CVector const&,CVector const&,int)
4BF080:  MOV             R0, R9; this
4BF082:  MOV             R1, R6; CEvent *
4BF084:  MOVS            R2, #0; bool
4BF086:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF08A:  MOV             R0, R6; this
4BF08C:  BLX             j__ZN21CEventObjectCollisionD2Ev; CEventObjectCollision::~CEventObjectCollision()
4BF090:  B               def_4BEF54; jumptable 004BEF54 default case
4BF092:  LDRB.W          R0, [R8]; jumptable 004BEF54 case 2
4BF096:  CMP             R0, #0
4BF098:  BNE.W           def_4BEF54; jumptable 004BEF54 default case
4BF09C:  VLDR            S0, [R10,#0x48]
4BF0A0:  VLDR            S2, [R10,#0x4C]
4BF0A4:  VMUL.F32        S0, S0, S0
4BF0A8:  VLDR            S4, [R10,#0x50]
4BF0AC:  VMUL.F32        S2, S2, S2
4BF0B0:  LDR.W           R0, [R10,#0x5A4]
4BF0B4:  VMUL.F32        S4, S4, S4
4BF0B8:  CMP             R0, #6
4BF0BA:  VADD.F32        S0, S0, S2
4BF0BE:  VADD.F32        S16, S0, S4
4BF0C2:  BNE             loc_4BF100
4BF0C4:  LDRB.W          R0, [R10,#0x44]
4BF0C8:  LSLS            R0, R0, #0x1D
4BF0CA:  ITT MI
4BF0CC:  LDRBMI          R0, [R5,#0x1C]
4BF0CE:  MOVSMI.W        R0, R0,LSL#27
4BF0D2:  BPL             loc_4BF100
4BF0D4:  LDRB.W          R0, [R5,#0x484]
4BF0D8:  LSLS            R0, R0, #0x1F
4BF0DA:  BEQ             loc_4BF100
4BF0DC:  VLDR            S0, =0.0001
4BF0E0:  VCMPE.F32       S16, S0
4BF0E4:  VMRS            APSR_nzcv, FPSCR
4BF0E8:  BLE             loc_4BF100
4BF0EA:  LDR.W           R0, [R5,#0x56C]
4BF0EE:  CBNZ            R0, loc_4BF100
4BF0F0:  MOVS            R2, #0
4BF0F2:  MOV             R0, R5; this
4BF0F4:  MOVT            R2, #0x4170; float
4BF0F8:  MOV             R1, R10; CVehicle *
4BF0FA:  MOVS            R3, #0; bool
4BF0FC:  BLX             j__ZN4CPed14KillPedWithCarEP8CVehiclefb; CPed::KillPedWithCar(CVehicle *,float,bool)
4BF100:  VLDR            S0, =0.0025
4BF104:  VCMPE.F32       S16, S0
4BF108:  VMRS            APSR_nzcv, FPSCR
4BF10C:  BLE.W           loc_4BF288
4BF110:  LDRB.W          R0, [R5,#0x484]
4BF114:  VLDR            S16, [R5,#0xDC]
4BF118:  LSLS            R0, R0, #0x1F
4BF11A:  BEQ             loc_4BF15E
4BF11C:  ADD.W           R0, R5, #0x558
4BF120:  VLDR            S0, [R5,#0xE4]
4BF124:  VLDR            S2, [R5,#0xE8]
4BF128:  VLDR            S4, [R0]
4BF12C:  ADDW            R0, R5, #0x554
4BF130:  VLDR            S6, [R0]
4BF134:  VMUL.F32        S2, S2, S4
4BF138:  VMUL.F32        S0, S0, S6
4BF13C:  VADD.F32        S0, S0, S2
4BF140:  VCMPE.F32       S0, #0.0
4BF144:  VMRS            APSR_nzcv, FPSCR
4BF148:  BGE             loc_4BF15E
4BF14A:  VLDR            S2, [R5,#0x90]
4BF14E:  VMUL.F32        S0, S0, S2
4BF152:  VLDR            S2, =0.0
4BF156:  VADD.F32        S0, S16, S0
4BF15A:  VMAX.F32        D8, D0, D1
4BF15E:  MOV             R0, R5; this
4BF160:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF164:  CMP             R0, #1
4BF166:  BNE.W           loc_4BF374
4BF16A:  LDR.W           R0, [R10,#0x14]
4BF16E:  CMP             R0, #0
4BF170:  BEQ.W           loc_4BF5F2
4BF174:  LDRD.W          R2, R1, [R0,#0x10]; x
4BF178:  EOR.W           R0, R2, #0x80000000; y
4BF17C:  BLX             atan2f
4BF180:  VMOV            S18, R0
4BF184:  B               loc_4BF5F6
4BF186:  MOVS            R4, #1
4BF188:  MOV             R0, R5; this
4BF18A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF18E:  CMP             R0, #1
4BF190:  STR             R4, [SP,#0xD8+var_C4]
4BF192:  BNE             loc_4BF1E4
4BF194:  ADD.W           R0, R5, #0xF0
4BF198:  LDRD.W          R2, R3, [R5,#0xDC]; CPed *
4BF19C:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF1A0:  ADD.W           R6, R5, #0xE4
4BF1A4:  STRD.W          R6, R0, [SP,#0xD8+var_D8]; CVector *
4BF1A8:  STRD.W          R11, R4, [SP,#0xD8+var_D0]; int
4BF1AC:  ADD             R4, SP, #0xD8+var_B0
4BF1AE:  MOV             R0, R4; this
4BF1B0:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF1B4:  LDR.W           R0, =(_ZTV28CEventPlayerCollisionWithPed_ptr - 0x4BF1C2)
4BF1B8:  MOV             R1, R4; CEvent *
4BF1BA:  MOVS            R2, #0; bool
4BF1BC:  MOVS            R6, #0
4BF1BE:  ADD             R0, PC; _ZTV28CEventPlayerCollisionWithPed_ptr
4BF1C0:  LDR             R0, [R0]; `vtable for'CEventPlayerCollisionWithPed ...
4BF1C2:  ADDS            R0, #8
4BF1C4:  STR             R0, [SP,#0xD8+var_B0]
4BF1C6:  MOV             R0, R9; this
4BF1C8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF1CC:  MOV             R0, R10; this
4BF1CE:  MOVS            R1, #0x1C; unsigned __int16
4BF1D0:  MOVS            R2, #0; unsigned int
4BF1D2:  MOV.W           R3, #0x3F800000; float
4BF1D6:  STRD.W          R6, R6, [SP,#0xD8+var_D8]; unsigned __int8
4BF1DA:  STR             R6, [SP,#0xD8+var_D0]; unsigned __int8
4BF1DC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4BF1E0:  MOV             R0, R4
4BF1E2:  B               loc_4BF488
4BF1E4:  MOV             R0, R10; this
4BF1E6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF1EA:  CMP             R0, #1
4BF1EC:  BNE             loc_4BF256
4BF1EE:  ADD.W           R0, R5, #0xF0
4BF1F2:  ADD.W           R6, R5, #0xE4
4BF1F6:  LDRD.W          R2, R3, [R5,#0xDC]; CPed *
4BF1FA:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF1FE:  STRD.W          R6, R0, [SP,#0xD8+var_D8]; CVector *
4BF202:  ADD             R6, SP, #0xD8+var_B0
4BF204:  STRD.W          R11, R4, [SP,#0xD8+var_D0]; int
4BF208:  MOV             R0, R6; this
4BF20A:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF20E:  LDR.W           R0, =(_ZTV28CEventPedCollisionWithPlayer_ptr - 0x4BF21C)
4BF212:  MOV             R1, R6; CEvent *
4BF214:  MOVS            R2, #0; bool
4BF216:  MOVS            R4, #0
4BF218:  ADD             R0, PC; _ZTV28CEventPedCollisionWithPlayer_ptr
4BF21A:  LDR             R0, [R0]; `vtable for'CEventPedCollisionWithPlayer ...
4BF21C:  ADDS            R0, #8
4BF21E:  STR             R0, [SP,#0xD8+var_B0]
4BF220:  MOV             R0, R9; this
4BF222:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF226:  LDR.W           R0, [R5,#0x440]
4BF22A:  LDRB.W          R1, [R0,#0x180]
4BF22E:  CMP             R1, #0
4BF230:  BEQ.W           loc_4BF434
4BF234:  LDRB.W          R1, [R0,#0x181]
4BF238:  CMP             R1, #0
4BF23A:  BEQ.W           loc_4BF404
4BF23E:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF248)
4BF242:  MOVS            R2, #0
4BF244:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF246:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BF248:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BF24A:  STRB.W          R2, [R0,#0x181]
4BF24E:  STR.W           R1, [R0,#0x178]
4BF252:  MOV             R2, R1
4BF254:  B               loc_4BF412
4BF256:  ADD.W           R0, R5, #0xF0
4BF25A:  ADD.W           R6, R5, #0xE4
4BF25E:  LDRD.W          R2, R3, [R5,#0xDC]; CPed *
4BF262:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF266:  STRD.W          R6, R0, [SP,#0xD8+var_D8]; CVector *
4BF26A:  ADD             R6, SP, #0xD8+var_B0
4BF26C:  STRD.W          R11, R4, [SP,#0xD8+var_D0]; int
4BF270:  MOV             R0, R6; this
4BF272:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF276:  MOV             R0, R9; this
4BF278:  MOV             R1, R6; CEvent *
4BF27A:  MOVS            R2, #0; bool
4BF27C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF280:  MOV             R0, R6; this
4BF282:  BLX             j__ZN25CEventPedCollisionWithPedD2Ev_0; CEventPedCollisionWithPed::~CEventPedCollisionWithPed()
4BF286:  B               loc_4BF48C
4BF288:  LDR.W           R0, [R5,#0x100]
4BF28C:  CBZ             R0, loc_4BF2D4
4BF28E:  LDRB.W          R0, [R0,#0x3A]
4BF292:  AND.W           R0, R0, #7
4BF296:  CMP             R0, #2
4BF298:  BNE             loc_4BF2D4
4BF29A:  MOV             R0, R5; this
4BF29C:  MOV             R1, R10; CPed *
4BF29E:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK9CPhysical; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CPhysical const&)
4BF2A2:  LDR.W           R2, [R5,#0xDC]
4BF2A6:  MOV             R4, R0
4BF2A8:  ADD             R0, SP, #0xD8+var_70
4BF2AA:  MOV.W           R9, #0
4BF2AE:  MOVS            R6, #3
4BF2B0:  MOV             R1, R10
4BF2B2:  MOVS            R3, #0x31 ; '1'
4BF2B4:  STRD.W          R6, R9, [SP,#0xD8+var_D8]
4BF2B8:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4BF2BC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF2C6)
4BF2C0:  UXTB            R1, R4
4BF2C2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF2C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BF2C6:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
4BF2C8:  LDR.W           R0, [R5,#0x484]
4BF2CC:  UBFX.W          R0, R0, #8, #1
4BF2D0:  STR             R6, [SP,#0xD8+var_D8]
4BF2D2:  B               loc_4BF3C6
4BF2D4:  MOV             R0, R5; this
4BF2D6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF2DA:  CMP             R0, #0
4BF2DC:  BNE.W           def_4BEF54; jumptable 004BEF54 default case
4BF2E0:  LDR.W           R0, [R5,#0xE0]
4BF2E4:  ADD.W           R4, R5, #0xF0
4BF2E8:  STR             R0, [SP,#0xD8+var_C4]
4BF2EA:  ADD.W           R10, R5, #0xE4
4BF2EE:  LDR.W           R0, [R5,#0x440]
4BF2F2:  VLDR            S16, [R5,#0xDC]
4BF2F6:  ADDS            R0, #4; this
4BF2F8:  LDRH.W          R11, [R5,#0xFC]
4BF2FC:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BF300:  MOV             R6, R0
4BF302:  CMP             R6, #0
4BF304:  BEQ.W           loc_4BF5C4
4BF308:  MOV             R0, R6; this
4BF30A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BF30E:  CMP             R0, #0
4BF310:  BEQ.W           loc_4BF5C4
4BF314:  LDR             R0, [R6,#8]
4BF316:  B               loc_4BF5C6
4BF318:  VMOV.F32        S0, #10.0
4BF31C:  VLDR            S6, [R5,#0xE8]
4BF320:  ADD             R1, SP, #0xD8+var_B0
4BF322:  MOV             R0, R5
4BF324:  VNEG.F32        S6, S6
4BF328:  VDIV.F32        S0, S0, S4
4BF32C:  VLDR            S4, [R5,#0xE4]
4BF330:  VMUL.F32        S16, S2, S0
4BF334:  VSTR            S6, [SP,#0xD8+var_B0+4]
4BF338:  VNEG.F32        S4, S4
4BF33C:  VSTR            S4, [SP,#0xD8+var_B0]
4BF340:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
4BF344:  LDR.W           R1, [R5,#0xE0]
4BF348:  MOVS            R2, #0x36 ; '6'
4BF34A:  STR             R0, [SP,#0xD8+var_D4]
4BF34C:  VCVT.S32.F32    S0, S16
4BF350:  MOVS            R0, #3
4BF352:  STR             R0, [SP,#0xD8+var_D8]
4BF354:  MOV             R0, R5
4BF356:  VMOV            R3, S0
4BF35A:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
4BF35E:  LDR.W           R0, [R5,#0xE0]
4BF362:  STR.W           R0, [R5,#0x12C]
4BF366:  B               def_4BEF54; jumptable 004BEF54 default case
4BF368:  DCFS 0.0
4BF36C:  DCFS 0.0001
4BF370:  DCFS 0.0025
4BF374:  LDR.W           R0, [R5,#0x100]
4BF378:  CMP             R0, #0
4BF37A:  BEQ             loc_4BF3FE
4BF37C:  LDRB.W          R0, [R0,#0x3A]
4BF380:  AND.W           R0, R0, #7
4BF384:  CMP             R0, #2
4BF386:  BNE             loc_4BF3FE
4BF388:  MOV             R0, R5; this
4BF38A:  MOV             R1, R10; CPed *
4BF38C:  ADDW            R6, R5, #0x484
4BF390:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK9CPhysical; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CPhysical const&)
4BF394:  LDR.W           R2, [R5,#0xDC]
4BF398:  MOV             R4, R0
4BF39A:  ADD             R0, SP, #0xD8+var_70
4BF39C:  MOV.W           R9, #0
4BF3A0:  MOV.W           R11, #3
4BF3A4:  MOV             R1, R10
4BF3A6:  MOVS            R3, #0x31 ; '1'
4BF3A8:  STRD.W          R11, R9, [SP,#0xD8+var_D8]
4BF3AC:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4BF3B0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF3BA)
4BF3B4:  UXTB            R1, R4
4BF3B6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF3B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BF3BA:  LDR             R2, [R0]; int
4BF3BC:  LDR             R0, [R6]
4BF3BE:  UBFX.W          R0, R0, #8, #1
4BF3C2:  STR.W           R11, [SP,#0xD8+var_D8]; int
4BF3C6:  ADD             R4, SP, #0xD8+var_B0
4BF3C8:  STRD.W          R1, R9, [SP,#0xD8+var_D4]; int
4BF3CC:  STR             R0, [SP,#0xD8+var_CC]; int
4BF3CE:  MOV             R1, R10; this
4BF3D0:  MOV             R0, R4; int
4BF3D2:  MOVS            R3, #0x31 ; '1'; int
4BF3D4:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
4BF3D8:  MOV             R1, R5; CPed *
4BF3DA:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
4BF3DE:  CMP             R0, #1
4BF3E0:  BNE             loc_4BF3F0
4BF3E2:  ADD.W           R2, R4, #0x34 ; '4'
4BF3E6:  ADD             R0, SP, #0xD8+var_70; int
4BF3E8:  MOV             R1, R5; this
4BF3EA:  MOVS            R3, #1
4BF3EC:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
4BF3F0:  ADD             R0, SP, #0xD8+var_B0; this
4BF3F2:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
4BF3F6:  ADD             R0, SP, #0xD8+var_70; this
4BF3F8:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4BF3FC:  B               def_4BEF54; jumptable 004BEF54 default case
4BF3FE:  LDR.W           R2, [R5,#0xDC]
4BF402:  B               loc_4BF86A
4BF404:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF410)
4BF408:  LDR.W           R2, [R0,#0x178]
4BF40C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF40E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BF410:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BF412:  LDR.W           R3, [R0,#0x17C]
4BF416:  ADD             R2, R3
4BF418:  CMP             R2, R1
4BF41A:  BHI             loc_4BF434
4BF41C:  MOVW            R2, #0xBB8
4BF420:  STRD.W          R1, R2, [R0,#0x178]
4BF424:  MOVS            R2, #1
4BF426:  LDRB.W          R1, [R0,#0x174]
4BF42A:  STRB.W          R2, [R0,#0x180]
4BF42E:  ADDS            R1, #1
4BF430:  STRB.W          R1, [R0,#0x174]
4BF434:  MOV             R0, R5; this
4BF436:  MOVS            R1, #0x1C; unsigned __int16
4BF438:  MOVS            R2, #0; unsigned int
4BF43A:  MOV.W           R3, #0x3F800000; float
4BF43E:  STRD.W          R4, R4, [SP,#0xD8+var_D8]; unsigned __int8
4BF442:  STR             R4, [SP,#0xD8+var_D0]; unsigned __int8
4BF444:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4BF448:  ADDW            R0, R5, #0x4EC; this
4BF44C:  MOVS            R1, #4; int
4BF44E:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BF452:  MOV             R6, R0
4BF454:  LDR.W           R0, [R10,#0x59C]; this
4BF458:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BF45C:  TST             R0, R6
4BF45E:  BEQ             loc_4BF486
4BF460:  ADD             R6, SP, #0xD8+var_70
4BF462:  MOV             R1, R10; CPed *
4BF464:  MOV             R0, R6; this
4BF466:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BF46A:  LDR.W           R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x4BF476)
4BF46E:  MOV             R1, R6; CEvent *
4BF470:  MOVS            R2, #0; bool
4BF472:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
4BF474:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
4BF476:  ADDS            R0, #8
4BF478:  STR             R0, [SP,#0xD8+var_70]
4BF47A:  MOV             R0, R9; this
4BF47C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF480:  MOV             R0, R6; this
4BF482:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
4BF486:  ADD             R0, SP, #0xD8+var_B0; this
4BF488:  BLX             j__ZN25CEventPedCollisionWithPedD2Ev; CEventPedCollisionWithPed::~CEventPedCollisionWithPed()
4BF48C:  LDR.W           R0, [R10,#0xE0]
4BF490:  CMP             R0, #0
4BF492:  BNE.W           def_4BEF54; jumptable 004BEF54 default case
4BF496:  VLDR            D16, [R5,#0xE4]
4BF49A:  LDR.W           R0, [R5,#0xEC]
4BF49E:  VSTR            D16, [SP,#0xD8+var_C0]
4BF4A2:  VLDR            S0, [SP,#0xD8+var_C0]
4BF4A6:  VLDR            S2, [SP,#0xD8+var_C0+4]
4BF4AA:  STR             R0, [SP,#0xD8+var_B8]
4BF4AC:  VNEG.F32        S0, S0
4BF4B0:  VLDR            S4, [SP,#0xD8+var_B8]
4BF4B4:  VNEG.F32        S2, S2
4BF4B8:  MOV             R0, R10; this
4BF4BA:  VNEG.F32        S4, S4
4BF4BE:  VSTR            S0, [SP,#0xD8+var_C0]
4BF4C2:  VSTR            S2, [SP,#0xD8+var_C0+4]
4BF4C6:  VSTR            S4, [SP,#0xD8+var_B8]
4BF4CA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF4CE:  CMP             R0, #1
4BF4D0:  BNE             loc_4BF518
4BF4D2:  ADD.W           R0, R5, #0xF0
4BF4D6:  LDR.W           R2, [R5,#0xDC]; float
4BF4DA:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF4DE:  ADD             R3, SP, #0xD8+var_C0
4BF4E0:  STRD.W          R3, R0, [SP,#0xD8+var_D8]; CVector *
4BF4E4:  ADD             R4, SP, #0xD8+var_B0
4BF4E6:  LDR             R0, [SP,#0xD8+var_C4]
4BF4E8:  MOV             R3, R5; CPed *
4BF4EA:  STR.W           R11, [SP,#0xD8+var_D0]; int
4BF4EE:  STR             R0, [SP,#0xD8+var_CC]; int
4BF4F0:  MOV             R0, R4; this
4BF4F2:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF4F6:  LDR.W           R0, =(_ZTV28CEventPlayerCollisionWithPed_ptr - 0x4BF502)
4BF4FA:  MOV             R1, R4; CEvent *
4BF4FC:  MOVS            R2, #0; bool
4BF4FE:  ADD             R0, PC; _ZTV28CEventPlayerCollisionWithPed_ptr
4BF500:  LDR             R0, [R0]; `vtable for'CEventPlayerCollisionWithPed ...
4BF502:  ADDS            R0, #8
4BF504:  STR             R0, [SP,#0xD8+var_B0]
4BF506:  LDR.W           R0, [R10,#0x440]
4BF50A:  ADDS            R0, #0x68 ; 'h'; this
4BF50C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF510:  MOV             R0, R4; this
4BF512:  BLX             j__ZN25CEventPedCollisionWithPedD2Ev; CEventPedCollisionWithPed::~CEventPedCollisionWithPed()
4BF516:  B               def_4BEF54; jumptable 004BEF54 default case
4BF518:  MOV             R0, R5; this
4BF51A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BF51E:  LDR             R6, [SP,#0xD8+var_C4]
4BF520:  CMP             R0, #1
4BF522:  BNE             loc_4BF58E
4BF524:  LDR.W           R2, [R5,#0xDC]; float
4BF528:  ADD.W           R0, R5, #0xF0
4BF52C:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF530:  ADD             R4, SP, #0xD8+var_B0
4BF532:  ADD             R3, SP, #0xD8+var_C0
4BF534:  STRD.W          R3, R0, [SP,#0xD8+var_D8]; CVector *
4BF538:  MOV             R0, R4; this
4BF53A:  MOV             R3, R5; CPed *
4BF53C:  STRD.W          R11, R6, [SP,#0xD8+var_D0]; int
4BF540:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF544:  LDR.W           R0, =(_ZTV28CEventPedCollisionWithPlayer_ptr - 0x4BF550)
4BF548:  MOV             R1, R4; CEvent *
4BF54A:  MOVS            R2, #0; bool
4BF54C:  ADD             R0, PC; _ZTV28CEventPedCollisionWithPlayer_ptr
4BF54E:  LDR             R0, [R0]; `vtable for'CEventPedCollisionWithPlayer ...
4BF550:  ADDS            R0, #8
4BF552:  STR             R0, [SP,#0xD8+var_B0]
4BF554:  LDR.W           R0, [R10,#0x440]
4BF558:  ADDS            R0, #0x68 ; 'h'; this
4BF55A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF55E:  LDR.W           R0, [R10,#0x440]
4BF562:  LDRB.W          R1, [R0,#0x180]
4BF566:  CMP             R1, #0
4BF568:  BEQ.W           loc_4BF7E0
4BF56C:  LDRB.W          R1, [R0,#0x181]
4BF570:  CMP             R1, #0
4BF572:  BEQ.W           loc_4BF7B2
4BF576:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF580)
4BF57A:  MOVS            R2, #0
4BF57C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF57E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BF580:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BF582:  STRB.W          R2, [R0,#0x181]
4BF586:  STR.W           R1, [R0,#0x178]
4BF58A:  MOV             R2, R1
4BF58C:  B               loc_4BF7BE
4BF58E:  LDR.W           R2, [R5,#0xDC]; float
4BF592:  ADD.W           R0, R5, #0xF0
4BF596:  LDRH.W          R1, [R5,#0xFC]; unsigned __int16
4BF59A:  ADD             R4, SP, #0xD8+var_B0
4BF59C:  ADD             R3, SP, #0xD8+var_C0
4BF59E:  STRD.W          R3, R0, [SP,#0xD8+var_D8]; CVector *
4BF5A2:  MOV             R0, R4; this
4BF5A4:  MOV             R3, R5; CPed *
4BF5A6:  STRD.W          R11, R6, [SP,#0xD8+var_D0]; int
4BF5AA:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4BF5AE:  LDR.W           R0, [R10,#0x440]
4BF5B2:  MOV             R1, R4; CEvent *
4BF5B4:  MOVS            R2, #0; bool
4BF5B6:  ADDS            R0, #0x68 ; 'h'; this
4BF5B8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF5BC:  MOV             R0, R4; this
4BF5BE:  BLX             j__ZN25CEventPedCollisionWithPedD2Ev_0; CEventPedCollisionWithPed::~CEventPedCollisionWithPed()
4BF5C2:  B               def_4BEF54; jumptable 004BEF54 default case
4BF5C4:  MOVS            R0, #1
4BF5C6:  VMOV            R2, S16; float
4BF5CA:  MOVS            R6, #0
4BF5CC:  LDR             R3, [SP,#0xD8+var_C4]; CVehicle *
4BF5CE:  MOV             R1, R11; unsigned __int16
4BF5D0:  STRD.W          R10, R4, [SP,#0xD8+var_D8]; CVector *
4BF5D4:  STRD.W          R0, R6, [SP,#0xD8+var_D0]; int
4BF5D8:  ADD             R6, SP, #0xD8+var_B0
4BF5DA:  MOV             R0, R6; this
4BF5DC:  BLX             j__ZN22CEventVehicleCollisionC2EtfPK8CVehicleRK7CVectorS5_it; CEventVehicleCollision::CEventVehicleCollision(ushort,float,CVehicle const*,CVector const&,CVector const&,int,ushort)
4BF5E0:  MOV             R0, R9; this
4BF5E2:  MOV             R1, R6; CEvent *
4BF5E4:  MOVS            R2, #0; bool
4BF5E6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF5EA:  MOV             R0, R6; this
4BF5EC:  BLX             j__ZN22CEventVehicleCollisionD2Ev; CEventVehicleCollision::~CEventVehicleCollision()
4BF5F0:  B               def_4BEF54; jumptable 004BEF54 default case
4BF5F2:  VLDR            S18, [R10,#0x10]
4BF5F6:  MOV             R0, R10; this
4BF5F8:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4BF5FC:  B.W             loc_3F6810
4BF600:  VLDR            S22, [R0,#4]
4BF604:  VLDR            S24, [R0,#8]
4BF608:  MOV             R0, R10; this
4BF60A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4BF60E:  VLDR            S0, [R0,#0x14]
4BF612:  VMOV.F32        S2, #0.5
4BF616:  VLDR            S26, [R0,#0xC]
4BF61A:  ADD             R2, SP, #0xD8+var_B0
4BF61C:  VLDR            S28, [R0,#0x10]
4BF620:  VADD.F32        S0, S24, S0
4BF624:  VADD.F32        S6, S20, S26
4BF628:  ADD             R0, SP, #0xD8+var_70
4BF62A:  VADD.F32        S4, S22, S28
4BF62E:  VMUL.F32        S0, S0, S2
4BF632:  VMUL.F32        S6, S6, S2
4BF636:  VMUL.F32        S4, S4, S2
4BF63A:  VSTR            S4, [SP,#0xD8+var_B0+4]
4BF63E:  VSTR            S6, [SP,#0xD8+var_B0]
4BF642:  VSTR            S0, [SP,#0xD8+var_A8]
4BF646:  LDR.W           R1, [R10,#0x14]
4BF64A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4BF64E:  VLDR            D16, [SP,#0xD8+var_70]
4BF652:  ADDS            R4, R5, #4
4BF654:  LDR             R0, [SP,#0xD8+var_68]
4BF656:  STR             R0, [SP,#0xD8+var_A8]
4BF658:  MOV             R1, R4
4BF65A:  VSTR            D16, [SP,#0xD8+var_B0]
4BF65E:  LDR             R0, [R5,#0x14]
4BF660:  VLDR            S0, [SP,#0xD8+var_B0]
4BF664:  CMP             R0, #0
4BF666:  VLDR            S2, [SP,#0xD8+var_B0+4]
4BF66A:  VLDR            S4, [SP,#0xD8+var_A8]
4BF66E:  IT NE
4BF670:  ADDNE.W         R1, R0, #0x30 ; '0'
4BF674:  VLDR            S6, [R1]
4BF678:  VLDR            S8, [R1,#4]
4BF67C:  VSUB.F32        S0, S0, S6
4BF680:  VLDR            S10, [R1,#8]
4BF684:  VSUB.F32        S2, S2, S8
4BF688:  VSUB.F32        S4, S4, S10
4BF68C:  VMOV            R0, S0
4BF690:  VSTR            S0, [SP,#0xD8+var_B0]
4BF694:  VMOV            R1, S2; x
4BF698:  VSTR            S2, [SP,#0xD8+var_B0+4]
4BF69C:  VSTR            S4, [SP,#0xD8+var_A8]
4BF6A0:  EOR.W           R0, R0, #0x80000000; y
4BF6A4:  BLX             atan2f
4BF6A8:  VMOV            S0, R0
4BF6AC:  VSUB.F32        S0, S18, S0
4BF6B0:  VMOV            R0, S0; this
4BF6B4:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4BF6B8:  VSUB.F32        S2, S28, S22
4BF6BC:  MOV             R9, R0
4BF6BE:  VSUB.F32        S0, S26, S20
4BF6C2:  VMOV            R1, S2; x
4BF6C6:  VMOV            R0, S0; y
4BF6CA:  BLX             atan2f
4BF6CE:  MOV             R6, R0
4BF6D0:  LDR.W           R0, [R10,#0x14]
4BF6D4:  LDR             R1, [R5,#0x14]
4BF6D6:  ADD.W           R2, R0, #0x30 ; '0'
4BF6DA:  CMP             R0, #0
4BF6DC:  IT EQ
4BF6DE:  ADDEQ.W         R2, R10, #4
4BF6E2:  CMP             R1, #0
4BF6E4:  VLDR            S0, [R2]
4BF6E8:  ADD             R0, SP, #0xD8+var_70; this
4BF6EA:  VLDR            S2, [R2,#4]
4BF6EE:  VLDR            S4, [R2,#8]
4BF6F2:  IT NE
4BF6F4:  ADDNE.W         R4, R1, #0x30 ; '0'
4BF6F8:  VLDR            S6, [R4]
4BF6FC:  VLDR            S8, [R4,#4]
4BF700:  VLDR            S10, [R4,#8]
4BF704:  VSUB.F32        S0, S6, S0
4BF708:  VSUB.F32        S2, S8, S2
4BF70C:  VSUB.F32        S4, S10, S4
4BF710:  VSTR            S2, [SP,#0xD8+var_70+4]
4BF714:  VSTR            S0, [SP,#0xD8+var_70]
4BF718:  VSTR            S4, [SP,#0xD8+var_68]
4BF71C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4BF720:  VMOV            S2, R9
4BF724:  VMOV            S4, R6
4BF728:  VABS.F32        S0, S2
4BF72C:  VCMPE.F32       S0, S4
4BF730:  VMRS            APSR_nzcv, FPSCR
4BF734:  BLT             loc_4BF784
4BF736:  VLDR            S6, =3.1416
4BF73A:  VSUB.F32        S4, S6, S4
4BF73E:  VCMPE.F32       S0, S4
4BF742:  VMRS            APSR_nzcv, FPSCR
4BF746:  BGT             loc_4BF784
4BF748:  LDR.W           R0, [R10,#0x14]
4BF74C:  VCMPE.F32       S2, #0.0
4BF750:  VMRS            APSR_nzcv, FPSCR
4BF754:  VLDR            S0, [R0]
4BF758:  BLE             loc_4BF828
4BF75A:  VLDR            S2, [R10,#0x48]
4BF75E:  VLDR            S4, [R10,#0x4C]
4BF762:  VLDR            S8, [R0,#4]
4BF766:  VMUL.F32        S0, S0, S2
4BF76A:  VLDR            S6, [R10,#0x50]
4BF76E:  VNMUL.F32       S2, S8, S4
4BF772:  VLDR            S10, [R0,#8]
4BF776:  VMUL.F32        S4, S10, S6
4BF77A:  VSUB.F32        S0, S2, S0
4BF77E:  VSUB.F32        S0, S0, S4
4BF782:  B               loc_4BF850
4BF784:  VLDR            S0, [SP,#0xD8+var_70]
4BF788:  VLDR            S6, [R10,#0x48]
4BF78C:  VLDR            S2, [SP,#0xD8+var_70+4]
4BF790:  VLDR            S8, [R10,#0x4C]
4BF794:  VMUL.F32        S0, S0, S6
4BF798:  VLDR            S4, [SP,#0xD8+var_68]
4BF79C:  VMUL.F32        S2, S2, S8
4BF7A0:  VLDR            S10, [R10,#0x50]
4BF7A4:  VMUL.F32        S4, S4, S10
4BF7A8:  VADD.F32        S0, S0, S2
4BF7AC:  VADD.F32        S0, S0, S4
4BF7B0:  B               loc_4BF850
4BF7B2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF7BC)
4BF7B4:  LDR.W           R2, [R0,#0x178]
4BF7B8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF7BA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BF7BC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BF7BE:  LDR.W           R3, [R0,#0x17C]
4BF7C2:  ADD             R2, R3
4BF7C4:  CMP             R2, R1
4BF7C6:  BHI             loc_4BF7E0
4BF7C8:  MOVW            R2, #0xBB8
4BF7CC:  STRD.W          R1, R2, [R0,#0x178]
4BF7D0:  MOVS            R2, #1
4BF7D2:  LDRB.W          R1, [R0,#0x174]
4BF7D6:  STRB.W          R2, [R0,#0x180]
4BF7DA:  ADDS            R1, #1
4BF7DC:  STRB.W          R1, [R0,#0x174]
4BF7E0:  ADDW            R0, R10, #0x4EC; this
4BF7E4:  MOVS            R1, #4; int
4BF7E6:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BF7EA:  MOV             R4, R0
4BF7EC:  LDR.W           R0, [R5,#0x59C]; this
4BF7F0:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BF7F4:  TST             R0, R4
4BF7F6:  BEQ             loc_4BF820
4BF7F8:  ADD             R4, SP, #0xD8+var_70
4BF7FA:  MOV             R1, R5; CPed *
4BF7FC:  MOV             R0, R4; this
4BF7FE:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BF802:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x4BF80C)
4BF804:  MOV             R1, R4; CEvent *
4BF806:  MOVS            R2, #0; bool
4BF808:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
4BF80A:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
4BF80C:  ADDS            R0, #8
4BF80E:  STR             R0, [SP,#0xD8+var_70]
4BF810:  LDR.W           R0, [R10,#0x440]
4BF814:  ADDS            R0, #0x68 ; 'h'; this
4BF816:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF81A:  MOV             R0, R4; this
4BF81C:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
4BF820:  ADD             R0, SP, #0xD8+var_B0; this
4BF822:  BLX             j__ZN25CEventPedCollisionWithPedD2Ev; CEventPedCollisionWithPed::~CEventPedCollisionWithPed()
4BF826:  B               def_4BEF54; jumptable 004BEF54 default case
4BF828:  VLDR            S2, [R10,#0x48]
4BF82C:  VLDR            S4, [R10,#0x4C]
4BF830:  VLDR            S8, [R0,#4]
4BF834:  VMUL.F32        S0, S0, S2
4BF838:  VLDR            S6, [R10,#0x50]
4BF83C:  VMUL.F32        S4, S8, S4
4BF840:  VLDR            S10, [R0,#8]
4BF844:  VMUL.F32        S2, S10, S6
4BF848:  VADD.F32        S0, S0, S4
4BF84C:  VADD.F32        S0, S0, S2
4BF850:  VLDR            S2, =0.1
4BF854:  VCMPE.F32       S0, S2
4BF858:  VMRS            APSR_nzcv, FPSCR
4BF85C:  BLE             def_4BEF54; jumptable 004BEF54 default case
4BF85E:  VMOV.F32        S0, #20.0
4BF862:  VMIN.F32        D0, D8, D0
4BF866:  VMOV            R2, S0; float
4BF86A:  MOV             R0, R5; this
4BF86C:  MOV             R1, R10; CVehicle *
4BF86E:  MOVS            R3, #0; bool
4BF870:  BLX             j__ZN4CPed14KillPedWithCarEP8CVehiclefb; CPed::KillPedWithCar(CVehicle *,float,bool)
4BF874:  LDR.W           R0, [R5,#0x444]; jumptable 004BEF54 default case
4BF878:  CMP             R0, #0
4BF87A:  BEQ.W           loc_4BF9BC
4BF87E:  LDR.W           R1, [R5,#0xE0]
4BF882:  LDRB.W          R1, [R1,#0x3A]
4BF886:  AND.W           R1, R1, #7
4BF88A:  CMP             R1, #4
4BF88C:  IT NE
4BF88E:  CMPNE           R1, #1
4BF890:  BNE.W           loc_4BF9BC
4BF894:  LDR             R0, [R0,#4]; this
4BF896:  BLX             j__ZN15CPedClothesDesc21GetIsWearingBalaclavaEv; CPedClothesDesc::GetIsWearingBalaclava(void)
4BF89A:  CMP             R0, #1
4BF89C:  BNE.W           loc_4BF9BC
4BF8A0:  LDR.W           R0, [R5,#0xE0]
4BF8A4:  LDRB.W          R1, [R0,#0x3A]
4BF8A8:  AND.W           R1, R1, #7
4BF8AC:  SUBS            R1, #2
4BF8AE:  UXTB            R1, R1
4BF8B0:  CMP             R1, #2
4BF8B2:  BHI             loc_4BF8BC
4BF8B4:  LDRB.W          R1, [R0,#0x44]
4BF8B8:  LSLS            R1, R1, #0x1A
4BF8BA:  BMI             loc_4BF904
4BF8BC:  VMOV.F32        S2, #1.0
4BF8C0:  VLDR            S0, [R5,#0xDC]
4BF8C4:  VCMPE.F32       S0, S2
4BF8C8:  VMRS            APSR_nzcv, FPSCR
4BF8CC:  BLE             loc_4BF9BC
4BF8CE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF8D6)
4BF8D0:  LDR             R1, =(dword_9EFB80 - 0x4BF8D8)
4BF8D2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF8D4:  ADD             R1, PC; dword_9EFB80
4BF8D6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BF8D8:  LDR             R1, [R1]
4BF8DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BF8DC:  ADD.W           R1, R1, #0x3E8
4BF8E0:  CMP             R0, R1
4BF8E2:  BLS             loc_4BF9BC
4BF8E4:  VMOV.F32        S2, #3.0
4BF8E8:  LDR             R1, =(dword_9EFB80 - 0x4BF8F6)
4BF8EA:  VLDR            S4, =40.0
4BF8EE:  VMOV.F32        S16, #30.0
4BF8F2:  ADD             R1, PC; dword_9EFB80
4BF8F4:  VCMPE.F32       S0, S2
4BF8F8:  VMRS            APSR_nzcv, FPSCR
4BF8FC:  IT GT
4BF8FE:  VMOVGT.F32      S16, S4
4BF902:  B               loc_4BF938
4BF904:  VLDR            S0, [R0,#0x5C]
4BF908:  VLDR            S2, =0.04
4BF90C:  VABS.F32        S0, S0
4BF910:  VCMPE.F32       S0, S2
4BF914:  VMRS            APSR_nzcv, FPSCR
4BF918:  BLE             loc_4BF9BC
4BF91A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF922)
4BF91C:  LDR             R1, =(dword_9EFB84 - 0x4BF924)
4BF91E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF920:  ADD             R1, PC; dword_9EFB84
4BF922:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BF924:  LDR             R1, [R1]
4BF926:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BF928:  ADD.W           R1, R1, #0x7D0
4BF92C:  CMP             R0, R1
4BF92E:  BLS             loc_4BF9BC
4BF930:  LDR             R1, =(dword_9EFB84 - 0x4BF93A)
4BF932:  VLDR            S16, =40.0
4BF936:  ADD             R1, PC; dword_9EFB84
4BF938:  STR             R0, [R1]
4BF93A:  ADD             R0, SP, #0xD8+var_B0; this
4BF93C:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BF940:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x4BF950)
4BF942:  ADD.W           R4, R0, #0x10
4BF946:  MOV.W           R2, #0xFFFFFFFF
4BF94A:  STR             R5, [SP,#0xD8+var_A0]
4BF94C:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
4BF94E:  VSTR            S16, [SP,#0xD8+var_9C]
4BF952:  STR             R2, [SP,#0xD8+var_98]
4BF954:  MOVS            R2, #0
4BF956:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
4BF958:  MOV             R0, R5; this
4BF95A:  STRD.W          R2, R2, [SP,#0xD8+var_94]
4BF95E:  ADDS            R1, #8
4BF960:  STR             R2, [SP,#0xD8+var_8C]
4BF962:  STR             R1, [SP,#0xD8+var_B0]
4BF964:  MOV             R1, R4; CEntity **
4BF966:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4BF96A:  LDR             R0, [SP,#0xD8+var_98]
4BF96C:  ADDS            R0, #1
4BF96E:  BNE             loc_4BF994
4BF970:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BF978)
4BF972:  LDR             R1, [SP,#0xD8+var_A0]
4BF974:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BF976:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BF978:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BF97A:  STR             R0, [SP,#0xD8+var_98]
4BF97C:  LDR             R0, [R1,#0x14]
4BF97E:  ADD.W           R2, R0, #0x30 ; '0'
4BF982:  CMP             R0, #0
4BF984:  IT EQ
4BF986:  ADDEQ           R2, R1, #4
4BF988:  VLDR            D16, [R2]
4BF98C:  LDR             R0, [R2,#8]
4BF98E:  STR             R0, [SP,#0xD8+var_8C]
4BF990:  VSTR            D16, [SP,#0xD8+var_94]
4BF994:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4BF998:  ADD             R1, SP, #0xD8+var_B0; CEvent *
4BF99A:  MOVS            R2, #0; bool
4BF99C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BF9A0:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x4BF9A6)
4BF9A2:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
4BF9A4:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
4BF9A6:  LDR             R0, [SP,#0xD8+var_A0]; this
4BF9A8:  ADDS            R1, #8
4BF9AA:  STR             R1, [SP,#0xD8+var_B0]
4BF9AC:  CMP             R0, #0
4BF9AE:  ITT NE
4BF9B0:  MOVNE           R1, R4; CEntity **
4BF9B2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BF9B6:  ADD             R0, SP, #0xD8+var_B0; this
4BF9B8:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
4BF9BC:  MOVS            R0, #0
4BF9BE:  STRB.W          R0, [R8]
4BF9C2:  ADD             SP, SP, #0x80
4BF9C4:  VPOP            {D8-D14}
4BF9C8:  ADD             SP, SP, #4
4BF9CA:  POP.W           {R8-R11}
4BF9CE:  POP             {R4-R7,PC}
