; =========================================================
; Game Engine Function: _ZN7CGarage18IsEntityTouching3DEP7CEntity
; Address            : 0x31221C - 0x3123D8
; =========================================================

31221C:  PUSH            {R4-R7,LR}
31221E:  ADD             R7, SP, #0xC
312220:  PUSH.W          {R8-R11}
312224:  SUB             SP, SP, #0xC
312226:  MOV             R5, R0
312228:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x312234)
31222A:  MOV             R4, R1
31222C:  VLDR            S2, [R5,#0x28]
312230:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
312232:  LDRSH.W         R1, [R4,#0x26]
312236:  ADD.W           R10, R4, #4
31223A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
31223C:  LDR.W           R0, [R0,R1,LSL#2]
312240:  LDR             R1, [R4,#0x14]
312242:  LDR             R0, [R0,#0x2C]
312244:  CMP             R1, #0
312246:  VLDR            S0, [R0,#0x24]
31224A:  MOV             R0, R10
31224C:  IT NE
31224E:  ADDNE.W         R0, R1, #0x30 ; '0'
312252:  VSUB.F32        S4, S2, S0
312256:  VLDR            S2, [R0]
31225A:  VCMPE.F32       S2, S4
31225E:  VMRS            APSR_nzcv, FPSCR
312262:  BLT.W           loc_3123CA
312266:  VLDR            S4, [R5,#0x2C]
31226A:  VADD.F32        S4, S0, S4
31226E:  VCMPE.F32       S2, S4
312272:  VMRS            APSR_nzcv, FPSCR
312276:  BGT.W           loc_3123CA
31227A:  VLDR            S2, [R5,#0x30]
31227E:  VSUB.F32        S4, S2, S0
312282:  VLDR            S2, [R0,#4]
312286:  VCMPE.F32       S2, S4
31228A:  VMRS            APSR_nzcv, FPSCR
31228E:  BLT.W           loc_3123CA
312292:  VLDR            S4, [R5,#0x34]
312296:  VADD.F32        S4, S0, S4
31229A:  VCMPE.F32       S2, S4
31229E:  VMRS            APSR_nzcv, FPSCR
3122A2:  BGT.W           loc_3123CA
3122A6:  VLDR            S2, [R5,#8]
3122AA:  VSUB.F32        S4, S2, S0
3122AE:  VLDR            S2, [R0,#8]
3122B2:  VCMPE.F32       S2, S4
3122B6:  VMRS            APSR_nzcv, FPSCR
3122BA:  BLT.W           loc_3123CA
3122BE:  VLDR            S4, [R5,#0x1C]
3122C2:  VADD.F32        S0, S0, S4
3122C6:  VCMPE.F32       S2, S0
3122CA:  VMRS            APSR_nzcv, FPSCR
3122CE:  BGT             loc_3123CA
3122D0:  MOV             R0, R4; this
3122D2:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3122D6:  LDR.W           R9, [R0,#0x2C]
3122DA:  LDRSH.W         R0, [R9]
3122DE:  CMP             R0, #1
3122E0:  BLT             loc_3123CA
3122E2:  MOVS            R6, #0
3122E4:  MOV             R8, SP
3122E6:  MOV.W           R11, #0
3122EA:  LDR             R1, [R4,#0x14]
3122EC:  CBNZ            R1, loc_3122FE
3122EE:  MOV             R0, R4; this
3122F0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3122F4:  LDR             R1, [R4,#0x14]; CMatrix *
3122F6:  MOV             R0, R10; this
3122F8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3122FC:  LDR             R1, [R4,#0x14]
3122FE:  LDR.W           R0, [R9,#8]
312302:  ADDS            R2, R0, R6
312304:  MOV             R0, R8
312306:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
31230A:  LDR.W           R0, [R9,#8]
31230E:  VLDR            S4, [R5,#8]
312312:  ADD             R0, R6
312314:  VLDR            S2, [SP,#0x28+var_20]
312318:  VLDR            S0, [R0,#0xC]
31231C:  VSUB.F32        S4, S4, S0
312320:  VCMPE.F32       S4, S2
312324:  VMRS            APSR_nzcv, FPSCR
312328:  BGT             loc_3123B8
31232A:  VLDR            S4, [R5,#0x1C]
31232E:  VADD.F32        S4, S0, S4
312332:  VCMPE.F32       S4, S2
312336:  VMRS            APSR_nzcv, FPSCR
31233A:  BLT             loc_3123B8
31233C:  VLDR            S2, [SP,#0x28+var_28]
312340:  VLDR            S6, [R5]
312344:  VLDR            S4, [SP,#0x28+var_24]
312348:  VLDR            S8, [R5,#4]
31234C:  VSUB.F32        S2, S2, S6
312350:  VLDR            S10, [R5,#0xC]
312354:  VNEG.F32        S6, S0
312358:  VSUB.F32        S4, S4, S8
31235C:  VLDR            S12, [R5,#0x10]
312360:  VMUL.F32        S10, S2, S10
312364:  VMUL.F32        S8, S4, S12
312368:  VADD.F32        S8, S10, S8
31236C:  VCMPE.F32       S8, S6
312370:  VMRS            APSR_nzcv, FPSCR
312374:  BLT             loc_3123B8
312376:  VLDR            S10, [R5,#0x20]
31237A:  VADD.F32        S10, S0, S10
31237E:  VCMPE.F32       S8, S10
312382:  VMRS            APSR_nzcv, FPSCR
312386:  BGT             loc_3123B8
312388:  VLDR            S8, [R5,#0x14]
31238C:  VLDR            S10, [R5,#0x18]
312390:  VMUL.F32        S2, S2, S8
312394:  VMUL.F32        S4, S4, S10
312398:  VADD.F32        S2, S2, S4
31239C:  VCMPE.F32       S2, S6
3123A0:  VMRS            APSR_nzcv, FPSCR
3123A4:  BLT             loc_3123B8
3123A6:  VLDR            S4, [R5,#0x24]
3123AA:  VADD.F32        S0, S0, S4
3123AE:  VCMPE.F32       S2, S0
3123B2:  VMRS            APSR_nzcv, FPSCR
3123B6:  BLE             loc_3123D4
3123B8:  LDRSH.W         R1, [R9]
3123BC:  ADD.W           R11, R11, #1
3123C0:  ADDS            R6, #0x14
3123C2:  MOVS            R0, #0
3123C4:  CMP             R11, R1
3123C6:  BLT             loc_3122EA
3123C8:  B               loc_3123CC
3123CA:  MOVS            R0, #0
3123CC:  ADD             SP, SP, #0xC
3123CE:  POP.W           {R8-R11}
3123D2:  POP             {R4-R7,PC}
3123D4:  MOVS            R0, #1
3123D6:  B               loc_3123CC
