; =========================================================
; Game Engine Function: _ZN9CShotInfo6UpdateEv
; Address            : 0x5DB2B8 - 0x5DB714
; =========================================================

5DB2B8:  PUSH            {R4-R7,LR}
5DB2BA:  ADD             R7, SP, #0xC
5DB2BC:  PUSH.W          {R8-R11}
5DB2C0:  SUB             SP, SP, #4
5DB2C2:  VPUSH           {D8-D15}
5DB2C6:  SUB             SP, SP, #0x50
5DB2C8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DB2DC)
5DB2CC:  VMOV.F32        S16, #1.5
5DB2D0:  VMOV.F32        S18, #1.0
5DB2D4:  VLDR            S20, =0.075
5DB2D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DB2DA:  MOV.W           R9, #0x2C ; ','
5DB2DE:  MOV.W           R11, #0
5DB2E2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DB2E4:  STR             R0, [SP,#0xB0+var_88]
5DB2E6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5DB2EE)
5DB2EA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5DB2EC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5DB2EE:  STR             R0, [SP,#0xB0+var_8C]
5DB2F0:  LDR.W           R0, =(gFireManager_ptr - 0x5DB2F8)
5DB2F4:  ADD             R0, PC; gFireManager_ptr
5DB2F6:  LDR             R0, [R0]; gFireManager
5DB2F8:  STR             R0, [SP,#0xB0+var_A0]
5DB2FA:  LDR.W           R0, =(AudioEngine_ptr - 0x5DB302)
5DB2FE:  ADD             R0, PC; AudioEngine_ptr
5DB300:  LDR             R0, [R0]; AudioEngine
5DB302:  STR             R0, [SP,#0xB0+var_A4]
5DB304:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5DB30C)
5DB308:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5DB30A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5DB30C:  STR             R0, [SP,#0xB0+var_98]
5DB30E:  LDR.W           R0, =(gFireManager_ptr - 0x5DB316)
5DB312:  ADD             R0, PC; gFireManager_ptr
5DB314:  LDR             R0, [R0]; gFireManager
5DB316:  STR             R0, [SP,#0xB0+var_9C]
5DB318:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5DB320)
5DB31C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5DB31E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5DB320:  STR             R0, [SP,#0xB0+var_94]
5DB322:  LDR.W           R0, =(dword_A85040 - 0x5DB32A)
5DB326:  ADD             R0, PC; dword_A85040
5DB328:  MLA.W           R6, R11, R9, R0
5DB32C:  LDR.W           R0, [R6,#0x20]!; this
5DB330:  CBZ             R0, loc_5DB34A
5DB332:  LDRB.W          R1, [R0,#0x3A]
5DB336:  AND.W           R1, R1, #7
5DB33A:  CMP             R1, #3
5DB33C:  BNE             loc_5DB34A
5DB33E:  BLX.W           j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
5DB342:  CMP             R0, #0
5DB344:  ITT EQ
5DB346:  MOVEQ           R0, #0
5DB348:  STREQ           R0, [R6]
5DB34A:  LDR.W           R0, =(dword_A85040 - 0x5DB352)
5DB34E:  ADD             R0, PC; dword_A85040
5DB350:  MLA.W           R5, R11, R9, R0
5DB354:  LDRB.W          R0, [R5,#0x28]!
5DB358:  CMP             R0, #0
5DB35A:  BEQ.W           loc_5DB6FA
5DB35E:  MUL.W           R0, R11, R9
5DB362:  LDR.W           R1, =(dword_A85040 - 0x5DB36A)
5DB366:  ADD             R1, PC; dword_A85040
5DB368:  MLA.W           R4, R11, R9, R1
5DB36C:  LDR             R0, [R1,R0]
5DB36E:  MOVS            R1, #1
5DB370:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB374:  MOV             R1, R0
5DB376:  LDR             R0, [SP,#0xB0+var_88]
5DB378:  VLDR            S0, [R0]
5DB37C:  VCVT.F32.U32    S0, S0
5DB380:  VLDR            S2, [R4,#0x24]
5DB384:  STR             R4, [SP,#0xB0+var_78]
5DB386:  STR             R1, [SP,#0xB0+var_84]
5DB388:  LDR             R4, [R1,#0x18]
5DB38A:  VCMPE.F32       S2, S0
5DB38E:  VMRS            APSR_nzcv, FPSCR
5DB392:  ITT LT
5DB394:  MOVLT           R0, #0
5DB396:  STRBLT          R0, [R5]
5DB398:  LSLS            R0, R4, #0xF
5DB39A:  BPL             loc_5DB3DC
5DB39C:  LDR             R0, =(dword_A85040 - 0x5DB3A2)
5DB39E:  ADD             R0, PC; dword_A85040
5DB3A0:  MLA.W           R5, R11, R9, R0
5DB3A4:  LDR             R0, [SP,#0xB0+var_94]
5DB3A6:  LDR             R1, [R0]; y
5DB3A8:  MOV             R0, #0x3F75C28F; x
5DB3B0:  VLDR            S22, [R5,#0x10]
5DB3B4:  VLDR            S24, [R5,#0x14]
5DB3B8:  VLDR            S26, [R5,#0x18]
5DB3BC:  BLX.W           powf
5DB3C0:  VMOV            S0, R0
5DB3C4:  VMUL.F32        S2, S0, S22
5DB3C8:  VMUL.F32        S4, S0, S24
5DB3CC:  VMUL.F32        S0, S0, S26
5DB3D0:  VSTR            S2, [R5,#0x10]
5DB3D4:  VSTR            S4, [R5,#0x14]
5DB3D8:  VSTR            S0, [R5,#0x18]
5DB3DC:  LDR             R0, [SP,#0xB0+var_8C]
5DB3DE:  VLDR            S0, [R0]
5DB3E2:  LSLS            R0, R4, #0xC
5DB3E4:  BPL             loc_5DB3FE
5DB3E6:  LDR             R0, =(dword_A85040 - 0x5DB3F0)
5DB3E8:  VMUL.F32        S2, S0, S20
5DB3EC:  ADD             R0, PC; dword_A85040
5DB3EE:  MLA.W           R0, R11, R9, R0
5DB3F2:  VLDR            S4, [R0,#0x1C]
5DB3F6:  VADD.F32        S2, S4, S2
5DB3FA:  VSTR            S2, [R0,#0x1C]
5DB3FE:  LDR             R0, =(dword_A85040 - 0x5DB408)
5DB400:  MOVS            R1, #0x2C ; ','
5DB402:  STR             R6, [SP,#0xB0+var_7C]
5DB404:  ADD             R0, PC; dword_A85040
5DB406:  MLA.W           R8, R11, R9, R0
5DB40A:  ADD.W           R0, R8, #0xC
5DB40E:  STR             R0, [SP,#0xB0+var_80]
5DB410:  VLDR            S8, [R8,#0x10]
5DB414:  ADD.W           R0, R8, #8
5DB418:  VLDR            S10, [R8,#0x14]
5DB41C:  VLDR            S12, [R8,#0x18]
5DB420:  VMUL.F32        S8, S0, S8
5DB424:  VMUL.F32        S10, S0, S10
5DB428:  VLDR            S2, [R8,#4]
5DB42C:  VMUL.F32        S0, S0, S12
5DB430:  VLDR            S4, [R8,#8]
5DB434:  VLDR            S6, [R8,#0xC]
5DB438:  STR             R0, [SP,#0xB0+var_74]
5DB43A:  ADD.W           R0, R8, #4
5DB43E:  STR             R0, [SP,#0xB0+var_70]
5DB440:  VADD.F32        S2, S8, S2
5DB444:  VADD.F32        S4, S10, S4
5DB448:  VADD.F32        S0, S0, S6
5DB44C:  VSTR            S2, [R8,#4]
5DB450:  VSTR            S4, [R8,#8]
5DB454:  VSTR            S0, [R8,#0xC]
5DB458:  LDR             R0, [R6]
5DB45A:  LDR             R6, [SP,#0xB0+var_78]
5DB45C:  CMP             R0, #0
5DB45E:  BEQ.W           loc_5DB59E
5DB462:  LDR             R2, =(dword_A85040 - 0x5DB46C)
5DB464:  LDR.W           R4, [R0,#0x440]
5DB468:  ADD             R2, PC; dword_A85040
5DB46A:  MLA.W           R1, R11, R1, R2
5DB46E:  ADD.W           R0, R1, #0x29 ; ')'
5DB472:  STR             R0, [SP,#0xB0+var_90]
5DB474:  VLDR            S0, [R1,#0x1C]
5DB478:  MOVS            R0, #0x5C ; '\'
5DB47A:  VMAX.F32        D11, D0, D9
5DB47E:  MOV             R9, R0
5DB480:  LDR.W           R10, [R4,R9,LSL#2]
5DB484:  CMP.W           R10, #0
5DB488:  BEQ.W           loc_5DB590
5DB48C:  MOV             R0, R10; this
5DB48E:  BLX.W           j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
5DB492:  CMP             R0, #0
5DB494:  BEQ             loc_5DB590
5DB496:  LDRB.W          R0, [R10,#0x485]
5DB49A:  LSLS            R0, R0, #0x1F
5DB49C:  BNE             loc_5DB590
5DB49E:  LDR.W           R1, [R10,#0x14]
5DB4A2:  ADD.W           R5, R10, #4
5DB4A6:  CMP             R1, #0
5DB4A8:  MOV             R0, R5
5DB4AA:  IT NE
5DB4AC:  ADDNE.W         R0, R1, #0x30 ; '0'
5DB4B0:  LDRB.W          R1, [R10,#0x46]
5DB4B4:  LSLS            R1, R1, #0x1C
5DB4B6:  BMI             loc_5DB590
5DB4B8:  LDR             R1, [SP,#0xB0+var_70]
5DB4BA:  VLDR            S26, [R0]
5DB4BE:  VLDR            D15, [R0,#4]
5DB4C2:  MOV             R0, R10; this
5DB4C4:  VLDR            S24, [R1]
5DB4C8:  LDR             R1, [SP,#0xB0+var_74]
5DB4CA:  VLDR            D14, [R1]
5DB4CE:  BLX.W           j__ZN4CPed14IsPedInControlEv; CPed::IsPedInControl(void)
5DB4D2:  CMP             R0, #1
5DB4D4:  BNE             loc_5DB590
5DB4D6:  VSUB.F32        S0, S26, S24
5DB4DA:  VSUB.F32        D16, D15, D14
5DB4DE:  VMUL.F32        D1, D16, D16
5DB4E2:  VMUL.F32        S0, S0, S0
5DB4E6:  VADD.F32        S0, S0, S2
5DB4EA:  VADD.F32        S0, S0, S3
5DB4EE:  VCMPE.F32       S0, S22
5DB4F2:  VMRS            APSR_nzcv, FPSCR
5DB4F6:  BGE             loc_5DB590
5DB4F8:  LDR             R0, [R6]
5DB4FA:  SUBS            R0, #0x29 ; ')'
5DB4FC:  CMP             R0, #1
5DB4FE:  BHI             loc_5DB56E
5DB500:  LDR             R0, [SP,#0xB0+var_90]
5DB502:  LDRB            R0, [R0]
5DB504:  CMP             R0, #0
5DB506:  BNE             loc_5DB590
5DB508:  LDR             R6, [SP,#0xB0+var_7C]
5DB50A:  LDR.W           R1, [R10,#0x14]
5DB50E:  LDR             R0, [R6]
5DB510:  CMP             R1, #0
5DB512:  LDR             R2, [R0,#0x14]
5DB514:  IT NE
5DB516:  ADDNE.W         R5, R1, #0x30 ; '0'
5DB51A:  VLDR            S0, [R5]
5DB51E:  ADD.W           R1, R2, #0x30 ; '0'
5DB522:  CMP             R2, #0
5DB524:  VLDR            S2, [R5,#4]
5DB528:  IT EQ
5DB52A:  ADDEQ           R1, R0, #4
5DB52C:  VLDR            S4, [R1]
5DB530:  MOV             R0, R10
5DB532:  VLDR            S6, [R1,#4]
5DB536:  ADD             R1, SP, #0xB0+var_6C
5DB538:  VSUB.F32        S0, S4, S0
5DB53C:  VSUB.F32        S2, S6, S2
5DB540:  VSTR            S2, [SP,#0xB0+var_68]
5DB544:  VSTR            S0, [SP,#0xB0+var_6C]
5DB548:  BLX.W           j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
5DB54C:  LDR             R1, [SP,#0xB0+var_84]
5DB54E:  LDRSH.W         R3, [R1,#0x22]
5DB552:  LDR             R1, [SP,#0xB0+var_78]
5DB554:  LDR             R2, [R1]
5DB556:  LDR             R1, [R6]
5DB558:  MOVS            R6, #3
5DB55A:  STR             R6, [SP,#0xB0+var_B0]
5DB55C:  STR             R0, [SP,#0xB0+var_AC]
5DB55E:  MOV             R0, R10
5DB560:  LDR             R6, [SP,#0xB0+var_78]
5DB562:  BLX.W           j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
5DB566:  LDR             R1, [SP,#0xB0+var_90]
5DB568:  MOVS            R0, #1
5DB56A:  STRB            R0, [R1]
5DB56C:  B               loc_5DB590
5DB56E:  LDR             R0, [SP,#0xB0+var_7C]
5DB570:  MOVW            R3, #0xCCCD
5DB574:  MOV             R1, R10; CEntity *
5DB576:  MOVT            R3, #0x3F4C; float
5DB57A:  LDR             R2, [R0]; CEntity *
5DB57C:  MOVS            R0, #1
5DB57E:  STR             R0, [SP,#0xB0+var_B0]; bool
5DB580:  MOVW            R0, #(elf_hash_bucket+0x1A5C)
5DB584:  STR             R0, [SP,#0xB0+var_AC]; CEntity *
5DB586:  MOVS            R0, #0x64 ; 'd'
5DB588:  STR             R0, [SP,#0xB0+var_A8]; signed __int8
5DB58A:  LDR             R0, [SP,#0xB0+var_9C]; this
5DB58C:  BLX.W           j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
5DB590:  SUB.W           R1, R9, #0x4C ; 'L'
5DB594:  SUB.W           R0, R9, #1
5DB598:  CMP             R1, #1
5DB59A:  BGT.W           loc_5DB47E
5DB59E:  LDR             R0, [R6]
5DB5A0:  CMP             R0, #0x2A ; '*'
5DB5A2:  BEQ             loc_5DB678
5DB5A4:  CMP             R0, #0x29 ; ')'
5DB5A6:  MOV.W           R9, #0x2C ; ','
5DB5AA:  BNE.W           loc_5DB6BC
5DB5AE:  LDR             R0, =(dword_A85040 - 0x5DB5B6)
5DB5B0:  LDR             R6, [SP,#0xB0+var_7C]
5DB5B2:  ADD             R0, PC; dword_A85040
5DB5B4:  MLA.W           R4, R11, R9, R0
5DB5B8:  LDRB.W          R0, [R4,#0x29]!
5DB5BC:  CMP             R0, #0
5DB5BE:  BNE.W           loc_5DB6FA
5DB5C2:  LDR             R0, =(dword_A85040 - 0x5DB5CC)
5DB5C4:  ADD             R1, SP, #0xB0+var_6C; CVector *
5DB5C6:  MOVS            R3, #1; float
5DB5C8:  ADD             R0, PC; dword_A85040
5DB5CA:  MLA.W           R0, R11, R9, R0
5DB5CE:  VLDR            S0, [R0,#0x1C]
5DB5D2:  LDR             R0, [SP,#0xB0+var_70]; this
5DB5D4:  VMUL.F32        S0, S0, S16
5DB5D8:  VMOV            R2, S0; CVector *
5DB5DC:  BLX.W           j__ZN6CWorld15SprayPaintWorldER7CVectorS1_fb; CWorld::SprayPaintWorld(CVector &,CVector &,float,bool)
5DB5E0:  CMP             R0, #0
5DB5E2:  BEQ.W           loc_5DB6FA
5DB5E6:  MOVS            R5, #1
5DB5E8:  ADD.W           R2, R8, #0x14
5DB5EC:  ADD.W           R3, R8, #0x10
5DB5F0:  STRB            R5, [R4]
5DB5F2:  VLDR            S0, [SP,#0xB0+var_6C]
5DB5F6:  ADD.W           R1, R8, #0x18
5DB5FA:  VLDR            S8, [R3]
5DB5FE:  CMP             R0, #2
5DB600:  VLDR            S2, [SP,#0xB0+var_68]
5DB604:  VLDR            S6, [R2]
5DB608:  VMUL.F32        S12, S8, S0
5DB60C:  VLDR            S4, [SP,#0xB0+var_64]
5DB610:  VMUL.F32        S10, S6, S2
5DB614:  VLDR            S14, [R1]
5DB618:  VMUL.F32        S1, S14, S4
5DB61C:  VADD.F32        S10, S12, S10
5DB620:  VADD.F32        S10, S10, S1
5DB624:  VMUL.F32        S0, S0, S10
5DB628:  VMUL.F32        S2, S2, S10
5DB62C:  VMUL.F32        S4, S4, S10
5DB630:  VSUB.F32        S0, S8, S0
5DB634:  VSUB.F32        S2, S6, S2
5DB638:  VSUB.F32        S4, S14, S4
5DB63C:  VADD.F32        S0, S0, S0
5DB640:  VADD.F32        S2, S2, S2
5DB644:  VADD.F32        S4, S4, S4
5DB648:  VSTR            S0, [R3]
5DB64C:  VSTR            S2, [R2]
5DB650:  VSTR            S4, [R1]
5DB654:  BNE             loc_5DB6FA
5DB656:  MOV.W           R0, #0xFFFFFFFF; int
5DB65A:  LDR             R4, [R6]
5DB65C:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DB660:  CMP             R4, R0
5DB662:  BNE             loc_5DB6FA
5DB664:  LDR             R0, [SP,#0xB0+var_A4]; this
5DB666:  MOVS            R1, #0x2B ; '+'; int
5DB668:  MOVS            R2, #0; float
5DB66A:  MOV.W           R3, #0x3F800000; float
5DB66E:  BLX.W           j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
5DB672:  B               loc_5DB6FA
5DB674:  DCFS 0.075
5DB678:  LDR             R0, =(dword_A85040 - 0x5DB682)
5DB67A:  MOV.W           R9, #0x2C ; ','
5DB67E:  ADD             R0, PC; dword_A85040
5DB680:  MLA.W           R4, R11, R9, R0
5DB684:  LDRB.W          R0, [R4,#0x29]!
5DB688:  CBNZ            R0, loc_5DB6FA
5DB68A:  LDR             R0, =(dword_A85040 - 0x5DB692)
5DB68C:  LDR             R1, [SP,#0xB0+var_80]
5DB68E:  ADD             R0, PC; dword_A85040
5DB690:  MLA.W           R0, R11, R9, R0
5DB694:  LDR             R3, [R1]
5DB696:  LDR             R1, [SP,#0xB0+var_74]
5DB698:  LDR             R2, [R1]
5DB69A:  LDR             R1, [SP,#0xB0+var_70]
5DB69C:  VLDR            S0, [R0,#0x1C]
5DB6A0:  MOV.W           R0, #0x40000000
5DB6A4:  STR             R0, [SP,#0xB0+var_AC]
5DB6A6:  LDR             R1, [R1]
5DB6A8:  LDR             R0, [SP,#0xB0+var_A0]
5DB6AA:  VSTR            S0, [SP,#0xB0+var_B0]
5DB6AE:  BLX.W           j__ZN12CFireManager24ExtinguishPointWithWaterE7CVectorff; CFireManager::ExtinguishPointWithWater(CVector,float,float)
5DB6B2:  CMP             R0, #1
5DB6B4:  ITT EQ
5DB6B6:  MOVEQ           R0, #1
5DB6B8:  STRBEQ          R0, [R4]
5DB6BA:  B               loc_5DB6FA
5DB6BC:  LDR             R0, [SP,#0xB0+var_98]
5DB6BE:  LDR             R0, [R0]
5DB6C0:  LDRD.W          R5, R4, [SP,#0xB0+var_80]
5DB6C4:  ADD             R0, R11
5DB6C6:  LSLS            R0, R0, #0x1E
5DB6C8:  BNE             loc_5DB6E0
5DB6CA:  LDR             R0, [SP,#0xB0+var_74]
5DB6CC:  LDR             R2, [R5]; float
5DB6CE:  LDR             R3, [R4]
5DB6D0:  LDR             R1, [R0]; float
5DB6D2:  LDR             R0, [SP,#0xB0+var_70]
5DB6D4:  STR             R3, [SP,#0xB0+var_B0]; CEntity *
5DB6D6:  MOV.W           R3, #0x40800000; float
5DB6DA:  LDR             R0, [R0]; this
5DB6DC:  BLX.W           j__ZN6CWorld13SetCarsOnFireEffffP7CEntity; CWorld::SetCarsOnFire(float,float,float,float,CEntity *)
5DB6E0:  LDR             R0, [SP,#0xB0+var_74]
5DB6E2:  LDR             R3, [R4]
5DB6E4:  LDR             R2, [R5]; float
5DB6E6:  LDR             R1, [R0]; float
5DB6E8:  LDR             R0, [SP,#0xB0+var_70]
5DB6EA:  STR             R3, [SP,#0xB0+var_B0]; float
5DB6EC:  MOV             R3, #0x3DCCCCCD; float
5DB6F4:  LDR             R0, [R0]; this
5DB6F6:  BLX.W           j__ZN6CWorld14SetWorldOnFireEffffP7CEntity; CWorld::SetWorldOnFire(float,float,float,float,CEntity *)
5DB6FA:  ADD.W           R11, R11, #1
5DB6FE:  CMP.W           R11, #0x64 ; 'd'
5DB702:  BNE.W           loc_5DB322
5DB706:  ADD             SP, SP, #0x50 ; 'P'
5DB708:  VPOP            {D8-D15}
5DB70C:  ADD             SP, SP, #4
5DB70E:  POP.W           {R8-R11}
5DB712:  POP             {R4-R7,PC}
