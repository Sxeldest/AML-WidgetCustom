; =========================================================
; Game Engine Function: _ZNK22CEventVehicleCollision10AffectsPedEP4CPed
; Address            : 0x370F84 - 0x37126E
; =========================================================

370F84:  PUSH            {R4-R7,LR}
370F86:  ADD             R7, SP, #0xC
370F88:  PUSH.W          {R8,R9,R11}
370F8C:  VPUSH           {D8-D14}
370F90:  SUB             SP, SP, #0x40
370F92:  MOV             R5, R1
370F94:  MOV             R4, R0
370F96:  MOV             R0, R5; this
370F98:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
370F9C:  CMP             R0, #1
370F9E:  BNE             loc_370FF8
370FA0:  LDRH            R0, [R4,#0xC]
370FA2:  CBZ             R0, loc_370FA8
370FA4:  MOVS            R0, #1
370FA6:  B               loc_370FFA
370FA8:  LDR             R0, [R4,#0x14]
370FAA:  CBZ             R0, loc_370FF8
370FAC:  LDRB.W          R1, [R5,#0x485]
370FB0:  LSLS            R1, R1, #0x1F
370FB2:  BNE             loc_370FF8
370FB4:  LDR.W           R0, [R0,#0x5A0]
370FB8:  CMP             R0, #5
370FBA:  BEQ             loc_370FF8
370FBC:  LDR             R0, [R5,#0x14]
370FBE:  VLDR            S0, [R4,#0x18]
370FC2:  VLDR            S2, [R4,#0x1C]
370FC6:  VLDR            S6, [R0,#0x10]
370FCA:  VLDR            S8, [R0,#0x14]
370FCE:  VMUL.F32        S0, S0, S6
370FD2:  VLDR            S4, [R4,#0x20]
370FD6:  VMUL.F32        S2, S2, S8
370FDA:  VLDR            S10, [R0,#0x18]
370FDE:  VMUL.F32        S4, S4, S10
370FE2:  VADD.F32        S0, S0, S2
370FE6:  VLDR            S2, =-0.35
370FEA:  VADD.F32        S0, S0, S4
370FEE:  VCMPE.F32       S0, S2
370FF2:  VMRS            APSR_nzcv, FPSCR
370FF6:  BLE             loc_371006
370FF8:  MOVS            R0, #0
370FFA:  ADD             SP, SP, #0x40 ; '@'
370FFC:  VPOP            {D8-D14}
371000:  POP.W           {R8,R9,R11}
371004:  POP             {R4-R7,PC}; float *
371006:  LDR.W           R0, [R5,#0x440]
37100A:  ADDS            R0, #4; this
37100C:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
371010:  MOV             R6, R0
371012:  CMP             R6, #0
371014:  BEQ.W           loc_3711FC
371018:  MOV             R0, R6; this
37101A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37101E:  CMP             R0, #0
371020:  BEQ.W           loc_3711FC
371024:  LDR             R1, [R4,#0x14]; CPed *
371026:  MOV             R0, R5; this
371028:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37102C:  LDR             R1, [R4,#0x14]; CVector *
37102E:  ADD.W           R9, R6, #0xC
371032:  MOV             R8, R0
371034:  MOV             R0, R9; this
371036:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
37103A:  CMP             R8, R0
37103C:  BNE.W           loc_3711FC
371040:  LDR             R1, [R4,#0x14]; float
371042:  LDR.W           R0, [R1,#0x4D0]
371046:  CMP             R0, #0
371048:  ITT EQ
37104A:  LDREQ.W         R0, [R1,#0x4D4]
37104E:  CMPEQ           R0, #0
371050:  BEQ             loc_370FF8
371052:  LDR             R0, [R5,#0x14]
371054:  ADDS            R6, R5, #4
371056:  MOV             R3, SP; CVector *
371058:  CMP             R0, #0
37105A:  MOV             R2, R6
37105C:  IT NE
37105E:  ADDNE.W         R2, R0, #0x30 ; '0'
371062:  LDR             R0, [R2,#8]; this
371064:  ADD             R2, SP, #0x90+var_80; CEntity *
371066:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
37106A:  LDR             R0, [R5,#0x14]
37106C:  MOVS            R1, #0
37106E:  VLDR            S0, [SP,#0x90+var_64]
371072:  MOVS            R2, #0
371074:  CMP             R0, #0
371076:  IT NE
371078:  ADDNE.W         R6, R0, #0x30 ; '0'
37107C:  VLDR            S8, [SP,#0x90+var_68]
371080:  VLDR            S2, [R6]
371084:  MOVS            R0, #0
371086:  VLDR            S4, [R6,#4]
37108A:  VLDR            S10, [R9]
37108E:  VMUL.F32        S3, S8, S2
371092:  VLDR            S11, [SP,#0x90+var_74]
371096:  VMUL.F32        S1, S0, S4
37109A:  VLDR            S12, [R9,#4]
37109E:  VMUL.F32        S8, S10, S8
3710A2:  VLDR            S13, [SP,#0x90+var_70]
3710A6:  VMUL.F32        S20, S10, S11
3710AA:  VMUL.F32        S11, S11, S2
3710AE:  VLDR            S5, [SP,#0x90+var_80]
3710B2:  VMUL.F32        S18, S12, S13
3710B6:  VLDR            S7, [SP,#0x90+var_7C]
3710BA:  VMUL.F32        S13, S13, S4
3710BE:  VLDR            S6, [R6,#8]
3710C2:  VMUL.F32        S0, S12, S0
3710C6:  VLDR            S22, [SP,#0x90+var_58]
3710CA:  VMUL.F32        S15, S7, S4
3710CE:  VLDR            S9, [SP,#0x90+var_78]
3710D2:  VMUL.F32        S16, S5, S2
3710D6:  VLDR            S26, [SP,#0x90+var_54]
3710DA:  VADD.F32        S1, S3, S1
3710DE:  VLDR            S3, [SP,#0x90+var_6C]
3710E2:  VMUL.F32        S4, S22, S4
3710E6:  VLDR            S14, [R9,#8]
3710EA:  VMUL.F32        S7, S12, S7
3710EE:  VADD.F32        S11, S11, S13
3710F2:  VLDR            S13, [SP,#0x90+var_5C]
3710F6:  VADD.F32        S0, S8, S0
3710FA:  VMUL.F32        S8, S3, S6
3710FE:  VMUL.F32        S2, S13, S2
371102:  VADD.F32        S15, S16, S15
371106:  VLDR            S16, [SP,#0x90+var_60]
37110A:  VMUL.F32        S5, S10, S5
37110E:  VMUL.F32        S12, S12, S22
371112:  VMUL.F32        S10, S10, S13
371116:  VMUL.F32        S24, S16, S6
37111A:  VADD.F32        S18, S20, S18
37111E:  VMUL.F32        S20, S9, S6
371122:  VADD.F32        S2, S2, S4
371126:  VMUL.F32        S6, S26, S6
37112A:  VADD.F32        S8, S11, S8
37112E:  VLDR            S11, [SP,#0x90+var_84]
371132:  VADD.F32        S10, S10, S12
371136:  VADD.F32        S12, S5, S7
37113A:  VLDR            S7, [SP,#0x90+var_8C]
37113E:  VMUL.F32        S4, S14, S9
371142:  VLDR            S5, [SP,#0x90+var_90]
371146:  VMUL.F32        S3, S14, S3
37114A:  VLDR            S9, [SP,#0x90+var_88]
37114E:  VMUL.F32        S16, S14, S16
371152:  VADD.F32        S2, S2, S6
371156:  VADD.F32        S6, S7, S8
37115A:  VMUL.F32        S28, S14, S26
37115E:  VADD.F32        S14, S15, S20
371162:  VADD.F32        S1, S1, S24
371166:  VADD.F32        S4, S12, S4
37116A:  VADD.F32        S3, S18, S3
37116E:  VADD.F32        S2, S11, S2
371172:  VCMPE.F32       S6, #0.0
371176:  VMRS            APSR_nzcv, FPSCR
37117A:  VADD.F32        S0, S0, S16
37117E:  VADD.F32        S8, S5, S14
371182:  VADD.F32        S12, S9, S1
371186:  VADD.F32        S4, S5, S4
37118A:  VADD.F32        S14, S7, S3
37118E:  VADD.F32        S10, S10, S28
371192:  VADD.F32        S0, S9, S0
371196:  VCMPE.F32       S8, #0.0
37119A:  VADD.F32        S10, S11, S10
37119E:  IT LT
3711A0:  MOVLT           R1, #1
3711A2:  VMRS            APSR_nzcv, FPSCR
3711A6:  VCMPE.F32       S12, #0.0
3711AA:  IT LT
3711AC:  ADDLT           R1, #1
3711AE:  VMRS            APSR_nzcv, FPSCR
3711B2:  VCMPE.F32       S2, #0.0
3711B6:  IT LT
3711B8:  ADDLT           R1, #1
3711BA:  VMRS            APSR_nzcv, FPSCR
3711BE:  VCMPE.F32       S14, #0.0
3711C2:  IT LT
3711C4:  ADDLT           R1, #1
3711C6:  VMRS            APSR_nzcv, FPSCR
3711CA:  VCMPE.F32       S4, #0.0
3711CE:  IT LT
3711D0:  MOVLT           R2, #1
3711D2:  VMRS            APSR_nzcv, FPSCR
3711D6:  VCMPE.F32       S0, #0.0
3711DA:  IT LT
3711DC:  ADDLT           R2, #1
3711DE:  VMRS            APSR_nzcv, FPSCR
3711E2:  VCMPE.F32       S10, #0.0
3711E6:  IT LT
3711E8:  ADDLT           R2, #1
3711EA:  VMRS            APSR_nzcv, FPSCR
3711EE:  IT LT
3711F0:  ADDLT           R2, #1
3711F2:  CMP             R1, #4
3711F4:  IT NE
3711F6:  CMPNE           R2, #4
3711F8:  BNE.W           loc_370FFA
3711FC:  LDR.W           R0, [R5,#0x440]
371200:  ADDS            R0, #4; this
371202:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
371206:  MOV             R5, R0
371208:  CMP             R5, #0
37120A:  BEQ.W           loc_370FA4
37120E:  LDR             R0, [R5]
371210:  LDR             R1, [R0,#0x14]
371212:  MOV             R0, R5
371214:  BLX             R1
371216:  CMP.W           R0, #0x1FC
37121A:  BNE             loc_371250
37121C:  LDR             R1, [R4,#0x14]; CVehicle *
37121E:  LDR             R0, [R5,#0x1C]
371220:  CMP             R0, R1
371222:  BEQ.W           loc_370FF8
371226:  LDR.W           R2, [R1,#0x4D4]
37122A:  CBZ             R2, loc_371230
37122C:  CMP             R2, R0
37122E:  BEQ             loc_371240
371230:  LDR.W           R2, [R1,#0x4D0]
371234:  CMP             R2, #0
371236:  BEQ.W           loc_370FA4
37123A:  CMP             R2, R0
37123C:  BNE.W           loc_370FA4
371240:  LDRB            R0, [R5,#0xD]
371242:  LSLS            R0, R0, #2
371244:  SXTB            R0, R0
371246:  ASRS            R2, R0, #4; int
371248:  MOV             R0, R5; this
37124A:  BLX             j__ZN24CTaskComplexWalkRoundCar13SetNewVehicleEP8CVehiclei; CTaskComplexWalkRoundCar::SetNewVehicle(CVehicle *,int)
37124E:  B               loc_370FA4
371250:  LDR             R0, [R5]
371252:  LDR             R1, [R0,#0x14]
371254:  MOV             R0, R5
371256:  BLX             R1
371258:  MOVW            R1, #0x1F9
37125C:  CMP             R0, R1
37125E:  BNE.W           loc_370FA4
371262:  LDR             R0, [R4,#0x14]
371264:  LDR             R1, [R5,#0xC]
371266:  CMP             R1, R0
371268:  BNE.W           loc_370FA4
37126C:  B               loc_370FF8
