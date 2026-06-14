; =========================================================
; Game Engine Function: _ZN6CWorld19RepositionOneObjectEP7CEntity
; Address            : 0x42B1D0 - 0x42B7B2
; =========================================================

42B1D0:  PUSH            {R4-R7,LR}
42B1D2:  ADD             R7, SP, #0xC
42B1D4:  PUSH.W          {R8}
42B1D8:  VPUSH           {D8-D10}
42B1DC:  SUB             SP, SP, #0x68
42B1DE:  MOV             R4, R0
42B1E0:  LDR.W           R0, =(MI_PARKINGMETER_ptr - 0x42B1E8)
42B1E4:  ADD             R0, PC; MI_PARKINGMETER_ptr
42B1E6:  LDR             R1, [R0]; MI_PARKINGMETER
42B1E8:  LDRSH.W         R0, [R4,#0x26]
42B1EC:  LDRH            R1, [R1]
42B1EE:  CMP             R0, R1
42B1F0:  BEQ.W           loc_42B4A8
42B1F4:  LDR.W           R1, =(MI_PHONEBOOTH1_ptr - 0x42B1FC)
42B1F8:  ADD             R1, PC; MI_PHONEBOOTH1_ptr
42B1FA:  LDR             R1, [R1]; MI_PHONEBOOTH1
42B1FC:  LDRH            R1, [R1]
42B1FE:  CMP             R0, R1
42B200:  BEQ.W           loc_42B4A8
42B204:  LDR.W           R1, =(MI_WASTEBIN_ptr - 0x42B20C)
42B208:  ADD             R1, PC; MI_WASTEBIN_ptr
42B20A:  LDR             R1, [R1]; MI_WASTEBIN
42B20C:  LDRH            R1, [R1]
42B20E:  CMP             R0, R1
42B210:  BEQ.W           loc_42B4A8
42B214:  LDR.W           R1, =(MI_BIN_ptr - 0x42B21C)
42B218:  ADD             R1, PC; MI_BIN_ptr
42B21A:  LDR             R1, [R1]; MI_BIN
42B21C:  LDRH            R1, [R1]
42B21E:  CMP             R0, R1
42B220:  BEQ.W           loc_42B4A8
42B224:  LDR.W           R1, =(MI_POSTBOX1_ptr - 0x42B22C)
42B228:  ADD             R1, PC; MI_POSTBOX1_ptr
42B22A:  LDR             R1, [R1]; MI_POSTBOX1
42B22C:  LDRH            R1, [R1]
42B22E:  CMP             R0, R1
42B230:  BEQ.W           loc_42B4A8
42B234:  LDR.W           R1, =(MI_NEWSSTAND_ptr - 0x42B23C)
42B238:  ADD             R1, PC; MI_NEWSSTAND_ptr
42B23A:  LDR             R1, [R1]; MI_NEWSSTAND
42B23C:  LDRH            R1, [R1]
42B23E:  CMP             R0, R1
42B240:  BEQ.W           loc_42B4A8
42B244:  LDR.W           R1, =(MI_TRAFFICCONE_ptr - 0x42B24C)
42B248:  ADD             R1, PC; MI_TRAFFICCONE_ptr
42B24A:  LDR             R1, [R1]; MI_TRAFFICCONE
42B24C:  LDRH            R1, [R1]
42B24E:  CMP             R0, R1
42B250:  BEQ.W           loc_42B4A8
42B254:  LDR.W           R1, =(MI_DUMP1_ptr - 0x42B25C)
42B258:  ADD             R1, PC; MI_DUMP1_ptr
42B25A:  LDR             R1, [R1]; MI_DUMP1
42B25C:  LDRH            R1, [R1]
42B25E:  CMP             R0, R1
42B260:  BEQ.W           loc_42B4A8
42B264:  LDR.W           R1, =(MI_ROADWORKBARRIER1_ptr - 0x42B26C)
42B268:  ADD             R1, PC; MI_ROADWORKBARRIER1_ptr
42B26A:  LDR             R1, [R1]; MI_ROADWORKBARRIER1
42B26C:  LDRH            R1, [R1]
42B26E:  CMP             R0, R1
42B270:  BEQ.W           loc_42B4A8
42B274:  LDR.W           R1, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x42B27C)
42B278:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
42B27A:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR1
42B27C:  LDRH            R1, [R1]
42B27E:  CMP             R0, R1
42B280:  BEQ.W           loc_42B4A8
42B284:  LDR.W           R1, =(MI_ROADBLOCKFUCKEDCAR2_ptr - 0x42B28C)
42B288:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR2_ptr
42B28A:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR2
42B28C:  LDRH            R1, [R1]
42B28E:  CMP             R0, R1
42B290:  BEQ.W           loc_42B4A8
42B294:  LDR.W           R1, =(MI_BUSSIGN1_ptr - 0x42B29C)
42B298:  ADD             R1, PC; MI_BUSSIGN1_ptr
42B29A:  LDR             R1, [R1]; MI_BUSSIGN1
42B29C:  LDRH            R1, [R1]
42B29E:  CMP             R0, R1
42B2A0:  BEQ.W           loc_42B4A8
42B2A4:  LDR.W           R1, =(MI_NOPARKINGSIGN1_ptr - 0x42B2AC)
42B2A8:  ADD             R1, PC; MI_NOPARKINGSIGN1_ptr
42B2AA:  LDR             R1, [R1]; MI_NOPARKINGSIGN1
42B2AC:  LDRH            R1, [R1]
42B2AE:  CMP             R0, R1
42B2B0:  BEQ.W           loc_42B4A8
42B2B4:  LDR.W           R1, =(MI_PHONESIGN_ptr - 0x42B2BC)
42B2B8:  ADD             R1, PC; MI_PHONESIGN_ptr
42B2BA:  LDR             R1, [R1]; MI_PHONESIGN
42B2BC:  LDRH            R1, [R1]
42B2BE:  CMP             R0, R1
42B2C0:  BEQ.W           loc_42B4A8
42B2C4:  LDR.W           R1, =(MI_FIRE_HYDRANT_ptr - 0x42B2CC)
42B2C8:  ADD             R1, PC; MI_FIRE_HYDRANT_ptr
42B2CA:  LDR             R1, [R1]; MI_FIRE_HYDRANT
42B2CC:  LDRH            R1, [R1]
42B2CE:  CMP             R0, R1
42B2D0:  BEQ.W           loc_42B4A8
42B2D4:  LDR.W           R1, =(MI_BOLLARDLIGHT_ptr - 0x42B2DC)
42B2D8:  ADD             R1, PC; MI_BOLLARDLIGHT_ptr
42B2DA:  LDR             R1, [R1]; MI_BOLLARDLIGHT
42B2DC:  LDRH            R1, [R1]
42B2DE:  CMP             R0, R1
42B2E0:  BEQ.W           loc_42B4A8
42B2E4:  LDR.W           R1, =(MI_PARKTABLE_ptr - 0x42B2EC)
42B2E8:  ADD             R1, PC; MI_PARKTABLE_ptr
42B2EA:  LDR             R1, [R1]; MI_PARKTABLE
42B2EC:  LDRH            R1, [R1]
42B2EE:  CMP             R0, R1
42B2F0:  BEQ.W           loc_42B4A8
42B2F4:  LDR.W           R1, =(MI_PARKINGMETER2_ptr - 0x42B2FC)
42B2F8:  ADD             R1, PC; MI_PARKINGMETER2_ptr
42B2FA:  LDR             R1, [R1]; MI_PARKINGMETER2
42B2FC:  LDRH            R1, [R1]
42B2FE:  CMP             R0, R1
42B300:  BEQ.W           loc_42B4A8
42B304:  LDR.W           R1, =(MI_TELPOLE02_ptr - 0x42B30C)
42B308:  ADD             R1, PC; MI_TELPOLE02_ptr
42B30A:  LDR             R1, [R1]; MI_TELPOLE02
42B30C:  LDRH            R1, [R1]
42B30E:  CMP             R0, R1
42B310:  BEQ.W           loc_42B4A8
42B314:  LDR.W           R1, =(MI_PARKBENCH_ptr - 0x42B31C)
42B318:  ADD             R1, PC; MI_PARKBENCH_ptr
42B31A:  LDR             R1, [R1]; MI_PARKBENCH
42B31C:  LDRH            R1, [R1]
42B31E:  CMP             R0, R1
42B320:  BEQ.W           loc_42B4A8
42B324:  LDR.W           R1, =(MI_BARRIER1_ptr - 0x42B32C)
42B328:  ADD             R1, PC; MI_BARRIER1_ptr
42B32A:  LDR             R1, [R1]; MI_BARRIER1
42B32C:  LDRH            R1, [R1]
42B32E:  CMP             R0, R1
42B330:  BEQ.W           loc_42B4A8
42B334:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B340)
42B338:  MOVS            R6, #0
42B33A:  MOVS            R3, #0
42B33C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B33E:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42B340:  LDR.W           R1, [R1,R0,LSL#2]
42B344:  LDRH            R2, [R1,#0x28]
42B346:  AND.W           R2, R2, #0x7800
42B34A:  CMP.W           R2, #0x800
42B34E:  IT NE
42B350:  MOVNE           R6, #1
42B352:  CMP.W           R2, #0x1000
42B356:  IT EQ
42B358:  MOVEQ           R3, #1
42B35A:  TEQ.W           R3, R6
42B35E:  BEQ.W           loc_42B4A8
42B362:  LDR.W           R2, =(MI_SINGLESTREETLIGHTS1_ptr - 0x42B36A)
42B366:  ADD             R2, PC; MI_SINGLESTREETLIGHTS1_ptr
42B368:  LDR             R2, [R2]; MI_SINGLESTREETLIGHTS1
42B36A:  LDRH            R2, [R2]
42B36C:  CMP             R0, R2
42B36E:  BEQ             loc_42B40C
42B370:  LDR.W           R2, =(MI_SINGLESTREETLIGHTS2_ptr - 0x42B378)
42B374:  ADD             R2, PC; MI_SINGLESTREETLIGHTS2_ptr
42B376:  LDR             R2, [R2]; MI_SINGLESTREETLIGHTS2
42B378:  LDRH            R2, [R2]
42B37A:  CMP             R0, R2
42B37C:  BEQ             loc_42B40C
42B37E:  LDR.W           R2, =(MI_SINGLESTREETLIGHTS3_ptr - 0x42B386)
42B382:  ADD             R2, PC; MI_SINGLESTREETLIGHTS3_ptr
42B384:  LDR             R2, [R2]; MI_SINGLESTREETLIGHTS3
42B386:  LDRH            R2, [R2]
42B388:  CMP             R0, R2
42B38A:  BEQ             loc_42B40C
42B38C:  LDR.W           R2, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x42B394)
42B390:  ADD             R2, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
42B392:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_MIAMI
42B394:  LDRH            R2, [R2]
42B396:  CMP             R0, R2
42B398:  BEQ             loc_42B40C
42B39A:  LDR.W           R2, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x42B3A2)
42B39E:  ADD             R2, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
42B3A0:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_VEGAS
42B3A2:  LDRH            R2, [R2]
42B3A4:  CMP             R0, R2
42B3A6:  BEQ             loc_42B40C
42B3A8:  LDR.W           R2, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x42B3B0)
42B3AC:  ADD             R2, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
42B3AE:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_TWOVERTICAL
42B3B0:  LDRH            R2, [R2]
42B3B2:  CMP             R0, R2
42B3B4:  BEQ             loc_42B40C
42B3B6:  LDR.W           R2, =(MI_TRAFFICLIGHTS_3_ptr - 0x42B3BE)
42B3BA:  ADD             R2, PC; MI_TRAFFICLIGHTS_3_ptr
42B3BC:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_3
42B3BE:  LDRH            R2, [R2]
42B3C0:  CMP             R0, R2
42B3C2:  BEQ             loc_42B40C
42B3C4:  LDR.W           R2, =(MI_TRAFFICLIGHTS_4_ptr - 0x42B3CC)
42B3C8:  ADD             R2, PC; MI_TRAFFICLIGHTS_4_ptr
42B3CA:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_4
42B3CC:  LDRH            R2, [R2]
42B3CE:  CMP             R0, R2
42B3D0:  BEQ             loc_42B40C
42B3D2:  LDR.W           R2, =(MI_TRAFFICLIGHTS_5_ptr - 0x42B3DA)
42B3D6:  ADD             R2, PC; MI_TRAFFICLIGHTS_5_ptr
42B3D8:  LDR             R2, [R2]; MI_TRAFFICLIGHTS_5
42B3DA:  LDRH            R2, [R2]
42B3DC:  CMP             R0, R2
42B3DE:  BEQ             loc_42B40C
42B3E0:  LDR.W           R2, =(MI_MLAMPPOST_ptr - 0x42B3E8)
42B3E4:  ADD             R2, PC; MI_MLAMPPOST_ptr
42B3E6:  LDR             R2, [R2]; MI_MLAMPPOST
42B3E8:  LDRH            R2, [R2]
42B3EA:  CMP             R0, R2
42B3EC:  BEQ             loc_42B40C
42B3EE:  LDR.W           R2, =(MI_STREETLAMP1_ptr - 0x42B3F6)
42B3F2:  ADD             R2, PC; MI_STREETLAMP1_ptr
42B3F4:  LDR             R2, [R2]; MI_STREETLAMP1
42B3F6:  LDRH            R2, [R2]
42B3F8:  CMP             R0, R2
42B3FA:  BEQ             loc_42B40C
42B3FC:  LDR.W           R2, =(MI_STREETLAMP2_ptr - 0x42B404)
42B400:  ADD             R2, PC; MI_STREETLAMP2_ptr
42B402:  LDR             R2, [R2]; MI_STREETLAMP2
42B404:  LDRH            R2, [R2]
42B406:  CMP             R0, R2
42B408:  BNE.W           loc_42B5B4
42B40C:  LDR             R0, [R1,#0x2C]
42B40E:  ADD.W           R8, R4, #4
42B412:  LDR             R1, [R4,#0x14]
42B414:  MOV             R2, R8
42B416:  CMP             R1, #0
42B418:  VLDR            S0, [R0,#8]
42B41C:  VLDR            S2, [R0,#0x14]
42B420:  IT NE
42B422:  ADDNE.W         R2, R1, #0x30 ; '0'
42B426:  VLDR            D16, [R2]
42B42A:  LDR             R2, [R2,#8]
42B42C:  STR             R2, [SP,#0x90+var_68]
42B42E:  VSTR            D16, [SP,#0x90+var_70]
42B432:  LDR             R0, [R0,#0x2C]
42B434:  CMP             R0, #0
42B436:  BEQ.W           loc_42B5B4
42B43A:  VMOV.F32        S4, #2.0
42B43E:  LDRH            R2, [R0,#2]
42B440:  VSUB.F32        S0, S2, S0
42B444:  CMP             R2, #1
42B446:  VMAX.F32        D8, D0, D2
42B44A:  BNE.W           loc_42B6B2
42B44E:  LDR             R0, [R0,#0xC]
42B450:  VMOV.F32        S6, #0.5
42B454:  VLDR            S0, [R0]
42B458:  VLDR            S2, [R0,#0xC]
42B45C:  VLDR            S4, [R0,#0x10]
42B460:  VADD.F32        S0, S0, S2
42B464:  VMUL.F32        S0, S0, S6
42B468:  VSTR            S0, [SP,#0x90+var_70]
42B46C:  VLDR            S0, [R0,#4]
42B470:  VADD.F32        S0, S0, S4
42B474:  VMUL.F32        S0, S0, S6
42B478:  VSTR            S0, [SP,#0x90+var_70+4]
42B47C:  LDR             R0, [R0,#8]
42B47E:  STR             R0, [SP,#0x90+var_68]
42B480:  CBNZ            R1, loc_42B492
42B482:  MOV             R0, R4; this
42B484:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B488:  LDR             R1, [R4,#0x14]; CMatrix *
42B48A:  MOV             R0, R8; this
42B48C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B490:  LDR             R1, [R4,#0x14]
42B492:  ADD             R0, SP, #0x90+var_60
42B494:  ADD             R2, SP, #0x90+var_70
42B496:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
42B49A:  VLDR            D16, [SP,#0x90+var_60]
42B49E:  LDR             R0, [SP,#0x90+var_58]
42B4A0:  STR             R0, [SP,#0x90+var_68]
42B4A2:  VSTR            D16, [SP,#0x90+var_70]
42B4A6:  B               loc_42B710
42B4A8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B4B2)
42B4AA:  VMOV.F32        S4, #2.0
42B4AE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B4B0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42B4B2:  LDR.W           R0, [R1,R0,LSL#2]
42B4B6:  LDR             R0, [R0,#0x2C]
42B4B8:  VLDR            S0, [R0,#8]
42B4BC:  VLDR            S2, [R0,#0x14]
42B4C0:  LDR             R0, [R4,#0x14]
42B4C2:  VSUB.F32        S0, S2, S0
42B4C6:  CMP             R0, #0
42B4C8:  VMAX.F32        D8, D0, D2
42B4CC:  BEQ             loc_42B4D8
42B4CE:  VLDR            S18, [R0,#0x30]
42B4D2:  VLDR            S20, [R0,#0x34]
42B4D6:  B               loc_42B520
42B4D8:  MOV             R0, R4; this
42B4DA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B4DE:  ADDS            R5, R4, #4
42B4E0:  LDR             R1, [R4,#0x14]; CMatrix *
42B4E2:  MOV             R0, R5; this
42B4E4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B4E8:  LDR             R0, [R4,#0x14]
42B4EA:  CMP             R0, #0
42B4EC:  VLDR            S18, [R0,#0x30]
42B4F0:  BEQ             loc_42B4F8
42B4F2:  VLDR            S20, [R0,#0x34]
42B4F6:  B               loc_42B520
42B4F8:  MOV             R0, R4; this
42B4FA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B4FE:  LDR             R1, [R4,#0x14]; CMatrix *
42B500:  MOV             R0, R5; this
42B502:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B506:  LDR             R0, [R4,#0x14]
42B508:  CMP             R0, #0
42B50A:  VLDR            S20, [R0,#0x34]
42B50E:  BNE             loc_42B520
42B510:  MOV             R0, R4; this
42B512:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B516:  LDR             R1, [R4,#0x14]; CMatrix *
42B518:  MOV             R0, R5; this
42B51A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B51E:  LDR             R0, [R4,#0x14]
42B520:  VLDR            S0, [R0,#0x38]
42B524:  MOVS            R0, #0
42B526:  MOVS            R1, #1
42B528:  VSTR            S20, [SP,#0x90+var_30]
42B52C:  VADD.F32        S0, S16, S0
42B530:  VSTR            S18, [SP,#0x90+var_34]
42B534:  ADD             R2, SP, #0x90+var_60; int
42B536:  ADD             R3, SP, #0x90+var_70; int
42B538:  VSTR            S0, [SP,#0x90+var_2C]
42B53C:  STRD.W          R1, R0, [SP,#0x90+var_90]; int
42B540:  MOVS            R1, #0
42B542:  STRD.W          R0, R0, [SP,#0x90+var_88]; int
42B546:  MOVT            R1, #0xC47A; int
42B54A:  STRD.W          R0, R0, [SP,#0x90+var_80]; int
42B54E:  STR             R0, [SP,#0x90+var_78]; int
42B550:  ADD             R0, SP, #0x90+var_34; CVector *
42B552:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42B556:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B562)
42B558:  CMP             R0, #0
42B55A:  LDRSH.W         R2, [R4,#0x26]
42B55E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B560:  VLDR            S0, [SP,#0x90+var_58]
42B564:  VLDR            S2, =0.0
42B568:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42B56A:  LDR.W           R1, [R1,R2,LSL#2]
42B56E:  IT NE
42B570:  VMOVNE.F32      S2, S0
42B574:  LDR             R0, [R1,#0x2C]
42B576:  VLDR            S0, [R0,#8]
42B57A:  LDR             R0, [R4,#0x14]
42B57C:  VSUB.F32        S16, S2, S0
42B580:  CBNZ            R0, loc_42B592
42B582:  MOV             R0, R4; this
42B584:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B588:  LDR             R1, [R4,#0x14]; CMatrix *
42B58A:  ADDS            R0, R4, #4; this
42B58C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B590:  LDR             R0, [R4,#0x14]
42B592:  VSTR            S16, [R0,#0x38]
42B596:  LDR             R0, [R4,#0x18]
42B598:  CBZ             R0, loc_42B5AE
42B59A:  LDR             R1, [R0,#4]
42B59C:  LDR             R0, [R4,#0x14]
42B59E:  ADDS            R1, #0x10
42B5A0:  CBZ             R0, loc_42B5A8
42B5A2:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
42B5A6:  B               loc_42B5AE
42B5A8:  ADDS            R0, R4, #4
42B5AA:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
42B5AE:  MOV             R0, R4; this
42B5B0:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
42B5B4:  LDR             R0, =(MI_BUOY_ptr - 0x42B5BE)
42B5B6:  LDRSH.W         R1, [R4,#0x26]
42B5BA:  ADD             R0, PC; MI_BUOY_ptr
42B5BC:  LDR             R0, [R0]; MI_BUOY
42B5BE:  LDRH            R0, [R0]
42B5C0:  CMP             R1, R0
42B5C2:  BNE             loc_42B6A6
42B5C4:  LDR             R0, [R4,#0x14]
42B5C6:  CBZ             R0, loc_42B5D2
42B5C8:  VLDR            S16, [R0,#0x30]
42B5CC:  VLDR            S18, [R0,#0x34]
42B5D0:  B               loc_42B61A
42B5D2:  MOV             R0, R4; this
42B5D4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B5D8:  ADDS            R5, R4, #4
42B5DA:  LDR             R1, [R4,#0x14]; CMatrix *
42B5DC:  MOV             R0, R5; this
42B5DE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B5E2:  LDR             R0, [R4,#0x14]
42B5E4:  CMP             R0, #0
42B5E6:  VLDR            S16, [R0,#0x30]
42B5EA:  BEQ             loc_42B5F2
42B5EC:  VLDR            S18, [R0,#0x34]
42B5F0:  B               loc_42B61A
42B5F2:  MOV             R0, R4; this
42B5F4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B5F8:  LDR             R1, [R4,#0x14]; CMatrix *
42B5FA:  MOV             R0, R5; this
42B5FC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B600:  LDR             R0, [R4,#0x14]
42B602:  CMP             R0, #0
42B604:  VLDR            S18, [R0,#0x34]
42B608:  BNE             loc_42B61A
42B60A:  MOV             R0, R4; this
42B60C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B610:  LDR             R1, [R4,#0x14]; CMatrix *
42B612:  MOV             R0, R5; this
42B614:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B618:  LDR             R0, [R4,#0x14]
42B61A:  VMOV.F32        S0, #2.0
42B61E:  VLDR            S2, [R0,#0x38]
42B622:  MOVS            R0, #0
42B624:  MOVS            R1, #1
42B626:  VSTR            S18, [SP,#0x90+var_30]
42B62A:  ADD             R2, SP, #0x90+var_60; int
42B62C:  VSTR            S16, [SP,#0x90+var_34]
42B630:  ADD             R3, SP, #0x90+var_70; int
42B632:  VADD.F32        S0, S2, S0
42B636:  VSTR            S0, [SP,#0x90+var_2C]
42B63A:  STRD.W          R1, R0, [SP,#0x90+var_90]; int
42B63E:  MOVS            R1, #0
42B640:  STRD.W          R0, R0, [SP,#0x90+var_88]; int
42B644:  MOVT            R1, #0xC47A; int
42B648:  STRD.W          R0, R0, [SP,#0x90+var_80]; int
42B64C:  STR             R0, [SP,#0x90+var_78]; int
42B64E:  ADD             R0, SP, #0x90+var_34; CVector *
42B650:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42B654:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B662)
42B656:  VMOV.F32        S4, #-0.5
42B65A:  LDRSH.W         R1, [R4,#0x26]
42B65E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B660:  VLDR            S6, =0.2
42B664:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
42B666:  LDR.W           R0, [R0,R1,LSL#2]
42B66A:  LDR             R0, [R0,#0x2C]
42B66C:  VLDR            S0, [R0,#8]
42B670:  VLDR            S2, [R0,#0x14]
42B674:  LDR             R0, [R4,#0x14]
42B676:  VSUB.F32        S0, S2, S0
42B67A:  VMOV.F32        S2, #6.0
42B67E:  CMP             R0, #0
42B680:  VMUL.F32        S4, S0, S4
42B684:  VMUL.F32        S0, S0, S6
42B688:  VADD.F32        S2, S4, S2
42B68C:  VADD.F32        S16, S0, S2
42B690:  BNE             loc_42B6A2
42B692:  MOV             R0, R4; this
42B694:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B698:  LDR             R1, [R4,#0x14]; CMatrix *
42B69A:  ADDS            R0, R4, #4; this
42B69C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B6A0:  LDR             R0, [R4,#0x14]
42B6A2:  VSTR            S16, [R0,#0x38]
42B6A6:  ADD             SP, SP, #0x68 ; 'h'
42B6A8:  VPOP            {D8-D10}
42B6AC:  POP.W           {R8}
42B6B0:  POP             {R4-R7,PC}
42B6B2:  LDRSH.W         R2, [R0]
42B6B6:  CMP             R2, #1
42B6B8:  BLT             loc_42B710
42B6BA:  MOVS            R2, #0x447A0000
42B6C0:  STR             R2, [SP,#0x90+var_68]
42B6C2:  LDRSH.W         R2, [R0]
42B6C6:  CMP             R2, #1
42B6C8:  BLT             loc_42B710
42B6CA:  VLDR            S0, =1000.0
42B6CE:  MOVS            R3, #0
42B6D0:  MOVS            R5, #0
42B6D2:  LDR             R6, [R0,#8]
42B6D4:  ADD             R6, R3
42B6D6:  VLDR            S2, [R6,#8]
42B6DA:  VCMPE.F32       S2, S0
42B6DE:  VMRS            APSR_nzcv, FPSCR
42B6E2:  BGE             loc_42B6F2
42B6E4:  VLDR            D16, [R6]
42B6E8:  LDR             R2, [R6,#8]
42B6EA:  STR             R2, [SP,#0x90+var_68]
42B6EC:  VSTR            D16, [SP,#0x90+var_70]
42B6F0:  LDRH            R2, [R0]
42B6F2:  VLDR            S0, [SP,#0x90+var_68]
42B6F6:  ADDS            R3, #0x14
42B6F8:  ADDS            R5, #1
42B6FA:  SXTH            R6, R2
42B6FC:  CMP             R5, R6
42B6FE:  BLT             loc_42B6D2
42B700:  VLDR            S2, =1000.0
42B704:  VCMPE.F32       S0, S2
42B708:  VMRS            APSR_nzcv, FPSCR
42B70C:  BLT.W           loc_42B480
42B710:  LDRD.W          R5, R6, [SP,#0x90+var_70]
42B714:  LDR             R0, [R4,#0x14]
42B716:  CBNZ            R0, loc_42B728
42B718:  MOV             R0, R4; this
42B71A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B71E:  LDR             R1, [R4,#0x14]; CMatrix *
42B720:  MOV             R0, R8; this
42B722:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B726:  LDR             R0, [R4,#0x14]
42B728:  VLDR            S0, [R0,#0x38]
42B72C:  MOVS            R0, #0
42B72E:  MOVS            R1, #1
42B730:  STRD.W          R5, R6, [SP,#0x90+var_34]
42B734:  VADD.F32        S0, S16, S0
42B738:  ADD             R2, SP, #0x90+var_60; int
42B73A:  ADD             R3, SP, #0x90+var_64; int
42B73C:  VSTR            S0, [SP,#0x90+var_2C]
42B740:  STRD.W          R1, R0, [SP,#0x90+var_90]; int
42B744:  MOVS            R1, #0
42B746:  STRD.W          R0, R0, [SP,#0x90+var_88]; int
42B74A:  MOVT            R1, #0xC47A; int
42B74E:  STRD.W          R0, R0, [SP,#0x90+var_80]; int
42B752:  STR             R0, [SP,#0x90+var_78]; int
42B754:  ADD             R0, SP, #0x90+var_34; CVector *
42B756:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42B75A:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B766)
42B75C:  CMP             R0, #0
42B75E:  LDRSH.W         R2, [R4,#0x26]
42B762:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B764:  VLDR            S0, [SP,#0x90+var_58]
42B768:  VLDR            S2, =0.0
42B76C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42B76E:  LDR.W           R1, [R1,R2,LSL#2]
42B772:  IT NE
42B774:  VMOVNE.F32      S2, S0
42B778:  LDR             R0, [R1,#0x2C]
42B77A:  VLDR            S0, [R0,#8]
42B77E:  LDR             R0, [R4,#0x14]
42B780:  VSUB.F32        S16, S2, S0
42B784:  CBNZ            R0, loc_42B796
42B786:  MOV             R0, R4; this
42B788:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B78C:  LDR             R1, [R4,#0x14]; CMatrix *
42B78E:  MOV             R0, R8; this
42B790:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B794:  LDR             R0, [R4,#0x14]
42B796:  VSTR            S16, [R0,#0x38]
42B79A:  LDR             R0, [R4,#0x18]
42B79C:  CMP             R0, #0
42B79E:  BEQ.W           loc_42B5AE
42B7A2:  LDR             R1, [R0,#4]
42B7A4:  LDR             R0, [R4,#0x14]
42B7A6:  ADDS            R1, #0x10
42B7A8:  CMP             R0, #0
42B7AA:  BNE.W           loc_42B5A2
42B7AE:  MOV             R0, R8
42B7B0:  B               loc_42B5AA
