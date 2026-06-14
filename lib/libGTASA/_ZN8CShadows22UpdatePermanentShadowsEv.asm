; =========================================================
; Game Engine Function: _ZN8CShadows22UpdatePermanentShadowsEv
; Address            : 0x5BD320 - 0x5BD838
; =========================================================

5BD320:  PUSH            {R4-R7,LR}
5BD322:  ADD             R7, SP, #0xC
5BD324:  PUSH.W          {R8-R11}
5BD328:  SUB             SP, SP, #4
5BD32A:  VPUSH           {D8}
5BD32E:  SUB             SP, SP, #0x50; float
5BD330:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5BD338)
5BD334:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5BD336:  LDR             R0, [R0]; MobileSettings::settings ...
5BD338:  LDR.W           R4, [R0,#(dword_6E049C - 0x6E03F4)]
5BD33C:  CMP             R4, #0
5BD33E:  BEQ             loc_5BD42C
5BD340:  LDR.W           R0, =(dword_6B22F8 - 0x5BD348)
5BD344:  ADD             R0, PC; dword_6B22F8
5BD346:  LDR             R0, [R0]; this
5BD348:  CMP             R4, R0
5BD34A:  BEQ             loc_5BD42C
5BD34C:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5BD350:  LDR.W           R0, =(aParticle_10 - 0x5BD358); "particle"
5BD354:  ADD             R0, PC; "particle"
5BD356:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5BD35A:  MOVS            R1, #0; int
5BD35C:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5BD360:  LDR.W           R1, =(aShadCar - 0x5BD36E); "shad_car"
5BD364:  ADR.W           R0, aShadCarDark; "shad_car_dark"
5BD368:  CMP             R4, #2
5BD36A:  ADD             R1, PC; "shad_car"
5BD36C:  IT NE
5BD36E:  MOVNE           R0, R1; char *
5BD370:  MOVS            R1, #0; char *
5BD372:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD376:  LDR.W           R1, =(gpShadowCarTex_ptr - 0x5BD384)
5BD37A:  CMP             R4, #2
5BD37C:  LDR.W           R2, =(aShadPed - 0x5BD386); "shad_ped"
5BD380:  ADD             R1, PC; gpShadowCarTex_ptr
5BD382:  ADD             R2, PC; "shad_ped"
5BD384:  LDR             R1, [R1]; gpShadowCarTex
5BD386:  STR             R0, [R1]
5BD388:  ADR.W           R0, aShadPedDark; "shad_ped_dark"
5BD38C:  IT NE
5BD38E:  MOVNE           R0, R2; char *
5BD390:  MOVS            R1, #0; char *
5BD392:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD396:  LDR.W           R1, =(gpShadowPedTex_ptr - 0x5BD3A4)
5BD39A:  CMP             R4, #2
5BD39C:  LDR.W           R2, =(aShadHeli - 0x5BD3A6); "shad_heli"
5BD3A0:  ADD             R1, PC; gpShadowPedTex_ptr
5BD3A2:  ADD             R2, PC; "shad_heli"
5BD3A4:  LDR             R1, [R1]; gpShadowPedTex
5BD3A6:  STR             R0, [R1]
5BD3A8:  ADR.W           R0, aShadHeliDark; "shad_heli_dark"
5BD3AC:  IT NE
5BD3AE:  MOVNE           R0, R2; char *
5BD3B0:  MOVS            R1, #0; char *
5BD3B2:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD3B6:  LDR.W           R1, =(gpShadowHeliTex_ptr - 0x5BD3C4)
5BD3BA:  CMP             R4, #2
5BD3BC:  LDR.W           R2, =(aShadBike - 0x5BD3C6); "shad_bike"
5BD3C0:  ADD             R1, PC; gpShadowHeliTex_ptr
5BD3C2:  ADD             R2, PC; "shad_bike"
5BD3C4:  LDR             R1, [R1]; gpShadowHeliTex
5BD3C6:  STR             R0, [R1]
5BD3C8:  ADR.W           R0, aShadBikeDark; "shad_bike_dark"
5BD3CC:  IT NE
5BD3CE:  MOVNE           R0, R2; char *
5BD3D0:  MOVS            R1, #0; char *
5BD3D2:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD3D6:  LDR.W           R1, =(gpShadowBikeTex_ptr - 0x5BD3E4)
5BD3DA:  CMP             R4, #2
5BD3DC:  LDR.W           R2, =(aShadRcbaron - 0x5BD3E6); "shad_rcbaron"
5BD3E0:  ADD             R1, PC; gpShadowBikeTex_ptr
5BD3E2:  ADD             R2, PC; "shad_rcbaron"
5BD3E4:  LDR             R1, [R1]; gpShadowBikeTex
5BD3E6:  STR             R0, [R1]
5BD3E8:  ADR.W           R0, aShadRcbaronDar; "shad_rcbaron_dark"
5BD3EC:  IT NE
5BD3EE:  MOVNE           R0, R2; char *
5BD3F0:  MOVS            R1, #0; char *
5BD3F2:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD3F6:  LDR.W           R1, =(gpShadowBaronTex_ptr - 0x5BD404)
5BD3FA:  CMP             R4, #2
5BD3FC:  LDR.W           R2, =(aLampShad64 - 0x5BD406); "lamp_shad_64"
5BD400:  ADD             R1, PC; gpShadowBaronTex_ptr
5BD402:  ADD             R2, PC; "lamp_shad_64"
5BD404:  LDR             R1, [R1]; gpShadowBaronTex
5BD406:  STR             R0, [R1]
5BD408:  ADR.W           R0, aLampShad64Dark; "lamp_shad_64_dark"
5BD40C:  IT NE
5BD40E:  MOVNE           R0, R2; char *
5BD410:  MOVS            R1, #0; char *
5BD412:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BD416:  LDR.W           R1, =(gpPostShadowTex_ptr - 0x5BD41E)
5BD41A:  ADD             R1, PC; gpPostShadowTex_ptr
5BD41C:  LDR             R1, [R1]; gpPostShadowTex
5BD41E:  STR             R0, [R1]
5BD420:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5BD424:  LDR.W           R0, =(dword_6B22F8 - 0x5BD42C)
5BD428:  ADD             R0, PC; dword_6B22F8
5BD42A:  STR             R4, [R0]
5BD42C:  LDR.W           R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD43E)
5BD430:  VMOV.F32        S16, #1.0
5BD434:  LDR.W           R1, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD444)
5BD438:  MOVS            R6, #0
5BD43A:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD43C:  MOV.W           R10, #0
5BD440:  ADD             R1, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD442:  LDR.W           R8, [R0]; CShadows::aPermanentShadows ...
5BD446:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BD452)
5BD44A:  LDR.W           R11, [R1]; CShadows::aPermanentShadows ...
5BD44E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BD450:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
5BD454:  LDR.W           R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD45C)
5BD458:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD45A:  LDR             R0, [R0]; CShadows::aPermanentShadows ...
5BD45C:  STR             R0, [SP,#0x78+var_30]
5BD45E:  LDR.W           R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD466)
5BD462:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD464:  LDR             R0, [R0]; CShadows::aPermanentShadows ...
5BD466:  STR             R0, [SP,#0x78+var_34]
5BD468:  ADD.W           R4, R8, R10
5BD46C:  LDRB.W          R1, [R4,#0x32]; int
5BD470:  CMP             R1, #0
5BD472:  BEQ.W           loc_5BD5EC
5BD476:  ADD.W           R0, R11, R10
5BD47A:  LDR.W           R2, [R9]; CTimer::m_snTimeInMilliseconds
5BD47E:  LDRD.W          R3, R0, [R0,#0x24]
5BD482:  SUBS            R2, R2, R3
5BD484:  CMP             R2, R0
5BD486:  BCS             loc_5BD506
5BD488:  ADD.W           R3, R0, R0,LSL#1
5BD48C:  CMP.W           R2, R3,LSR#2
5BD490:  BCS             loc_5BD50C
5BD492:  LDR             R0, [SP,#0x78+var_30]
5BD494:  MOV             LR, R8
5BD496:  MOV             R8, R11
5BD498:  MOV             R11, R9
5BD49A:  ADD.W           R3, R0, R10
5BD49E:  MOV             R9, #0x42200000
5BD4A6:  LDR             R0, [R3,#0x2C]
5BD4A8:  STR             R0, [SP,#0x78+var_2C]
5BD4AA:  MOV.W           R0, #0x3F800000
5BD4AE:  VLDR            S8, [R3,#0x1C]
5BD4B2:  LDRSH.W         R2, [R3,#0x30]
5BD4B6:  STR             R0, [SP,#0x78+var_54]
5BD4B8:  ADD             R0, SP, #0x78+var_68
5BD4BA:  STR.W           R9, [SP,#0x78+var_50]
5BD4BE:  MOV             R9, R11
5BD4C0:  MOV             R11, R8
5BD4C2:  MOV             R8, LR
5BD4C4:  VLDR            S0, [R3,#0xC]
5BD4C8:  MOV.W           LR, #0
5BD4CC:  VLDR            S2, [R3,#0x10]
5BD4D0:  VLDR            S4, [R3,#0x14]
5BD4D4:  VLDR            S6, [R3,#0x18]
5BD4D8:  LDRB.W          R5, [R3,#0x33]
5BD4DC:  LDRB.W          R6, [R3,#0x34]
5BD4E0:  LDRB.W          R12, [R3,#0x35]
5BD4E4:  STRD.W          LR, LR, [SP,#0x78+var_4C]
5BD4E8:  VSTR            S8, [SP,#0x78+var_58]
5BD4EC:  STM.W           R0, {R2,R5,R6,R12}
5BD4F0:  MOV             R0, R4
5BD4F2:  VSTR            S0, [SP,#0x78+var_78]
5BD4F6:  VSTR            S2, [SP,#0x78+var_74]
5BD4FA:  VSTR            S4, [SP,#0x78+var_70]
5BD4FE:  VSTR            S6, [SP,#0x78+var_6C]
5BD502:  LDR             R2, [SP,#0x78+var_2C]
5BD504:  B               loc_5BD5D8
5BD506:  STRB.W          R6, [R4,#0x32]
5BD50A:  B               loc_5BD5EC
5BD50C:  LSRS            R3, R3, #2
5BD50E:  SUBS            R2, R2, R3
5BD510:  LSRS            R0, R0, #2
5BD512:  ADD.W           LR, SP, #0x78+var_68
5BD516:  VMOV            S0, R2
5BD51A:  VMOV            S2, R0
5BD51E:  VCVT.F32.U32    S0, S0
5BD522:  VCVT.F32.U32    S2, S2
5BD526:  LDR             R0, [SP,#0x78+var_34]
5BD528:  ADD.W           R3, R0, R10; int
5BD52C:  LDRSH.W         R0, [R3,#0x30]
5BD530:  LDRB.W          R6, [R3,#0x35]
5BD534:  VLDR            S4, [R3,#0x10]
5BD538:  VDIV.F32        S0, S0, S2
5BD53C:  LDR             R2, [R3,#0x2C]; int
5BD53E:  VMOV            S10, R0
5BD542:  VLDR            S2, [R3,#0xC]
5BD546:  VLDR            S6, [R3,#0x14]
5BD54A:  VMOV            S1, R6
5BD54E:  VLDR            S8, [R3,#0x18]
5BD552:  VCVT.F32.S32    S10, S10
5BD556:  LDRB.W          R0, [R3,#0x33]
5BD55A:  VSUB.F32        S0, S16, S0
5BD55E:  LDRB.W          R5, [R3,#0x34]
5BD562:  VMOV            S12, R0
5BD566:  MOV.W           R0, #0x3F800000
5BD56A:  VMOV            S3, R5
5BD56E:  VCVT.F32.U32    S12, S12
5BD572:  VLDR            S14, [R3,#0x1C]
5BD576:  VCVT.F32.U32    S1, S1
5BD57A:  VCVT.F32.U32    S3, S3
5BD57E:  STR             R0, [SP,#0x78+var_54]; float
5BD580:  VMUL.F32        S10, S0, S10
5BD584:  MOVS            R0, #0x42200000
5BD58A:  STR             R0, [SP,#0x78+var_50]; float
5BD58C:  MOVS            R0, #0
5BD58E:  STRD.W          R0, R0, [SP,#0x78+var_4C]; __int16
5BD592:  VMUL.F32        S12, S0, S12
5BD596:  VSTR            S14, [SP,#0x78+var_58]
5BD59A:  VMUL.F32        S1, S0, S1
5BD59E:  VSTR            S8, [SP,#0x78+var_6C]
5BD5A2:  VMUL.F32        S0, S0, S3
5BD5A6:  VSTR            S6, [SP,#0x78+var_70]
5BD5AA:  VCVT.S32.F32    S6, S10
5BD5AE:  VSTR            S4, [SP,#0x78+var_74]
5BD5B2:  VCVT.U32.F32    S4, S12
5BD5B6:  VSTR            S2, [SP,#0x78+var_78]
5BD5BA:  VCVT.U32.F32    S2, S1
5BD5BE:  VCVT.U32.F32    S0, S0
5BD5C2:  VMOV            R0, S6
5BD5C6:  VMOV            R5, S4
5BD5CA:  VMOV            R12, S2
5BD5CE:  VMOV            R6, S0
5BD5D2:  STM.W           LR, {R0,R5,R6,R12}
5BD5D6:  MOV             R0, R4; int
5BD5D8:  BLX.W           j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
5BD5DC:  MOVS            R6, #0
5BD5DE:  CBNZ            R0, loc_5BD5EC
5BD5E0:  LDRB.W          R0, [R4,#0x32]
5BD5E4:  CMP             R0, #8
5BD5E6:  IT NE
5BD5E8:  STRBNE.W        R6, [R4,#0x32]
5BD5EC:  ADD.W           R10, R10, #0x38 ; '8'
5BD5F0:  CMP.W           R10, #0xA80
5BD5F4:  BNE.W           loc_5BD468
5BD5F8:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5BD5FE)
5BD5FA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5BD5FC:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5BD5FE:  LDRB            R0, [R0]; CTimer::m_FrameCounter
5BD600:  LSLS            R0, R0, #0x1E
5BD602:  BNE.W           loc_5BD82A
5BD606:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD616)
5BD608:  VMOV.F32        S16, #3.0
5BD60C:  LDR             R1, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD61C)
5BD60E:  MOV.W           R12, #0x7D0
5BD612:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD614:  MOV.W           R11, #0
5BD618:  ADD             R1, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD61A:  LDR             R5, [R0]; CShadows::aPermanentShadows ...
5BD61C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BD624)
5BD61E:  STR             R5, [SP,#0x78+var_34]
5BD620:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BD622:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5BD624:  STR             R0, [SP,#0x78+var_2C]
5BD626:  LDR             R0, [R1]; CShadows::aPermanentShadows ...
5BD628:  STR             R0, [SP,#0x78+var_30]
5BD62A:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD632)
5BD62C:  LDR             R1, =(gFireManager_ptr - 0x5BD634)
5BD62E:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD630:  ADD             R1, PC; gFireManager_ptr
5BD632:  LDR             R0, [R0]; CShadows::aPermanentShadows ...
5BD634:  STR             R0, [SP,#0x78+var_38]
5BD636:  LDR             R0, [R1]; gFireManager
5BD638:  STR             R0, [SP,#0x78+var_3C]
5BD63A:  LDR             R0, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD642)
5BD63C:  LDR             R1, =(gFireManager_ptr - 0x5BD644)
5BD63E:  ADD             R0, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD640:  ADD             R1, PC; gFireManager_ptr
5BD642:  LDR             R0, [R0]; CShadows::aPermanentShadows ...
5BD644:  STR             R0, [SP,#0x78+var_40]
5BD646:  LDR             R0, [R1]; gFireManager
5BD648:  STR             R0, [SP,#0x78+var_44]
5BD64A:  RSB.W           R0, R11, R11,LSL#3
5BD64E:  ADD.W           R1, R5, R0,LSL#3
5BD652:  LDRB.W          R2, [R1,#0x32]!
5BD656:  CMP             R2, #5
5BD658:  BNE.W           loc_5BD7F6
5BD65C:  MOVS            R2, #6
5BD65E:  VMOV.F64        D0, D8
5BD662:  STRB            R2, [R1]
5BD664:  MOVS            R1, #0
5BD666:  LDR             R2, [SP,#0x78+var_30]
5BD668:  ADD.W           R8, R2, R0,LSL#3
5BD66C:  LDR             R0, [SP,#0x78+var_2C]
5BD66E:  ADD.W           R10, R8, #8
5BD672:  ADD.W           R6, R8, #4
5BD676:  LDR             R0, [R0]
5BD678:  STRD.W          R0, R12, [R8,#0x24]
5BD67C:  MOV.W           R0, #0xFFFFFFFF
5BD680:  LDRB.W          R3, [R2,#0x32]
5BD684:  CMP             R3, #8
5BD686:  IT NE
5BD688:  CMPNE           R3, #4
5BD68A:  BNE             loc_5BD6CC
5BD68C:  VLDR            S2, [R2]
5BD690:  VLDR            S4, [R8]
5BD694:  VLDR            D16, [R2,#4]
5BD698:  VSUB.F32        S2, S4, S2
5BD69C:  VLDR            D17, [R6]
5BD6A0:  VSUB.F32        D16, D17, D16
5BD6A4:  VMUL.F32        D2, D16, D16
5BD6A8:  VMUL.F32        S2, S2, S2
5BD6AC:  VADD.F32        S2, S2, S4
5BD6B0:  VADD.F32        S2, S2, S5
5BD6B4:  VSQRT.F32       S2, S2
5BD6B8:  VCMPE.F32       S2, S0
5BD6BC:  VMRS            APSR_nzcv, FPSCR
5BD6C0:  VMIN.F32        D2, D1, D0
5BD6C4:  VMOV            D0, D2
5BD6C8:  IT LT
5BD6CA:  MOVLT           R0, R1
5BD6CC:  ADDS            R1, #1
5BD6CE:  ADDS            R2, #0x38 ; '8'
5BD6D0:  CMP             R1, #0x30 ; '0'
5BD6D2:  BNE             loc_5BD680
5BD6D4:  CMP.W           R0, #0xFFFFFFFF
5BD6D8:  BLE.W           loc_5BD7F6
5BD6DC:  RSB.W           R0, R0, R0,LSL#3
5BD6E0:  LDR             R4, [SP,#0x78+var_38]
5BD6E2:  MOV.W           R9, #0
5BD6E6:  ADD.W           R5, R4, R0,LSL#3
5BD6EA:  LDR.W           R1, [R4,R0,LSL#3]
5BD6EE:  MOVS            R0, #7
5BD6F0:  LDRD.W          R2, R3, [R5,#4]
5BD6F4:  STRB.W          R0, [R5,#0x32]
5BD6F8:  MOV             R0, #0x3FE66666
5BD700:  STRD.W          R0, R9, [SP,#0x78+var_78]
5BD704:  MOVS            R0, #1
5BD706:  STRD.W          R9, R12, [SP,#0x78+var_70]
5BD70A:  STR.W           R9, [SP,#0x78+var_68]
5BD70E:  STR             R0, [SP,#0x78+var_64]
5BD710:  LDR             R0, [SP,#0x78+var_3C]
5BD712:  BLX.W           j__ZN12CFireManager9StartFireE7CVectorfhP7CEntityjah; CFireManager::StartFire(CVector,float,uchar,CEntity *,uint,signed char,uchar)
5BD716:  VLDR            S6, [R5]
5BD71A:  VMOV.F32        S8, S16
5BD71E:  VLDR            S2, [R8]
5BD722:  MOV.W           R0, #0xFFFFFFFF
5BD726:  VLDR            S4, [R5,#4]
5BD72A:  VLDR            S0, [R6]
5BD72E:  VSUB.F32        S6, S6, S2
5BD732:  VSUB.F32        S4, S4, S0
5BD736:  LDRB.W          R2, [R4,#0x32]
5BD73A:  CMP             R2, #8
5BD73C:  IT NE
5BD73E:  CMPNE           R2, #4
5BD740:  BNE             loc_5BD7A4
5BD742:  VLDR            S10, [R4]
5BD746:  VLDR            S14, [R4,#4]
5BD74A:  VSUB.F32        S3, S2, S10
5BD74E:  VLDR            S12, [R4,#8]
5BD752:  VSUB.F32        S1, S0, S14
5BD756:  VLDR            S5, [R10]
5BD75A:  VSUB.F32        S12, S5, S12
5BD75E:  VMUL.F32        S3, S3, S3
5BD762:  VMUL.F32        S1, S1, S1
5BD766:  VMUL.F32        S12, S12, S12
5BD76A:  VADD.F32        S1, S3, S1
5BD76E:  VADD.F32        S12, S1, S12
5BD772:  VSQRT.F32       S12, S12
5BD776:  VCMPE.F32       S12, S8
5BD77A:  VMRS            APSR_nzcv, FPSCR
5BD77E:  BGE             loc_5BD7A4
5BD780:  VSUB.F32        S14, S14, S0
5BD784:  VSUB.F32        S10, S10, S2
5BD788:  VMUL.F32        S14, S4, S14
5BD78C:  VMUL.F32        S10, S6, S10
5BD790:  VADD.F32        S10, S10, S14
5BD794:  VCMPE.F32       S10, #0.0
5BD798:  VMRS            APSR_nzcv, FPSCR
5BD79C:  ITT LT
5BD79E:  MOVLT           R0, R9
5BD7A0:  VMOVLT.F32      S8, S12
5BD7A4:  ADD.W           R9, R9, #1
5BD7A8:  ADDS            R4, #0x38 ; '8'
5BD7AA:  CMP.W           R9, #0x30 ; '0'
5BD7AE:  BNE             loc_5BD736
5BD7B0:  LDR             R5, [SP,#0x78+var_34]
5BD7B2:  CMP.W           R0, #0xFFFFFFFF
5BD7B6:  MOV.W           R12, #0x7D0
5BD7BA:  BLE             loc_5BD7F6
5BD7BC:  LDR             R2, [SP,#0x78+var_40]
5BD7BE:  RSB.W           R0, R0, R0,LSL#3
5BD7C2:  MOVS            R6, #7
5BD7C4:  LDR.W           R1, [R2,R0,LSL#3]
5BD7C8:  ADD.W           R0, R2, R0,LSL#3
5BD7CC:  LDRD.W          R2, R3, [R0,#4]
5BD7D0:  STRB.W          R6, [R0,#0x32]
5BD7D4:  MOV             R0, #0x3FE66666
5BD7DC:  STR             R0, [SP,#0x78+var_78]
5BD7DE:  MOVS            R0, #0
5BD7E0:  STRD.W          R0, R0, [SP,#0x78+var_74]
5BD7E4:  STRD.W          R12, R0, [SP,#0x78+var_6C]
5BD7E8:  MOVS            R0, #1
5BD7EA:  STR             R0, [SP,#0x78+var_64]
5BD7EC:  LDR             R0, [SP,#0x78+var_44]
5BD7EE:  BLX.W           j__ZN12CFireManager9StartFireE7CVectorfhP7CEntityjah; CFireManager::StartFire(CVector,float,uchar,CEntity *,uint,signed char,uchar)
5BD7F2:  MOV.W           R12, #0x7D0
5BD7F6:  ADD.W           R11, R11, #1
5BD7FA:  CMP.W           R11, #0x30 ; '0'
5BD7FE:  BNE.W           loc_5BD64A
5BD802:  LDR             R1, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD80E)
5BD804:  MOVS            R0, #0
5BD806:  LDR             R2, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5BD810)
5BD808:  MOVS            R3, #5
5BD80A:  ADD             R1, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD80C:  ADD             R2, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5BD80E:  LDR             R1, [R1]; CShadows::aPermanentShadows ...
5BD810:  LDR             R2, [R2]; CShadows::aPermanentShadows ...
5BD812:  ADDS            R6, R1, R0
5BD814:  LDRB.W          R6, [R6,#0x32]
5BD818:  CMP             R6, #7
5BD81A:  ITT EQ
5BD81C:  ADDEQ           R6, R2, R0
5BD81E:  STRBEQ.W        R3, [R6,#0x32]
5BD822:  ADDS            R0, #0x38 ; '8'
5BD824:  CMP.W           R0, #0xA80
5BD828:  BNE             loc_5BD812
5BD82A:  ADD             SP, SP, #0x50 ; 'P'
5BD82C:  VPOP            {D8}
5BD830:  ADD             SP, SP, #4
5BD832:  POP.W           {R8-R11}
5BD836:  POP             {R4-R7,PC}
