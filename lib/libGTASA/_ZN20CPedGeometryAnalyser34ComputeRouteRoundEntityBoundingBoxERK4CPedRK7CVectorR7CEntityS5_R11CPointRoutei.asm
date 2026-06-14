; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedRK7CVectorR7CEntityS5_R11CPointRoutei
; Address            : 0x4AF0F8 - 0x4B0248
; =========================================================

4AF0F8:  PUSH            {R4-R7,LR}
4AF0FA:  ADD             R7, SP, #0xC
4AF0FC:  PUSH.W          {R8-R11}
4AF100:  SUB             SP, SP, #4
4AF102:  VPUSH           {D8-D15}
4AF106:  SUB             SP, SP, #0x1C8; float *
4AF108:  MOV             R6, R0
4AF10A:  LDR.W           R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x4AF116)
4AF10E:  MOV             R10, R1
4AF110:  LDR             R1, [R7,#arg_0]
4AF112:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
4AF114:  MOV             R4, R2
4AF116:  MOVS            R2, #0
4AF118:  ADDS            R5, R6, #4
4AF11A:  LDR.W           R11, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
4AF11E:  MOV             R9, R3
4AF120:  STR             R2, [R1]
4AF122:  MOV             R1, R5
4AF124:  ADD             R2, SP, #0x228+var_90; CEntity *
4AF126:  LDR.W           R0, [R11]; CPedGeometryAnalyser::ms_fPedNominalRadius
4AF12A:  STR             R0, [SP,#0x228+var_1E0]
4AF12C:  MOV             R0, #0x3E333333
4AF134:  STR.W           R0, [R11]; CPedGeometryAnalyser::ms_fPedNominalRadius
4AF138:  LDR             R0, [R6,#0x14]
4AF13A:  CMP             R0, #0
4AF13C:  IT NE
4AF13E:  ADDNE.W         R1, R0, #0x30 ; '0'
4AF142:  LDR             R0, [R1,#8]; this
4AF144:  MOV             R1, R4; CEntity *
4AF146:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AF14A:  MOV             R0, R6
4AF14C:  MOV             R1, R5
4AF14E:  STR             R0, [SP,#0x228+var_1E4]
4AF150:  ADD.W           R8, SP, #0x228+var_138
4AF154:  LDR             R0, [R6,#0x14]
4AF156:  MOV             R6, R5
4AF158:  MOV             R2, R8; CEntity *
4AF15A:  CMP             R0, #0
4AF15C:  IT NE
4AF15E:  ADDNE.W         R1, R0, #0x30 ; '0'
4AF162:  LDR             R0, [R1,#8]; this
4AF164:  MOV             R1, R4; CEntity *
4AF166:  STR             R4, [SP,#0x228+var_1E8]
4AF168:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AF16C:  ADD             R4, SP, #0x228+var_C0
4AF16E:  ADD             R3, SP, #0x228+var_D0; CVector *
4AF170:  MOV             R1, R8; float
4AF172:  MOV             R8, R9
4AF174:  MOV             R2, R4; CVector *
4AF176:  MOV             R9, R3
4AF178:  BLX             j__ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanesUncached(float,CVector const*,CVector*,float *)
4AF17C:  LDR             R0, [SP,#0x228+var_1E0]
4AF17E:  MOVS            R3, #0; CVector *
4AF180:  STR.W           R0, [R11]; CPedGeometryAnalyser::ms_fPedNominalRadius
4AF184:  VLDR            S12, [SP,#0x228+var_C0]
4AF188:  VLDR            S6, [R10]
4AF18C:  VLDR            S1, [SP,#0x228+var_BC]
4AF190:  VLDR            S10, [R10,#4]
4AF194:  VMUL.F32        S5, S12, S6
4AF198:  VLDR            S14, [SP,#0x228+var_B8]
4AF19C:  VMUL.F32        S3, S1, S10
4AF1A0:  VLDR            S8, [R10,#8]
4AF1A4:  VLDR            S0, [R8]
4AF1A8:  VMUL.F32        S7, S14, S8
4AF1AC:  VLDR            S4, [R8,#4]
4AF1B0:  VLDR            S2, [R8,#8]
4AF1B4:  VADD.F32        S3, S5, S3
4AF1B8:  VADD.F32        S5, S3, S7
4AF1BC:  VLDR            S3, [SP,#0x228+var_D0]
4AF1C0:  VADD.F32        S5, S3, S5
4AF1C4:  VCMPE.F32       S5, #0.0
4AF1C8:  VMRS            APSR_nzcv, FPSCR
4AF1CC:  BLE             loc_4AF1F0
4AF1CE:  VMUL.F32        S1, S1, S4
4AF1D2:  VMUL.F32        S12, S12, S0
4AF1D6:  VMUL.F32        S14, S14, S2
4AF1DA:  VADD.F32        S12, S12, S1
4AF1DE:  VADD.F32        S12, S12, S14
4AF1E2:  VADD.F32        S12, S3, S12
4AF1E6:  VCMPE.F32       S12, #0.0
4AF1EA:  VMRS            APSR_nzcv, FPSCR
4AF1EE:  BGT             loc_4AF2EE
4AF1F0:  VLDR            S12, [SP,#0x228+var_B4]
4AF1F4:  VLDR            S1, [SP,#0x228+var_B0]
4AF1F8:  VMUL.F32        S5, S12, S6
4AF1FC:  VLDR            S14, [SP,#0x228+var_AC]
4AF200:  VMUL.F32        S3, S1, S10
4AF204:  VMUL.F32        S7, S14, S8
4AF208:  VADD.F32        S3, S5, S3
4AF20C:  VADD.F32        S5, S3, S7
4AF210:  VLDR            S3, [SP,#0x228+var_CC]
4AF214:  VADD.F32        S5, S3, S5
4AF218:  VCMPE.F32       S5, #0.0
4AF21C:  VMRS            APSR_nzcv, FPSCR
4AF220:  BLE             loc_4AF244
4AF222:  VMUL.F32        S1, S1, S4
4AF226:  VMUL.F32        S12, S12, S0
4AF22A:  VMUL.F32        S14, S14, S2
4AF22E:  VADD.F32        S12, S12, S1
4AF232:  VADD.F32        S12, S12, S14
4AF236:  VADD.F32        S12, S3, S12
4AF23A:  VCMPE.F32       S12, #0.0
4AF23E:  VMRS            APSR_nzcv, FPSCR
4AF242:  BGT             loc_4AF2EC
4AF244:  VLDR            S12, [SP,#0x228+var_A8]
4AF248:  VLDR            S1, [SP,#0x228+var_A4]
4AF24C:  VMUL.F32        S5, S12, S6
4AF250:  VLDR            S14, [SP,#0x228+var_A0]
4AF254:  VMUL.F32        S3, S1, S10
4AF258:  VMUL.F32        S7, S14, S8
4AF25C:  VADD.F32        S3, S5, S3
4AF260:  VADD.F32        S5, S3, S7
4AF264:  VLDR            S3, [SP,#0x228+var_C8]
4AF268:  VADD.F32        S5, S3, S5
4AF26C:  VCMPE.F32       S5, #0.0
4AF270:  VMRS            APSR_nzcv, FPSCR
4AF274:  BLE             loc_4AF298
4AF276:  VMUL.F32        S1, S1, S4
4AF27A:  VMUL.F32        S12, S12, S0
4AF27E:  VMUL.F32        S14, S14, S2
4AF282:  VADD.F32        S12, S12, S1
4AF286:  VADD.F32        S12, S12, S14
4AF28A:  VADD.F32        S12, S3, S12
4AF28E:  VCMPE.F32       S12, #0.0
4AF292:  VMRS            APSR_nzcv, FPSCR
4AF296:  BGT             loc_4AF2EC
4AF298:  VLDR            S12, [SP,#0x228+var_9C]
4AF29C:  VLDR            S1, [SP,#0x228+var_98]
4AF2A0:  VMUL.F32        S6, S12, S6
4AF2A4:  VLDR            S14, [SP,#0x228+var_94]
4AF2A8:  VMUL.F32        S10, S1, S10
4AF2AC:  VMUL.F32        S8, S14, S8
4AF2B0:  VADD.F32        S6, S6, S10
4AF2B4:  VADD.F32        S8, S6, S8
4AF2B8:  VLDR            S6, [SP,#0x228+var_C4]
4AF2BC:  VADD.F32        S8, S6, S8
4AF2C0:  VCMPE.F32       S8, #0.0
4AF2C4:  VMRS            APSR_nzcv, FPSCR
4AF2C8:  BLE             loc_4AF2FE
4AF2CA:  VMUL.F32        S4, S1, S4
4AF2CE:  VMUL.F32        S0, S12, S0
4AF2D2:  VMUL.F32        S2, S14, S2
4AF2D6:  VADD.F32        S0, S0, S4
4AF2DA:  VADD.F32        S0, S0, S2
4AF2DE:  VADD.F32        S0, S6, S0
4AF2E2:  VCMPE.F32       S0, #0.0
4AF2E6:  VMRS            APSR_nzcv, FPSCR
4AF2EA:  BLE             loc_4AF2FE
4AF2EC:  MOVS            R3, #0
4AF2EE:  MOV             R0, R3
4AF2F0:  ADD             SP, SP, #0x1C8
4AF2F2:  VPOP            {D8-D15}
4AF2F6:  ADD             SP, SP, #4
4AF2F8:  POP.W           {R8-R11}
4AF2FC:  POP             {R4-R7,PC}; float *
4AF2FE:  LDR             R0, [SP,#0x228+var_1E4]
4AF300:  MOV             R1, R6
4AF302:  ADD             R2, SP, #0x228+var_138; CEntity *
4AF304:  LDR             R0, [R0,#0x14]
4AF306:  CMP             R0, #0
4AF308:  IT NE
4AF30A:  ADDNE.W         R1, R0, #0x30 ; '0'
4AF30E:  LDR             R0, [R1,#8]; this
4AF310:  LDR             R1, [SP,#0x228+var_1E8]; CEntity *
4AF312:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AF316:  VLDR            S16, =0.0
4AF31A:  VMOV.F32        S18, #0.25
4AF31E:  VLDR            S2, [SP,#0x228+var_138]
4AF322:  MOVS            R0, #0
4AF324:  VLDR            S4, [SP,#0x228+var_138+4]
4AF328:  VADD.F32        S6, S2, S16
4AF32C:  VLDR            S12, [SP,#0x228+var_12C]
4AF330:  VADD.F32        S0, S4, S16
4AF334:  VLDR            S14, [SP,#0x228+var_12C+4]
4AF338:  VLDR            S1, [SP,#0x228+var_11C]
4AF33C:  VLDR            S3, [SP,#0x228+var_120]
4AF340:  VLDR            S8, [SP,#0x228+var_110]
4AF344:  VLDR            S5, [SP,#0x228+var_114]
4AF348:  VLDR            S13, [SP,#0x228+var_10C]
4AF34C:  VADD.F32        S6, S6, S12
4AF350:  VLDR            S11, [R10,#4]
4AF354:  VADD.F32        S0, S0, S14
4AF358:  VLDR            S24, [R10,#8]
4AF35C:  VMUL.F32        S13, S13, S16
4AF360:  VLDR            S10, [SP,#0x228+var_130]
4AF364:  VLDR            S22, [SP,#0x228+var_124]
4AF368:  VLDR            S15, [SP,#0x228+var_118]
4AF36C:  VMUL.F32        S22, S22, S16
4AF370:  VADD.F32        S6, S6, S3
4AF374:  VADD.F32        S0, S0, S1
4AF378:  VADD.F32        S6, S6, S5
4AF37C:  VADD.F32        S0, S0, S8
4AF380:  VMUL.F32        S9, S6, S18
4AF384:  VMUL.F32        S7, S0, S18
4AF388:  VSUB.F32        S6, S5, S9
4AF38C:  VSUB.F32        S20, S8, S7
4AF390:  VSUB.F32        S28, S1, S7
4AF394:  VSUB.F32        S19, S14, S7
4AF398:  VMUL.F32        S8, S8, S6
4AF39C:  VMUL.F32        S0, S5, S20
4AF3A0:  VLDR            S5, [R10]
4AF3A4:  VMUL.F32        S26, S5, S20
4AF3A8:  VSUB.F32        S0, S8, S0
4AF3AC:  VMUL.F32        S8, S11, S6
4AF3B0:  VSUB.F32        S26, S8, S26
4AF3B4:  VADD.F32        S8, S0, S13
4AF3B8:  VSUB.F32        S0, S3, S9
4AF3BC:  VMUL.F32        S13, S3, S28
4AF3C0:  VMUL.F32        S1, S1, S0
4AF3C4:  VSUB.F32        S30, S1, S13
4AF3C8:  VMUL.F32        S13, S24, S16
4AF3CC:  VSUB.F32        S1, S2, S9
4AF3D0:  VADD.F32        S24, S26, S13
4AF3D4:  VSUB.F32        S26, S4, S7
4AF3D8:  VMUL.F32        S17, S11, S1
4AF3DC:  VMUL.F32        S4, S4, S1
4AF3E0:  VMUL.F32        S7, S12, S19
4AF3E4:  VMUL.F32        S3, S5, S26
4AF3E8:  VMUL.F32        S2, S2, S26
4AF3EC:  VSUB.F32        S17, S17, S3
4AF3F0:  VMUL.F32        S3, S10, S16
4AF3F4:  VSUB.F32        S10, S12, S9
4AF3F8:  VSUB.F32        S2, S4, S2
4AF3FC:  VMUL.F32        S4, S15, S16
4AF400:  VSUB.F32        S15, S24, S8
4AF404:  VNEG.F32        S9, S26
4AF408:  VADD.F32        S17, S17, S13
4AF40C:  VMUL.F32        S12, S14, S10
4AF410:  VADD.F32        S3, S2, S3
4AF414:  VNEG.F32        S2, S28
4AF418:  VADD.F32        S4, S30, S4
4AF41C:  VCMPE.F32       S15, #0.0
4AF420:  VMRS            APSR_nzcv, FPSCR
4AF424:  VSUB.F32        S14, S12, S7
4AF428:  VNEG.F32        S7, S20
4AF42C:  VNEG.F32        S12, S19
4AF430:  VSUB.F32        S20, S17, S3
4AF434:  VADD.F32        S14, S14, S22
4AF438:  BLT             loc_4AF444
4AF43A:  VCMPE.F32       S20, #0.0
4AF43E:  VMRS            APSR_nzcv, FPSCR
4AF442:  BLT             loc_4AF4BC
4AF444:  VMUL.F32        S22, S11, S10
4AF448:  MOVS            R1, #0
4AF44A:  VMUL.F32        S24, S5, S12
4AF44E:  VADD.F32        S22, S24, S22
4AF452:  VADD.F32        S22, S22, S13
4AF456:  VSUB.F32        S22, S22, S14
4AF45A:  VCMPE.F32       S22, #0.0
4AF45E:  VMRS            APSR_nzcv, FPSCR
4AF462:  VCMPE.F32       S20, #0.0
4AF466:  IT LT
4AF468:  MOVLT           R1, #1
4AF46A:  VMRS            APSR_nzcv, FPSCR
4AF46E:  IT GE
4AF470:  MOVGE           R0, #1
4AF472:  ANDS            R0, R1
4AF474:  BNE             loc_4AF4BC
4AF476:  VMUL.F32        S11, S11, S0
4AF47A:  VMUL.F32        S5, S5, S2
4AF47E:  VCMPE.F32       S22, #0.0
4AF482:  VMRS            APSR_nzcv, FPSCR
4AF486:  VADD.F32        S5, S5, S11
4AF48A:  VADD.F32        S5, S5, S13
4AF48E:  VSUB.F32        S5, S5, S4
4AF492:  BLT             loc_4AF4A2
4AF494:  VCMPE.F32       S5, #0.0
4AF498:  VMRS            APSR_nzcv, FPSCR
4AF49C:  BGE             loc_4AF4A2
4AF49E:  MOVS            R0, #2
4AF4A0:  B               loc_4AF4BC
4AF4A2:  VCMPE.F32       S5, #0.0
4AF4A6:  MOV             R1, R0
4AF4A8:  VMRS            APSR_nzcv, FPSCR
4AF4AC:  VCMPE.F32       S15, #0.0
4AF4B0:  IT GE
4AF4B2:  MOVGE           R1, #3
4AF4B4:  VMRS            APSR_nzcv, FPSCR
4AF4B8:  IT LT
4AF4BA:  MOVLT           R0, R1
4AF4BC:  VLDR            S5, [R8]
4AF4C0:  MOVS            R1, #0
4AF4C2:  VLDR            S11, [R8,#4]
4AF4C6:  VMUL.F32        S7, S5, S7
4AF4CA:  VLDR            S13, [R8,#8]
4AF4CE:  VMUL.F32        S6, S11, S6
4AF4D2:  VMUL.F32        S15, S11, S1
4AF4D6:  VMUL.F32        S9, S5, S9
4AF4DA:  VMUL.F32        S1, S13, S16
4AF4DE:  VADD.F32        S6, S7, S6
4AF4E2:  VADD.F32        S7, S9, S15
4AF4E6:  VADD.F32        S6, S6, S1
4AF4EA:  VADD.F32        S7, S7, S1
4AF4EE:  VSUB.F32        S6, S6, S8
4AF4F2:  VSUB.F32        S8, S7, S3
4AF4F6:  VCMPE.F32       S6, #0.0
4AF4FA:  VMRS            APSR_nzcv, FPSCR
4AF4FE:  BLT             loc_4AF50A
4AF500:  VCMPE.F32       S8, #0.0
4AF504:  VMRS            APSR_nzcv, FPSCR
4AF508:  BLT             loc_4AF582
4AF50A:  VMUL.F32        S10, S11, S10
4AF50E:  MOVS            R2, #0
4AF510:  VMUL.F32        S12, S5, S12
4AF514:  VADD.F32        S10, S12, S10
4AF518:  VADD.F32        S10, S10, S1
4AF51C:  VSUB.F32        S10, S10, S14
4AF520:  VCMPE.F32       S10, #0.0
4AF524:  VMRS            APSR_nzcv, FPSCR
4AF528:  VCMPE.F32       S8, #0.0
4AF52C:  IT LT
4AF52E:  MOVLT           R2, #1
4AF530:  VMRS            APSR_nzcv, FPSCR
4AF534:  IT GE
4AF536:  MOVGE           R1, #1
4AF538:  ANDS            R1, R2
4AF53A:  BNE             loc_4AF582
4AF53C:  VMUL.F32        S0, S11, S0
4AF540:  VMUL.F32        S2, S5, S2
4AF544:  VCMPE.F32       S10, #0.0
4AF548:  VMRS            APSR_nzcv, FPSCR
4AF54C:  VADD.F32        S0, S2, S0
4AF550:  VADD.F32        S0, S0, S1
4AF554:  VSUB.F32        S0, S0, S4
4AF558:  BLT             loc_4AF568
4AF55A:  VCMPE.F32       S0, #0.0
4AF55E:  VMRS            APSR_nzcv, FPSCR
4AF562:  BGE             loc_4AF568
4AF564:  MOVS            R1, #2
4AF566:  B               loc_4AF582
4AF568:  VCMPE.F32       S0, #0.0
4AF56C:  MOV             R2, R1
4AF56E:  VMRS            APSR_nzcv, FPSCR
4AF572:  VCMPE.F32       S6, #0.0
4AF576:  IT GE
4AF578:  MOVGE           R2, #3
4AF57A:  VMRS            APSR_nzcv, FPSCR
4AF57E:  IT LT
4AF580:  MOVLT           R1, R2
4AF582:  MOVS            R3, #0; CVector *
4AF584:  CMP             R0, R1
4AF586:  BEQ.W           loc_4AF2EE
4AF58A:  LDR             R0, [SP,#0x228+var_1E4]
4AF58C:  MOV             R1, R6
4AF58E:  ADD             R2, SP, #0x228+var_90; CEntity *
4AF590:  MOV             R5, R0
4AF592:  LDR             R0, [R5,#0x14]
4AF594:  CMP             R0, #0
4AF596:  IT NE
4AF598:  ADDNE.W         R1, R0, #0x30 ; '0'
4AF59C:  LDR.W           R11, [SP,#0x228+var_1E8]
4AF5A0:  LDR             R0, [R1,#8]; this
4AF5A2:  MOV             R1, R11; CEntity *
4AF5A4:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AF5A8:  LDR             R0, [R5,#0x14]
4AF5AA:  ADD             R5, SP, #0x228+var_138
4AF5AC:  MOV             R1, R11; CEntity *
4AF5AE:  CMP             R0, #0
4AF5B0:  MOV             R2, R5; CEntity *
4AF5B2:  IT NE
4AF5B4:  ADDNE.W         R6, R0, #0x30 ; '0'
4AF5B8:  LDR             R0, [R6,#8]; this
4AF5BA:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AF5BE:  MOV             R1, R5; float
4AF5C0:  MOV             R2, R4; CVector *
4AF5C2:  MOV             R3, R9; CVector *
4AF5C4:  BLX             j__ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanesUncached(float,CVector const*,CVector*,float *)
4AF5C8:  VLDR            D16, [R10]
4AF5CC:  LDR.W           R0, [R10,#8]
4AF5D0:  STR             R0, [SP,#0x228+var_D8]
4AF5D2:  VSTR            D16, [SP,#0x228+var_E0]
4AF5D6:  VLDR            D16, [R8]
4AF5DA:  LDR.W           R0, [R8,#8]
4AF5DE:  STR             R0, [SP,#0x228+var_E8]
4AF5E0:  ADD             R0, SP, #0x228+var_FC; this
4AF5E2:  VSTR            D16, [SP,#0x228+var_F0]
4AF5E6:  VLDR            S0, [SP,#0x228+var_E0]
4AF5EA:  VLDR            S6, [SP,#0x228+var_F0]
4AF5EE:  VLDR            S2, [SP,#0x228+var_E0+4]
4AF5F2:  VLDR            S8, [SP,#0x228+var_F0+4]
4AF5F6:  VSUB.F32        S0, S6, S0
4AF5FA:  VLDR            S4, [SP,#0x228+var_D8]
4AF5FE:  VLDR            S10, [SP,#0x228+var_E8]
4AF602:  VSUB.F32        S2, S8, S2
4AF606:  VSUB.F32        S4, S10, S4
4AF60A:  VSTR            S0, [SP,#0x228+var_FC]
4AF60E:  VSTR            S2, [SP,#0x228+var_F8]
4AF612:  VSTR            S4, [SP,#0x228+var_F4]
4AF616:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AF61A:  VLDR            S12, [SP,#0x228+var_E0]
4AF61E:  ADDS            R6, R4, #4
4AF620:  VLDR            S14, [SP,#0x228+var_E0+4]
4AF624:  MOVS            R1, #0
4AF626:  VLDR            S1, [SP,#0x228+var_D8]
4AF62A:  VMOV.F32        S22, S12
4AF62E:  VMOV.F32        S20, S14
4AF632:  VLDR            S0, [SP,#0x228+var_F0]
4AF636:  VMOV.F32        S24, S1
4AF63A:  VLDR            S2, [SP,#0x228+var_F0+4]
4AF63E:  VLDR            S4, [SP,#0x228+var_E8]
4AF642:  MOV             R0, R6
4AF644:  VLDR            S6, [SP,#0x228+var_FC]
4AF648:  MOV.W           LR, #0
4AF64C:  VLDR            S8, [SP,#0x228+var_F8]
4AF650:  VLDR            S10, [SP,#0x228+var_F4]
4AF654:  VLDR            S3, =-0.2
4AF658:  VLDR            S5, =0.2
4AF65C:  B               loc_4AF6D8
4AF65E:  VCMPE.F32       S26, S5
4AF662:  VMRS            APSR_nzcv, FPSCR
4AF666:  BLE.W           loc_4AF822
4AF66A:  ADDS            R2, #1
4AF66C:  BNE.W           loc_4AF822
4AF670:  VMUL.F32        S15, S14, S11
4AF674:  VMUL.F32        S20, S12, S9
4AF678:  VMUL.F32        S22, S1, S7
4AF67C:  VMUL.F32        S11, S11, S8
4AF680:  VMUL.F32        S9, S9, S6
4AF684:  VMUL.F32        S7, S7, S10
4AF688:  VADD.F32        S15, S20, S15
4AF68C:  VADD.F32        S9, S9, S11
4AF690:  VADD.F32        S15, S15, S22
4AF694:  VADD.F32        S7, S9, S7
4AF698:  VADD.F32        S11, S15, S13
4AF69C:  VNEG.F32        S9, S11
4AF6A0:  VDIV.F32        S7, S9, S7
4AF6A4:  VMUL.F32        S9, S8, S7
4AF6A8:  VMUL.F32        S11, S6, S7
4AF6AC:  VMUL.F32        S7, S10, S7
4AF6B0:  VADD.F32        S20, S14, S9
4AF6B4:  VADD.F32        S22, S12, S11
4AF6B8:  VADD.F32        S24, S1, S7
4AF6BC:  VSTR            S20, [SP,#0x228+var_E0+4]
4AF6C0:  VSTR            S22, [SP,#0x228+var_E0]
4AF6C4:  VSTR            S24, [SP,#0x228+var_D8]
4AF6C8:  B               loc_4AF822
4AF6CA:  ALIGN 4
4AF6CC:  DCFS 0.0
4AF6D0:  DCFS -0.2
4AF6D4:  DCFS 0.2
4AF6D8:  VLDR            S9, [R0,#-4]
4AF6DC:  ADD.W           R2, R9, R1
4AF6E0:  VLDR            S11, [R0]
4AF6E4:  MOVS            R3, #0
4AF6E6:  VMUL.F32        S15, S9, S0
4AF6EA:  VLDR            S7, [R0,#4]
4AF6EE:  VMUL.F32        S13, S11, S2
4AF6F2:  VMUL.F32        S26, S11, S20
4AF6F6:  VMUL.F32        S28, S9, S22
4AF6FA:  VMUL.F32        S30, S7, S4
4AF6FE:  VADD.F32        S13, S15, S13
4AF702:  VMUL.F32        S15, S7, S24
4AF706:  VADD.F32        S26, S28, S26
4AF70A:  VADD.F32        S28, S13, S30
4AF70E:  VLDR            S13, [R2]
4AF712:  MOVS            R2, #0
4AF714:  VADD.F32        S26, S26, S15
4AF718:  VADD.F32        S15, S13, S28
4AF71C:  VADD.F32        S26, S13, S26
4AF720:  VCMPE.F32       S15, S3
4AF724:  VMRS            APSR_nzcv, FPSCR
4AF728:  VCMPE.F32       S15, S5
4AF72C:  IT LT
4AF72E:  MOVLT.W         R2, #0xFFFFFFFF
4AF732:  VMRS            APSR_nzcv, FPSCR
4AF736:  VCMPE.F32       S26, S3
4AF73A:  IT GT
4AF73C:  MOVGT           R2, #1
4AF73E:  VMRS            APSR_nzcv, FPSCR
4AF742:  VCMPE.F32       S26, S5
4AF746:  IT LT
4AF748:  MOVLT.W         R3, #0xFFFFFFFF
4AF74C:  VMRS            APSR_nzcv, FPSCR
4AF750:  IT GT
4AF752:  MOVGT           R3, #(stderr+1); CColSphere *
4AF754:  ADDS            R5, R3, #1
4AF756:  IT NE
4AF758:  ADDSNE.W        R4, R2, #1
4AF75C:  BEQ             loc_4AF76A
4AF75E:  CBZ             R3, loc_4AF7CA
4AF760:  CMP             R2, #0
4AF762:  BEQ             loc_4AF7F6
4AF764:  MOV.W           LR, #1
4AF768:  B               loc_4AF822
4AF76A:  CMP             R5, #0
4AF76C:  BNE.W           loc_4AF65E
4AF770:  VCMPE.F32       S15, S5
4AF774:  VMRS            APSR_nzcv, FPSCR
4AF778:  BLE.W           loc_4AF65E
4AF77C:  VMUL.F32        S2, S12, S9
4AF780:  VMUL.F32        S0, S14, S11
4AF784:  VMUL.F32        S4, S1, S7
4AF788:  VMUL.F32        S9, S9, S6
4AF78C:  VADD.F32        S0, S2, S0
4AF790:  VMUL.F32        S2, S11, S8
4AF794:  VADD.F32        S0, S0, S4
4AF798:  VMUL.F32        S4, S7, S10
4AF79C:  VADD.F32        S2, S9, S2
4AF7A0:  VADD.F32        S0, S0, S13
4AF7A4:  VADD.F32        S2, S2, S4
4AF7A8:  VNEG.F32        S0, S0
4AF7AC:  VDIV.F32        S0, S0, S2
4AF7B0:  VMUL.F32        S2, S8, S0
4AF7B4:  VMUL.F32        S4, S6, S0
4AF7B8:  VMUL.F32        S7, S10, S0
4AF7BC:  VADD.F32        S2, S14, S2
4AF7C0:  VADD.F32        S0, S12, S4
4AF7C4:  VADD.F32        S4, S1, S7
4AF7C8:  B               loc_4AF816
4AF7CA:  VSUB.F32        S13, S5, S26
4AF7CE:  VMUL.F32        S26, S11, S13
4AF7D2:  VMUL.F32        S28, S9, S13
4AF7D6:  VMUL.F32        S13, S7, S13
4AF7DA:  VADD.F32        S20, S26, S20
4AF7DE:  VADD.F32        S22, S22, S28
4AF7E2:  VADD.F32        S24, S13, S24
4AF7E6:  VSTR            S20, [SP,#0x228+var_E0+4]
4AF7EA:  VSTR            S22, [SP,#0x228+var_E0]
4AF7EE:  VSTR            S24, [SP,#0x228+var_D8]
4AF7F2:  CMP             R2, #0
4AF7F4:  BNE             loc_4AF764
4AF7F6:  VSUB.F32        S13, S5, S15
4AF7FA:  MOV.W           LR, #1
4AF7FE:  VMUL.F32        S11, S13, S11
4AF802:  VMUL.F32        S9, S13, S9
4AF806:  VMUL.F32        S7, S13, S7
4AF80A:  VADD.F32        S2, S11, S2
4AF80E:  VADD.F32        S0, S9, S0
4AF812:  VADD.F32        S4, S7, S4
4AF816:  VSTR            S2, [SP,#0x228+var_F0+4]
4AF81A:  VSTR            S0, [SP,#0x228+var_F0]
4AF81E:  VSTR            S4, [SP,#0x228+var_E8]
4AF822:  ADDS            R1, #4
4AF824:  ADDS            R0, #0xC
4AF826:  CMP             R1, #0x10
4AF828:  BNE.W           loc_4AF6D8
4AF82C:  MOVS.W          R0, LR,LSL#31
4AF830:  BEQ.W           loc_4AFA48
4AF834:  VSUB.F32        S2, S2, S20
4AF838:  ADD             R0, SP, #0x228+var_FC; this
4AF83A:  VSUB.F32        S0, S0, S22
4AF83E:  VSUB.F32        S4, S4, S24
4AF842:  VSTR            S2, [SP,#0x228+var_F8]
4AF846:  VSTR            S0, [SP,#0x228+var_FC]
4AF84A:  VSTR            S4, [SP,#0x228+var_F4]
4AF84E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AF852:  VLDR            S8, [SP,#0x228+var_F0]
4AF856:  ADD             R2, SP, #0x228+var_D0
4AF858:  VLDR            S6, [SP,#0x228+var_F0+4]
4AF85C:  ADD.W           R12, SP, #0x228+var_90
4AF860:  VLDR            S10, [SP,#0x228+var_E8]
4AF864:  MOV.W           R1, #0xFFFFFFFF
4AF868:  VLDR            S14, [SP,#0x228+var_E0]
4AF86C:  MOVS            R0, #0
4AF86E:  VLDR            S12, [SP,#0x228+var_E0+4]
4AF872:  MOV.W           R3, #0xFFFFFFFF
4AF876:  VLDR            S1, [SP,#0x228+var_D8]
4AF87A:  VLDR            S0, [SP,#0x228+var_FC]
4AF87E:  VLDR            S2, [SP,#0x228+var_F8]
4AF882:  VLDR            S4, [SP,#0x228+var_F4]
4AF886:  VLDR            S5, [R6,#-4]
4AF88A:  MOVS            R5, #0
4AF88C:  VLDR            S7, [R6]
4AF890:  MOVS            R4, #0
4AF892:  VMUL.F32        S11, S5, S8
4AF896:  VLDR            S3, [R6,#4]
4AF89A:  VMUL.F32        S9, S7, S6
4AF89E:  VMUL.F32        S13, S7, S12
4AF8A2:  VMUL.F32        S15, S5, S14
4AF8A6:  VMUL.F32        S26, S3, S10
4AF8AA:  VADD.F32        S9, S11, S9
4AF8AE:  VMUL.F32        S11, S3, S1
4AF8B2:  VADD.F32        S13, S15, S13
4AF8B6:  VADD.F32        S15, S9, S26
4AF8BA:  VLDR            S9, [R2]
4AF8BE:  VADD.F32        S13, S13, S11
4AF8C2:  VADD.F32        S11, S9, S15
4AF8C6:  VADD.F32        S13, S9, S13
4AF8CA:  VCMP.F32        S11, #0.0
4AF8CE:  VMRS            APSR_nzcv, FPSCR
4AF8D2:  VCMP.F32        S13, #0.0
4AF8D6:  IT EQ
4AF8D8:  MOVEQ           R5, #1
4AF8DA:  VMRS            APSR_nzcv, FPSCR
4AF8DE:  IT EQ
4AF8E0:  MOVEQ           R4, #1
4AF8E2:  TST             R4, R5
4AF8E4:  BNE             loc_4AF9C4
4AF8E6:  VCMPE.F32       S13, #0.0
4AF8EA:  VMRS            APSR_nzcv, FPSCR
4AF8EE:  BLT             loc_4AF956
4AF8F0:  VCMPE.F32       S11, #0.0
4AF8F4:  VMRS            APSR_nzcv, FPSCR
4AF8F8:  BGT             loc_4AF956
4AF8FA:  VMUL.F32        S14, S22, S5
4AF8FE:  MOV             R1, R0
4AF900:  VMUL.F32        S12, S20, S7
4AF904:  VMUL.F32        S1, S24, S3
4AF908:  VMUL.F32        S5, S5, S0
4AF90C:  VADD.F32        S12, S14, S12
4AF910:  VMUL.F32        S14, S7, S2
4AF914:  VADD.F32        S12, S12, S1
4AF918:  VMUL.F32        S1, S3, S4
4AF91C:  VADD.F32        S14, S5, S14
4AF920:  VADD.F32        S12, S9, S12
4AF924:  VADD.F32        S14, S14, S1
4AF928:  VNEG.F32        S12, S12
4AF92C:  VDIV.F32        S12, S12, S14
4AF930:  VMUL.F32        S14, S2, S12
4AF934:  VMUL.F32        S1, S0, S12
4AF938:  VMUL.F32        S3, S4, S12
4AF93C:  VADD.F32        S12, S20, S14
4AF940:  VADD.F32        S14, S22, S1
4AF944:  VADD.F32        S1, S24, S3
4AF948:  VSTR            S12, [SP,#0x228+var_E0+4]
4AF94C:  VSTR            S14, [SP,#0x228+var_E0]
4AF950:  VSTR            S1, [SP,#0x228+var_D8]
4AF954:  B               loc_4AF9C4
4AF956:  VCMPE.F32       S13, #0.0
4AF95A:  VMRS            APSR_nzcv, FPSCR
4AF95E:  BGT             loc_4AF9C4
4AF960:  VCMPE.F32       S11, #0.0
4AF964:  VMRS            APSR_nzcv, FPSCR
4AF968:  BLT             loc_4AF9C4
4AF96A:  VMUL.F32        S8, S22, S5
4AF96E:  MOV             R3, R0
4AF970:  VMUL.F32        S6, S20, S7
4AF974:  VMUL.F32        S10, S24, S3
4AF978:  VMUL.F32        S5, S5, S0
4AF97C:  VADD.F32        S6, S8, S6
4AF980:  VMUL.F32        S8, S7, S2
4AF984:  VADD.F32        S6, S6, S10
4AF988:  VMUL.F32        S10, S3, S4
4AF98C:  VADD.F32        S8, S5, S8
4AF990:  VADD.F32        S6, S9, S6
4AF994:  VADD.F32        S8, S8, S10
4AF998:  VNEG.F32        S6, S6
4AF99C:  VDIV.F32        S6, S6, S8
4AF9A0:  VMUL.F32        S8, S2, S6
4AF9A4:  VMUL.F32        S10, S0, S6
4AF9A8:  VMUL.F32        S3, S4, S6
4AF9AC:  VADD.F32        S6, S20, S8
4AF9B0:  VADD.F32        S8, S22, S10
4AF9B4:  VADD.F32        S10, S24, S3
4AF9B8:  VSTR            S6, [SP,#0x228+var_F0+4]
4AF9BC:  VSTR            S8, [SP,#0x228+var_F0]
4AF9C0:  VSTR            S10, [SP,#0x228+var_E8]
4AF9C4:  ADDS            R0, #1
4AF9C6:  ADDS            R6, #0xC
4AF9C8:  ADDS            R2, #4
4AF9CA:  CMP             R0, #4
4AF9CC:  BNE.W           loc_4AF886
4AF9D0:  ORR.W           R0, R1, R3
4AF9D4:  CMP             R0, #0
4AF9D6:  BLT.W           loc_4AF2EC
4AF9DA:  STR.W           R8, [SP,#0x228+var_1EC]
4AF9DE:  VLDR            D16, [R10]
4AF9E2:  STR.W           R10, [SP,#0x228+var_1F0]
4AF9E6:  LDR.W           R0, [R10,#8]
4AF9EA:  STR             R0, [SP,#0x228+var_130]
4AF9EC:  ADDS            R0, R1, #3
4AF9EE:  VSTR            D16, [SP,#0x228+var_138]
4AF9F2:  ASRS            R2, R0, #0x1F
4AF9F4:  ADD.W           R2, R0, R2,LSR#30
4AF9F8:  BIC.W           R2, R2, #3
4AF9FC:  SUBS            R2, R0, R2
4AF9FE:  ADD.W           R0, R2, R2,LSL#1
4AFA02:  ADD.W           R0, R12, R0,LSL#2
4AFA06:  VLDR            D16, [R0]
4AFA0A:  LDR             R0, [R0,#8]
4AFA0C:  STR             R0, [SP,#0x228+var_124]
4AFA0E:  ADDS            R0, R1, #4
4AFA10:  VSTR            D16, [SP,#0x228+var_12C]
4AFA14:  ASRS            R1, R0, #0x1F
4AFA16:  ADD.W           R1, R0, R1,LSR#30
4AFA1A:  BIC.W           R1, R1, #3
4AFA1E:  SUBS            R0, R0, R1
4AFA20:  ADDS            R1, R3, #3
4AFA22:  ADDS            R3, #4
4AFA24:  ASRS            R6, R1, #0x1F
4AFA26:  ADD.W           R6, R1, R6,LSR#30
4AFA2A:  BIC.W           R6, R6, #3
4AFA2E:  SUBS            R1, R1, R6
4AFA30:  ASRS            R6, R3, #0x1F
4AFA32:  ADD.W           R6, R3, R6,LSR#30
4AFA36:  BIC.W           R6, R6, #3
4AFA3A:  SUBS            R3, R3, R6
4AFA3C:  CMP             R2, R3
4AFA3E:  BNE             loc_4AFADC
4AFA40:  MOV.W           R8, #2
4AFA44:  ADD             R4, SP, #0x228+var_138
4AFA46:  B               loc_4AFB14
4AFA48:  LDR             R0, [SP,#0x228+var_1E4]; this
4AFA4A:  ADD             R2, SP, #0x228+var_138; CEntity *
4AFA4C:  MOV             R1, R11; CPed *
4AFA4E:  BLX             j__ZN20CPedGeometryAnalyser27ComputeEntityBoundingSphereERK4CPedR7CEntityR10CColSphere; CPedGeometryAnalyser::ComputeEntityBoundingSphere(CPed const&,CEntity &,CColSphere &)
4AFA52:  VLDR            S0, [R10]
4AFA56:  MOVS            R0, #0
4AFA58:  VLDR            S4, [R8]
4AFA5C:  VLDR            S2, [R10,#4]
4AFA60:  VLDR            S6, [R8,#4]
4AFA64:  VSUB.F32        S0, S4, S0
4AFA68:  STR             R0, [SP,#0x228+var_170]
4AFA6A:  VSUB.F32        S2, S6, S2
4AFA6E:  VMUL.F32        S6, S0, S0
4AFA72:  VMUL.F32        S4, S2, S2
4AFA76:  VSTR            S2, [SP,#0x228+var_178+4]
4AFA7A:  VSTR            S0, [SP,#0x228+var_178]
4AFA7E:  VADD.F32        S4, S6, S4
4AFA82:  VADD.F32        S4, S4, S16
4AFA86:  VSQRT.F32       S4, S4
4AFA8A:  VCMP.F32        S4, #0.0
4AFA8E:  VMRS            APSR_nzcv, FPSCR
4AFA92:  BEQ.W           loc_4AF2EC
4AFA96:  ADD             R5, SP, #0x228+var_178
4AFA98:  MOV             R0, R5; this
4AFA9A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AFA9E:  LDR.W           R0, [R10,#8]
4AFAA2:  ADD             R1, SP, #0x228+var_1D8; CVector *
4AFAA4:  VLDR            D16, [R10]
4AFAA8:  ADD             R3, SP, #0x228+var_E0; CVector *
4AFAAA:  STR             R0, [SP,#0x228+var_1D0]
4AFAAC:  ADD             R0, SP, #0x228+var_F0
4AFAAE:  STR             R0, [SP,#0x228+var_228]; CVector *
4AFAB0:  ADD             R0, SP, #0x228+var_138; this
4AFAB2:  MOV             R2, R5; CVector *
4AFAB4:  VSTR            D16, [SP,#0x228+var_1D8]
4AFAB8:  BLX             j__ZNK10CColSphere12IntersectRayERK7CVectorS2_RS0_S3_; CColSphere::IntersectRay(CVector const&,CVector const&,CVector&,CVector&)
4AFABC:  CMP             R0, #0
4AFABE:  BEQ.W           loc_4AF2EC
4AFAC2:  VLDR            S0, [SP,#0x228+var_F0]
4AFAC6:  VLDR            S2, [SP,#0x228+var_F0+4]
4AFACA:  VLDR            S4, [SP,#0x228+var_E8]
4AFACE:  VLDR            S22, [SP,#0x228+var_E0]
4AFAD2:  VLDR            S20, [SP,#0x228+var_E0+4]
4AFAD6:  VLDR            S24, [SP,#0x228+var_D8]
4AFADA:  B               loc_4AF834
4AFADC:  ADD             R4, SP, #0x228+var_138
4AFADE:  MOV.W           R8, #2
4AFAE2:  ADD.W           R6, R4, #0x18
4AFAE6:  ADDS            R2, #3
4AFAE8:  ADD.W           R8, R8, #1
4AFAEC:  ASRS            R5, R2, #0x1F
4AFAEE:  ADD.W           R5, R2, R5,LSR#30
4AFAF2:  BIC.W           R5, R5, #3
4AFAF6:  SUBS            R2, R2, R5
4AFAF8:  CMP             R2, R3
4AFAFA:  ADD.W           R5, R2, R2,LSL#1
4AFAFE:  ADD.W           R5, R12, R5,LSL#2
4AFB02:  VLDR            D16, [R5]
4AFB06:  LDR             R5, [R5,#8]
4AFB08:  STR             R5, [R6,#8]
4AFB0A:  VSTR            D16, [R6]
4AFB0E:  ADD.W           R6, R6, #0xC
4AFB12:  BNE             loc_4AFAE6
4AFB14:  ADD.W           R3, R8, R8,LSL#1
4AFB18:  LDR             R2, [SP,#0x228+var_1EC]
4AFB1A:  CMP             R0, R1
4AFB1C:  ADD.W           R3, R4, R3,LSL#2
4AFB20:  VLDR            D16, [R2]
4AFB24:  LDR             R2, [R2,#8]
4AFB26:  STR             R2, [R3,#8]
4AFB28:  LDR             R2, [SP,#0x228+var_1F0]
4AFB2A:  VSTR            D16, [R3]
4AFB2E:  VLDR            D16, [R2]
4AFB32:  LDR             R2, [R2,#8]
4AFB34:  STR             R2, [SP,#0x228+var_170]
4AFB36:  ADD.W           R2, R0, R0,LSL#1
4AFB3A:  VSTR            D16, [SP,#0x228+var_178]
4AFB3E:  ADD.W           R2, R12, R2,LSL#2
4AFB42:  VLDR            D16, [R2]
4AFB46:  LDR             R2, [R2,#8]
4AFB48:  STR             R2, [SP,#0x228+var_164]
4AFB4A:  VSTR            D16, [SP,#0x228+var_16C]
4AFB4E:  BNE             loc_4AFB58
4AFB50:  MOV.W           R9, #2
4AFB54:  LDR             R6, [R7,#arg_4]
4AFB56:  B               loc_4AFB90
4AFB58:  ADD             R2, SP, #0x228+var_178
4AFB5A:  LDR             R6, [R7,#arg_4]
4AFB5C:  ADDS            R2, #0x18
4AFB5E:  MOV.W           R9, #2
4AFB62:  ADDS            R0, #5
4AFB64:  ADD.W           R9, R9, #1
4AFB68:  ASRS            R3, R0, #0x1F
4AFB6A:  ADD.W           R3, R0, R3,LSR#30
4AFB6E:  BIC.W           R3, R3, #3
4AFB72:  SUBS            R0, R0, R3
4AFB74:  CMP             R0, R1
4AFB76:  ADD.W           R3, R0, R0,LSL#1
4AFB7A:  ADD.W           R3, R12, R3,LSL#2
4AFB7E:  VLDR            D16, [R3]
4AFB82:  LDR             R3, [R3,#8]
4AFB84:  STR             R3, [R2,#8]
4AFB86:  VSTR            D16, [R2]
4AFB8A:  ADD.W           R2, R2, #0xC
4AFB8E:  BNE             loc_4AFB62
4AFB90:  LDR             R0, [SP,#0x228+var_1EC]
4AFB92:  ADD.W           R1, R9, R9,LSL#1
4AFB96:  ADD             R3, SP, #0x228+var_178
4AFB98:  CMP             R6, #1
4AFB9A:  ADD.W           R1, R3, R1,LSL#2
4AFB9E:  VLDR            D16, [R0]
4AFBA2:  LDR             R0, [R0,#8]
4AFBA4:  STR             R0, [R1,#8]
4AFBA6:  VSTR            D16, [R1]
4AFBAA:  BEQ.W           loc_4B015C
4AFBAE:  CMP             R6, #0
4AFBB0:  BNE.W           loc_4B010E
4AFBB4:  VLD1.32         {D16}, [R12@64]!
4AFBB8:  VMOV.I32        D17, #0
4AFBBC:  VMOV.F32        D18, #0.25
4AFBC0:  ADD.W           R0, R8, #1
4AFBC4:  VLDR            S0, [R12]
4AFBC8:  VADD.F32        D16, D16, D17
4AFBCC:  VLDR            S2, [SP,#0x228+var_7C]
4AFBD0:  MOVS            R6, #0
4AFBD2:  VADD.F32        S0, S0, S16
4AFBD6:  VLDR            D17, [SP,#0x228+var_84]
4AFBDA:  STR             R0, [SP,#0x228+var_1FC]
4AFBDC:  ADD.W           R0, R9, #1
4AFBE0:  VADD.F32        D16, D16, D17
4AFBE4:  VLDR            D17, [SP,#0x228+var_78]
4AFBE8:  STR             R0, [SP,#0x228+var_200]
4AFBEA:  MOVS            R4, #1
4AFBEC:  LDR             R0, [SP,#0x228+var_130]
4AFBEE:  CMP.W           R8, #1
4AFBF2:  STR             R6, [SP,#0x228+var_17C]
4AFBF4:  VADD.F32        D16, D16, D17
4AFBF8:  VLDR            D17, [SP,#0x228+var_6C]
4AFBFC:  VADD.F32        S0, S0, S2
4AFC00:  VLDR            S2, [SP,#0x228+var_70]
4AFC04:  STR             R0, [SP,#0x228+var_180]
4AFC06:  VADD.F32        D16, D16, D17
4AFC0A:  VLDR            D17, [SP,#0x228+var_138]
4AFC0E:  VSTR            D17, [SP,#0x228+var_188]
4AFC12:  VADD.F32        S0, S0, S2
4AFC16:  VLDR            S2, [SP,#0x228+var_64]
4AFC1A:  VMUL.F32        D10, D16, D18
4AFC1E:  VADD.F32        S0, S0, S2
4AFC22:  VMUL.F32        S18, S0, S18
4AFC26:  BLT.W           loc_4AFE16
4AFC2A:  ADD             R0, SP, #0x228+var_138
4AFC2C:  ADD.W           R10, SP, #0x228+var_188
4AFC30:  ADD.W           R5, R0, #0xC
4AFC34:  ORR.W           R0, R10, #4
4AFC38:  STR             R0, [SP,#0x228+var_1F4]
4AFC3A:  MOVS            R0, #0
4AFC3C:  STR             R0, [SP,#0x228+var_1E0]
4AFC3E:  MOVS            R0, #1
4AFC40:  VMOV.F32        S22, #0.5
4AFC44:  VLDR            S26, =-0.0
4AFC48:  VMOV.F32        S24, #-0.5
4AFC4C:  STR             R0, [SP,#0x228+var_1F8]
4AFC4E:  B               loc_4AFCA8
4AFC50:  LDR             R0, [SP,#0x228+var_1F4]
4AFC52:  VLDR            S0, [SP,#0x228+var_188]
4AFC56:  VLDR            S2, [R5]
4AFC5A:  VLDR            D16, [R0]
4AFC5E:  VSUB.F32        S28, S2, S0
4AFC62:  VLDR            D17, [R5,#4]
4AFC66:  VSUB.F32        D15, D17, D16
4AFC6A:  LDR             R0, [R4,#0x14]
4AFC6C:  CBNZ            R0, loc_4AFC7E
4AFC6E:  MOV             R0, R4; this
4AFC70:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4AFC74:  LDR             R1, [R4,#0x14]; CMatrix *
4AFC76:  ADDS            R0, R4, #4; this
4AFC78:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4AFC7C:  LDR             R0, [R4,#0x14]
4AFC7E:  VLDR            S0, [R0,#0x10]
4AFC82:  MOVS            R4, #1
4AFC84:  VLDR            D16, [R0,#0x14]
4AFC88:  VMUL.F32        S0, S28, S0
4AFC8C:  VMUL.F32        D1, D15, D16
4AFC90:  VADD.F32        S0, S0, S2
4AFC94:  VADD.F32        S0, S0, S3
4AFC98:  VCMPE.F32       S0, #0.0
4AFC9C:  VMRS            APSR_nzcv, FPSCR
4AFCA0:  BGE.W           loc_4AFDFA
4AFCA4:  MOVS            R0, #0
4AFCA6:  B               loc_4AFDEA
4AFCA8:  VLDR            S0, [R5]
4AFCAC:  ADD             R0, SP, #0x228+var_194; this
4AFCAE:  VLDR            S4, [SP,#0x228+var_188]
4AFCB2:  VLDR            S2, [R5,#4]
4AFCB6:  VLDR            S6, [SP,#0x228+var_188+4]
4AFCBA:  VSUB.F32        S0, S0, S4
4AFCBE:  STR             R6, [SP,#0x228+var_18C]
4AFCC0:  VSUB.F32        S2, S2, S6
4AFCC4:  VSTR            S0, [SP,#0x228+var_194]
4AFCC8:  VSTR            S2, [SP,#0x228+var_190]
4AFCCC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AFCD0:  VLDR            S0, [SP,#0x228+var_190]
4AFCD4:  VLDR            S8, [SP,#0x228+var_194]
4AFCD8:  VLDR            S2, [R5]
4AFCDC:  VMUL.F32        S0, S0, S22
4AFCE0:  VLDR            S6, [R5,#4]
4AFCE4:  VMUL.F32        S10, S8, S24
4AFCE8:  VSUB.F32        S14, S2, S20
4AFCEC:  VLDR            S4, [R5,#8]
4AFCF0:  VMUL.F32        S8, S8, S22
4AFCF4:  STR             R6, [SP,#0x228+var_18C]
4AFCF6:  VSUB.F32        S12, S6, S21
4AFCFA:  VSUB.F32        S1, S4, S18
4AFCFE:  VSTR            S0, [SP,#0x228+var_194]
4AFD02:  VSTR            S10, [SP,#0x228+var_190]
4AFD06:  VMUL.F32        S14, S14, S0
4AFD0A:  VMUL.F32        S12, S12, S8
4AFD0E:  VMUL.F32        S1, S1, S16
4AFD12:  VSUB.F32        S12, S14, S12
4AFD16:  VADD.F32        S12, S1, S12
4AFD1A:  VCMPE.F32       S12, #0.0
4AFD1E:  VMRS            APSR_nzcv, FPSCR
4AFD22:  BGE             loc_4AFD3C
4AFD24:  VNEG.F32        S0, S0
4AFD28:  MOV.W           R0, #0x80000000
4AFD2C:  VMOV.F32        S12, S26
4AFD30:  VSTR            S8, [SP,#0x228+var_190]
4AFD34:  STR             R0, [SP,#0x228+var_18C]
4AFD36:  VSTR            S0, [SP,#0x228+var_194]
4AFD3A:  B               loc_4AFD44
4AFD3C:  VMOV.F32        S12, S16
4AFD40:  VMOV.F32        S8, S10
4AFD44:  VLDR            S10, [SP,#0x228+var_188]
4AFD48:  VADD.F32        S6, S6, S8
4AFD4C:  VLDR            S14, [SP,#0x228+var_188+4]
4AFD50:  ADD             R2, SP, #0x228+var_1D8
4AFD52:  VLDR            S1, [SP,#0x228+var_180]
4AFD56:  VADD.F32        S10, S10, S0
4AFD5A:  VADD.F32        S0, S2, S0
4AFD5E:  LDR             R0, [SP,#0x228+var_1E0]
4AFD60:  VADD.F32        S14, S14, S8
4AFD64:  ADD             R3, SP, #0x228+var_17C
4AFD66:  VADD.F32        S1, S1, S12
4AFD6A:  ADDS            R0, #1
4AFD6C:  VADD.F32        S2, S4, S12
4AFD70:  STR             R0, [SP,#0x228+var_1E0]
4AFD72:  MOV             R0, R10
4AFD74:  MOV             R1, R5
4AFD76:  VSTR            S6, [SP,#0x228+var_1A8]
4AFD7A:  VSTR            S10, [SP,#0x228+var_1A0]
4AFD7E:  VSTR            S0, [SP,#0x228+var_1AC]
4AFD82:  VSTR            S14, [SP,#0x228+var_19C]
4AFD86:  VSTR            S1, [SP,#0x228+var_198]
4AFD8A:  VSTR            S2, [SP,#0x228+var_1A4]
4AFD8E:  STRD.W          R4, R4, [SP,#0x228+var_228]
4AFD92:  STRD.W          R4, R4, [SP,#0x228+var_220]
4AFD96:  STRD.W          R6, R6, [SP,#0x228+var_218]
4AFD9A:  STRD.W          R6, R6, [SP,#0x228+var_210]
4AFD9E:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4AFDA2:  CBNZ            R0, loc_4AFDC4
4AFDA4:  ADD             R0, SP, #0x228+var_1A0
4AFDA6:  ADD             R1, SP, #0x228+var_1AC
4AFDA8:  ADD             R2, SP, #0x228+var_1D8
4AFDAA:  ADD             R3, SP, #0x228+var_17C
4AFDAC:  STRD.W          R4, R4, [SP,#0x228+var_228]
4AFDB0:  STRD.W          R4, R4, [SP,#0x228+var_220]
4AFDB4:  STRD.W          R6, R6, [SP,#0x228+var_218]
4AFDB8:  STRD.W          R6, R6, [SP,#0x228+var_210]
4AFDBC:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4AFDC0:  CMP             R0, #1
4AFDC2:  BNE             loc_4AFDFA
4AFDC4:  LDR             R4, [SP,#0x228+var_17C]
4AFDC6:  CMP             R4, R11
4AFDC8:  ITT NE
4AFDCA:  LDRNE           R0, [SP,#0x228+var_1E4]
4AFDCC:  CMPNE           R4, R0
4AFDCE:  BEQ             loc_4AFDF6
4AFDD0:  LDRB.W          R0, [R4,#0x3A]
4AFDD4:  AND.W           R0, R0, #7
4AFDD8:  CMP             R0, #3
4AFDDA:  BNE             loc_4AFDE6
4AFDDC:  LDR.W           R0, [R4,#0x450]
4AFDE0:  CMP             R0, #1
4AFDE2:  BNE.W           loc_4AFC50
4AFDE6:  MOVS            R0, #0
4AFDE8:  MOVS            R4, #1
4AFDEA:  STR             R0, [SP,#0x228+var_1F8]
4AFDEC:  LDR             R0, [SP,#0x228+var_1E0]
4AFDEE:  STR             R0, [SP,#0x228+var_1FC]
4AFDF0:  MOVS            R0, #0
4AFDF2:  CBNZ            R0, loc_4AFE0A
4AFDF4:  B               loc_4AFE1A
4AFDF6:  MOVS            R4, #1
4AFDF8:  STR             R6, [SP,#0x228+var_17C]
4AFDFA:  LDR             R0, [R5,#8]
4AFDFC:  VLDR            D16, [R5]
4AFE00:  STR             R0, [SP,#0x228+var_180]
4AFE02:  MOVS            R0, #1
4AFE04:  VSTR            D16, [SP,#0x228+var_188]
4AFE08:  CBZ             R0, loc_4AFE1A
4AFE0A:  LDR             R0, [SP,#0x228+var_1E0]
4AFE0C:  ADDS            R5, #0xC
4AFE0E:  CMP             R0, R8
4AFE10:  BLT.W           loc_4AFCA8
4AFE14:  B               loc_4AFE1A
4AFE16:  MOVS            R0, #1
4AFE18:  STR             R0, [SP,#0x228+var_1F8]
4AFE1A:  VLDR            D16, [SP,#0x228+var_178]
4AFE1E:  MOVS            R4, #1
4AFE20:  LDR             R0, [SP,#0x228+var_170]
4AFE22:  CMP.W           R9, #1
4AFE26:  STR             R0, [SP,#0x228+var_180]
4AFE28:  STR             R6, [SP,#0x228+var_1DC]
4AFE2A:  VSTR            D16, [SP,#0x228+var_188]
4AFE2E:  BLT.W           loc_4B0028
4AFE32:  ADD             R0, SP, #0x228+var_178
4AFE34:  MOVS            R6, #0
4AFE36:  ADD.W           R5, R0, #0xC
4AFE3A:  ADD             R0, SP, #0x228+var_188
4AFE3C:  VMOV.F32        S16, #0.5
4AFE40:  VLDR            S24, =0.0
4AFE44:  MOV             R10, R0
4AFE46:  ORR.W           R0, R0, #4
4AFE4A:  STR             R0, [SP,#0x228+var_204]
4AFE4C:  MOVS            R0, #0
4AFE4E:  STR             R0, [SP,#0x228+var_1E0]
4AFE50:  MOVS            R0, #1
4AFE52:  VMOV.F32        S22, #-0.5
4AFE56:  VLDR            S26, =-0.0
4AFE5A:  STR             R0, [SP,#0x228+var_1F4]
4AFE5C:  B               loc_4AFEB6
4AFE5E:  LDR             R0, [SP,#0x228+var_204]
4AFE60:  VLDR            S0, [SP,#0x228+var_188]
4AFE64:  VLDR            S2, [R5]
4AFE68:  VLDR            D16, [R0]
4AFE6C:  VSUB.F32        S28, S2, S0
4AFE70:  VLDR            D17, [R5,#4]
4AFE74:  VSUB.F32        D15, D17, D16
4AFE78:  LDR             R0, [R4,#0x14]
4AFE7A:  CBNZ            R0, loc_4AFE8C
4AFE7C:  MOV             R0, R4; this
4AFE7E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4AFE82:  LDR             R1, [R4,#0x14]; CMatrix *
4AFE84:  ADDS            R0, R4, #4; this
4AFE86:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4AFE8A:  LDR             R0, [R4,#0x14]
4AFE8C:  VLDR            S0, [R0,#0x10]
4AFE90:  MOVS            R4, #1
4AFE92:  VLDR            D16, [R0,#0x14]
4AFE96:  VMUL.F32        S0, S28, S0
4AFE9A:  VMUL.F32        D1, D15, D16
4AFE9E:  VADD.F32        S0, S0, S2
4AFEA2:  VADD.F32        S0, S0, S3
4AFEA6:  VCMPE.F32       S0, #0.0
4AFEAA:  VMRS            APSR_nzcv, FPSCR
4AFEAE:  BGE.W           loc_4B0004
4AFEB2:  MOVS            R0, #0
4AFEB4:  B               loc_4AFFEE
4AFEB6:  VLDR            S0, [R5]
4AFEBA:  ADD             R0, SP, #0x228+var_194; this
4AFEBC:  VLDR            S4, [SP,#0x228+var_188]
4AFEC0:  VLDR            S2, [R5,#4]
4AFEC4:  VLDR            S6, [SP,#0x228+var_188+4]
4AFEC8:  VSUB.F32        S0, S0, S4
4AFECC:  STR             R6, [SP,#0x228+var_18C]
4AFECE:  VSUB.F32        S2, S2, S6
4AFED2:  VSTR            S0, [SP,#0x228+var_194]
4AFED6:  VSTR            S2, [SP,#0x228+var_190]
4AFEDA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AFEDE:  VLDR            S0, [SP,#0x228+var_190]
4AFEE2:  MOV             R0, R5
4AFEE4:  VLDR            S6, [SP,#0x228+var_194]
4AFEE8:  VMUL.F32        S0, S0, S16
4AFEEC:  VLD1.32         {D2}, [R0]!
4AFEF0:  VMUL.F32        S1, S6, S22
4AFEF4:  VLDR            S2, [R0]
4AFEF8:  VSUB.F32        D16, D2, D10
4AFEFC:  STR             R6, [SP,#0x228+var_18C]
4AFEFE:  VSUB.F32        S8, S2, S18
4AFF02:  VSTR            S0, [SP,#0x228+var_194]
4AFF06:  VMUL.F32        D5, D16, D0
4AFF0A:  VSTR            S1, [SP,#0x228+var_190]
4AFF0E:  VMUL.F32        S8, S8, S24
4AFF12:  VADD.F32        S10, S10, S11
4AFF16:  VADD.F32        S8, S8, S10
4AFF1A:  VCMPE.F32       S8, #0.0
4AFF1E:  VMRS            APSR_nzcv, FPSCR
4AFF22:  BGE             loc_4AFF40
4AFF24:  VMUL.F32        S1, S6, S16
4AFF28:  MOV.W           R0, #0x80000000
4AFF2C:  VNEG.F32        S6, S0
4AFF30:  VMOV.F32        S8, S26
4AFF34:  VSTR            S1, [SP,#0x228+var_190]
4AFF38:  STR             R0, [SP,#0x228+var_18C]
4AFF3A:  VSTR            S6, [SP,#0x228+var_194]
4AFF3E:  B               loc_4AFF48
4AFF40:  VMOV.F32        S8, S24
4AFF44:  VMOV.F32        S6, S0
4AFF48:  VLDR            S10, [SP,#0x228+var_188]
4AFF4C:  VADD.F32        S0, S5, S1
4AFF50:  VLDR            S12, [SP,#0x228+var_188+4]
4AFF54:  VADD.F32        S4, S4, S6
4AFF58:  VLDR            S14, [SP,#0x228+var_180]
4AFF5C:  VADD.F32        S10, S10, S6
4AFF60:  VADD.F32        S12, S12, S1
4AFF64:  LDR             R0, [SP,#0x228+var_1E0]
4AFF66:  VADD.F32        S14, S14, S8
4AFF6A:  ADD             R2, SP, #0x228+var_1D8
4AFF6C:  VADD.F32        S2, S2, S8
4AFF70:  ADDS            R0, #1
4AFF72:  ADD             R3, SP, #0x228+var_1DC
4AFF74:  STR             R0, [SP,#0x228+var_1E0]
4AFF76:  MOV             R0, R10
4AFF78:  MOV             R1, R5
4AFF7A:  VSTR            S0, [SP,#0x228+var_1A8]
4AFF7E:  VSTR            S10, [SP,#0x228+var_1A0]
4AFF82:  VSTR            S12, [SP,#0x228+var_19C]
4AFF86:  VSTR            S4, [SP,#0x228+var_1AC]
4AFF8A:  VSTR            S14, [SP,#0x228+var_198]
4AFF8E:  VSTR            S2, [SP,#0x228+var_1A4]
4AFF92:  STRD.W          R4, R4, [SP,#0x228+var_228]
4AFF96:  STRD.W          R4, R4, [SP,#0x228+var_220]
4AFF9A:  STRD.W          R6, R6, [SP,#0x228+var_218]
4AFF9E:  STRD.W          R6, R6, [SP,#0x228+var_210]
4AFFA2:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4AFFA6:  CBNZ            R0, loc_4AFFC8
4AFFA8:  ADD             R0, SP, #0x228+var_1A0
4AFFAA:  ADD             R1, SP, #0x228+var_1AC
4AFFAC:  ADD             R2, SP, #0x228+var_1D8
4AFFAE:  ADD             R3, SP, #0x228+var_1DC
4AFFB0:  STRD.W          R4, R4, [SP,#0x228+var_228]
4AFFB4:  STRD.W          R4, R4, [SP,#0x228+var_220]
4AFFB8:  STRD.W          R6, R6, [SP,#0x228+var_218]
4AFFBC:  STRD.W          R6, R6, [SP,#0x228+var_210]
4AFFC0:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4AFFC4:  CMP             R0, #1
4AFFC6:  BNE             loc_4B0004
4AFFC8:  LDR             R4, [SP,#0x228+var_1DC]
4AFFCA:  CMP             R4, R11
4AFFCC:  ITT NE
4AFFCE:  LDRNE           R0, [SP,#0x228+var_1E4]
4AFFD0:  CMPNE           R4, R0
4AFFD2:  BEQ             loc_4B0000
4AFFD4:  LDRB.W          R0, [R4,#0x3A]
4AFFD8:  AND.W           R0, R0, #7
4AFFDC:  CMP             R0, #3
4AFFDE:  BNE             loc_4AFFEA
4AFFE0:  LDR.W           R0, [R4,#0x450]
4AFFE4:  CMP             R0, #1
4AFFE6:  BNE.W           loc_4AFE5E
4AFFEA:  MOVS            R0, #0
4AFFEC:  MOVS            R4, #1
4AFFEE:  STR             R0, [SP,#0x228+var_1F4]
4AFFF0:  LDR             R0, [SP,#0x228+var_1E0]
4AFFF2:  STR             R0, [SP,#0x228+var_200]
4AFFF4:  MOVS            R0, #0
4AFFF6:  CBNZ            R0, loc_4B0014
4AFFF8:  B               loc_4B002C
4AFFFA:  ALIGN 4
4AFFFC:  DCFS -0.0
4B0000:  MOVS            R4, #1
4B0002:  STR             R6, [SP,#0x228+var_1DC]
4B0004:  LDR             R0, [R5,#8]
4B0006:  VLDR            D16, [R5]
4B000A:  STR             R0, [SP,#0x228+var_180]
4B000C:  MOVS            R0, #1
4B000E:  VSTR            D16, [SP,#0x228+var_188]
4B0012:  CBZ             R0, loc_4B002C
4B0014:  LDR             R0, [SP,#0x228+var_1E0]
4B0016:  ADDS            R5, #0xC
4B0018:  CMP             R0, R9
4B001A:  BLT.W           loc_4AFEB6
4B001E:  B               loc_4B002C
4B0020:  DCD _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x4AF116
4B0024:  DCFS 0.0
4B0028:  MOVS            R0, #1
4B002A:  STR             R0, [SP,#0x228+var_1F4]
4B002C:  VLDR            S0, =0.0
4B0030:  CMP.W           R8, #1
4B0034:  VMOV.F32        S2, S0
4B0038:  BLT             loc_4B0084
4B003A:  ADD             R0, SP, #0x228+var_138
4B003C:  VLDR            S2, =0.0
4B0040:  VLDR            D16, [SP,#0x228+var_138+4]
4B0044:  ADDS            R0, #0xC
4B0046:  VLDR            S4, [SP,#0x228+var_138]
4B004A:  MOV             R1, R8
4B004C:  VLDR            S6, [R0]
4B0050:  SUBS            R1, #1
4B0052:  VLDR            D17, [R0,#4]
4B0056:  ADD.W           R0, R0, #0xC
4B005A:  VSUB.F32        S4, S6, S4
4B005E:  VSUB.F32        D16, D17, D16
4B0062:  VMUL.F32        D4, D16, D16
4B0066:  VMUL.F32        S4, S4, S4
4B006A:  VMOV            D16, D17
4B006E:  VADD.F32        S4, S4, S8
4B0072:  VADD.F32        S4, S4, S9
4B0076:  VSQRT.F32       S4, S4
4B007A:  VADD.F32        S2, S2, S4
4B007E:  VMOV.F32        S4, S6
4B0082:  BNE             loc_4B004C
4B0084:  LDRD.W          R10, R2, [SP,#0x228+var_1F8]
4B0088:  ADD             R3, SP, #0x228+var_178
4B008A:  CMP.W           R9, #1
4B008E:  BLT             loc_4B00DA
4B0090:  VLDR            S0, =0.0
4B0094:  ADD.W           R0, R3, #0xC
4B0098:  VLDR            D16, [SP,#0x228+var_178+4]
4B009C:  MOV             R1, R9
4B009E:  VLDR            S4, [SP,#0x228+var_178]
4B00A2:  VLDR            S6, [R0]
4B00A6:  SUBS            R1, #1
4B00A8:  VLDR            D17, [R0,#4]
4B00AC:  ADD.W           R0, R0, #0xC
4B00B0:  VSUB.F32        S4, S6, S4
4B00B4:  VSUB.F32        D16, D17, D16
4B00B8:  VMUL.F32        D4, D16, D16
4B00BC:  VMUL.F32        S4, S4, S4
4B00C0:  VMOV            D16, D17
4B00C4:  VADD.F32        S4, S4, S8
4B00C8:  VADD.F32        S4, S4, S9
4B00CC:  VSQRT.F32       S4, S4
4B00D0:  VADD.F32        S0, S0, S4
4B00D4:  VMOV.F32        S4, S6
4B00D8:  BNE             loc_4B00A2
4B00DA:  AND.W           R0, R10, R2
4B00DE:  LSLS            R0, R0, #0x1F
4B00E0:  BEQ             loc_4B00EE
4B00E2:  VCMPE.F32       S2, S0
4B00E6:  VMRS            APSR_nzcv, FPSCR
4B00EA:  BGE             loc_4B010E
4B00EC:  B               loc_4B015C
4B00EE:  ORR.W           R0, R10, R2
4B00F2:  LSLS            R0, R0, #0x1F
4B00F4:  BEQ             loc_4B00FE
4B00F6:  MOVS.W          R0, R10,LSL#31
4B00FA:  BEQ             loc_4B010E
4B00FC:  B               loc_4B015C
4B00FE:  LDR             R0, [SP,#0x228+var_1FC]
4B0100:  LDR.W           R10, [SP,#0x228+var_200]
4B0104:  CMP             R0, #1
4B0106:  BNE             loc_4B0152
4B0108:  CMP.W           R10, #1
4B010C:  BLE             loc_4B0152
4B010E:  CMP.W           R9, #2
4B0112:  BLT             loc_4B014E
4B0114:  LDR             R6, [R7,#arg_0]
4B0116:  SUB.W           R5, R9, #1
4B011A:  ADD.W           R1, R3, #0xC
4B011E:  LDR             R2, [R6]
4B0120:  LDRD.W          R0, R4, [SP,#0x228+var_1F0]
4B0124:  CMP             R2, #7
4B0126:  BGT             loc_4B0142
4B0128:  ADD.W           R2, R2, R2,LSL#1
4B012C:  VLDR            D16, [R1]
4B0130:  LDR             R3, [R1,#8]
4B0132:  ADD.W           R2, R6, R2,LSL#2
4B0136:  STR             R3, [R2,#0xC]
4B0138:  VSTR            D16, [R2,#4]
4B013C:  LDR             R2, [R6]
4B013E:  ADDS            R2, #1
4B0140:  STR             R2, [R6]
4B0142:  SUBS            R5, #1
4B0144:  ADD.W           R1, R1, #0xC
4B0148:  BNE             loc_4B0124
4B014A:  MOVS            R3, #2
4B014C:  B               loc_4B01A6
4B014E:  MOVS            R3, #2
4B0150:  B               loc_4B01A0
4B0152:  CMP             R0, #2
4B0154:  BLT             loc_4B021A
4B0156:  CMP.W           R10, #1
4B015A:  BNE             loc_4B021A
4B015C:  CMP.W           R8, #2
4B0160:  BLT             loc_4B019E
4B0162:  LDR             R6, [R7,#arg_0]
4B0164:  ADD             R0, SP, #0x228+var_138
4B0166:  ADD.W           R1, R0, #0xC
4B016A:  SUB.W           R5, R8, #1
4B016E:  LDR             R2, [R6]
4B0170:  LDRD.W          R0, R4, [SP,#0x228+var_1F0]
4B0174:  CMP             R2, #7
4B0176:  BGT             loc_4B0192
4B0178:  ADD.W           R2, R2, R2,LSL#1
4B017C:  VLDR            D16, [R1]
4B0180:  LDR             R3, [R1,#8]
4B0182:  ADD.W           R2, R6, R2,LSL#2
4B0186:  STR             R3, [R2,#0xC]
4B0188:  VSTR            D16, [R2,#4]
4B018C:  LDR             R2, [R6]
4B018E:  ADDS            R2, #1
4B0190:  STR             R2, [R6]
4B0192:  SUBS            R5, #1
4B0194:  ADD.W           R1, R1, #0xC
4B0198:  BNE             loc_4B0174
4B019A:  MOVS            R3, #1
4B019C:  B               loc_4B01A6
4B019E:  MOVS            R3, #1
4B01A0:  LDR             R6, [R7,#arg_0]
4B01A2:  LDRD.W          R0, R4, [SP,#0x228+var_1F0]; this
4B01A6:  LDR             R2, [R6]
4B01A8:  CMP             R2, #7
4B01AA:  BGT             loc_4B01CA
4B01AC:  ADD.W           R2, R2, R2,LSL#1
4B01B0:  VLDR            D16, [R4]
4B01B4:  LDR             R1, [R4,#8]
4B01B6:  ADD.W           R2, R6, R2,LSL#2
4B01BA:  STR             R1, [R2,#0xC]
4B01BC:  VSTR            D16, [R2,#4]
4B01C0:  LDR             R2, [R6]; CEntity *
4B01C2:  ADDS            R1, R2, #1
4B01C4:  CMP             R2, #1
4B01C6:  STR             R1, [R6]
4B01C8:  BLT             loc_4B0212
4B01CA:  MOV             R1, R11; CVector *
4B01CC:  MOV             R8, R3
4B01CE:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
4B01D2:  ADD.W           R4, R6, #0x10
4B01D6:  MOV             R5, R0
4B01D8:  MOV             R1, R11; CVector *
4B01DA:  MOV             R0, R4; this
4B01DC:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
4B01E0:  LDR             R1, [R6]
4B01E2:  CMP             R5, R0
4B01E4:  BNE             loc_4B020A
4B01E6:  CMP             R1, #2
4B01E8:  MOV             R3, R8
4B01EA:  BLT             loc_4B020E
4B01EC:  MOVS            R0, #0
4B01EE:  VLDR            D16, [R4]
4B01F2:  ADDS            R0, #1
4B01F4:  LDR             R1, [R4,#8]
4B01F6:  STR.W           R1, [R4,#-4]
4B01FA:  VSTR            D16, [R4,#-0xC]
4B01FE:  ADDS            R4, #0xC
4B0200:  LDR             R1, [R6]
4B0202:  SUBS            R1, #1
4B0204:  CMP             R0, R1
4B0206:  BLT             loc_4B01EE
4B0208:  B               loc_4B0210
4B020A:  MOV             R3, R8
4B020C:  B               loc_4B0212
4B020E:  SUBS            R1, #1
4B0210:  STR             R1, [R6]
4B0212:  SUBS            R0, R1, #1
4B0214:  STR             R0, [R6]
4B0216:  B.W             loc_4AF2EE
4B021A:  LDR             R1, [SP,#0x228+var_1DC]
4B021C:  LDR             R0, [SP,#0x228+var_17C]
4B021E:  CMP             R0, R1
4B0220:  BEQ.W           loc_4B00E2
4B0224:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4B022E)
4B0226:  LDRSH.W         R1, [R1,#0x26]
4B022A:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4B022C:  LDRSH.W         R0, [R0,#0x26]
4B0230:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
4B0232:  LDR.W           R1, [R2,R1,LSL#2]
4B0236:  LDR.W           R0, [R2,R0,LSL#2]
4B023A:  LDR             R1, [R1,#0x2C]
4B023C:  LDR             R0, [R0,#0x2C]
4B023E:  VLDR            S0, [R1,#0x24]
4B0242:  VLDR            S2, [R0,#0x24]
4B0246:  B               loc_4B00E2
