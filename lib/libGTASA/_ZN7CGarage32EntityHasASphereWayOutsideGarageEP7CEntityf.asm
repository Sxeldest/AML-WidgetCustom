; =========================================================
; Game Engine Function: _ZN7CGarage32EntityHasASphereWayOutsideGarageEP7CEntityf
; Address            : 0x31320E - 0x313344
; =========================================================

31320E:  PUSH            {R4-R7,LR}
313210:  ADD             R7, SP, #0xC
313212:  PUSH.W          {R8-R11}
313216:  SUB             SP, SP, #4
313218:  VPUSH           {D8}
31321C:  SUB             SP, SP, #0x10
31321E:  MOV             R10, R1
313220:  MOV             R5, R0
313222:  MOV             R0, R10; this
313224:  MOV             R8, R2
313226:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31322A:  LDR.W           R11, [R0,#0x2C]
31322E:  LDRSH.W         R0, [R11]
313232:  CMP             R0, #1
313234:  BLT             loc_313330
313236:  VMOV            S16, R8
31323A:  ADD.W           R8, R10, #4
31323E:  ADD.W           R9, SP, #0x38+var_34
313242:  MOVS            R4, #0
313244:  MOVS            R6, #0
313246:  LDR.W           R1, [R10,#0x14]
31324A:  CBNZ            R1, loc_313260
31324C:  MOV             R0, R10; this
31324E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
313252:  LDR.W           R1, [R10,#0x14]; CMatrix *
313256:  MOV             R0, R8; this
313258:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31325C:  LDR.W           R1, [R10,#0x14]
313260:  LDR.W           R0, [R11,#8]
313264:  ADDS            R2, R0, R4
313266:  MOV             R0, R9
313268:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
31326C:  LDR.W           R0, [R11,#8]
313270:  VLDR            S4, [R5,#8]
313274:  ADD             R0, R4
313276:  VLDR            S2, [SP,#0x38+var_2C]
31327A:  VLDR            S0, [R0,#0xC]
31327E:  VADD.F32        S0, S0, S16
313282:  VSUB.F32        S4, S4, S0
313286:  VCMPE.F32       S4, S2
31328A:  VMRS            APSR_nzcv, FPSCR
31328E:  BGT             loc_313334
313290:  VLDR            S4, [R5,#0x1C]
313294:  VADD.F32        S4, S0, S4
313298:  VCMPE.F32       S4, S2
31329C:  VMRS            APSR_nzcv, FPSCR
3132A0:  ITTTT GE
3132A2:  VLDRGE          S2, [SP,#0x38+var_34]
3132A6:  VLDRGE          S4, [SP,#0x38+var_30]
3132AA:  VLDRGE          S6, [R5]
3132AE:  VLDRGE          S8, [R5,#4]
3132B2:  ITTTT GE
3132B4:  VLDRGE          S10, [R5,#0xC]
3132B8:  VLDRGE          S12, [R5,#0x10]
3132BC:  VSUBGE.F32      S4, S4, S8
3132C0:  VSUBGE.F32      S2, S2, S6
3132C4:  ITTTT GE
3132C6:  VMULGE.F32      S8, S4, S12
3132CA:  VMULGE.F32      S10, S2, S10
3132CE:  VNEGGE.F32      S6, S0
3132D2:  VADDGE.F32      S8, S10, S8
3132D6:  ITT GE
3132D8:  VCMPEGE.F32     S8, S6
3132DC:  VMRSGE          APSR_nzcv, FPSCR
3132E0:  BLT             loc_313334
3132E2:  VLDR            S10, [R5,#0x20]
3132E6:  VADD.F32        S10, S0, S10
3132EA:  VCMPE.F32       S8, S10
3132EE:  VMRS            APSR_nzcv, FPSCR
3132F2:  BGT             loc_313334
3132F4:  VLDR            S8, [R5,#0x14]
3132F8:  VLDR            S10, [R5,#0x18]
3132FC:  VMUL.F32        S2, S2, S8
313300:  VMUL.F32        S4, S4, S10
313304:  VADD.F32        S2, S2, S4
313308:  VCMPE.F32       S2, S6
31330C:  VMRS            APSR_nzcv, FPSCR
313310:  BLT             loc_313334
313312:  VLDR            S4, [R5,#0x24]
313316:  VADD.F32        S0, S0, S4
31331A:  VCMPE.F32       S2, S0
31331E:  VMRS            APSR_nzcv, FPSCR
313322:  BGT             loc_313334
313324:  LDRSH.W         R0, [R11]
313328:  ADDS            R6, #1
31332A:  ADDS            R4, #0x14
31332C:  CMP             R6, R0
31332E:  BLT             loc_313246
313330:  MOVS            R0, #0
313332:  B               loc_313336
313334:  MOVS            R0, #1
313336:  ADD             SP, SP, #0x10
313338:  VPOP            {D8}
31333C:  ADD             SP, SP, #4
31333E:  POP.W           {R8-R11}
313342:  POP             {R4-R7,PC}
