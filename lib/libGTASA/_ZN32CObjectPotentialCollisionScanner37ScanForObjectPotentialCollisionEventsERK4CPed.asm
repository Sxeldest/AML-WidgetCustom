; =========================================================
; Game Engine Function: _ZN32CObjectPotentialCollisionScanner37ScanForObjectPotentialCollisionEventsERK4CPed
; Address            : 0x4BC07C - 0x4BC320
; =========================================================

4BC07C:  PUSH            {R4-R7,LR}
4BC07E:  ADD             R7, SP, #0xC
4BC080:  PUSH.W          {R8-R11}
4BC084:  SUB             SP, SP, #0x6C; float *
4BC086:  MOV             R4, R1
4BC088:  LDRB            R1, [R0,#8]
4BC08A:  CBNZ            R1, loc_4BC0A0
4BC08C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BC096)
4BC08E:  MOV.W           R2, #0x1F4
4BC092:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BC094:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BC096:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BC098:  STRD.W          R1, R2, [R0]
4BC09C:  MOVS            R1, #1
4BC09E:  STRB            R1, [R0,#8]
4BC0A0:  LDRB            R1, [R0,#9]
4BC0A2:  CBZ             R1, loc_4BC0B4
4BC0A4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BC0AC)
4BC0A6:  MOVS            R2, #0
4BC0A8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BC0AA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BC0AC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BC0AE:  STRB            R2, [R0,#9]
4BC0B0:  STR             R1, [R0]
4BC0B2:  B               loc_4BC0B6
4BC0B4:  LDR             R1, [R0]
4BC0B6:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BC0BE)
4BC0B8:  LDR             R3, [R0,#4]
4BC0BA:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BC0BC:  ADD             R1, R3
4BC0BE:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4BC0C0:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4BC0C2:  CMP             R1, R2
4BC0C4:  BHI.W           loc_4BC318
4BC0C8:  MOV.W           R1, #0x1F4
4BC0CC:  MOVS            R5, #1
4BC0CE:  STRD.W          R2, R1, [R0]
4BC0D2:  STRB            R5, [R0,#8]
4BC0D4:  LDR.W           R0, [R4,#0x440]
4BC0D8:  ADDS            R0, #4; this
4BC0DA:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BC0DE:  MOV             R6, R0
4BC0E0:  CBZ             R6, loc_4BC0F0
4BC0E2:  MOV             R0, R6; this
4BC0E4:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BC0E8:  CMP             R0, #0
4BC0EA:  ITE NE
4BC0EC:  LDRNE           R5, [R6,#8]
4BC0EE:  MOVEQ           R5, #1
4BC0F0:  MOV             R0, R4; this
4BC0F2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BC0F6:  CMP             R5, #1
4BC0F8:  BEQ.W           loc_4BC318
4BC0FC:  CMP             R0, #0
4BC0FE:  BNE.W           loc_4BC318
4BC102:  LDR.W           R0, [R4,#0x440]
4BC106:  ADDS            R0, #4; this
4BC108:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BC10C:  MOV             R6, R0
4BC10E:  CMP             R6, #0
4BC110:  BEQ.W           loc_4BC318
4BC114:  MOV             R0, R6; this
4BC116:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BC11A:  CMP             R0, #0
4BC11C:  BEQ.W           loc_4BC318
4BC120:  ADD.W           R9, SP, #0x88+var_6C
4BC124:  VMOV.I32        Q8, #0
4BC128:  ADD.W           R1, R9, #4
4BC12C:  LDR             R0, =(_ZTV14CObjectScanner_ptr - 0x4BC13A)
4BC12E:  VST1.32         {D16-D17}, [R1]
4BC132:  ADD.W           R1, R9, #0x40 ; '@'
4BC136:  ADD             R0, PC; _ZTV14CObjectScanner_ptr
4BC138:  VST1.32         {D16-D17}, [R1]
4BC13C:  ADD.W           R1, R9, #0x34 ; '4'
4BC140:  VST1.32         {D16-D17}, [R1]
4BC144:  ADD.W           R1, R9, #0x24 ; '$'
4BC148:  VST1.32         {D16-D17}, [R1]
4BC14C:  ADD.W           R1, R9, #0x14
4BC150:  LDR             R0, [R0]; `vtable for'CObjectScanner ...
4BC152:  VST1.32         {D16-D17}, [R1]
4BC156:  MOVS            R1, #0x10
4BC158:  ADDS            R0, #8
4BC15A:  STR             R1, [SP,#0x88+var_64]
4BC15C:  STR             R0, [SP,#0x88+var_6C]
4BC15E:  LDR.W           R0, [R4,#0x590]
4BC162:  CMP             R0, #0
4BC164:  ITT NE
4BC166:  LDRBNE.W        R0, [R4,#0x485]
4BC16A:  MOVSNE.W        R0, R0,LSL#31
4BC16E:  BNE.W           loc_4BC2D8
4BC172:  MOV             R0, R4; this
4BC174:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BC178:  CMP             R0, #0
4BC17A:  BEQ.W           loc_4BC2D8
4BC17E:  MOV             R0, R9; this
4BC180:  MOVS            R1, #2; int
4BC182:  MOV             R2, R4; CPed *
4BC184:  BLX             j__ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed; CEntityScanner::ScanForEntitiesInRange(int,CPed const&)
4BC188:  LDR.W           R10, [SP,#0x88+var_20]
4BC18C:  ADD.W           R8, R9, #0x4C ; 'L'
4BC190:  CMP.W           R10, #0
4BC194:  BEQ.W           loc_4BC2DC
4BC198:  LDRH.W          R0, [R10,#0x144]
4BC19C:  MOVW            R1, #0x401
4BC1A0:  TST             R0, R1
4BC1A2:  BNE.W           loc_4BC2DC
4BC1A6:  LDRB.W          R0, [R10,#0x1C]
4BC1AA:  LSLS            R0, R0, #0x1F
4BC1AC:  BEQ.W           loc_4BC2DC
4BC1B0:  LDR.W           R0, [R10,#0x14]
4BC1B4:  ADD.W           R11, R4, #4
4BC1B8:  LDR             R1, [R4,#0x14]
4BC1BA:  ADD.W           R2, R0, #0x30 ; '0'
4BC1BE:  CMP             R0, #0
4BC1C0:  IT EQ
4BC1C2:  ADDEQ.W         R2, R10, #4
4BC1C6:  CMP             R1, #0
4BC1C8:  MOV             R0, R11
4BC1CA:  VLDR            S0, [R2]
4BC1CE:  IT NE
4BC1D0:  ADDNE.W         R0, R1, #0x30 ; '0'
4BC1D4:  VLDR            D16, [R2,#4]
4BC1D8:  VLDR            S2, [R0]
4BC1DC:  VLDR            D17, [R0,#4]
4BC1E0:  VSUB.F32        S0, S2, S0
4BC1E4:  VSUB.F32        D16, D17, D16
4BC1E8:  VMUL.F32        D1, D16, D16
4BC1EC:  VMUL.F32        S0, S0, S0
4BC1F0:  VADD.F32        S0, S0, S2
4BC1F4:  VADD.F32        S0, S0, S3
4BC1F8:  VLDR            S2, =56.25
4BC1FC:  VCMPE.F32       S0, S2
4BC200:  VMRS            APSR_nzcv, FPSCR
4BC204:  BGE             loc_4BC2DC
4BC206:  MOV             R0, SP; this
4BC208:  MOV             R1, R10
4BC20A:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
4BC20E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4BC21C)
4BC210:  VMOV.F32        S6, #-1.0
4BC214:  LDRSH.W         R1, [R10,#0x26]
4BC218:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4BC21A:  LDR             R2, [R4,#0x14]
4BC21C:  VLDR            S0, [SP,#0x88+var_80]
4BC220:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4BC222:  CMP             R2, #0
4BC224:  LDR.W           R0, [R0,R1,LSL#2]
4BC228:  MOV             R1, R11
4BC22A:  LDR             R0, [R0,#0x2C]
4BC22C:  IT NE
4BC22E:  ADDNE.W         R1, R2, #0x30 ; '0'
4BC232:  VLDR            S2, [R1,#8]
4BC236:  VLDR            S4, [R0,#0x24]
4BC23A:  VADD.F32        S6, S2, S6
4BC23E:  VADD.F32        S8, S0, S4
4BC242:  VCMPE.F32       S6, S8
4BC246:  VMRS            APSR_nzcv, FPSCR
4BC24A:  BGT             loc_4BC2DC
4BC24C:  VMOV.F32        S6, #1.0
4BC250:  VSUB.F32        S0, S0, S4
4BC254:  VADD.F32        S2, S2, S6
4BC258:  VCMPE.F32       S2, S0
4BC25C:  VMRS            APSR_nzcv, FPSCR
4BC260:  BLT             loc_4BC2DC
4BC262:  ADDS            R6, #0xC
4BC264:  MOVS            R0, #0
4BC266:  ADD             R3, SP, #0x88+var_70; CEntity *
4BC268:  STR             R0, [SP,#0x88+var_70]
4BC26A:  MOV             R0, R4; this
4BC26C:  MOV             R1, R6; CPed *
4BC26E:  MOV             R2, R10; CVector *
4BC270:  BLX             j__ZN20CPedGeometryAnalyser21GetIsLineOfSightClearERK4CPedRK7CVectorR7CEntityRf; CPedGeometryAnalyser::GetIsLineOfSightClear(CPed const&,CVector const&,CEntity &,float &)
4BC274:  VMOV.F32        S0, #0.5
4BC278:  VLDR            S2, [SP,#0x88+var_70]
4BC27C:  VCMPE.F32       S2, S0
4BC280:  VMRS            APSR_nzcv, FPSCR
4BC284:  BLE             loc_4BC2DC
4BC286:  CBNZ            R0, loc_4BC2DC
4BC288:  VMOV.F32        S0, #-0.75
4BC28C:  LDR             R0, [R4,#0x14]
4BC28E:  MOV             R2, R10; CVector *
4BC290:  CMP             R0, #0
4BC292:  IT NE
4BC294:  ADDNE.W         R11, R0, #0x30 ; '0'
4BC298:  VLDR            S2, [R11,#8]
4BC29C:  LDRD.W          R0, R1, [R11]
4BC2A0:  STRD.W          R0, R1, [SP,#0x88+var_88]
4BC2A4:  MOV             R0, SP; this
4BC2A6:  VADD.F32        S0, S2, S0
4BC2AA:  MOV             R1, R6; CVector *
4BC2AC:  VSTR            S0, [SP,#0x88+var_80]
4BC2B0:  BLX             j__ZN20CPedGeometryAnalyser21GetIsLineOfSightClearERK7CVectorS2_R7CEntity; CPedGeometryAnalyser::GetIsLineOfSightClear(CVector const&,CVector const&,CEntity &)
4BC2B4:  CBNZ            R0, loc_4BC2DC
4BC2B6:  MOV             R6, SP
4BC2B8:  MOV             R1, R10; CObject *
4BC2BA:  MOV             R0, R6; this
4BC2BC:  MOV             R2, R5; int
4BC2BE:  BLX             j__ZN29CEventPotentialWalkIntoObjectC2EP7CObjecti; CEventPotentialWalkIntoObject::CEventPotentialWalkIntoObject(CObject *,int)
4BC2C2:  LDR.W           R0, [R4,#0x440]
4BC2C6:  MOV             R1, R6; CEvent *
4BC2C8:  MOVS            R2, #0; bool
4BC2CA:  ADDS            R0, #0x68 ; 'h'; this
4BC2CC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BC2D0:  MOV             R0, R6; this
4BC2D2:  BLX             j__ZN29CEventPotentialWalkIntoObjectD2Ev; CEventPotentialWalkIntoObject::~CEventPotentialWalkIntoObject()
4BC2D6:  B               loc_4BC2DC
4BC2D8:  ADD.W           R8, R9, #0x4C ; 'L'
4BC2DC:  LDR             R0, =(_ZTV14CEntityScanner_ptr - 0x4BC2EC)
4BC2DE:  ADD.W           R5, R9, #0xC
4BC2E2:  MOV.W           R9, #0
4BC2E6:  MOVS            R6, #0
4BC2E8:  ADD             R0, PC; _ZTV14CEntityScanner_ptr
4BC2EA:  LDR             R0, [R0]; `vtable for'CEntityScanner ...
4BC2EC:  ADDS            R0, #8
4BC2EE:  STR             R0, [SP,#0x88+var_6C]
4BC2F0:  LDR             R0, [R5,R6]; this
4BC2F2:  CBZ             R0, loc_4BC300
4BC2F4:  ADDS            R4, R5, R6
4BC2F6:  MOV             R1, R4; CEntity **
4BC2F8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BC2FC:  STR.W           R9, [R4]
4BC300:  ADDS            R6, #4
4BC302:  CMP             R6, #0x40 ; '@'
4BC304:  BNE             loc_4BC2F0
4BC306:  LDR.W           R0, [R8]; this
4BC30A:  CBZ             R0, loc_4BC318
4BC30C:  MOV             R1, R8; CEntity **
4BC30E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BC312:  MOVS            R0, #0
4BC314:  STR.W           R0, [R8]
4BC318:  ADD             SP, SP, #0x6C ; 'l'
4BC31A:  POP.W           {R8-R11}
4BC31E:  POP             {R4-R7,PC}
