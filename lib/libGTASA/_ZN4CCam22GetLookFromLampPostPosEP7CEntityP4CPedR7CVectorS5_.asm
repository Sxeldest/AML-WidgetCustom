; =========================================================
; Game Engine Function: _ZN4CCam22GetLookFromLampPostPosEP7CEntityP4CPedR7CVectorS5_
; Address            : 0x3D5228 - 0x3D5434
; =========================================================

3D5228:  PUSH            {R4-R7,LR}
3D522A:  ADD             R7, SP, #0xC
3D522C:  PUSH.W          {R8-R11}
3D5230:  SUB             SP, SP, #4
3D5232:  VPUSH           {D8-D11}
3D5236:  SUB             SP, SP, #0x98
3D5238:  ADD.W           R9, SP, #0xD8+var_80
3D523C:  MOVS            R0, #(byte_9+6)
3D523E:  MOVS            R1, #1
3D5240:  MOVS            R2, #0
3D5242:  MOV             R4, R3
3D5244:  STRD.W          R0, R9, [SP,#0xD8+var_D8]; __int16 *
3D5248:  STRD.W          R2, R2, [SP,#0xD8+var_D0]; CEntity **
3D524C:  SUB.W           R3, R7, #-var_82; bool
3D5250:  STRD.W          R2, R1, [SP,#0xD8+var_C8]; bool
3D5254:  MOV             R0, R4; this
3D5256:  STR             R1, [SP,#0xD8+var_C0]; bool
3D5258:  MOVS            R1, #0x41F00000; CVector *
3D525E:  MOVS            R2, #1; float
3D5260:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
3D5264:  LDRSH.W         R0, [R7,#var_82]
3D5268:  CMP             R0, #1
3D526A:  BLT.W           loc_3D541C
3D526E:  LDR             R0, =(ARRESTCAM_LAMP_BEST_DIST_ptr - 0x3D5280)
3D5270:  VMOV.F32        S18, #5.0
3D5274:  VLDR            S20, =10000.0
3D5278:  MOV.W           R11, #0
3D527C:  ADD             R0, PC; ARRESTCAM_LAMP_BEST_DIST_ptr
3D527E:  VLDR            S16, =0.9
3D5282:  MOVS            R6, #0
3D5284:  LDR             R0, [R0]; ARRESTCAM_LAMP_BEST_DIST
3D5286:  STR             R0, [SP,#0xD8+var_B4]
3D5288:  LDR             R0, =(ARRESTCAM_LAMP_BEST_DIST_ptr - 0x3D528E)
3D528A:  ADD             R0, PC; ARRESTCAM_LAMP_BEST_DIST_ptr
3D528C:  LDR             R0, [R0]; ARRESTCAM_LAMP_BEST_DIST
3D528E:  STR             R0, [SP,#0xD8+var_B8]
3D5290:  SXTH.W          R10, R11
3D5294:  LDR.W           R5, [R9,R10,LSL#2]
3D5298:  LDR             R0, [R5,#0x1C]
3D529A:  TST.W           R0, #0x40004
3D529E:  BEQ.W           loc_3D5408
3D52A2:  LDR             R0, [R5,#0x14]
3D52A4:  CBNZ            R0, loc_3D52B6
3D52A6:  MOV             R0, R5; this
3D52A8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3D52AC:  LDR             R1, [R5,#0x14]; CMatrix *
3D52AE:  ADDS            R0, R5, #4; this
3D52B0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3D52B4:  LDR             R0, [R5,#0x14]
3D52B6:  VLDR            S0, [R0,#0x28]
3D52BA:  VCMPE.F32       S0, S16
3D52BE:  VMRS            APSR_nzcv, FPSCR
3D52C2:  BLE.W           loc_3D5408
3D52C6:  LDR.W           R5, [R9,R10,LSL#2]
3D52CA:  LDRSH.W         R0, [R5,#0x26]; int
3D52CE:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3D52D2:  CMP             R0, #1
3D52D4:  BNE.W           loc_3D5408
3D52D8:  LDR             R0, [R5,#0x14]
3D52DA:  VLDR            D16, [R4]
3D52DE:  ADD.W           R1, R0, #0x30 ; '0'
3D52E2:  CMP             R0, #0
3D52E4:  IT EQ
3D52E6:  ADDEQ           R1, R5, #4
3D52E8:  VLDR            D17, [R1]
3D52EC:  VSUB.F32        D16, D17, D16
3D52F0:  VMUL.F32        D0, D16, D16
3D52F4:  VADD.F32        S0, S0, S1
3D52F8:  VSQRT.F32       S22, S0
3D52FC:  VCMPE.F32       S22, S18
3D5300:  VMRS            APSR_nzcv, FPSCR
3D5304:  BLE.W           loc_3D5408
3D5308:  LDR             R0, [SP,#0xD8+var_B4]
3D530A:  VLDR            S0, [R0]
3D530E:  VSUB.F32        S0, S0, S22
3D5312:  VABS.F32        S0, S0
3D5316:  VCMPE.F32       S0, S20
3D531A:  VMRS            APSR_nzcv, FPSCR
3D531E:  BGE             loc_3D5408
3D5320:  MOV             R0, R5; this
3D5322:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3D5326:  VLDR            D16, [R0,#0xC]
3D532A:  LDR.W           R5, [R9,R10,LSL#2]
3D532E:  LDR             R0, [R0,#0x14]
3D5330:  STR             R0, [SP,#0xD8+var_98]
3D5332:  VSTR            D16, [SP,#0xD8+var_A0]
3D5336:  LDR             R1, [R5,#0x14]
3D5338:  CBNZ            R1, loc_3D534A
3D533A:  MOV             R0, R5; this
3D533C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3D5340:  LDR             R1, [R5,#0x14]; CMatrix *
3D5342:  ADDS            R0, R5, #4; this
3D5344:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3D5348:  LDR             R1, [R5,#0x14]
3D534A:  ADD             R5, SP, #0xD8+var_A0
3D534C:  ADD             R0, SP, #0xD8+var_B0
3D534E:  MOV             R2, R5
3D5350:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3D5354:  VLDR            D16, [SP,#0xD8+var_B0]
3D5358:  ADD.W           R8, SP, #0xD8+var_90
3D535C:  LDR             R0, [SP,#0xD8+var_A8]
3D535E:  STR             R0, [SP,#0xD8+var_98]
3D5360:  MOV             R0, R8; this
3D5362:  VSTR            D16, [SP,#0xD8+var_A0]
3D5366:  VLDR            S0, [R4]
3D536A:  VLDR            S6, [SP,#0xD8+var_A0]
3D536E:  VLDR            S2, [R4,#4]
3D5372:  VLDR            S8, [SP,#0xD8+var_A0+4]
3D5376:  VSUB.F32        S0, S6, S0
3D537A:  VLDR            S4, [R4,#8]
3D537E:  VLDR            S10, [SP,#0xD8+var_98]
3D5382:  VSUB.F32        S2, S8, S2
3D5386:  VSUB.F32        S4, S10, S4
3D538A:  VSTR            S0, [SP,#0xD8+var_90]
3D538E:  VSTR            S2, [SP,#0xD8+var_8C]
3D5392:  VSTR            S4, [SP,#0xD8+var_88]
3D5396:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D539A:  VLDR            S0, [SP,#0xD8+var_90]
3D539E:  MOVS            R0, #0
3D53A0:  VLDR            S6, [R4]
3D53A4:  MOV             R1, R8; CVector *
3D53A6:  VLDR            S2, [SP,#0xD8+var_8C]
3D53AA:  MOVS            R2, #(stderr+1); CVector *
3D53AC:  VADD.F32        S0, S6, S0
3D53B0:  VLDR            S8, [R4,#4]
3D53B4:  VLDR            S4, [SP,#0xD8+var_88]
3D53B8:  MOVS            R3, #0; bool
3D53BA:  VLDR            S10, [R4,#8]
3D53BE:  VSTR            S0, [SP,#0xD8+var_90]
3D53C2:  VADD.F32        S0, S8, S2
3D53C6:  VSTR            S0, [SP,#0xD8+var_8C]
3D53CA:  VADD.F32        S0, S10, S4
3D53CE:  VSTR            S0, [SP,#0xD8+var_88]
3D53D2:  STRD.W          R0, R0, [SP,#0xD8+var_D8]; bool
3D53D6:  STR             R0, [SP,#0xD8+var_D0]; bool
3D53D8:  MOVS            R0, #(stderr+1)
3D53DA:  STRD.W          R0, R0, [SP,#0xD8+var_CC]; CColLine *
3D53DE:  MOV             R0, R5; this
3D53E0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3D53E4:  CMP             R0, #1
3D53E6:  BNE             loc_3D5408
3D53E8:  LDR             R0, [SP,#0xD8+var_B8]
3D53EA:  LDR.W           R6, [R9,R10,LSL#2]
3D53EE:  LDR             R1, [R7,#arg_0]
3D53F0:  VLDR            S0, [R0]
3D53F4:  VLDR            D16, [SP,#0xD8+var_A0]
3D53F8:  VSUB.F32        S0, S0, S22
3D53FC:  LDR             R0, [SP,#0xD8+var_98]
3D53FE:  STR             R0, [R1,#8]
3D5400:  VSTR            D16, [R1]
3D5404:  VABS.F32        S20, S0
3D5408:  ADD.W           R1, R11, #1
3D540C:  LDRSH.W         R0, [R7,#var_82]
3D5410:  SXTH.W          R11, R1
3D5414:  CMP             R11, R0
3D5416:  BLT.W           loc_3D5290
3D541A:  B               loc_3D541E
3D541C:  MOVS            R6, #0
3D541E:  CMP             R6, #0
3D5420:  IT NE
3D5422:  MOVNE           R6, #1
3D5424:  MOV             R0, R6
3D5426:  ADD             SP, SP, #0x98
3D5428:  VPOP            {D8-D11}
3D542C:  ADD             SP, SP, #4
3D542E:  POP.W           {R8-R11}
3D5432:  POP             {R4-R7,PC}
