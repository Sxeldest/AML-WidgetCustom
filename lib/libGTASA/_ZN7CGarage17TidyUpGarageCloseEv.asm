; =========================================================
; Game Engine Function: _ZN7CGarage17TidyUpGarageCloseEv
; Address            : 0x31128C - 0x311426
; =========================================================

31128C:  PUSH            {R4-R7,LR}
31128E:  ADD             R7, SP, #0xC
311290:  PUSH.W          {R8-R11}
311294:  SUB             SP, SP, #0x1C
311296:  STR             R0, [SP,#0x38+var_30]
311298:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x31129E)
31129A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
31129C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
31129E:  LDR             R6, [R0]; CPools::ms_pVehiclePool
3112A0:  LDR             R0, [R6,#8]
3112A2:  SUBS            R5, R0, #1
3112A4:  BEQ.W           loc_31141E
3112A8:  MOVW            R8, #0xA2C
3112AC:  LDR             R0, [R6,#4]
3112AE:  LDRSB           R0, [R0,R5]
3112B0:  CMP             R0, #0
3112B2:  BLT.W           loc_311418
3112B6:  LDR             R0, [R6]
3112B8:  MLA.W           R11, R5, R8, R0
3112BC:  CMP.W           R11, #0
3112C0:  BEQ.W           loc_311418
3112C4:  LDR.W           R0, [R11,#0x5A0]
3112C8:  CMP             R0, #9
3112CA:  IT NE
3112CC:  CMPNE           R0, #0
3112CE:  BNE.W           loc_311418
3112D2:  LDRB.W          R0, [R11,#0x3A]
3112D6:  AND.W           R0, R0, #0xF8
3112DA:  CMP             R0, #0x28 ; '('
3112DC:  BNE.W           loc_311418
3112E0:  LDR             R0, [SP,#0x38+var_30]; this
3112E2:  MOV             R1, R11; CEntity *
3112E4:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
3112E8:  CMP             R0, #1
3112EA:  BNE.W           loc_311418
3112EE:  LDR             R0, [SP,#0x38+var_30]
3112F0:  LDRB.W          R0, [R0,#0x4D]
3112F4:  CMP             R0, #0
3112F6:  BEQ.W           loc_311408
3112FA:  MOV             R0, R11; this
3112FC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
311300:  LDR             R4, [R0,#0x2C]
311302:  LDRSH.W         R0, [R4]
311306:  CMP             R0, #1
311308:  BLT.W           loc_311418
31130C:  STR             R6, [SP,#0x38+var_34]
31130E:  MOV.W           R8, #0
311312:  LDR             R0, [R4,#8]
311314:  MOV.W           R10, #0
311318:  LDR             R6, [SP,#0x38+var_30]
31131A:  MOV.W           R9, #0
31131E:  ADD.W           R1, R11, #0x14
311322:  STR             R1, [SP,#0x38+var_2C]
311324:  B               loc_31133E
311326:  VLDR            S4, [R6,#0x24]
31132A:  VADD.F32        S0, S0, S4
31132E:  VCMPE.F32       S2, S0
311332:  VMRS            APSR_nzcv, FPSCR
311336:  IT GT
311338:  MOVGT.W         R9, #1
31133C:  B               loc_3113EC
31133E:  ADD.W           R2, R0, R8
311342:  LDR             R0, [SP,#0x38+var_2C]
311344:  LDR             R1, [R0]
311346:  ADD             R0, SP, #0x38+var_28
311348:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
31134C:  LDR             R0, [R4,#8]
31134E:  VLDR            S4, [R6,#8]
311352:  ADD.W           R1, R0, R8
311356:  VLDR            S2, [SP,#0x38+var_20]
31135A:  VLDR            S0, [R1,#0xC]
31135E:  VSUB.F32        S4, S4, S0
311362:  VCMPE.F32       S4, S2
311366:  VMRS            APSR_nzcv, FPSCR
31136A:  BGT             loc_3113E8
31136C:  VLDR            S4, [R6,#0x1C]
311370:  VADD.F32        S4, S0, S4
311374:  VCMPE.F32       S4, S2
311378:  VMRS            APSR_nzcv, FPSCR
31137C:  BLT             loc_3113E8
31137E:  VLDR            S2, [SP,#0x38+var_28]
311382:  VLDR            S6, [R6]
311386:  VLDR            S4, [SP,#0x38+var_24]
31138A:  VLDR            S8, [R6,#4]
31138E:  VSUB.F32        S2, S2, S6
311392:  VLDR            S10, [R6,#0xC]
311396:  VNEG.F32        S6, S0
31139A:  VSUB.F32        S4, S4, S8
31139E:  VLDR            S12, [R6,#0x10]
3113A2:  VMUL.F32        S10, S2, S10
3113A6:  VMUL.F32        S8, S4, S12
3113AA:  VADD.F32        S8, S10, S8
3113AE:  VCMPE.F32       S8, S6
3113B2:  VMRS            APSR_nzcv, FPSCR
3113B6:  BLT             loc_3113E8
3113B8:  VLDR            S10, [R6,#0x20]
3113BC:  VADD.F32        S10, S0, S10
3113C0:  VCMPE.F32       S8, S10
3113C4:  VMRS            APSR_nzcv, FPSCR
3113C8:  BGT             loc_3113E8
3113CA:  VLDR            S8, [R6,#0x14]
3113CE:  VLDR            S10, [R6,#0x18]
3113D2:  VMUL.F32        S2, S2, S8
3113D6:  VMUL.F32        S4, S4, S10
3113DA:  VADD.F32        S2, S2, S4
3113DE:  VCMPE.F32       S2, S6
3113E2:  VMRS            APSR_nzcv, FPSCR
3113E6:  BGE             loc_311326
3113E8:  MOV.W           R9, #1
3113EC:  LDRSH.W         R1, [R4]; CEntity *
3113F0:  ADD.W           R10, R10, #1
3113F4:  ADD.W           R8, R8, #0x14
3113F8:  CMP             R10, R1
3113FA:  BLT             loc_31133E
3113FC:  LDR             R6, [SP,#0x38+var_34]
3113FE:  MOVS.W          R0, R9,LSL#31
311402:  MOVW            R8, #0xA2C
311406:  BEQ             loc_311418
311408:  MOV             R0, R11; this
31140A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31140E:  LDR.W           R0, [R11]
311412:  LDR             R1, [R0,#4]
311414:  MOV             R0, R11
311416:  BLX             R1
311418:  SUBS            R5, #1
31141A:  BNE.W           loc_3112AC
31141E:  ADD             SP, SP, #0x1C
311420:  POP.W           {R8-R11}
311424:  POP             {R4-R7,PC}
